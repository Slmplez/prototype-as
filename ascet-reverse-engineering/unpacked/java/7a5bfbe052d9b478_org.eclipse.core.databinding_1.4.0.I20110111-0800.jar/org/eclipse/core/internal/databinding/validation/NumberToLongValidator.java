/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToLongConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToLongValidator
extends NumberToNumberValidator {
    private static final Long MIN = new Long(Long.MIN_VALUE);
    private static final Long MAX = new Long(Long.MAX_VALUE);

    public NumberToLongValidator(NumberToLongConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inLongRange(number);
    }
}

