/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GSymbolicNameReferenceDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;

public interface EcucSymbolicNameReferenceDef
extends EcucAbstractReferenceDef,
GSymbolicNameReferenceDef {
    public EcucParamConfContainerDef getDestination();

    public void setDestination(EcucParamConfContainerDef var1);
}

