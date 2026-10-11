/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GInstanceReferenceDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;

public interface EcucInstanceReferenceDef
extends EcucAbstractReferenceDef,
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

