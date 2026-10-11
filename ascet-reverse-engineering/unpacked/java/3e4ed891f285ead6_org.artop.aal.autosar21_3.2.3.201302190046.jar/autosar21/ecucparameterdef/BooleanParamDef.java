/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GBooleanParamDef
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ConfigParameter;
import gautosar.gecucparameterdef.GBooleanParamDef;

public interface BooleanParamDef
extends ConfigParameter,
GBooleanParamDef {
    public Boolean getDefaultValue();

    public void setDefaultValue(Boolean var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();
}

