/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucParameterValue;

public interface EcucTextualParamValue
extends EcucParameterValue {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

