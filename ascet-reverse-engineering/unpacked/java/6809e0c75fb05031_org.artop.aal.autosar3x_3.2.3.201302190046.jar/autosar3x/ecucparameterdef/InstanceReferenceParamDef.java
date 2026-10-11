/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GInstanceReferenceDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigReference;
import gautosar.gecucparameterdef.GInstanceReferenceDef;

public interface InstanceReferenceParamDef
extends ConfigReference,
GInstanceReferenceDef {
    public String getDestinationContext();

    public void setDestinationContext(String var1);

    public void unsetDestinationContext();

    public boolean isSetDestinationContext();

    public String getDestinationType();

    public void setDestinationType(String var1);

    public void unsetDestinationType();

    public boolean isSetDestinationType();
}

