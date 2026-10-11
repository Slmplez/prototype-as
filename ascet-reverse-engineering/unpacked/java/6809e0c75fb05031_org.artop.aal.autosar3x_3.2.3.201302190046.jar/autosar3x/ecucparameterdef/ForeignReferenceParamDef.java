/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GForeignReferenceDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigReference;
import gautosar.gecucparameterdef.GForeignReferenceDef;

public interface ForeignReferenceParamDef
extends ConfigReference,
GForeignReferenceDef {
    public String getDestinationType();

    public void setDestinationType(String var1);

    public void unsetDestinationType();

    public boolean isSetDestinationType();
}

