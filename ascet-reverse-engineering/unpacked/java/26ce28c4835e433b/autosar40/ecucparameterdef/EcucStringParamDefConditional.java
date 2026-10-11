/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefContent;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface EcucStringParamDefConditional
extends EcucStringParamDefContent {
    public EcucStringParamDef getEcucStringParamDef();

    public void setEcucStringParamDef(EcucStringParamDef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

