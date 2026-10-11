/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.databinding.validation.IValidator;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.internal.databinding.conversion.StringToCharacterConverter;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class StringToCharacterValidator
implements IValidator {
    private final StringToCharacterConverter converter;

    public StringToCharacterValidator(StringToCharacterConverter converter) {
        this.converter = converter;
    }

    public IStatus validate(Object value) {
        try {
            this.converter.convert(value);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return ValidationStatus.error(BindingMessages.getString("Validate_CharacterHelp"));
        }
        return Status.OK_STATUS;
    }
}

