/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.nvblockcomponent;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;

public interface NvBlockDataMapping
extends ARObject {
    public NvBlockDescriptor getNvBlockDescriptor();

    public void setNvBlockDescriptor(NvBlockDescriptor var1);

    public AutosarVariableRef getNvRamBlockElement();

    public void setNvRamBlockElement(AutosarVariableRef var1);

    public AutosarVariableRef getReadNvData();

    public void setReadNvData(AutosarVariableRef var1);

    public AutosarVariableRef getWrittenNvData();

    public void setWrittenNvData(AutosarVariableRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

