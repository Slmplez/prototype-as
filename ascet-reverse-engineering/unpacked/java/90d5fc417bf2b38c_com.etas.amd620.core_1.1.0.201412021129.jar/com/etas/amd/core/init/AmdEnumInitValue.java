/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.init;

import com.etas.amd.core.init.AbstractAmdScalarInitValue;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentData.ScalarTypeT;

public class AmdEnumInitValue
extends AbstractAmdScalarInitValue {
    private final String value;

    public AmdEnumInitValue(String val) {
        this.value = val;
    }

    @Override
    public ScalarTypeT getScalarValue() {
        return AmdFactory.createEnumInitValue(this.value);
    }
}

