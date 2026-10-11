/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToShortConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToShortValidator
extends NumberToNumberValidator {
    private static final Short MIN = new Short(Short.MIN_VALUE);
    private static final Short MAX = new Short(Short.MAX_VALUE);

    public NumberToShortValidator(NumberToShortConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inShortRange(number);
    }
}

