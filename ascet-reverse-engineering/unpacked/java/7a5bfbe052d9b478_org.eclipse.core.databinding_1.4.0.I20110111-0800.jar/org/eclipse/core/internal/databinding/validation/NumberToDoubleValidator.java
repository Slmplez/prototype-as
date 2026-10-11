/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToDoubleConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToDoubleValidator
extends NumberToNumberValidator {
    private static final Double MIN = new Double(Double.MIN_VALUE);
    private static final Double MAX = new Double(Double.MAX_VALUE);

    public NumberToDoubleValidator(NumberToDoubleConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inDoubleRange(number);
    }
}

