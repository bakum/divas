package ua.divas.bean;

import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;

import oracle.adf.view.rich.component.rich.data.RichTreeTable;

import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

public class BallansBean {
    private RichTreeTable treeTable;

    public BallansBean() {
    }

    public void onExecute(ActionEvent actionEvent) {
        BindingContext bctx = BindingContext.getCurrent();
        BindingContainer bindings = bctx.getCurrentBindingsEntry();
        OperationBinding executeWithParams = bindings.getOperationBinding("ExecuteWithParams1");
        executeWithParams.execute();
        executeWithParams = bindings.getOperationBinding("ExecuteWithParams");
        executeWithParams.execute();
        
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTreeTable());
    }

    public void setTreeTable(RichTreeTable treeTable) {
        this.treeTable = treeTable;
    }

    public RichTreeTable getTreeTable() {
        return treeTable;
    }
}
