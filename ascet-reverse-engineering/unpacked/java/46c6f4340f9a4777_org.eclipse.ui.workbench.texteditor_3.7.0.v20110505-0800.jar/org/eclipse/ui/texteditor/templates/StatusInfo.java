/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

class StatusInfo
implements IStatus {
    private String fStatusMessage;
    private int fSeverity;

    public StatusInfo() {
        this(0, null);
    }

    public StatusInfo(int severity, String message) {
        this.fStatusMessage = message;
        this.fSeverity = severity;
    }

    public boolean isOK() {
        return this.fSeverity == 0;
    }

    public boolean isWarning() {
        return this.fSeverity == 2;
    }

    public boolean isInfo() {
        return this.fSeverity == 1;
    }

    public boolean isError() {
        return this.fSeverity == 4;
    }

    public String getMessage() {
        return this.fStatusMessage;
    }

    public void setError(String errorMessage) {
        Assert.isNotNull((Object)errorMessage);
        this.fStatusMessage = errorMessage;
        this.fSeverity = 4;
    }

    public void setWarning(String warningMessage) {
        Assert.isNotNull((Object)warningMessage);
        this.fStatusMessage = warningMessage;
        this.fSeverity = 2;
    }

    public void setInfo(String infoMessage) {
        Assert.isNotNull((Object)infoMessage);
        this.fStatusMessage = infoMessage;
        this.fSeverity = 1;
    }

    public void setOK() {
        this.fStatusMessage = null;
        this.fSeverity = 0;
    }

    public boolean matches(int severityMask) {
        return (this.fSeverity & severityMask) != 0;
    }

    public boolean isMultiStatus() {
        return false;
    }

    public int getSeverity() {
        return this.fSeverity;
    }

    public String getPlugin() {
        return "org.eclipse.ui.workbench.texteditor";
    }

    public Throwable getException() {
        return null;
    }

    public int getCode() {
        return this.fSeverity;
    }

    public IStatus[] getChildren() {
        return new IStatus[0];
    }
}

