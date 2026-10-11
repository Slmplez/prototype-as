/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class MultiStatus
extends Status {
    private IStatus[] children = new IStatus[0];

    public MultiStatus(String pluginId, int code, IStatus[] newChildren, String message, Throwable exception) {
        this(pluginId, code, message, exception);
        Assert.isLegal(newChildren != null);
        int maxSeverity = this.getSeverity();
        int i = 0;
        while (i < newChildren.length) {
            Assert.isLegal(newChildren[i] != null);
            int severity = newChildren[i].getSeverity();
            if (severity > maxSeverity) {
                maxSeverity = severity;
            }
            ++i;
        }
        this.children = new IStatus[newChildren.length];
        this.setSeverity(maxSeverity);
        System.arraycopy(newChildren, 0, this.children, 0, newChildren.length);
    }

    public MultiStatus(String pluginId, int code, String message, Throwable exception) {
        super(0, pluginId, code, message, exception);
    }

    public void add(IStatus status) {
        Assert.isLegal(status != null);
        IStatus[] result = new IStatus[this.children.length + 1];
        System.arraycopy(this.children, 0, result, 0, this.children.length);
        result[result.length - 1] = status;
        this.children = result;
        int newSev = status.getSeverity();
        if (newSev > this.getSeverity()) {
            this.setSeverity(newSev);
        }
    }

    public void addAll(IStatus status) {
        Assert.isLegal(status != null);
        IStatus[] statuses = status.getChildren();
        int i = 0;
        while (i < statuses.length) {
            this.add(statuses[i]);
            ++i;
        }
    }

    public IStatus[] getChildren() {
        return this.children;
    }

    public boolean isMultiStatus() {
        return true;
    }

    public void merge(IStatus status) {
        Assert.isLegal(status != null);
        if (!status.isMultiStatus()) {
            this.add(status);
        } else {
            this.addAll(status);
        }
    }

    public String toString() {
        StringBuffer buf = new StringBuffer(super.toString());
        buf.append(" children=[");
        int i = 0;
        while (i < this.children.length) {
            if (i != 0) {
                buf.append(" ");
            }
            buf.append(this.children[i].toString());
            ++i;
        }
        buf.append("]");
        return buf.toString();
    }
}

