/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import org.eclipse.emf.common.util.EList;

public interface MatrixT
extends DimensionalDataT {
    public EList<ArrayT> getRow();
}

