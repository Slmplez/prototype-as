/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import org.eclipse.emf.ecore.EObject;

public interface DataVariantT
extends EObject {
    public DimensionalTypeT getDimensionalType();

    public void setDimensionalType(DimensionalTypeT var1);

    public ScalarTypeT getScalarType();

    public void setScalarType(ScalarTypeT var1);

    public ComplexDataT getComplexType();

    public void setComplexType(ComplexDataT var1);

    public ReferenceDataT getReferenceType();

    public void setReferenceType(ReferenceDataT var1);

    public DependencyT getDependency();

    public void setDependency(DependencyT var1);

    public DimensionalTypeT getDimensionalType1();

    public void setDimensionalType1(DimensionalTypeT var1);

    public ScalarTypeT getScalarType1();

    public void setScalarType1(ScalarTypeT var1);

    public String getName();

    public void setName(String var1);

    public String getOID();

    public void setOID(String var1);
}

