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
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public abstract class AbstractStringToNumberValidator
implements IValidator {
    private final NumberFormatConverter converter;
    private final boolean toPrimitive;
    private final Number min;
    private final Number max;
    private String outOfRangeMessage;

    protected AbstractStringToNumberValidator(NumberFormatConverter converter, Number min, Number max) {
        this.converter = converter;
        this.min = min;
        this.max = max;
        if (converter.getToType() instanceof Class) {
            Class clazz = (Class)converter.getToType();
            this.toPrimitive = clazz.isPrimitive();
        } else {
            this.toPrimitive = false;
        }
    }

    public final IStatus validate(Object value) {
        StringToNumberParser.ParseResult result = StringToNumberParser.parse(value, this.converter.getNumberFormat(), this.toPrimitive);
        if (result.getNumber() != null) {
            if (!this.isInRange(result.getNumber())) {
                if (this.outOfRangeMessage == null) {
                    this.outOfRangeMessage = StringToNumberParser.createOutOfRangeMessage(this.min, this.max, this.converter.getNumberFormat());
                }
                return ValidationStatus.error(this.outOfRangeMessage);
            }
        } else if (result.getPosition() != null) {
            String parseErrorMessage = StringToNumberParser.createParseErrorMessage((String)value, result.getPosition());
            return ValidationStatus.error(parseErrorMessage);
        }
        return Status.OK_STATUS;
    }

    protected abstract boolean isInRange(Number var1);
}

