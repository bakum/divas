package ua.divas.view;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.component.rich.data.RichTree;

import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.adf.view.rich.datatransfer.DataFlavor;
import oracle.adf.view.rich.dnd.DnDAction;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.DropEvent;
import oracle.adf.view.rich.event.PopupCanceledEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Key;

import oracle.jbo.Row;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;

import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;

import org.apache.myfaces.trinidad.event.ReturnEvent;
import org.apache.myfaces.trinidad.event.RowDisclosureEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;
import org.apache.myfaces.trinidad.model.RowKeySetImpl;

public class CurrencyBean {
    private RichTable mainTable;
    private RichTree mainTree;
    private RichPopup mainPopup;

    public CurrencyBean() {
    }

    public void setMainPopup(RichPopup mainPopup) {
        this.mainPopup = mainPopup;
    }

    public RichPopup getMainPopup() {
        return mainPopup;
    }

    public void setMainTable(RichTable mainTable) {
        this.mainTable = mainTable;
    }

    public RichTable getMainTable() {
        return mainTable;
    }

    public void setMainTree(RichTree mainTree) {
        this.mainTree = mainTree;
    }

    public RichTree getMainTree() {
        return mainTree;
    }

    public void rowDiscloseListener(RowDisclosureEvent rowDisclosureEvent) {
        RowKeySet addedSet = rowDisclosureEvent.getAddedSet();
        Object object = rowDisclosureEvent.getSource();
        // iterate over the disclosed row (hopefully only one)
        for (Object obj : addedSet) {
            List<Key> rowKeys = (List<Key>) obj;
            // make the disclosed row the current row
            this.makeDisclosedRowCurrent(rowDisclosureEvent, (Key) rowKeys.get(0));
        }
    }

