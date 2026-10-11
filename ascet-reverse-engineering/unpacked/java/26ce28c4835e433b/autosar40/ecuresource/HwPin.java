/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface HwPin
extends Identifiable,
HwDescriptionEntity {
    public HwPinGroupContent getHwPinGroupContent();

    public void setHwPinGroupContent(HwPinGroupContent var1);

    public Integer getPinNumber();

    public void setPinNumber(Integer var1);

    public void unsetPinNumber();

    public boolean isSetPinNumber();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getPinNumberData();

    public void setPinNumberData(IntegerDatatype var1);
}

