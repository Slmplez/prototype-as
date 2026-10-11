/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigReference
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import gautosar.gecucparameterdef.GConfigReference;

public interface EcucAbstractReferenceDef
extends EcucCommonAttributes,
GConfigReference {
    public EcucParamConfContainerDef getEcucParamConfContainerDef();

    public void setEcucParamConfContainerDef(EcucParamConfContainerDef var1);
}

