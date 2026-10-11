/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;

public interface ApplicationArrayElement
extends ApplicationCompositeElementDataPrototype {
    public ApplicationArrayDataType getApplicationArrayDataType();

    public void setApplicationArrayDataType(ApplicationArrayDataType var1);

    public ArraySizeSemanticsEnum getArraySizeSemantics();

    public void setArraySizeSemantics(ArraySizeSemanticsEnum var1);

    public void unsetArraySizeSemantics();

    public boolean isSetArraySizeSemantics();

    public PositiveIntegerValueVariationPoint getMaxNumberOfElements();

    public void setMaxNumberOfElements(PositiveIntegerValueVariationPoint var1);
}

