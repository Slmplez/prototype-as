/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.init;

import com.etas.amd.core.init.AbstractAmdScalarInitValue;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentData.ScalarTypeT;

public class AmdLogicInitValue
extends AbstractAmdScalarInitValue {
    private boolean value;

    public AmdLogicInitValue(String valueStr) throws Exception {
        if (valueStr.equalsIgnoreCase("true") || valueStr.equalsIgnoreCase("1")) {
            this.value = true;
        } else if (valueStr.equalsIgnoreCase("false") || valueStr.equalsIgnoreCase("0")) {
            this.value = false;
        } else {
            throw new Exception(valueStr);
        }
    }

    @Override
    public ScalarTypeT getScalarValue() {
        return AmdFactory.createBooleanInitValue(this.value);
    }
}

