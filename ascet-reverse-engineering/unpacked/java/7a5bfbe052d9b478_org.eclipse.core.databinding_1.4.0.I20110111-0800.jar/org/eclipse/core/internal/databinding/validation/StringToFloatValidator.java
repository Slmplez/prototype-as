/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.AbstractStringToNumberValidator;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToFloatValidator
extends AbstractStringToNumberValidator {
    private static final Float MIN = new Float(-3.4028235E38f);
    private static final Float MAX = new Float(Float.MAX_VALUE);

    public StringToFloatValidator(NumberFormatConverter converter) {
        super(converter, MIN, MAX);
    }

    protected boolean isInRange(Number number) {
        return StringToNumberParser.inFloatRange(number);
    }
}

