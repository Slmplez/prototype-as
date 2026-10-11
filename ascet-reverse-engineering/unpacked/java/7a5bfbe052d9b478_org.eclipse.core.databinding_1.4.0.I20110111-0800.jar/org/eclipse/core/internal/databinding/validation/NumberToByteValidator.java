/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToByteConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToByteValidator
extends NumberToNumberValidator {
    private static final Byte MAX = new Byte(127);
    private static final Byte MIN = new Byte(-128);

    public NumberToByteValidator(NumberToByteConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean inRange(Number number) {
        return StringToNumberParser.inByteRange(number);
    }
}

