/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import org.eclipse.emf.ecore.EObject;

public interface DimensionalImplementationT
extends EObject {
    public OneDImplementationType getOneDImplementation();

    public void setOneDImplementation(OneDImplementationType var1);

    public TwoDImplementationType getTwoDImplementation();

    public void setTwoDImplementation(TwoDImplementationType var1);

    public DistributionImplementationType getDistributionImplementation();

    public void setDistributionImplementation(DistributionImplementationType var1);

    public ScalarImplementationT getArrayImplementation();

    public void setArrayImplementation(ScalarImplementationT var1);

    public ScalarImplementationT getMatrixImplementation();

    public void setMatrixImplementation(ScalarImplementationT var1);
}

