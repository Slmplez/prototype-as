/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GFloatParamDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigParameter;
import gautosar.gecucparameterdef.GFloatParamDef;

public interface FloatParamDef
extends ConfigParameter,
GFloatParamDef {
    public Double getDefaultValue();

    public void setDefaultValue(Double var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();

    public Double getMax();

    public void setMax(Double var1);

    public void unsetMax();

    public boolean isSetMax();

    public Double getMin();

    public void setMin(Double var1);

    public void unsetMin();

    public boolean isSetMin();
}

