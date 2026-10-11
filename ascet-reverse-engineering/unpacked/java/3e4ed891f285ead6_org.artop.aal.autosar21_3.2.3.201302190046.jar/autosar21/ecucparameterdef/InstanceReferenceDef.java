/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GInstanceReferenceDef
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ConfigReference;
import gautosar.gecucparameterdef.GInstanceReferenceDef;

public interface InstanceReferenceDef
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

