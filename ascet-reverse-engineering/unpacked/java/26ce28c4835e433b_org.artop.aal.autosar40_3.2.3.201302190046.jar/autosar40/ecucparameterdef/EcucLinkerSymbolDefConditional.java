/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefContent;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface EcucLinkerSymbolDefConditional
extends EcucLinkerSymbolDefContent {
    public EcucLinkerSymbolDef getEcucLinkerSymbolDef();

    public void setEcucLinkerSymbolDef(EcucLinkerSymbolDef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

