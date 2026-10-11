/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.PlatformLogWriter
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.equinox.log.LogFilter
 *  org.eclipse.equinox.log.Logger
 *  org.eclipse.equinox.log.SynchronousLogListener
 *  org.osgi.framework.Bundle
 *  org.osgi.service.log.LogEntry
 */
package org.eclipse.core.internal.runtime;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.runtime.PlatformLogWriter;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.Logger;
import org.eclipse.equinox.log.SynchronousLogListener;
import org.osgi.framework.Bundle;
import org.osgi.service.log.LogEntry;

public class Log
implements ILog,
SynchronousLogListener,
LogFilter {
    final Bundle bundle;
    private final Logger logger;
    private final Set logListeners = new HashSet(5);

    public Log(Bundle plugin, Logger logger) {
        this.bundle = plugin;
        this.logger = logger;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addLogListener(ILogListener listener) {
        Set set = this.logListeners;
        synchronized (set) {
            this.logListeners.add(listener);
        }
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    public void log(IStatus status) {
        this.logger.log((Object)PlatformLogWriter.getLog((IStatus)status), PlatformLogWriter.getLevel((IStatus)status), status.getMessage(), status.getException());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeLogListener(ILogListener listener) {
        Set set = this.logListeners;
        synchronized (set) {
            this.logListeners.remove(listener);
        }
    }

    public void logged(LogEntry entry) {
        this.logToListeners(PlatformLogWriter.convertToStatus((LogEntry)entry));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void logToListeners(final IStatus status) {
        ILogListener[] listeners;
        Set set = this.logListeners;
        synchronized (set) {
            listeners = this.logListeners.toArray(new ILogListener[this.logListeners.size()]);
        }
        int i = 0;
        while (i < listeners.length) {
            final ILogListener listener = listeners[i];
            ISafeRunnable code = new ISafeRunnable(){

                public void run() throws Exception {
                    listener.logging(status, Log.this.bundle.getSymbolicName());
                }

                public void handleException(Throwable e) {
                }
            };
            SafeRunner.run((ISafeRunnable)code);
            ++i;
        }
    }

    public boolean isLoggable(Bundle loggingBundle, String loggerName, int logLevel) {
        return "org.eclipse.equinox.logger".equals(loggerName) && this.bundle.getBundleId() == loggingBundle.getBundleId();
    }
}

