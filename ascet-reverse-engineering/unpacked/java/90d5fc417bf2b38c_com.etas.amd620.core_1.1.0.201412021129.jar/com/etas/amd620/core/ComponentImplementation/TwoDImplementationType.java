/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import org.eclipse.emf.ecore.EObject;

public interface TwoDImplementationType
extends EObject {
    public ScalarImplementationT getXAxis();

    public void setXAxis(ScalarImplementationT var1);

    public ScalarImplementationT getYAxis();

    public void setYAxis(ScalarImplementationT var1);

    public ScalarImplementationT getTableValues();

    public void setTableValues(ScalarImplementationT var1);

    public String getName();

    public void setName(String var1);
}

