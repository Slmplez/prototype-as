/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GReferenceDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;

public interface ReferenceParamDef
extends ConfigReference,
GReferenceDef {
    public ParamConfContainerDef getDestination();

    public void setDestination(ParamConfContainerDef var1);
}

