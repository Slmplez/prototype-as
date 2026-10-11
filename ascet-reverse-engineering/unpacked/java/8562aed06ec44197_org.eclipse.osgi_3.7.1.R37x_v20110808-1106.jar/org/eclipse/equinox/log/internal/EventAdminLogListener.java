/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Hashtable;
import org.eclipse.equinox.log.SynchronousLogListener;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceReference;
import org.osgi.service.log.LogEntry;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventAdminLogListener
implements SynchronousLogListener {
    public static final String TOPIC = "org/osgi/service/log/LogEntry";
    public static final char TOPIC_SEPARATOR = '/';
    public static final String LOG_ERROR = "LOG_ERROR";
    public static final String LOG_WARNING = "LOG_WARNING";
    public static final String LOG_INFO = "LOG_INFO";
    public static final String LOG_DEBUG = "LOG_DEBUG";
    public static final String LOG_OTHER = "LOG_OTHER";
    public static final String TIMESTAMP = "timestamp";
    public static final String MESSAGE = "message";
    public static final String LOG_LEVEL = "log.level";
    public static final String LOG_ENTRY = "log.entry";
    public static final String SERVICE = "service";
    public static final String SERVICE_ID = "service.id";
    public static final String SERVICE_OBJECTCLASS = "service.objectClass";
    public static final String SERVICE_PID = "service.pid";
    public static final String BUNDLE = "bundle";
    public static final String BUNDLE_ID = "bundle.id";
    public static final String BUNDLE_SYMBOLICNAME = "bundle.symbolicName";
    public static final String EVENT = "event";
    public static final String EXCEPTION = "exception";
    public static final String EXCEPTION_CLASS = "exception.class";
    public static final String EXCEPTION_MESSAGE = "exception.message";
    private final Object eventAdmin;
    private final Method postEvent;
    private final Constructor<?> event;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public EventAdminLogListener(Object eventAdmin) throws ClassNotFoundException, NoSuchMethodException {
        this.eventAdmin = eventAdmin;
        Class<?> eventAdminClass = eventAdmin.getClass();
        ClassLoader cl = eventAdminClass.getClassLoader();
        Class<?> eventClass = cl.loadClass("org.osgi.service.event.Event");
        this.postEvent = eventAdminClass.getMethod("postEvent", eventClass);
        Class[] classArray = new Class[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.util.Dictionary");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        this.event = eventClass.getConstructor(classArray);
    }

    @Override
    public void logged(LogEntry entry) {
        try {
            Object convertedEvent = this.convertEvent(entry);
            this.postEvent.invoke(this.eventAdmin, convertedEvent);
        }
        catch (InvocationTargetException e) {
            Throwable t = e.getTargetException();
            if (t instanceof RuntimeException) {
                throw (RuntimeException)t;
            }
            if (t instanceof Error) {
                throw (Error)t;
            }
            throw new RuntimeException(e);
        }
        catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        catch (InstantiationException e) {
            throw new RuntimeException(e);
        }
    }

    private Object convertEvent(LogEntry entry) throws InstantiationException, IllegalAccessException, InvocationTargetException {
        ServiceReference ref;
        String topic = TOPIC;
        int level = entry.getLevel();
        switch (level) {
            case 1: {
                topic = new StringBuffer(String.valueOf(topic)).append("/LOG_ERROR").toString();
                break;
            }
            case 2: {
                topic = new StringBuffer(String.valueOf(topic)).append("/LOG_WARNING").toString();
                break;
            }
            case 3: {
                topic = new StringBuffer(String.valueOf(topic)).append("/LOG_INFO").toString();
                break;
            }
            case 4: {
                topic = new StringBuffer(String.valueOf(topic)).append("/LOG_DEBUG").toString();
                break;
            }
            default: {
                topic = new StringBuffer(String.valueOf(topic)).append("/LOG_OTHER").toString();
            }
        }
        Hashtable<String, Object> properties = new Hashtable<String, Object>();
        Bundle bundle = entry.getBundle();
        if (bundle == null) {
            throw new RuntimeException("LogEntry.getBundle() returns null");
        }
        EventAdminLogListener.putBundleProperties(properties, bundle);
        Throwable t = entry.getException();
        if (t != null) {
            EventAdminLogListener.putExceptionProperties(properties, t);
        }
        if ((ref = entry.getServiceReference()) != null) {
            EventAdminLogListener.putServiceReferenceProperties(properties, ref);
        }
        properties.put(LOG_ENTRY, entry);
        properties.put(LOG_LEVEL, new Integer(entry.getLevel()));
        if (entry.getMessage() != null) {
            properties.put(MESSAGE, entry.getMessage());
        }
        properties.put(TIMESTAMP, new Long(entry.getTime()));
        return this.event.newInstance(topic, properties);
    }

    public static void putServiceReferenceProperties(Hashtable<String, Object> properties, ServiceReference<?> ref) {
        Object o2;
        properties.put(SERVICE, ref);
        properties.put(SERVICE_ID, ref.getProperty(SERVICE_ID));
        Object o = ref.getProperty(SERVICE_PID);
        if (o != null && o instanceof String) {
            properties.put(SERVICE_PID, o);
        }
        if ((o2 = ref.getProperty("objectClass")) != null && o2 instanceof String[]) {
            properties.put(SERVICE_OBJECTCLASS, o2);
        }
    }

    public static void putBundleProperties(Hashtable<String, Object> properties, Bundle bundle) {
        properties.put(BUNDLE_ID, new Long(bundle.getBundleId()));
        String symbolicName = bundle.getSymbolicName();
        if (symbolicName != null) {
            properties.put(BUNDLE_SYMBOLICNAME, symbolicName);
        }
        properties.put(BUNDLE, bundle);
    }

    public static void putExceptionProperties(Hashtable<String, Object> properties, Throwable t) {
        properties.put(EXCEPTION, t);
        properties.put(EXCEPTION_CLASS, t.getClass().getName());
        String message = t.getMessage();
        if (message != null) {
            properties.put(EXCEPTION_MESSAGE, t.getMessage());
        }
    }
}

