/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigReference
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.CommonConfigurationAttributes;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GConfigReference;

public interface ConfigReference
extends CommonConfigurationAttributes,
GConfigReference {
    public ParamConfContainerDef getParamConfContainerDef();

    public void setParamConfContainerDef(ParamConfContainerDef var1);
}

