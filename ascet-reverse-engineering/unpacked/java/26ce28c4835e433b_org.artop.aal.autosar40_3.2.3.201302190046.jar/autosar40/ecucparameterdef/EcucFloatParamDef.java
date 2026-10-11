/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GFloatParamDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import gautosar.gecucparameterdef.GFloatParamDef;

public interface EcucFloatParamDef
extends EcucParameterDef,
GFloatParamDef {
    public FloatValueVariationPoint getDefaultValue();

    public void setDefaultValue(FloatValueVariationPoint var1);

    public FloatValueVariationPoint getMax();

    public void setMax(FloatValueVariationPoint var1);

    public FloatValueVariationPoint getMin();

    public void setMin(FloatValueVariationPoint var1);
}

