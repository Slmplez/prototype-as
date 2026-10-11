/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GBooleanParamDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigParameter;
import gautosar.gecucparameterdef.GBooleanParamDef;

public interface BooleanParamDef
extends ConfigParameter,
GBooleanParamDef {
    public Boolean getDefaultValue();

    public void setDefaultValue(Boolean var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();
}

