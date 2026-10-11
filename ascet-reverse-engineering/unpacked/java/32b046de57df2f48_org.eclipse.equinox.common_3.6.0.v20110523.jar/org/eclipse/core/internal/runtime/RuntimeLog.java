/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.util.ArrayList;
import org.eclipse.core.internal.runtime.PlatformLogWriter;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;

public final class RuntimeLog {
    private static ArrayList logListeners = new ArrayList(5);
    private static ArrayList queuedMessages = new ArrayList(5);
    private static PlatformLogWriter logWriter;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void setLogWriter(PlatformLogWriter logWriter) {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            boolean firstListener = RuntimeLog.isEmpty();
            RuntimeLog.logWriter = logWriter;
            if (firstListener && logWriter != null) {
                RuntimeLog.emptyQueuedMessages();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void addLogListener(ILogListener listener) {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            boolean firstListener = RuntimeLog.isEmpty();
            logListeners.remove(listener);
            logListeners.add(listener);
            if (firstListener) {
                RuntimeLog.emptyQueuedMessages();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void removeLogListener(ILogListener listener) {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            logListeners.remove(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean contains(ILogListener listener) {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            return logListeners.contains(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void log(IStatus status) {
        PlatformLogWriter writer;
        ILogListener[] listeners = null;
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            writer = logWriter;
            if (writer == null) {
                if (logListeners.isEmpty()) {
                    queuedMessages.add(status);
                    return;
                }
                listeners = logListeners.toArray(new ILogListener[logListeners.size()]);
            }
        }
        if (writer != null) {
            writer.logging(status);
            return;
        }
        if (listeners != null) {
            int i = 0;
            while (i < listeners.length) {
                try {
                    listeners[i].logging(status, "org.eclipse.core.runtime");
                }
                catch (Exception e) {
                    RuntimeLog.handleException(e);
                }
                catch (LinkageError e) {
                    RuntimeLog.handleException(e);
                }
                ++i;
            }
        }
    }

    private static void handleException(Throwable e) {
        if (!(e instanceof OperationCanceledException)) {
            e.printStackTrace();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean isEmpty() {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            return logListeners.isEmpty() && logWriter == null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean hasListeners() {
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            return !logListeners.isEmpty();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void emptyQueuedMessages() {
        IStatus[] queued;
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            if (queuedMessages.isEmpty()) {
                return;
            }
            queued = queuedMessages.toArray(new IStatus[queuedMessages.size()]);
            queuedMessages.clear();
        }
        int i = 0;
        while (i < queued.length) {
            RuntimeLog.log(queued[i]);
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void logToListeners(IStatus status) {
        ILogListener[] listeners;
        ArrayList arrayList = logListeners;
        synchronized (arrayList) {
            listeners = logListeners.toArray(new ILogListener[logListeners.size()]);
        }
        int i = 0;
        while (i < listeners.length) {
            try {
                listeners[i].logging(status, "org.eclipse.core.runtime");
            }
            catch (Exception e) {
                RuntimeLog.handleException(e);
            }
            catch (LinkageError e) {
                RuntimeLog.handleException(e);
            }
            ++i;
        }
    }
}

