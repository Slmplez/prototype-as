/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.EnumerationParamDef;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;

public interface EnumerationLiteralDef
extends Identifiable,
GEnumerationLiteralDef {
    public EnumerationParamDef getEnumerationParamDef();

    public void setEnumerationParamDef(EnumerationParamDef var1);
}

