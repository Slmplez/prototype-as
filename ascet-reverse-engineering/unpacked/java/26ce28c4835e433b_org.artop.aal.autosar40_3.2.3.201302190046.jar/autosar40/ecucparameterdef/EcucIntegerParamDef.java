/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GIntegerParamDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.genericstructure.varianthandling.UnlimitedIntegerValueVariationPoint;
import gautosar.gecucparameterdef.GIntegerParamDef;

public interface EcucIntegerParamDef
extends EcucParameterDef,
GIntegerParamDef {
    public UnlimitedIntegerValueVariationPoint getDefaultValue();

    public void setDefaultValue(UnlimitedIntegerValueVariationPoint var1);

    public UnlimitedIntegerValueVariationPoint getMax();

    public void setMax(UnlimitedIntegerValueVariationPoint var1);

    public UnlimitedIntegerValueVariationPoint getMin();

    public void setMin(UnlimitedIntegerValueVariationPoint var1);
}

