/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.AbstractStringToNumberValidator;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToShortValidator
extends AbstractStringToNumberValidator {
    private static final Short MIN = new Short(Short.MIN_VALUE);
    private static final Short MAX = new Short(Short.MAX_VALUE);

    public StringToShortValidator(NumberFormatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean isInRange(Number number) {
        return StringToNumberParser.inShortRange(number);
    }
}

