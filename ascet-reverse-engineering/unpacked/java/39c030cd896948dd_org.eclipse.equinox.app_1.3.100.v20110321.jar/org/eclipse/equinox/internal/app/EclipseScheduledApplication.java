/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.event.Event
 *  org.osgi.service.event.EventHandler
 *  org.osgi.service.event.TopicPermission
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.app;

import java.security.Guard;
import java.security.GuardedObject;
import java.security.Permission;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.AppPersistence;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ScheduledApplication;
import org.osgi.service.event.Event;
import org.osgi.service.event.EventHandler;
import org.osgi.service.event.TopicPermission;
import org.osgi.util.tracker.ServiceTracker;

public class EclipseScheduledApplication
implements ScheduledApplication,
EventHandler {
    private static final String FILTER_PREFIX;
    private static final String FILTER_POSTFIX = "))";
    private boolean recurring;
    private String topic;
    private String eventFilter;
    private Map args;
    private String appPid;
    private String id;
    private ServiceRegistration sr;
    private ServiceTracker appTracker;
    private boolean removed = false;
    static /* synthetic */ Class class$0;

    static {
        StringBuffer stringBuffer = new StringBuffer("(&(objectclass=");
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.application.ApplicationDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FILTER_PREFIX = stringBuffer.append(clazz.getName()).append(")(").append("service.pid").append("=").toString();
    }

    EclipseScheduledApplication(BundleContext context, String id, String appPid, Map args, String topic, String eventFilter, boolean recurring) throws InvalidSyntaxException {
        this.id = id;
        this.appPid = appPid;
        this.args = args;
        this.topic = topic == null || topic.trim().equals("") || topic.trim().equals("*") ? null : topic;
        this.eventFilter = eventFilter;
        this.recurring = recurring;
        this.appTracker = new ServiceTracker(context, context.createFilter(String.valueOf(FILTER_PREFIX) + appPid + FILTER_POSTFIX), null);
        Activator.openTracker(this.appTracker, false);
    }

    public String getScheduleId() {
        return this.id;
    }

    String getAppPid() {
        return this.appPid;
    }

    public synchronized String getTopic() {
        if (this.removed) {
            throw new IllegalStateException(Messages.scheduled_app_removed);
        }
        return this.topic;
    }

    public synchronized String getEventFilter() {
        if (this.removed) {
            throw new IllegalStateException(Messages.scheduled_app_removed);
        }
        return this.eventFilter;
    }

    public synchronized boolean isRecurring() {
        if (this.removed) {
            throw new IllegalStateException(Messages.scheduled_app_removed);
        }
        return this.recurring;
    }

    public synchronized ApplicationDescriptor getApplicationDescriptor() {
        if (this.removed) {
            throw new IllegalStateException(Messages.scheduled_app_removed);
        }
        return (ApplicationDescriptor)Activator.getService(this.appTracker);
    }

    public synchronized Map getArguments() {
        if (this.removed) {
            throw new IllegalStateException(Messages.scheduled_app_removed);
        }
        return this.args == null ? null : new HashMap(this.args);
    }

    private Map getArguments(Event trigger) {
        Map<String, GuardedObject> result = this.args == null ? new HashMap() : this.getArguments();
        result.put("org.osgi.triggeringevent", new GuardedObject(trigger, new TriggerGuard(trigger.getTopic())));
        return result;
    }

    public synchronized void remove() {
        if (this.removed) {
            return;
        }
        this.removed = true;
        AppPersistence.removeScheduledApp(this);
        if (this.sr != null) {
            this.sr.unregister();
        }
        this.sr = null;
        this.appTracker.close();
    }

    public synchronized void handleEvent(Event event) {
        try {
            if (this.removed) {
                return;
            }
            ApplicationDescriptor desc = this.getApplicationDescriptor();
            if (desc == null) {
                return;
            }
            desc.launch(this.getArguments(event));
        }
        catch (Exception e) {
            String message = NLS.bind((String)Messages.scheduled_app_launch_error, (Object)this.sr);
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, (Throwable)e, null));
            return;
        }
        if (!this.isRecurring()) {
            this.remove();
        }
    }

    synchronized void setServiceRegistration(ServiceRegistration sr) {
        this.sr = sr;
        if (this.removed) {
            sr.unregister();
        }
    }

    public class TriggerGuard
    implements Guard {
        String eventTopic;

        public TriggerGuard(String topic) {
            this.eventTopic = topic;
        }

        public void checkGuard(Object object) throws SecurityException {
            SecurityManager sm = System.getSecurityManager();
            if (sm != null) {
                sm.checkPermission((Permission)new TopicPermission(this.eventTopic, "subscribe"));
            }
        }
    }
}

