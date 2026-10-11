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
import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public abstract class NumberToNumberValidator
implements IValidator {
    private final NumberToNumberConverter converter;
    private final Number min;
    private final Number max;
    private String outOfRangeMessage;
    private final boolean primitive;

    protected NumberToNumberValidator(NumberToNumberConverter converter, Number min, Number max) {
        this.converter = converter;
        this.min = min;
        this.max = max;
        this.primitive = ((Class)converter.getToType()).isPrimitive();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final IStatus validate(Object value) {
        if (value == null) {
            if (this.primitive) {
                throw new IllegalArgumentException("Parameter 'value' cannot be null.");
            }
            return Status.OK_STATUS;
        }
        if (!(value instanceof Number)) {
            throw new IllegalArgumentException("Parameter 'value' is not of type Number.");
        }
        Number number = (Number)value;
        if (this.inRange(number)) {
            return Status.OK_STATUS;
        }
        NumberToNumberValidator numberToNumberValidator = this;
        synchronized (numberToNumberValidator) {
            if (this.outOfRangeMessage == null && this.min != null && this.max != null) {
                this.outOfRangeMessage = StringToNumberParser.createOutOfRangeMessage(this.min, this.max, this.converter.getNumberFormat());
            }
            return ValidationStatus.error(this.outOfRangeMessage);
        }
    }

    protected abstract boolean inRange(Number var1);
}

