/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.portinterface.TextTableMapping;

public interface TextTableValuePair
extends ARObject {
    public TextTableMapping getTextTableMapping();

    public void setTextTableMapping(TextTableMapping var1);

    public NumericalValueVariationPoint getFirstValue();

    public void setFirstValue(NumericalValueVariationPoint var1);

    public NumericalValueVariationPoint getSecondValue();

    public void setSecondValue(NumericalValueVariationPoint var1);
}

