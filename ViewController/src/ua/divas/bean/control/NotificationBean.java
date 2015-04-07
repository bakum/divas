package ua.divas.bean.control;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.share.ADFContext;
import oracle.adf.share.security.SecurityContext;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.render.ClientEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

public class NotificationBean {
    public NotificationBean() {
    }

    private String getSessionUser() {
        ADFContext adfCtx = ADFContext.getCurrent();
        SecurityContext secCntx = adfCtx.getSecurityContext();
        String user = secCntx.getUserPrincipal().getName();
        return user;
    }
    
    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("NotificationView1Iterator");
        it.executeQuery();
    }
    
    public String commitChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Commit");
        ob.execute();
        refresh();
        //ADFContext.getCurrent().getRequestScope().put("refreshNeeded", Boolean.TRUE);
        return null;
    }
    
    public String rollbackChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
        refresh();
        return null;
    }

    public void onCustomEvent(ClientEvent clientEvent) {
        //System.out.println("---"+clientEvent.getParameters().get("payload"));
        if (getSessionUser().matches((String)clientEvent.getParameters().get("payload"))) {
            refresh();
            FacesContext context = FacesContext.getCurrentInstance();
            ExtendedRenderKitService erks = Service.getService(context.getRenderKit(), ExtendedRenderKitService.class);
            erks.addScript(context,
                           "Growl('Напоминаю!'," +
                "'У Вас новое уведомление! Перейдите в панель уведомлений.','notice')");
        }
    }

    public void onDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            commitChange();
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            rollbackChange();
        }
    }

    public void onRefresh(ActionEvent actionEvent) {
        refresh();
    }
}
