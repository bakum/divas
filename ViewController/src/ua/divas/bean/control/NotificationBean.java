package ua.divas.view.control;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

public class NotificationBean {
    public NotificationBean() {
    }

    public void onNotification(ActionEvent actionEvent) {
        FacesContext context = FacesContext.getCurrentInstance();
        ExtendedRenderKitService erks = Service.getService(context.getRenderKit(), ExtendedRenderKitService.class);
        erks.addScript(context, "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','notice')");
        //erks.addScript(context, "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','warning')");
        //erks.addScript(context, "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','error')");
    }
}
