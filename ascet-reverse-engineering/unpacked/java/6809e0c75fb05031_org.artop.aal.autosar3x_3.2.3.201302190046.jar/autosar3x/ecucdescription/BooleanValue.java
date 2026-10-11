/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GBooleanValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ParameterValue;
import gautosar.gecucdescription.GBooleanValue;

public interface BooleanValue
extends ParameterValue,
GBooleanValue {
    public Boolean getValue();

    public void setValue(Boolean var1);

    public void unsetValue();

    public boolean isSetValue();
}

