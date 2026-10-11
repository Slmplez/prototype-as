/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import org.eclipse.emf.ecore.EObject;

public interface ScalarTypeT
extends EObject {
    public EnumerationDataT getEnumeration();

    public void setEnumeration(EnumerationDataT var1);

    public NumericDataT getNumeric();

    public void setNumeric(NumericDataT var1);

    public LogicDataT getLogic();

    public void setLogic(LogicDataT var1);
}

