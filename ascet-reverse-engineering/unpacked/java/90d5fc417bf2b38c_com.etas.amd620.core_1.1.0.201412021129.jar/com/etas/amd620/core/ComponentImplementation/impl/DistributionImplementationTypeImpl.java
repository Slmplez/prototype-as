/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.impl.ScalarImplementationTImpl;
import org.eclipse.emf.ecore.EClass;

public class DistributionImplementationTypeImpl
extends ScalarImplementationTImpl
implements DistributionImplementationType {
    protected DistributionImplementationTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.DISTRIBUTION_IMPLEMENTATION_TYPE;
    }
}

