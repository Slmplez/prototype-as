/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.equinox.log.internal.EventAdminLogListener;
import org.eclipse.equinox.log.internal.ExtendedLogReaderServiceFactory;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventAdminAdapter
implements ServiceTrackerCustomizer<Object, Object> {
    public static final String EVENT_TOPIC = "event.topics";
    private static final String[] LOG_TOPICS_ARRAY = new String[]{"*", "org/*", "org/osgi/*", "org/osgi/service/*", "org/osgi/service/log/*", "org/osgi/service/log/LogEntry/*", "org/osgi/service/log/LogEntry/LOG_ERROR", "org/osgi/service/log/LogEntry/LOG_WARNING", "org/osgi/service/log/LogEntry/LOG_INFO", "org/osgi/service/log/LogEntry/LOG_DEBUG", "org/osgi/service/log/LogEntry/LOG_OTHER"};
    private static final Object LOG_TOPIC_TOKEN = new Object();
    private static Collection<String> logTopics = new HashSet<String>(Arrays.asList(LOG_TOPICS_ARRAY));
    private static Collection<String> eventAdminObjectClass = Arrays.asList("org.osgi.service.event.EventAdmin");
    private static Collection<String> eventHandlerObjectClass = Arrays.asList("org.osgi.service.event.EventHandler");
    private ServiceTracker<Object, Object> eventAdminTracker;
    private ServiceTracker<Object, Object> eventHandlerTracker;
    private BundleContext context;
    private ServiceReference<Object> eventAdmin;
    private int logEventHandlers;
    private ExtendedLogReaderServiceFactory logReaderServiceFactory;
    private EventAdminLogListener logListener;

    public EventAdminAdapter(BundleContext context, ExtendedLogReaderServiceFactory logReaderServiceFactory) {
        this.context = context;
        this.logReaderServiceFactory = logReaderServiceFactory;
        this.eventAdminTracker = new ServiceTracker<Object, Object>(context, "org.osgi.service.event.EventAdmin", this);
        this.eventHandlerTracker = new ServiceTracker<Object, Object>(context, "org.osgi.service.event.EventHandler", this);
    }

    public void start() {
        this.eventAdminTracker.open();
        this.eventHandlerTracker.open();
    }

    public void stop() {
        this.eventAdminTracker.close();
        this.eventHandlerTracker.close();
    }

    @Override
    public Object addingService(ServiceReference<Object> reference) {
        Object toTrack = null;
        Object objectClass = reference.getProperty("objectClass");
        Object topics = reference.getProperty(EVENT_TOPIC);
        if (EventAdminAdapter.checkServiceProp(objectClass, eventAdminObjectClass) && this.eventAdmin == null) {
            toTrack = reference;
            this.eventAdmin = reference;
        } else if (EventAdminAdapter.checkServiceProp(objectClass, eventHandlerObjectClass) && EventAdminAdapter.checkServiceProp(topics, logTopics)) {
            ++this.logEventHandlers;
            toTrack = LOG_TOPIC_TOKEN;
        }
        if (this.eventAdmin != null && this.logEventHandlers > 0 && this.logListener == null) {
            try {
                this.logListener = new EventAdminLogListener(this.context.getService(this.eventAdmin));
            }
            catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
            this.logReaderServiceFactory.addLogListener(this.logListener, ExtendedLogReaderServiceFactory.NULL_LOGGER_FILTER);
        }
        return toTrack;
    }

    @Override
    public void modifiedService(ServiceReference<Object> reference, Object tracked) {
        this.removedService(reference, tracked);
        this.addingService(reference);
    }

    @Override
    public void removedService(ServiceReference<Object> reference, Object tracked) {
        if (tracked == this.eventAdmin) {
            this.eventAdmin = null;
            this.context.ungetService(reference);
        } else if (LOG_TOPIC_TOKEN == tracked) {
            --this.logEventHandlers;
        }
        if (this.logListener != null && (this.eventAdmin == null || this.logEventHandlers == 0)) {
            this.logReaderServiceFactory.removeLogListener(this.logListener);
            this.logListener = null;
        }
    }

    private static boolean checkServiceProp(Object property, Collection<String> check) {
        if (property instanceof String) {
            return check.contains(property);
        }
        if (property instanceof String[]) {
            String[] topics = (String[])property;
            int i = 0;
            while (i < topics.length) {
                if (check.contains(topics[i])) {
                    return true;
                }
                ++i;
            }
        }
        if (property instanceof Collection) {
            for (Object prop : (Collection)property) {
                if (!check.contains(prop)) continue;
                return true;
            }
        }
        return false;
    }
}

