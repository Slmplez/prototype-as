/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswimplementation;

import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswDebugInfo
extends Identifiable {
    public BswImplementation getBswImplementation();

    public void setBswImplementation(BswImplementation var1);

    public EList<ImplementationDataTypeElement> getLocalDebugDatas();

    public EList<ParameterDataPrototype> getParameterAccessedForDebugs();

    public EList<VariableDataPrototype> getVariableAccessedForDebugs();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

