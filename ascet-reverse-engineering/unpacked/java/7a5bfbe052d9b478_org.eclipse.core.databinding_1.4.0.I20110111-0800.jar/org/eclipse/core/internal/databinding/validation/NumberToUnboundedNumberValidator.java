/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;
import org.eclipse.core.internal.databinding.validation.NumberToNumberValidator;

public class NumberToUnboundedNumberValidator
extends NumberToNumberValidator {
    public NumberToUnboundedNumberValidator(NumberToNumberConverter converter) {
        super(converter, null, null);
    }

    protected boolean inRange(Number number) {
        return true;
    }
}

