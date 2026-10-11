/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface McDataInstance
extends Identifiable {
    public Long getArraySize();

    public void setArraySize(Long var1);

    public void unsetArraySize();

    public boolean isSetArraySize();

    public FlatInstanceDescriptor getFlatMapEntry();

    public void setFlatMapEntry(FlatInstanceDescriptor var1);

    public ImplementationElementInParameterInstanceRef getInstanceInMemory();

    public void setInstanceInMemory(ImplementationElementInParameterInstanceRef var1);

    public SwDataDefProps getResultingProperties();

    public void setResultingProperties(SwDataDefProps var1);

    public EList<McDataInstance> getSubElements();

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getArraySizeData();

    public void setArraySizeData(PositiveIntegerDatatype var1);
}

