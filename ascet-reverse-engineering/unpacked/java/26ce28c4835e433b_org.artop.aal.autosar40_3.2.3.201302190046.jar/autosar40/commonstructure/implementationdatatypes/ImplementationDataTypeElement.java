/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.implementationdatatypes;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ImplementationDataTypeElement
extends Identifiable {
    public PositiveIntegerValueVariationPoint getArraySize();

    public void setArraySize(PositiveIntegerValueVariationPoint var1);

    public ArraySizeSemanticsEnum getArraySizeSemantics();

    public void setArraySizeSemantics(ArraySizeSemanticsEnum var1);

    public void unsetArraySizeSemantics();

    public boolean isSetArraySizeSemantics();

    public EList<ImplementationDataTypeElement> getSubElements();

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

