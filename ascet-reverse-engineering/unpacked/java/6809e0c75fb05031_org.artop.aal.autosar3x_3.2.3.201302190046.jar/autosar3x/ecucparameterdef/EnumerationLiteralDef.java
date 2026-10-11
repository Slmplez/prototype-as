/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.EnumerationParamDef;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;

public interface EnumerationLiteralDef
extends Identifiable,
GEnumerationLiteralDef {
    public EnumerationParamDef getEnumerationParamDef();

    public void setEnumerationParamDef(EnumerationParamDef var1);
}

