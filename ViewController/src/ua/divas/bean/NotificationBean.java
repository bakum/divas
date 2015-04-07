package ua.divas.view;

import java.io.Serializable;

import java.util.Date;
import java.util.UUID;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.share.ADFContext;
import oracle.adf.share.security.SecurityContext;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.SchedulerException;
import org.quartz.Trigger;

import org.quartz.TriggerBuilder;

import ua.divas.classes.StartSchedulerQuartz;

public class NotificationBean implements Job, Serializable {
    @SuppressWarnings("compatibility:3193852193603616620")
    private static final long serialVersionUID = 1L;


    @Override
    public synchronized void execute(JobExecutionContext jec) throws JobExecutionException {
        System.out.println("Trigger description: " + jec.getTrigger().getDescription());
        System.out.println("Job description: " + jec.getJobDetail().getDescription());

        FacesContext context = FacesContext.getCurrentInstance();
        ExtendedRenderKitService erks = Service.getService(context.getRenderKit(), ExtendedRenderKitService.class);
        erks.addScript(context,
                       "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','notice')");
        //erks.addScript(context, "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','warning')");
        //erks.addScript(context, "Growl('Новое напоминание!','Перейдите в панель оповещений чтобы прочитать!','error')");
    }

}
