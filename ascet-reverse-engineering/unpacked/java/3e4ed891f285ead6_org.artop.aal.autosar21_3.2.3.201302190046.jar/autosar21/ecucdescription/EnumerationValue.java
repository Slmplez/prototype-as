/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GEnumerationValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.ParameterValue;
import gautosar.gecucdescription.GEnumerationValue;

public interface EnumerationValue
extends ParameterValue,
GEnumerationValue {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

