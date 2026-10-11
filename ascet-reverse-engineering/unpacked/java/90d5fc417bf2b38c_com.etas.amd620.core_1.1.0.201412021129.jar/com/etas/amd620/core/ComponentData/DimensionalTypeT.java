/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.TwoDType;
import org.eclipse.emf.ecore.EObject;

public interface DimensionalTypeT
extends EObject {
    public OneDType getOneD();

    public void setOneD(OneDType var1);

    public TwoDType getTwoD();

    public void setTwoD(TwoDType var1);

    public ArrayT getDistribution();

    public void setDistribution(ArrayT var1);

    public ArrayT getArray();

    public void setArray(ArrayT var1);

    public MatrixT getMatrix();

    public void setMatrix(MatrixT var1);
}

