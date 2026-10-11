/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GStringParamDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigParameter;
import gautosar.gecucparameterdef.GStringParamDef;

public interface StringParamDef
extends ConfigParameter,
GStringParamDef {
    public String getDefaultValue();

    public void setDefaultValue(String var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();
}

