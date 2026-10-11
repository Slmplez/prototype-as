/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GReferenceDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;

public interface EcucReferenceDef
extends EcucAbstractReferenceDef,
GReferenceDef {
    public EcucParamConfContainerDef getDestination();

    public void setDestination(EcucParamConfContainerDef var1);
}

