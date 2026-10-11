/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigReference
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GConfigReference;

public interface ConfigReference
extends CommonConfigurationAttributes,
GConfigReference {
    public ParamConfContainerDef getParamConfContainerDef();

    public void setParamConfContainerDef(ParamConfContainerDef var1);
}

