/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.internal.runtime.LocalizationUtils;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public class Status
implements IStatus {
    private static final String unknownId = "unknown";
    public static final IStatus OK_STATUS = new Status(0, "unknown", 0, LocalizationUtils.safeLocalize("ok"), null);
    public static final IStatus CANCEL_STATUS = new Status(8, "unknown", 1, "", null);
    private int severity = 0;
    private String pluginId;
    private int code;
    private String message;
    private Throwable exception = null;
    private static final IStatus[] theEmptyStatusArray = new IStatus[0];

    public Status(int severity, String pluginId, int code, String message, Throwable exception) {
        this.setSeverity(severity);
        this.setPlugin(pluginId);
        this.setCode(code);
        this.setMessage(message);
        this.setException(exception);
    }

    public Status(int severity, String pluginId, String message, Throwable exception) {
        this.setSeverity(severity);
        this.setPlugin(pluginId);
        this.setMessage(message);
        this.setException(exception);
        this.setCode(0);
    }

    public Status(int severity, String pluginId, String message) {
        this.setSeverity(severity);
        this.setPlugin(pluginId);
        this.setMessage(message);
        this.setCode(0);
        this.setException(null);
    }

    public IStatus[] getChildren() {
        return theEmptyStatusArray;
    }

    public int getCode() {
        return this.code;
    }

    public Throwable getException() {
        return this.exception;
    }

    public String getMessage() {
        return this.message;
    }

    public String getPlugin() {
        return this.pluginId;
    }

    public int getSeverity() {
        return this.severity;
    }

    public boolean isMultiStatus() {
        return false;
    }

    public boolean isOK() {
        return this.severity == 0;
    }

    public boolean matches(int severityMask) {
        return (this.severity & severityMask) != 0;
    }

    protected void setCode(int code) {
        this.code = code;
    }

    protected void setException(Throwable exception) {
        this.exception = exception;
    }

    protected void setMessage(String message) {
        this.message = message == null ? "" : message;
    }

    protected void setPlugin(String pluginId) {
        Assert.isLegal(pluginId != null && pluginId.length() > 0);
        this.pluginId = pluginId;
    }

    protected void setSeverity(int severity) {
        Assert.isLegal(severity == 0 || severity == 4 || severity == 2 || severity == 1 || severity == 8);
        this.severity = severity;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append("Status ");
        if (this.severity == 0) {
            buf.append("OK");
        } else if (this.severity == 4) {
            buf.append("ERROR");
        } else if (this.severity == 2) {
            buf.append("WARNING");
        } else if (this.severity == 1) {
            buf.append("INFO");
        } else if (this.severity == 8) {
            buf.append("CANCEL");
        } else {
            buf.append("severity=");
            buf.append(this.severity);
        }
        buf.append(": ");
        buf.append(this.pluginId);
        buf.append(" code=");
        buf.append(this.code);
        buf.append(' ');
        buf.append(this.message);
        buf.append(' ');
        buf.append(this.exception);
        return buf.toString();
    }
}