    /**
     * Synchronizes the table UI component row selection with the
     * selection in the ADF binding layer
     * @param rowDisclosureEvent event object created by the table
     * component upon row selection
     */
    public static void makeDisclosedRowCurrent(RowDisclosureEvent rowDisclosureEvent, Key key) {
        RichTable _table = (RichTable) rowDisclosureEvent.getSource();
        //_table.getDisclosedRowKeys().clear();
        //AdfFacesContext.getCurrentInstance().addPartialTarget(_table);
        //the Collection Model is the object that provides the
        //structured data
        //for the table to render
        CollectionModel _tableModel = (CollectionModel) _table.getValue();
        //the ADF object that implements the CollectionModel is
        //JUCtrlHierBinding. It is wrapped by the CollectionModel API
        JUCtrlHierBinding _adfTableBinding = (JUCtrlHierBinding) _tableModel.getWrappedData();
        //Acess the ADF iterator binding that is used with
        //ADF table binding
        DCIteratorBinding _tableIteratorBinding = _adfTableBinding.getDCIteratorBinding();

        //get the row key from the added rowdisclosure event
        Key _rwKey = key;
        _tableIteratorBinding.setCurrentRowWithKey(_rwKey.toStringFormat(true));
    }

    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("CurrencyView1Iterator");
        //DCIteratorBinding it_detail = binding.findIteratorBinding("ContactDetailsView2Iterator");
        if (it != null) {
            String rks = it.getCurrentRow().getKey().toStringFormat(true);
            it.executeQuery();
            if (rks != null) {
                it.setCurrentRowWithKey(rks);
            }
            /* if (it_detail != null) {
                rks = it_detail.getCurrentRow().getKey().toStringFormat(true);
                it_detail.executeQuery();
                if (rks != null) {
                    it_detail.setCurrentRowWithKey(rks);
                }
            } */
        }
    }

    public String commitChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Commit");
        ob.execute();
        refresh();
        return null;
    }

    public void onRefresh(ActionEvent actionEvent) {
        refresh();
    }


    public String rollbackChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
        refresh();
        return null;
    }

    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    public String doExRates() {
        FacesContext ctx = FacesContext.getCurrentInstance();
        OperationBinding operationBinding = getBindings().getOperationBinding("doCurrencyExchange");
        operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            FacesMessage msg =
                new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Произошла ошибка при загрузке курсов!");
            ctx.addMessage(null, msg);
            return null;
        }

        FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Infirmation", "Загрузка курсов завершена!");
        ctx.addMessage(null, msg);
        return null;
    }


    public void returnListener(ReturnEvent returnEvent) {
        AdfFacesContext.getCurrentInstance().addPartialTarget(mainTree.getParent());
    }

    public void onPopup(ActionEvent actionEvent) {
        RichPopup.PopupHints hints = new RichPopup.PopupHints();
        getMainPopup().show(hints);
    }


    public void fetchListener(PopupFetchEvent popupFetchEvent) {
        if (popupFetchEvent.getLaunchSourceClientId() == null) {
            return;
        }
        if (popupFetchEvent.getLaunchSourceClientId().contains("cbInsertDiv")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("CreateInsert2");
            ob.execute();
        }
    }

    public void cancelListener(PopupCanceledEvent popupCanceledEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
    }

    public void dialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");
            ob.execute();
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Rollback");
            ob.execute();
        }
    }

    public DnDAction dropHundler(DropEvent dropEvent) {
        RichTree tree1 = (RichTree) dropEvent.getDragComponent();
        RichTree tree = (RichTree) dropEvent.getDropComponent();
        RowKeySet droppedValue = null;
        String Id = null;
        Iterator it = null;
        Object currentRowKey = tree.getRowKey();
        List dropRowKey = (List) dropEvent.getDropSite();
        if (dropRowKey == null) {
            return DnDAction.NONE;
        }
        
        try {
            DataFlavor<RowKeySet> df = DataFlavor.getDataFlavor(RowKeySet.class, "rowmove");
            droppedValue = dropEvent.getTransferable().getData(df);
            if (droppedValue != null) {
                it = droppedValue.iterator();
                if (it.hasNext()) {
                    List key = (List) it.next();
                    tree1.setRowKey(key);
                    JUCtrlHierNodeBinding rowBinding = (JUCtrlHierNodeBinding) tree1.getRowData();
                    Row tableRow = (Row) rowBinding.getRow();
                    Id = (String) tableRow.getAttribute("Id");

                    tree.setRowKey(dropRowKey);
                    JUCtrlHierNodeBinding dropNode = (JUCtrlHierNodeBinding) tree.getRowData();
                    //Row treeRow = dropNode.getRow();
                    String dropNodeVO = dropNode.getHierTypeBinding().getStructureDefName();
                    if (!dropNodeVO.equalsIgnoreCase("ua.divas.view.DivisionsView")) {
                        return DnDAction.NONE;
                    }

                    tree.setRowKey(currentRowKey);
                    CollectionModel treeModel = (CollectionModel) tree.getValue();
                    JUCtrlHierBinding treeBinding = (JUCtrlHierBinding) treeModel.getWrappedData();

                    JUCtrlHierNodeBinding treeDropNode = treeBinding.findNodeByKeyPath(dropRowKey);
                    JUCtrlHierNodeBinding rootNode = treeBinding.getRootNodeBinding();
                    JUCtrlHierNodeBinding dropNodeParent = treeDropNode.getParent();

                    //walk up the tree to expand all parent nodes
                    if (treeDropNode != null && treeDropNode != rootNode) {
                        /*RowKeySet drk = tree.getDisclosedRowKeys();
                         if (drk != null) {
                            drk.clear();
                            AdfFacesContext.getCurrentInstance().addPartialTarget(tree);
                        } */
                        RowKeySetImpl rksImpl = new RowKeySetImpl();
                        rksImpl.add(dropRowKey);
                        String ParentId = (String) treeDropNode.getRow().getAttribute("Id");
                        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
                         OperationBinding oper =
                            (OperationBinding) binding.getOperationBinding("changeParentInDivisions");
                        oper.getParamsMap().put("Id", Id);
                        oper.getParamsMap().put("ParentId", ParentId);
                        oper.execute();
                        //walk up the tree to expand all parent nodes
                        while (dropNodeParent != null && dropNodeParent != rootNode) {
                            rksImpl.add(dropNodeParent.getKeyPath());
                            dropNodeParent = dropNodeParent.getParent();
                        }
                        //3. get all employee nodes in a tree to disclose them too
                        ArrayList<JUCtrlHierNodeBinding> childList =
                            (ArrayList<JUCtrlHierNodeBinding>) treeDropNode.getChildren();
                        for (JUCtrlHierNodeBinding nb : childList) {
                            rksImpl.add(nb.getKeyPath());
                        }
                        //ready to disclose
                        tree.setDisclosedRowKeys(rksImpl);
                        AdfFacesContext.getCurrentInstance().addPartialTarget(tree.getParent());
                        AdfFacesContext.getCurrentInstance().addPartialTarget(tree1);

                    } else {
                        return DnDAction.NONE;
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            return DnDAction.NONE;
        }
        return DnDAction.MOVE;
    }
}
