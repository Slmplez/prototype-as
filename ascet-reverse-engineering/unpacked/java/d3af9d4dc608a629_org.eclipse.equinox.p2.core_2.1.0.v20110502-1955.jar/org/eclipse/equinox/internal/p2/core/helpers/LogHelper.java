/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.Activator;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;

public class LogHelper {
    public static void log(IStatus status) {
        FrameworkLog log = Activator.getFrameworkLog();
        if (log != null) {
            log.log(LogHelper.getLog(status));
        } else {
            System.out.println(status.getMessage());
            if (status.getException() != null) {
                status.getException().printStackTrace();
            }
        }
    }

    public static void log(ProvisionException exception) {
        LogHelper.log((IStatus)new Status(exception.getStatus().getSeverity(), "org.eclipse.equinox.p2.core", "Provisioning exception", (Throwable)((Object)exception)));
    }

    private static FrameworkLogEntry getLog(IStatus status) {
        IStatus[] children;
        IStatus coreStatus;
        int stackCode;
        Throwable t = status.getException();
        ArrayList<FrameworkLogEntry> childlist = new ArrayList<FrameworkLogEntry>();
        int n = stackCode = t instanceof CoreException ? 1 : 0;
        if (stackCode == 1 && (coreStatus = ((CoreException)t).getStatus()) != null) {
            childlist.add(LogHelper.getLog(coreStatus));
        }
        if (status.isMultiStatus()) {
            children = status.getChildren();
            int i = 0;
            while (i < children.length) {
                childlist.add(LogHelper.getLog(children[i]));
                ++i;
            }
        }
        children = childlist.size() == 0 ? null : childlist.toArray(new FrameworkLogEntry[childlist.size()]);
        return new FrameworkLogEntry(status.getPlugin(), status.getSeverity(), status.getCode(), status.getMessage(), stackCode, t, (FrameworkLogEntry[])children);
    }
}

