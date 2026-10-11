/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToIntegerConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToIntegerValidator
extends NumberToNumberValidator {
    private static final Integer MIN = new Integer(Integer.MIN_VALUE);
    private static final Integer MAX = new Integer(Integer.MAX_VALUE);

    public NumberToIntegerValidator(NumberToIntegerConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inIntegerRange(number);
    }
}

