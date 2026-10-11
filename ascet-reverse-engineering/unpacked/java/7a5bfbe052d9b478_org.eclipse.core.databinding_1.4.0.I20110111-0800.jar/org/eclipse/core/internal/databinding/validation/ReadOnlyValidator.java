/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.databinding.validation.IValidator;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.runtime.IStatus;

public class ReadOnlyValidator
implements IValidator {
    private static ReadOnlyValidator singleton = null;

    public static ReadOnlyValidator getDefault() {
        if (singleton == null) {
            singleton = new ReadOnlyValidator();
        }
        return singleton;
    }

    public IStatus validate(Object value) {
        return ValidationStatus.error(BindingMessages.getString("Validate_NoChangeAllowedHelp"));
    }
}

