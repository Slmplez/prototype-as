/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToFloatConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToFloatValidator
extends NumberToNumberValidator {
    private static final Float MIN = new Float(Float.MIN_VALUE);
    private static final Float MAX = new Float(Float.MAX_VALUE);

    public NumberToFloatValidator(NumberToFloatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inFloatRange(number);
    }
}

