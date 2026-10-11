/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.io.PrintStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.SynchronousLogListener;
import org.eclipse.equinox.log.internal.BasicReadWriteLock;
import org.eclipse.equinox.log.internal.ExtendedLogEntryImpl;
import org.eclipse.equinox.log.internal.ExtendedLogReaderServiceImpl;
import org.eclipse.equinox.log.internal.SerializedTaskQueue;
import org.eclipse.osgi.internal.baseadaptor.ArrayMap;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.log.LogEntry;
import org.osgi.service.log.LogListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedLogReaderServiceFactory
implements ServiceFactory<ExtendedLogReaderServiceImpl> {
    static final int MAX_RECURSIONS = 50;
    private static final Enumeration<?> EMPTY_ENUMERATION = Collections.enumeration(Collections.EMPTY_LIST);
    static final LogFilter NULL_LOGGER_FILTER = new LogFilter(){

        public boolean isLoggable(Bundle b, String loggerName, int logLevel) {
            return true;
        }
    };
    private static final LogFilter[] ALWAYS_LOG = new LogFilter[0];
    private static PrintStream errorStream;
    private ArrayMap<LogListener, Object[]> listeners = new ArrayMap(5);
    private LogFilter[] filters = null;
    private BasicReadWriteLock listenersLock = new BasicReadWriteLock();

    static boolean safeIsLoggable(LogFilter filter, Bundle bundle, String name, int level) {
        try {
            return filter.isLoggable(bundle, name, level);
        }
        catch (RuntimeException e) {
            ExtendedLogReaderServiceFactory.getErrorStream().println("LogFilter.isLoggable threw a non-fatal unchecked exception as follows:");
            e.printStackTrace(ExtendedLogReaderServiceFactory.getErrorStream());
        }
        catch (LinkageError e) {
            ExtendedLogReaderServiceFactory.getErrorStream().println("LogFilter.isLoggable threw a non-fatal unchecked exception as follows:");
            e.printStackTrace(ExtendedLogReaderServiceFactory.getErrorStream());
        }
        return false;
    }

    private static synchronized PrintStream getErrorStream() {
        if (errorStream == null) {
            return System.err;
        }
        return errorStream;
    }

    public static synchronized void setErrorStream(PrintStream ps) {
        errorStream = ps;
    }

    static void safeLogged(LogListener listener, LogEntry logEntry) {
        try {
            listener.logged(logEntry);
        }
        catch (RuntimeException e) {
            ExtendedLogReaderServiceFactory.getErrorStream().println("LogListener.logged threw a non-fatal unchecked exception as follows:");
            e.printStackTrace(ExtendedLogReaderServiceFactory.getErrorStream());
        }
        catch (LinkageError e) {
            ExtendedLogReaderServiceFactory.getErrorStream().println("LogListener.logged threw a non-fatal unchecked exception as follows:");
            e.printStackTrace(ExtendedLogReaderServiceFactory.getErrorStream());
        }
    }

    @Override
    public ExtendedLogReaderServiceImpl getService(Bundle bundle, ServiceRegistration<ExtendedLogReaderServiceImpl> registration) {
        return new ExtendedLogReaderServiceImpl(this);
    }

    @Override
    public void ungetService(Bundle bundle, ServiceRegistration<ExtendedLogReaderServiceImpl> registration, ExtendedLogReaderServiceImpl service) {
        service.shutdown();
    }

    boolean isLoggable(final Bundle bundle, final String name, final int level) {
        if (System.getSecurityManager() != null) {
            return AccessController.doPrivileged(new PrivilegedAction<Boolean>(){

                @Override
                public Boolean run() {
                    return new Boolean(ExtendedLogReaderServiceFactory.this.isLoggablePrivileged(bundle, name, level));
                }
            });
        }
        return this.isLoggablePrivileged(bundle, name, level);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean isLoggablePrivileged(Bundle bundle, String name, int level) {
        int numNested = this.listenersLock.readLock();
        try {
            if (numNested == 50) {
                return false;
            }
            if (this.filters == null) {
                return false;
            }
            if (this.filters == ALWAYS_LOG) {
                return true;
            }
            int filtersLength = this.filters.length;
            int i = 0;
            while (i < filtersLength) {
                LogFilter filter = this.filters[i];
                if (ExtendedLogReaderServiceFactory.safeIsLoggable(filter, bundle, name, level)) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        finally {
            this.listenersLock.readUnlock();
        }
    }

    void log(final Bundle bundle, final String name, final Object context, final int level, final String message, final Throwable exception) {
        if (System.getSecurityManager() != null) {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    ExtendedLogReaderServiceFactory.this.logPrivileged(bundle, name, context, level, message, exception);
                    return null;
                }
            });
        } else {
            this.logPrivileged(bundle, name, context, level, message, exception);
        }
    }

    void logPrivileged(Bundle bundle, String name, Object context, int level, String message, Throwable exception) {
        ExtendedLogEntryImpl logEntry = new ExtendedLogEntryImpl(bundle, name, context, level, message, exception);
        int numNested = this.listenersLock.readLock();
        try {
            if (numNested >= 50) {
                return;
            }
            int size = this.listeners.size();
            int i = 0;
            while (i < size) {
                Object[] listenerObjects = this.listeners.getValue(i);
                LogFilter filter = (LogFilter)listenerObjects[0];
                if (ExtendedLogReaderServiceFactory.safeIsLoggable(filter, bundle, name, level)) {
                    LogListener listener = this.listeners.getKey(i);
                    SerializedTaskQueue taskQueue = (SerializedTaskQueue)listenerObjects[1];
                    if (taskQueue != null) {
                        taskQueue.put(new LogTask(logEntry, listener));
                    } else {
                        ExtendedLogReaderServiceFactory.safeLogged(listener, logEntry);
                    }
                }
                ++i;
            }
        }
        finally {
            this.listenersLock.readUnlock();
        }
    }

    void addLogListener(LogListener listener, LogFilter filter) {
        this.listenersLock.writeLock();
        try {
            Object[] listenerObjects = this.listeners.get(listener);
            if (listenerObjects == null) {
                SerializedTaskQueue taskQueue = listener instanceof SynchronousLogListener ? null : new SerializedTaskQueue(listener.toString());
                listenerObjects = new Object[]{filter, taskQueue};
            } else if (filter != listenerObjects[0]) {
                listenerObjects[0] = filter;
            }
            this.listeners.put(listener, listenerObjects);
            this.recalculateFilters();
        }
        finally {
            this.listenersLock.writeUnlock();
        }
    }

    private void recalculateFilters() {
        ArrayList<LogFilter> filtersList = new ArrayList<LogFilter>();
        int size = this.listeners.size();
        int i = 0;
        while (i < size) {
            Object[] listenerObjects = this.listeners.getValue(i);
            LogFilter filter = (LogFilter)listenerObjects[0];
            if (filter == NULL_LOGGER_FILTER) {
                this.filters = ALWAYS_LOG;
                return;
            }
            filtersList.add(filter);
            ++i;
        }
        if (filtersList.isEmpty()) {
            this.filters = null;
        }
        this.filters = filtersList.toArray(new LogFilter[filtersList.size()]);
    }

    void removeLogListener(LogListener listener) {
        this.listenersLock.writeLock();
        try {
            this.listeners.remove(listener);
            this.recalculateFilters();
        }
        finally {
            this.listenersLock.writeUnlock();
        }
    }

    Enumeration<?> getLog() {
        return EMPTY_ENUMERATION;
    }

    static final class LogTask
    implements Runnable {
        private final LogEntry logEntry;
        private final LogListener listener;

        LogTask(LogEntry logEntry, LogListener listener) {
            this.logEntry = logEntry;
            this.listener = listener;
        }

        public void run() {
            ExtendedLogReaderServiceFactory.safeLogged(this.listener, this.logEntry);
        }
    }
}

