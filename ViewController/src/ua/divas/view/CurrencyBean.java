package ua.divas.view;

import java.util.List;

import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Key;

import oracle.jbo.uicli.binding.JUCtrlHierBinding;

import org.apache.myfaces.trinidad.event.RowDisclosureEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;

public class CurrencyBean {
    private RichTable mainTable;

    public CurrencyBean() {
    }

    public void setMainTable(RichTable mainTable) {
        this.mainTable = mainTable;
    }

    public RichTable getMainTable() {
        return mainTable;
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
}
