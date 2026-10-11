/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GReferenceDef
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ConfigReference;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;

public interface ReferenceDef
extends ConfigReference,
GReferenceDef {
    public ParamConfContainerDef getDestination();

    public void setDestination(ParamConfContainerDef var1);
}

