/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.AbstractStringToNumberValidator;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToDoubleValidator
extends AbstractStringToNumberValidator {
    private static final Double MIN = new Double(-1.7976931348623157E308);
    private static final Double MAX = new Double(Double.MAX_VALUE);

    public StringToDoubleValidator(NumberFormatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean isInRange(Number number) {
        return StringToNumberParser.inDoubleRange(number);
    }
}

