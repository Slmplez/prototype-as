/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface HwPinGroup
extends Identifiable,
HwDescriptionEntity {
    public HwPinGroupContent getHwPinGroupContent();

    public void setHwPinGroupContent(HwPinGroupContent var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

