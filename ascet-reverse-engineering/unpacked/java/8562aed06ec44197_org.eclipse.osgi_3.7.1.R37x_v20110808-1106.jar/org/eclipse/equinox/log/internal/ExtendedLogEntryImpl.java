/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.equinox.log.ExtendedLogEntry;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceReference;
import org.osgi.service.log.LogEntry;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedLogEntryImpl
implements ExtendedLogEntry,
LogEntry {
    private static long nextSequenceNumber = 1L;
    private static long nextThreadId = 1L;
    private static final Map<Thread, Long> threadIds = ExtendedLogEntryImpl.createThreadIdMap();
    private final String loggerName;
    private final Bundle bundle;
    private final int level;
    private final String message;
    private final Throwable throwable;
    private final Object contextObject;
    private final long time = System.currentTimeMillis();
    private final long threadId;
    private final String threadName;
    private final long sequenceNumber;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private static Map<Thread, Long> createThreadIdMap() {
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Thread");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            clazz.getMethod("getId", null);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            return new WeakHashMap<Thread, Long>();
        }
        return null;
    }

    private static long getId(Thread thread) {
        if (threadIds == null) {
            return thread.getId();
        }
        Long threadId = threadIds.get(thread);
        if (threadId == null) {
            threadId = new Long(nextThreadId++);
            threadIds.put(thread, threadId);
        }
        return threadId;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ExtendedLogEntryImpl(Bundle bundle, String loggerName, Object contextObject, int level, String message, Throwable throwable) {
        this.loggerName = loggerName;
        this.bundle = bundle;
        this.level = level;
        this.message = message;
        this.throwable = throwable;
        this.contextObject = contextObject;
        Thread currentThread = Thread.currentThread();
        this.threadName = currentThread.getName();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.log.internal.ExtendedLogEntryImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            this.threadId = ExtendedLogEntryImpl.getId(currentThread);
            this.sequenceNumber = nextSequenceNumber++;
            // ** MonitorExit[var8_8] (shouldn't be in output)
            return;
        }
    }

    @Override
    public String getLoggerName() {
        return this.loggerName;
    }

    @Override
    public long getSequenceNumber() {
        return this.sequenceNumber;
    }

    @Override
    public long getThreadId() {
        return this.threadId;
    }

    @Override
    public String getThreadName() {
        return this.threadName;
    }

    @Override
    public Bundle getBundle() {
        return this.bundle;
    }

    @Override
    public Throwable getException() {
        return this.throwable;
    }

    @Override
    public int getLevel() {
        return this.level;
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public ServiceReference getServiceReference() {
        if (this.contextObject != null && this.contextObject instanceof ServiceReference) {
            return (ServiceReference)this.contextObject;
        }
        return null;
    }

    @Override
    public long getTime() {
        return this.time;
    }

    @Override
    public Object getContext() {
        return this.contextObject;
    }
}

