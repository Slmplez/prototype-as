/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface HwElementRefConditional
extends ARObject {
    public HwElement getHwElement();

    public void setHwElement(HwElement var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

