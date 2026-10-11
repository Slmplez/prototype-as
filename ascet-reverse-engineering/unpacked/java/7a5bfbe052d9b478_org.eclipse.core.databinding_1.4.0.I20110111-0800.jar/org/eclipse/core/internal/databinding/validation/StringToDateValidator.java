/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.databinding.validation;

import java.util.Date;
import org.eclipse.core.databinding.validation.IValidator;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.internal.databinding.conversion.DateConversionSupport;
import org.eclipse.core.internal.databinding.conversion.StringToDateConverter;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class StringToDateValidator
implements IValidator {
    private final StringToDateConverter converter;

    public StringToDateValidator(StringToDateConverter converter) {
        this.converter = converter;
    }

    public IStatus validate(Object value) {
        if (value instanceof String && ((String)value).trim().length() == 0) {
            return Status.OK_STATUS;
        }
        Object convertedValue = this.converter.convert(value);
        if (convertedValue == null) {
            return ValidationStatus.error(this.getErrorMessage());
        }
        return Status.OK_STATUS;
    }

    protected String getErrorMessage() {
        Date sampleDate = new Date();
        FormatUtil util = new FormatUtil();
        StringBuffer samples = new StringBuffer();
        int formatterIdx = 1;
        while (formatterIdx < util.numFormatters() - 2) {
            samples.append('\'');
            samples.append(util.format(sampleDate, formatterIdx));
            samples.append("', ");
            ++formatterIdx;
        }
        samples.append('\'');
        samples.append(util.format(sampleDate, 0));
        samples.append('\'');
        return String.valueOf(BindingMessages.getString("Examples")) + ": " + samples + ",...";
    }

    private static class FormatUtil
    extends DateConversionSupport {
        private FormatUtil() {
        }

        protected int numFormatters() {
            return super.numFormatters();
        }

        protected String format(Date date) {
            return super.format(date);
        }

        protected String format(Date date, int formatterIdx) {
            return super.format(date, formatterIdx);
        }
    }
}

