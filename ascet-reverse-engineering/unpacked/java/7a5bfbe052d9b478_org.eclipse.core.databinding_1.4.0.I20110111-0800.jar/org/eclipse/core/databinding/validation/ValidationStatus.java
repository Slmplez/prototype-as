/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding.validation;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class ValidationStatus
extends Status {
    private ValidationStatus(int severity, String message, Throwable exception) {
        super(severity, "org.eclipse.core.databinding", 0, message, exception);
    }

    private ValidationStatus(int severity, String message) {
        super(severity, "org.eclipse.core.databinding", 0, message, null);
    }

    public static IStatus error(String message) {
        return new ValidationStatus(4, message);
    }

    public static IStatus cancel(String message) {
        return new ValidationStatus(8, message);
    }

    public static IStatus error(String message, Throwable exception) {
        return new ValidationStatus(4, message, exception);
    }

    public static IStatus warning(String message) {
        return new ValidationStatus(2, message);
    }

    public static IStatus info(String message) {
        return new ValidationStatus(1, message);
    }

    public static IStatus ok() {
        return Status.OK_STATUS;
    }

    public int hashCode() {
        int result = 1;
        String message = this.getMessage();
        int severity = this.getSeverity();
        Throwable throwable = this.getException();
        result = 31 * result + (message == null ? 0 : message.hashCode());
        result = 31 * result + severity;
        result = 31 * result + (throwable == null ? 0 : throwable.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (((Object)((Object)this)).getClass() != obj.getClass()) {
            return false;
        }
        ValidationStatus other = (ValidationStatus)((Object)obj);
        if (this.getSeverity() != other.getSeverity()) {
            return false;
        }
        if (this.getMessage() == null ? other.getMessage() != null : !this.getMessage().equals(other.getMessage())) {
            return false;
        }
        return !(this.getException() == null ? other.getException() != null : !this.getException().equals(other.getException()));
    }
}

