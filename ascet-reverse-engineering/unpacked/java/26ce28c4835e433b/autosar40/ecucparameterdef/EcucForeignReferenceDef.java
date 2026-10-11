/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GForeignReferenceDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;

public interface EcucForeignReferenceDef
extends EcucAbstractReferenceDef,
GForeignReferenceDef {
    public String getDestinationType();

    public void setDestinationType(String var1);

    public void unsetDestinationType();

    public boolean isSetDestinationType();
}

