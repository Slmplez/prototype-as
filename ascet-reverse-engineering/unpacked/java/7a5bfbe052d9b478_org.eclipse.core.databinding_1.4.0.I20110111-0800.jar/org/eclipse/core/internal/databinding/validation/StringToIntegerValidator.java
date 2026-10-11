/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.AbstractStringToNumberValidator;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToIntegerValidator
extends AbstractStringToNumberValidator {
    private static final Integer MIN = new Integer(Integer.MIN_VALUE);
    private static final Integer MAX = new Integer(Integer.MAX_VALUE);

    public StringToIntegerValidator(NumberFormatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean isInRange(Number number) {
        return StringToNumberParser.inIntegerRange(number);
    }
}

