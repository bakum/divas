package ua.divas.view;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;


import oracle.adf.controller.ControllerContext;
import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTable;
import oracle.adf.view.rich.component.rich.data.RichTree;
import oracle.adf.view.rich.component.rich.data.RichTreeTable;
import oracle.adf.view.rich.component.rich.layout.RichPanelFormLayout;
import oracle.adf.view.rich.component.rich.layout.RichShowDetailItem;
import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.datatransfer.DataFlavor;
import oracle.adf.view.rich.dnd.DnDAction;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.DropEvent;
import oracle.adf.view.rich.event.PopupCanceledEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;
import oracle.adf.view.rich.event.QueryEvent;

import oracle.adf.view.rich.model.FilterableQueryDescriptor;

import oracle.binding.BindingContainer;

import oracle.binding.OperationBinding;

import oracle.jbo.Key;

import oracle.jbo.Row;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;

import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;

import org.apache.myfaces.trinidad.event.RowDisclosureEvent;
import org.apache.myfaces.trinidad.event.SelectionEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;

import org.apache.myfaces.trinidad.model.RowKeySetImpl;
import org.apache.myfaces.trinidad.model.RowKeySetTreeImpl;


public class FilterBeans {
    private RichTable mainTable;
    private RichPanelFormLayout formToRefresh;


    public FilterBeans() {
        super();
    }

    public void setMainTable(RichTable mainTable) {
        this.mainTable = mainTable;
    }

    public RichTable getMainTable() {
        return mainTable;
    }

