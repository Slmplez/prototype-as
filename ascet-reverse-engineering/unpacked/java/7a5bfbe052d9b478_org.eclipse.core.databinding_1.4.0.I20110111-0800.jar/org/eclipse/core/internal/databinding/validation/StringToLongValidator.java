/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.AbstractStringToNumberValidator;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToLongValidator
extends AbstractStringToNumberValidator {
    private static final Long MIN = new Long(Long.MIN_VALUE);
    private static final Long MAX = new Long(Long.MAX_VALUE);

    public StringToLongValidator(NumberFormatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean isInRange(Number number) {
        return StringToNumberParser.inLongRange(number);
    }
}

