/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GBooleanParamDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import gautosar.gecucparameterdef.GBooleanParamDef;

public interface EcucBooleanParamDef
extends EcucParameterDef,
GBooleanParamDef {
    public BooleanValueVariationPoint getDefaultValue();

    public void setDefaultValue(BooleanValueVariationPoint var1);
}

