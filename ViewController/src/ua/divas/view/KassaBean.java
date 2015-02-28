package ua.divas.view;

import java.util.Iterator;
import java.util.List;

import javax.el.ELContext;

import javax.el.ExpressionFactory;

import javax.el.MethodExpression;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTreeTable;

import oracle.binding.BindingContainer;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.RowNotFoundException;
import oracle.jbo.RowSetIterator;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;
import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;
import oracle.jbo.uicli.binding.JUIteratorBinding;

import org.apache.myfaces.trinidad.event.SelectionEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;
import org.apache.myfaces.trinidad.model.TreeModel;

public class KassaBean {

    public KassaBean() {
    }

    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    /* public void onTreeSelect(SelectionEvent selectionEvent) {
        RichTreeTable tree1 = this.getTreeTable();
        RowKeySet rks2 = tree1.getSelectedRowKeys();
        Iterator rksIterator = rks2.iterator();
        if (rksIterator.hasNext()) {
            List key = (List) rksIterator.next();
            JUCtrlHierBinding treeBinding = null;
            treeBinding = (JUCtrlHierBinding) ((CollectionModel) tree1.getValue()).getWrappedData();
            JUCtrlHierNodeBinding nodeBinding = treeBinding.findNodeByKeyPath(key);
            DCIteratorBinding _treeIteratorBinding = null;
            _treeIteratorBinding = treeBinding.getDCIteratorBinding();
            JUIteratorBinding iterator = nodeBinding.getIteratorBinding();
            String keyStr = nodeBinding.getRowKey().toStringFormat(true);
            DCIteratorBinding iter = (DCIteratorBinding) getBindings().get("VwKassaMoves1Iterator");
            try {
                iter.setCurrentRowWithKey(keyStr);
                String regId = (String) iter.getCurrentRow().getAttribute("RegistratorId");
                System.out.println(regId);
            } catch (RowNotFoundException e) {
                try {
                    iterator.setCurrentRowWithKey(keyStr);
                    String regId = (String) iterator.getCurrentRow().getAttribute("RegistratorId");
                    System.out.println(regId);
                } catch (RowNotFoundException er) {
                    System.out.println(er.getMessage());
                }
            }
        }
    } */


    public void onTreeSelect(SelectionEvent selectionEvent) {
        //original selection listener set by ADF
        //#{bindings.KassaView1.treeModel.makeCurrent}
        String adfSelectionListener = "#{bindings.KassaView1.treeModel.makeCurrent}";

        FacesContext fctx = FacesContext.getCurrentInstance();
        Application application = fctx.getApplication();
        ELContext elCtx = fctx.getELContext();
        ExpressionFactory exprFactory = application.getExpressionFactory();

        MethodExpression me = null;
        me = exprFactory.createMethodExpression(elCtx, adfSelectionListener, Object.class, new Class[] {
                                                SelectionEvent.class });
        me.invoke(elCtx, new Object[] { selectionEvent });
        

        /* END PRESERVER DEFAULT ADF SELECT BEHAVIOR */
         RichTreeTable tree = (RichTreeTable) selectionEvent.getSource();
        TreeModel model = (TreeModel) tree.getValue();

        //get selected nodes
        RowKeySet rowKeySet = selectionEvent.getAddedSet();
        Iterator rksIterator = rowKeySet.iterator();
        //for single select configurations,this only is called once
        while (rksIterator.hasNext()) {
            List key = (List) rksIterator.next();
            System.out.println(key);
            JUCtrlHierBinding treeBinding = null;
            CollectionModel collectionModel = (CollectionModel) tree.getValue();
            treeBinding = (JUCtrlHierBinding) collectionModel.getWrappedData();
            JUCtrlHierNodeBinding nodeBinding = null;
            nodeBinding = treeBinding.findNodeByKeyPath(key);
            Row rw = nodeBinding.getRow();

            //print first row attribute. Note that in a tree you have to
            //determine the node type if you want to select node attributes
            //by name and not index
            String rowType = rw.getStructureDef().getDefName();
            System.out.println(rowType);

            if (rowType.equalsIgnoreCase("VwKassaMoves")) {
                //System.out.println(rw.getAttribute("RegistratorId"));
                String regId = (String) rw.getAttribute("RegistratorId");
                Key k = new Key(new Object[] { regId });                
                DCIteratorBinding iter = (DCIteratorBinding) getBindings().get("OrdersView1Iterator");
                RowSetIterator rsi = iter.getRowSetIterator();
                Row row = rsi.findByKey(k, 1)[0];
                rsi.setCurrentRow(row);
            } else {
                System.out.println("Huh????");
            } 

            // ... do more useful stuff here
        } 
    }
}
