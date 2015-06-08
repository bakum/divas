package ua.divas.bean.listener;

import java.util.List;

import oracle.adf.controller.v2.context.LifecycleContext;
import oracle.adf.controller.v2.lifecycle.PagePhaseEvent;
import oracle.adf.controller.v2.lifecycle.PagePhaseListener;
import oracle.adf.controller.v2.lifecycle.Lifecycle;
import oracle.adf.model.binding.DCBindingContainer;

import oracle.jbo.JboException;

public class DivasListener implements PagePhaseListener {
    public DivasListener() {
        super();
    }

    @Override
    public void afterPhase(PagePhaseEvent pagePhaseEvent) {
        if (pagePhaseEvent.getPhaseId() == Lifecycle.PREPARE_RENDER_ID) {
        }
    }

    @Override
    public void beforePhase(PagePhaseEvent pagePhaseEvent) {
        if (pagePhaseEvent.getPhaseId() == Lifecycle.PREPARE_RENDER_ID) {
            processErrors(pagePhaseEvent.getLifecycleContext());
        }
    }

    private void processErrors(LifecycleContext ctx) {
        DCBindingContainer bc = (DCBindingContainer) ctx.getBindingContainer();
        if (bc != null) {
            List<Exception> exceptions = bc.getExceptionsList();
            if (exceptions != null) {
                for (Exception exception : exceptions) {
                    System.out.println("DivasPagePhaseListener processErrors exception " + exception.getMessage());
                    if (exception instanceof JboException) {
                        bc.ignoreExceptionForDisplay((JboException) exception);
                    }
                }
            }
        }

    }
}
