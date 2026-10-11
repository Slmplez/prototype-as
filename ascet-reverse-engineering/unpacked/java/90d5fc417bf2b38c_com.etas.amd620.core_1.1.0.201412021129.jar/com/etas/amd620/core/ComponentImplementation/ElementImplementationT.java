/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface ElementImplementationT
extends EObject {
    public ScalarImplementationT getScalarImplementation();

    public void setScalarImplementation(ScalarImplementationT var1);

    public DimensionalImplementationT getDimensionalImplementation();

    public void setDimensionalImplementation(DimensionalImplementationT var1);

    public ComplexImplementationT getComplexImplementation();

    public void setComplexImplementation(ComplexImplementationT var1);

    public DimensionalReferenceImplementationT getDimensionalReferenceImplementation();

    public void setDimensionalReferenceImplementation(DimensionalReferenceImplementationT var1);

    public ComplexReferenceImplementationT getComplexReferenceImplementation();

    public void setComplexReferenceImplementation(ComplexReferenceImplementationT var1);

    public boolean isAsReference();

    public void setAsReference(boolean var1);

    public void unsetAsReference();

    public boolean isSetAsReference();

    public String getElementName();

    public void setElementName(String var1);

    public String getElementOID();

    public void setElementOID(String var1);

    public BigInteger getIndex();

    public void setIndex(BigInteger var1);

    public String getMethodName();

    public void setMethodName(String var1);
}

