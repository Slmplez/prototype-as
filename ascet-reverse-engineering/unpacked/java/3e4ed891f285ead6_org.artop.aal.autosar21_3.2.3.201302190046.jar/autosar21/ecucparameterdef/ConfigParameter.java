/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigParameter
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.CommonConfigurationAttributes;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GConfigParameter;

public interface ConfigParameter
extends CommonConfigurationAttributes,
GConfigParameter {
    public ParamConfContainerDef getParamConfContainerDef();

    public void setParamConfContainerDef(ParamConfContainerDef var1);

    public Boolean getSymbolicNameValue();

    public void setSymbolicNameValue(Boolean var1);

    public void unsetSymbolicNameValue();

    public boolean isSetSymbolicNameValue();
}

