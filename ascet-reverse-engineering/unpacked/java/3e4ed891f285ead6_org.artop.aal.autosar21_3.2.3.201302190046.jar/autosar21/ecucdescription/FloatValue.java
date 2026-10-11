/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GFloatValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ParameterValue;
import gautosar.gecucdescription.GFloatValue;

public interface FloatValue
extends ParameterValue,
GFloatValue {
    public Double getValue();

    public void setValue(Double var1);

    public void unsetValue();

    public boolean isSetValue();
}

