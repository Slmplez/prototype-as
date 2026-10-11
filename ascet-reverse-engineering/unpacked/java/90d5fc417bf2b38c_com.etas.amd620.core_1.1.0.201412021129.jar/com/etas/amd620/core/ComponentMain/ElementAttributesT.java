/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.ModelTypeType;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import org.eclipse.emf.ecore.EObject;

public interface ElementAttributesT
extends EObject {
    public ScalarTypeType getScalarType();

    public void setScalarType(ScalarTypeType var1);

    public ComplexTypeType getComplexType();

    public void setComplexType(ComplexTypeType var1);

    public DimensionalTypeType getDimensionalType();

    public void setDimensionalType(DimensionalTypeType var1);

    public BasicModelTypeType getBasicModelType();

    public void setBasicModelType(BasicModelTypeType var1);

    public void unsetBasicModelType();

    public boolean isSetBasicModelType();

    public ModelTypeType getModelType();

    public void setModelType(ModelTypeType var1);

    public void unsetModelType();

    public boolean isSetModelType();

    public String getUnit();

    public void setUnit(String var1);
}

