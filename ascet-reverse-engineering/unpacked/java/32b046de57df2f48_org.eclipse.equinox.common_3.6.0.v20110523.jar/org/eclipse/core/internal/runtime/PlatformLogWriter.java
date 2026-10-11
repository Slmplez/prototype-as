/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.log.ExtendedLogEntry
 *  org.eclipse.equinox.log.ExtendedLogService
 *  org.eclipse.equinox.log.LogFilter
 *  org.eclipse.equinox.log.Logger
 *  org.eclipse.equinox.log.SynchronousLogListener
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.osgi.framework.Bundle
 *  org.osgi.service.log.LogEntry
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.core.internal.runtime;

import java.util.ArrayList;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.log.ExtendedLogEntry;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.Logger;
import org.eclipse.equinox.log.SynchronousLogListener;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.Bundle;
import org.osgi.service.log.LogEntry;
import org.osgi.service.packageadmin.PackageAdmin;

public class PlatformLogWriter
implements SynchronousLogListener,
LogFilter {
    public static final String EQUINOX_LOGGER_NAME = "org.eclipse.equinox.logger";
    private final ExtendedLogService logService;
    private final PackageAdmin packageAdmin;
    private final Bundle bundle;

    public PlatformLogWriter(ExtendedLogService logService, PackageAdmin packageAdmin, Bundle bundle) {
        this.logService = logService;
        this.packageAdmin = packageAdmin;
        this.bundle = bundle;
    }

    void logging(IStatus status) {
        Bundle b = this.getBundle(status);
        Logger equinoxLog = this.logService.getLogger(b, EQUINOX_LOGGER_NAME);
        equinoxLog.log((Object)PlatformLogWriter.getLog(status), PlatformLogWriter.getLevel(status), status.getMessage(), status.getException());
    }

    public static int getLevel(IStatus status) {
        switch (status.getSeverity()) {
            case 4: {
                return 1;
            }
            case 2: {
                return 2;
            }
            case 1: {
                return 3;
            }
            case 0: {
                return 4;
            }
        }
        return 32;
    }

    public static FrameworkLogEntry getLog(IStatus status) {
        IStatus[] children;
        IStatus coreStatus;
        int stackCode;
        Throwable t = status.getException();
        ArrayList<FrameworkLogEntry> childlist = new ArrayList<FrameworkLogEntry>();
        int n = stackCode = t instanceof CoreException ? 1 : 0;
        if (stackCode == 1 && (coreStatus = ((CoreException)t).getStatus()) != null) {
            childlist.add(PlatformLogWriter.getLog(coreStatus));
        }
        if (status.isMultiStatus()) {
            children = status.getChildren();
            int i = 0;
            while (i < children.length) {
                childlist.add(PlatformLogWriter.getLog(children[i]));
                ++i;
            }
        }
        children = childlist.size() == 0 ? null : childlist.toArray(new FrameworkLogEntry[childlist.size()]);
        return new FrameworkLogEntry((Object)status, status.getPlugin(), status.getSeverity(), status.getCode(), status.getMessage(), stackCode, t, (FrameworkLogEntry[])children);
    }

    private Bundle getBundle(IStatus status) {
        String pluginID = status.getPlugin();
        if (pluginID == null) {
            return this.bundle;
        }
        Bundle[] bundles = this.packageAdmin.getBundles(pluginID, null);
        return bundles == null || bundles.length == 0 ? this.bundle : bundles[0];
    }

    public boolean isLoggable(Bundle bundle, String loggerName, int logLevel) {
        return EQUINOX_LOGGER_NAME.equals(loggerName) && RuntimeLog.hasListeners();
    }

    public void logged(LogEntry entry) {
        RuntimeLog.logToListeners(PlatformLogWriter.convertToStatus(entry));
    }

    public static IStatus convertToStatus(LogEntry logEntry) {
        Object context = null;
        if (logEntry instanceof ExtendedLogEntry) {
            context = ((ExtendedLogEntry)logEntry).getContext();
        }
        if (context instanceof IStatus) {
            return (IStatus)context;
        }
        if (context instanceof FrameworkLogEntry) {
            FrameworkLogEntry fLogEntry = (FrameworkLogEntry)context;
            if ((context = fLogEntry.getContext()) instanceof IStatus) {
                return (IStatus)context;
            }
            return PlatformLogWriter.convertToStatus(fLogEntry);
        }
        return PlatformLogWriter.convertRawEntryToStatus(logEntry);
    }

    private static IStatus convertToStatus(FrameworkLogEntry entry) {
        FrameworkLogEntry[] children = entry.getChildren();
        if (children != null) {
            IStatus[] statusChildren = new Status[children.length];
            int i = 0;
            while (i < statusChildren.length) {
                statusChildren[i] = PlatformLogWriter.convertToStatus(children[i]);
                ++i;
            }
            return new MultiStatus(entry.getEntry(), entry.getBundleCode(), statusChildren, entry.getMessage(), entry.getThrowable());
        }
        return new Status(entry.getSeverity(), entry.getEntry(), entry.getBundleCode(), entry.getMessage(), entry.getThrowable());
    }

    private static IStatus convertRawEntryToStatus(LogEntry logEntry) {
        int severity;
        switch (logEntry.getLevel()) {
            case 1: {
                severity = 4;
                break;
            }
            case 2: {
                severity = 2;
                break;
            }
            case 3: {
                severity = 1;
                break;
            }
            case 4: {
                severity = 0;
                break;
            }
            default: {
                severity = -1;
            }
        }
        Bundle bundle = logEntry.getBundle();
        return new Status(severity, bundle == null ? null : bundle.getSymbolicName(), logEntry.getMessage(), logEntry.getException());
    }
}