    public void resetTableFilter(ActionEvent actionEvent) {
        FilterableQueryDescriptor queryDescriptor = (FilterableQueryDescriptor) getMainTable().getFilterModel();
        if (queryDescriptor != null && queryDescriptor.getFilterCriteria() != null) {
            queryDescriptor.getFilterCriteria().clear();
            getMainTable().queueEvent(new QueryEvent(getMainTable(), queryDescriptor));
        }
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

    public void fetchListener(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("CreateInsert1");
        ob.execute();
    }

    public void cancelListener(PopupCanceledEvent popupCanceledEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
        callSelectionListener();
    }

    public void dialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");
            ob.execute();
            refresh();
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Rollback");
            ob.execute();
            callSelectionListener();
        }
    }

    private void callSelectionListener() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("KontragentsView1Iterator");

        Row currentRow = it.getCurrentRow();
        //build the table rowKeySet
        List rowKeyList = new ArrayList();
        //check if there is child data at all
        if (currentRow != null) {
            //add primary key as jbo key
            Key jboKey = new Key(new Object[] { currentRow.getAttribute("Id") });
            rowKeyList.add(jboKey);
            //add key to RowKeySet. For table multi row select usecases
            //you would add multiple row keys like this
            RowKeySet newRowKeySet = new RowKeySetImpl();
            newRowKeySet.add(rowKeyList);
            //create SelectioNEvent that pretends users has selected first row
            //in table
            SelectionEvent selectEvent = new SelectionEvent(mainTable.getSelectedRowKeys(), newRowKeySet, mainTable);
            //queue event for execution
            selectEvent.queue();
        }
    }

    public void selectedListener(SelectionEvent selectionEvent) {
        /* ADFUtil.invokeEL("#{bindings.KontragentsView1.collectionModel.makeCurrent}",
                                 new Class[] { SelectionEvent.class },
                                 new Object[] { selectionEvent }); */
        /*  Row selectedRow =
           (Row)ADFUtil.evaluateEL("#{bindings.KontragentsView1Iterator.currentRow}");
         RowKeySet rks = mainTable.getDisclosedRowKeys();
        List keyList = Collections.singletonList(selectedRow.getKey());
        rks.add(keyList);  */
        /*  this.mainTable.getDisclosedRowKeys().addAll();
        AdfFacesContext.getCurrentInstance().addPartialTarget(mainTable);  */

        //keep track of (old) selected row key
        RowKeySet oldKeySet = selectionEvent.getRemovedSet();

        //until here only the row selection in the table has changed. The ADF
        //binding layer doesn't know about the row selection yet. If there is
        //uncommitted data then we don't change current row on the binding and
        //just set the table key back

        RichTable table = (RichTable) selectionEvent.getSource();

        //From the table, get the associated ADF tree binding. This handle
        //is used later to set the current row in the binding to the row
        //selected in the ADF Faces table.

        CollectionModel tableModel = (CollectionModel) table.getValue();
        JUCtrlHierBinding adfTableBinding = (JUCtrlHierBinding) tableModel.getWrappedData();

        //read the transaction state from the controller context. This way we
        //do have it easy to use this code in a bounded task flow too even if
        //the task flow doesn't share the data control instance with its parent
        ControllerContext cctx = ControllerContext.getInstance();
        if (cctx.getCurrentViewPort().isDataDirty()) {
            FacesMessage message =
                new FacesMessage(FacesMessage.SEVERITY_INFO, "Please Commit Changes",
                                 "Changes must be committed before selecting a new table row");
            FacesContext fctx = FacesContext.getCurrentInstance();
            fctx.addMessage(null, message);

            table.setSelectedRowKeys(oldKeySet);
            AdfFacesContext adfFacesCtx = AdfFacesContext.getCurrentInstance();
            //refresh table to show current selected row set back to original row.
            //Note that though we set the row back, no row selection event is fired.
            //Row selection events fire only if users select a row

            adfFacesCtx.addPartialTarget(table);
            fctx.renderResponse();
        } else {
            //Next: Make the selected table row the current row in the ADF binding
            //layer. The code below is the substitution of the default SelectionListener
            //definition JDevelopert set to #{bindings.DepartmentsVie1.makeCurrent}
            //or, put in more generic terms, #{bindings.<tree binding Id>.makeCurrent}
            JUCtrlHierNodeBinding tableRowBinding = (JUCtrlHierNodeBinding) table.getSelectedRowData();
            Row row = tableRowBinding.getRow();
            //get access to the iterator that is used by teh table binding
            DCIteratorBinding iter = adfTableBinding.getDCIteratorBinding();
            //set the row rterieved from the table as the current row
            iter.getRowSetIterator().setCurrentRow(row);
            //no need to refresh the ADF Faces table because table and binding
            //are in synch
            //this.pd_info.setDisclosed(true);
        }
    }

    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("KontragentsView1Iterator");
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

    private void setIsBuyer() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("IsBuyer", new Integer(1));
    }

    public String commitChange() {
        this.setIsBuyer();
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
        callSelectionListener();
        return null;
    }

    public void setFormToRefresh(RichPanelFormLayout formToRefresh) {
        this.formToRefresh = formToRefresh;
    }

    public RichPanelFormLayout getFormToRefresh() {
        return formToRefresh;
    }

    public String refreshForm() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("ContactDetailsView2Iterator");

        String currRowKey = it.getCurrentRowKeyString();
        Row currRow = it.findRowByKeyString(currRowKey);

        if (currRow != null) {
            currRow.refresh(Row.REFRESH_UNDO_CHANGES);
            it.setCurrentRowWithKey(currRowKey);
        }

        AdfFacesContext.getCurrentInstance().addPartialTarget(this.getFormToRefresh());

        return null;
    }

    public DnDAction dropHandler(DropEvent dropEvent) {
        RichTable table = (RichTable) dropEvent.getDragComponent();
        RowKeySet droppedValue = null;
        String KonId = null;
        Iterator it = null;
        RichTree tree = (RichTree) dropEvent.getDropComponent();
        Object currentRowKey = tree.getRowKey();
        List dropRowKey = (List) dropEvent.getDropSite();
        if (dropRowKey == null) {
            return DnDAction.NONE;
        }
        try {
            DataFlavor<RowKeySet> df = DataFlavor.getDataFlavor(RowKeySet.class, "rowcopy");
            droppedValue = dropEvent.getTransferable().getData(df);
            if (droppedValue != null) {
                it = droppedValue.iterator();
                if (it.hasNext()) {
                    List key = (List) it.next();
                    table.setRowKey(key);
                    JUCtrlHierNodeBinding rowBinding = (JUCtrlHierNodeBinding) table.getRowData();
                    Row tableRow = (Row) rowBinding.getRow();
                    KonId = (String) tableRow.getAttribute("Id");

                    tree.setRowKey(dropRowKey);
                    JUCtrlHierNodeBinding dropNode = (JUCtrlHierNodeBinding) tree.getRowData();
                    //Row treeRow = dropNode.getRow();
                    String dropNodeVO = dropNode.getHierTypeBinding().getStructureDefName();
                    if (!dropNodeVO.equalsIgnoreCase("ua.divas.view.ro.CompaignsView1")) {
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
                        RowKeySet drk = tree.getDisclosedRowKeys();
                        if (drk != null) {
                            drk.clear();
                            AdfFacesContext.getCurrentInstance().addPartialTarget(tree);
                        }
                        RowKeySetImpl rksImpl = new RowKeySetImpl();
                        rksImpl.add(dropRowKey);
                        String CompId = (String) treeDropNode.getRow().getAttribute("Id");
                        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
                        OperationBinding oper =
                            (OperationBinding) binding.getOperationBinding("addKonragentToCallList");
                        oper.getParamsMap().put("KonId", KonId);
                        oper.getParamsMap().put("CompId", CompId);
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
                        AdfFacesContext.getCurrentInstance().addPartialTarget(tree);

                    } else {
                        return DnDAction.NONE;
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            return DnDAction.NONE;
        }
        return DnDAction.COPY;
    }

    private void expandTree(RichTree soTreeTableBind) {

        RowKeySet disclosedTreeRowKeySet = new RowKeySetImpl();
        CollectionModel model = (CollectionModel) soTreeTableBind.getValue();
        JUCtrlHierBinding treeBinding = (JUCtrlHierBinding) model.getWrappedData();
        JUCtrlHierNodeBinding rootNode = treeBinding.getRootNodeBinding();
        disclosedTreeRowKeySet = soTreeTableBind.getDisclosedRowKeys();
        if (disclosedTreeRowKeySet == null) {
            disclosedTreeRowKeySet = new RowKeySetImpl();
        }
        List<JUCtrlHierNodeBinding> firstLevelChildren = rootNode.getChildren();
        for (JUCtrlHierNodeBinding node : firstLevelChildren) {
            ArrayList list = new ArrayList();
            list.add(node.getRowKey());
            disclosedTreeRowKeySet.add(list);
            //expandTreeChildrenNode(soTreeTableBind, node, list);
        }
        soTreeTableBind.setDisclosedRowKeys(disclosedTreeRowKeySet);
    }


    public DnDAction dropTableHandler(DropEvent dropEvent) {
        RichTree tree = (RichTree) dropEvent.getDragComponent();
        DataFlavor<RowKeySet> df = DataFlavor.getDataFlavor(RowKeySet.class, "rowmove");
        RowKeySet droppedValue = dropEvent.getTransferable().getData(df);

        List dropRowKey = (List) dropEvent.getDropSite();
        if (dropRowKey == null) {
            return DnDAction.NONE;
        }

        if (droppedValue != null) {
            Iterator it = droppedValue.iterator();
            if (it.hasNext()) {
                List key = (List) it.next();
                tree.setRowKey(key);
                JUCtrlHierNodeBinding rowBinding = (JUCtrlHierNodeBinding) tree.getRowData();
                Row treeRow = (Row) rowBinding.getRow();

                CollectionModel treeModel = (CollectionModel) tree.getValue();

                JUCtrlHierBinding treeBinding = (JUCtrlHierBinding) treeModel.getWrappedData();
                JUCtrlHierNodeBinding treeDragNode = treeBinding.findNodeByKeyPath(key);
                JUCtrlHierNodeBinding rootNode = treeBinding.getRootNodeBinding();
                JUCtrlHierNodeBinding dragNodeParent = treeDragNode.getParent();
                if (dragNodeParent.getParent() == null || treeDragNode == rootNode) {
                    return DnDAction.NONE;
                }
                String KonId = (String) treeRow.getAttribute("Id");
                BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
                OperationBinding oper = (OperationBinding) binding.getOperationBinding("removeKonragentFromCallList");
                oper.getParamsMap().put("KonId", KonId);
                oper.execute();
                //treeRow.remove();
                if (treeDragNode != null && treeDragNode != rootNode) {
                    /* RowKeySet drk = tree.getDisclosedRowKeys();
                    if (drk != null) {
                        drk.clear();
                        AdfFacesContext.getCurrentInstance().addPartialTarget(tree);
                    }
                       RowKeySetImpl rksImpl = new RowKeySetImpl();
                    //rksImpl.add(key);
                    while (dragNodeParent != null && dragNodeParent != rootNode) {
                        rksImpl.add(dragNodeParent.getKeyPath());
                        dragNodeParent = dragNodeParent.getParent();
                    }
                    ArrayList<JUCtrlHierNodeBinding> childList = treeDragNode.getChildren();
                    if (childList != null) {
                        for (JUCtrlHierNodeBinding nb : childList) {
                            rksImpl.add(nb.getKeyPath());
                        }
                    }
                    tree.setDisclosedRowKeys(rksImpl);   */



                    //this.setTree((RichTree) tree.getParent());
                    //this.onRefreshTree();
                    tree.getDisclosedRowKeys().clear();
                    //expandTree(tree);
                    AdfFacesContext.getCurrentInstance().addPartialTarget(tree.getParent());

                }
                //AdfFacesContext.getCurrentInstance().addPartialTarget(tree.getParent());
            }
        }

        return DnDAction.MOVE;
    }
}
