/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationT;
import com.etas.amd620.core.ComponentImplementation.impl.PrimitiveImplementationTImpl;
import org.eclipse.emf.ecore.EClass;

public class ResourceImplementationTImpl
extends PrimitiveImplementationTImpl
implements ResourceImplementationT {
    protected ResourceImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.RESOURCE_IMPLEMENTATION_T;
    }
}

