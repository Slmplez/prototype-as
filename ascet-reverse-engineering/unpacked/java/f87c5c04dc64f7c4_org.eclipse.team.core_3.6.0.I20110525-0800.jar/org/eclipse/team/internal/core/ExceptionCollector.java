/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.team.internal.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;

public class ExceptionCollector {
    private List statuses = new ArrayList();
    private String message;
    private String pluginId;
    private int severity;
    private ILog log;

    public ExceptionCollector(String message, String pluginId, int severity, ILog log) {
        this.message = message;
        this.pluginId = pluginId;
        this.severity = severity;
        this.log = log;
    }

    public void clear() {
        this.statuses.clear();
    }

    public IStatus getStatus() {
        if (this.statuses.isEmpty()) {
            return Status.OK_STATUS;
        }
        MultiStatus multiStatus = new MultiStatus(this.pluginId, this.severity, this.message, null);
        Iterator it = this.statuses.iterator();
        while (it.hasNext()) {
            IStatus status = (IStatus)it.next();
            multiStatus.merge(status);
        }
        return multiStatus;
    }

    public void handleException(CoreException exception) {
        if (this.log != null) {
            this.log.log((IStatus)new Status(this.severity, this.pluginId, 0, this.message, (Throwable)exception));
        }
        IStatus exceptionStatus = exception.getStatus();
        Status status = new Status(exceptionStatus.getSeverity(), exceptionStatus.getPlugin(), exceptionStatus.getCode(), exceptionStatus.getMessage(), (Throwable)exception);
        this.recordStatus((IStatus)status);
        IStatus[] children = status.getChildren();
        int i = 0;
        while (i < children.length) {
            IStatus status2 = children[i];
            this.recordStatus(status2);
            ++i;
        }
    }

    private void recordStatus(IStatus status) {
        this.statuses.add(status);
    }
}

