package ua.divas.view.control;

import java.util.Date;
import java.util.UUID;

import javax.faces.event.ActionEvent;

import oracle.adf.share.ADFContext;
import oracle.adf.share.security.SecurityContext;

import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;

import ua.divas.classes.StartSchedulerQuartz;
import ua.divas.view.NotificationBean;

public class ReminderBean {
    static final long ONE_MINUTE_IN_MILLIS=60000;//millisecs
    
    private String getSessionUser() {
        ADFContext adfCtx = ADFContext.getCurrent();
        SecurityContext secCntx = adfCtx.getSecurityContext();
        String user = secCntx.getUserPrincipal().getName();
        return user;
    }

    public void run() throws Exception {

        String cutid = UUID.randomUUID().toString().substring(0, 7);
        JobDetail job =
            JobBuilder.newJob(NotificationBean.class).withDescription("trigger" + cutid).withIdentity("job" + cutid,
                                                                                                      "group").build();
        
        long t = new Date().getTime();
        Date afterAddingTenMins=new Date(t + (2 * ONE_MINUTE_IN_MILLIS));
        Date runDate = afterAddingTenMins;
        Trigger trigger =
            TriggerBuilder.newTrigger().startAt(runDate).withDescription(getSessionUser()).withIdentity("trigger" +
                                                                                                        cutid,
                                                                                                        "group").build();
        if (StartSchedulerQuartz.sched != null) {
            StartSchedulerQuartz.sched.scheduleJob(job, trigger);
            System.out.println("------- Новое напоминание! ----------------");
            return;
        }
        System.out.println("-------Нихрена не получилось ----------------");
        //creatNotification(cutid);

    }

    public void onReminder(ActionEvent actionEvent) throws Exception {
        run();
    }
}
