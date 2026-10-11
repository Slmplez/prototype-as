/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefContent;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface EcucFunctionNameDefConditional
extends EcucFunctionNameDefContent {
    public EcucFunctionNameDef getEcucFunctionNameDef();

    public void setEcucFunctionNameDef(EcucFunctionNameDef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

