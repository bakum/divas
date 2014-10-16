package ua.divas.view;

import java.util.ArrayList;
import java.util.List;

import java.util.UUID;

import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;
import javax.faces.model.SelectItem;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;

import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.event.DialogEvent;

import oracle.adf.view.rich.event.PopupCanceledEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.adfinternal.view.faces.taglib.listener.ResetActionListener;

import oracle.binding.BindingContainer;

import oracle.binding.OperationBinding;

import oracle.jbo.NameValuePairs;
import oracle.jbo.Row;

public class ShuttleGroup {
    List selectedValues = new ArrayList();
    List allValues = new ArrayList();
    private RichSelectOneChoice division;
    private RichSelectOneChoice currency;

    public ShuttleGroup() {
    }

    public void setSelectedValues(List selectedValues) {
        this.selectedValues = selectedValues;
    }

    public List getSelectedValues() {
        DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("GroupmembersView5Iterator");

        // Get all the rows of a iterator
        Row[] rows = dcIteratorBindings.getAllRowsInRange();
        for (Row rw : rows) {
            String indx = (String) rw.getAttribute("GName");
            selectedValues.add(indx);
        }
        return selectedValues;
    }

    public void setAllValues(List allValues) {
        this.allValues = allValues;
    }

    public List getAllValues() {
        DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("GroupsView1Iterator");

        // Get all the rows of a iterator
        Row[] rows = dcIteratorBindings.getAllRowsInRange();
        for (Row rw : rows) {
            String indx = (String) rw.getAttribute("Fullname");
            allValues.add(new SelectItem(indx));
        }
        return allValues;
    }

    private List union(List set1, List set2) {
        set1.addAll(set2);
        return set1;

    }

    private List intersect(List set1, List set2) {
        set1.retainAll(set2);
        return set1;

    }

    private List diff(List set1, List set2) {
        List diff = new ArrayList(set1);
        diff.removeAll(set2);
        return diff;

    }

    public void onGroupChange(ValueChangeEvent valueChangeEvent) {
        List stored = new ArrayList();
        List toAdd = new ArrayList();
        List toRemove = new ArrayList();
        ArrayList<String> groupsInUser = (ArrayList<String>) valueChangeEvent.getNewValue();
        if (groupsInUser == null) {
            groupsInUser = new ArrayList();
        }
        DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("GroupmembersView5Iterator");
        Row[] rows = dcIteratorBindings.getAllRowsInRange();
        for (Row rw : rows) {
            String indx = (String) rw.getAttribute("GName");
            stored.add(indx);
        }
        toAdd = diff(groupsInUser, stored);
        toRemove = diff(stored, groupsInUser);

        String[] aToAdd = (String[]) toAdd.toArray(new String[toAdd.size()]);
        String[] atoRemove = (String[]) toRemove.toArray(new String[toRemove.size()]);


        DCIteratorBinding allUserIterator = (DCIteratorBinding) bindings.get("UsersView1Iterator");
        //get current row
        Row currentRow = allUserIterator.getCurrentRow();
        String userLogin = (String) currentRow.getAttribute("Login");

        //System.out.println(userLogin);
        if (aToAdd.length > 0) {
            for (String index : aToAdd) {
                /* Row r = dcIteratorBindings.getViewObject().createAndInitRow(new NameValuePairs(new String[] { "GMember" }, new Object[] {
                                                                                 new String(userLogin) }));
                r.setAttribute("Id", UUID.randomUUID().toString());
                r.setAttribute("GName", index); */
                BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
                OperationBinding oper = (OperationBinding) binding.getOperationBinding("addUserToGroup");
                oper.getParamsMap().put("userName", userLogin);
                oper.getParamsMap().put("groupName", index);
                oper.execute();
                System.out.println(index);
            }
        }

        if (atoRemove.length > 0) {
            for (String index : atoRemove) {
                Row rw = dcIteratorBindings.findRowsByAttributeValue("GName", true, index).first();
                rw.remove();
                System.out.println(index);
            }
        }

    }

    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("UsersView1Iterator");
        if (it != null) {
            String rks = it.getCurrentRow().getKey().toStringFormat(true);
            it.executeQuery();
            if (rks != null) {
                it.setCurrentRowWithKey(rks);
            }
        }
    }

    public String commitChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Commit");
        ob.execute();
        refresh();
        return null;
    }

    public String rollbackChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
        refresh();
        return null;
    }


    public void dialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            commitChange();
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            rollbackChange();
        }
    }

    public void onDepChange(ValueChangeEvent valueChangeEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("ExecuteWithParams");
        if (ob != null) {
            System.out.println((String) this.getCurrency().getValue());
            System.out.println((String) this.getDivision().getValue());
            ob.getParamsMap().put("currency", (String) this.getCurrency().getValue());
            ob.getParamsMap().put("division", (String) this.getDivision().getValue());
            ob.execute();

            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KassaVO1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
    }

    public void setDivision(RichSelectOneChoice division) {
        this.division = division;
    }

    public RichSelectOneChoice getDivision() {
        return division;
    }

    public void setCurrency(RichSelectOneChoice currency) {
        this.currency = currency;
    }

    public RichSelectOneChoice getCurrency() {
        return currency;
    }

    public void onPopupFetch(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("ExecuteWithParams");
        if (ob != null) {
            /* System.out.println((String) this.getCurrency().getValue());
            System.out.println((String) this.getDivision().getValue());
            ob.getParamsMap().put("currency", (String) this.getCurrency().getValue());
            ob.getParamsMap().put("division", (String) this.getDivision().getValue()); */
            ob.execute();

            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KassaVO1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
    }

    public void onCancelPopup(PopupCanceledEvent popupCanceledEvent) {
        rollbackChange();
    }

    public void onActivitiesDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("TypeOfActivitiesView1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
    }

    public void onCreateActivities(ActionEvent actionEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("CreateInsert2");
        ob.execute();
    }

    public void onPopupActivities(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("CreateInsert2");
        ob.execute();
        
    }
}
