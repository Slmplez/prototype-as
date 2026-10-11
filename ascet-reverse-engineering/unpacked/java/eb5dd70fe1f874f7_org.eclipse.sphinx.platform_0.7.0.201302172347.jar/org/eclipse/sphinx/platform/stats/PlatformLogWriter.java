/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 */
package org.eclipse.sphinx.platform.stats;

import java.util.ArrayList;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;

public class PlatformLogWriter
implements ILogListener {
    private FrameworkLog frameworkLog;

    public PlatformLogWriter(FrameworkLog frameworkLog) {
        this.frameworkLog = frameworkLog;
    }

    public synchronized void logging(IStatus status, String plugin) {
        this.frameworkLog.log(this.getLog(status));
    }

    protected FrameworkLogEntry getLog(IStatus status) {
        IStatus[] children;
        ArrayList<FrameworkLogEntry> childlist = new ArrayList<FrameworkLogEntry>();
        if (status.isMultiStatus()) {
            IStatus[] iStatusArray = children = status.getChildren();
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                IStatus element = iStatusArray[n2];
                childlist.add(this.getLog(element));
                ++n2;
            }
        }
        children = childlist.size() == 0 ? null : childlist.toArray(new FrameworkLogEntry[childlist.size()]);
        return new FrameworkLogEntry(status.getPlugin(), status.getSeverity(), status.getCode(), status.getMessage(), 0, status.getException(), (FrameworkLogEntry[])children);
    }
}

