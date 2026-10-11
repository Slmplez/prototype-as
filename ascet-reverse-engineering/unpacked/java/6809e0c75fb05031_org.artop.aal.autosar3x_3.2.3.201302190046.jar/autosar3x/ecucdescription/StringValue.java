/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GStringValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.ParameterValue;
import gautosar.gecucdescription.GStringValue;

public interface StringValue
extends ParameterValue,
GStringValue {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

