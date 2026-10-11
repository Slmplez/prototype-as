/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucMultilineStringParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefContent;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface EcucMultilineStringParamDefConditional
extends EcucMultilineStringParamDefContent {
    public EcucMultilineStringParamDef getEcucMultilineStringParamDef();

    public void setEcucMultilineStringParamDef(EcucMultilineStringParamDef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

