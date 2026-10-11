/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.ValidationStatusProvider
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jface.databinding.dialog;

import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.databinding.dialog.IValidationMessageProvider;

public class ValidationMessageProvider
implements IValidationMessageProvider {
    public String getMessage(ValidationStatusProvider statusProvider) {
        if (statusProvider != null) {
            IStatus status = (IStatus)statusProvider.getValidationStatus().getValue();
            return status.getMessage();
        }
        return null;
    }

    public int getMessageType(ValidationStatusProvider statusProvider) {
        if (statusProvider == null) {
            return 0;
        }
        IStatus status = (IStatus)statusProvider.getValidationStatus().getValue();
        int severity = status.getSeverity();
        switch (severity) {
            case 0: {
                return 0;
            }
            case 8: {
                return 0;
            }
            case 1: {
                return 1;
            }
            case 2: {
                return 2;
            }
            case 4: {
                return 3;
            }
        }
        Assert.isTrue((boolean)false, (String)"incomplete switch statement");
        return -1;
    }
}

