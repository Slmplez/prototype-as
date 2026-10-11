/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.impl.ResourceImplementationTImpl;
import org.eclipse.emf.ecore.EClass;

public class ResourceImplementationTypeImpl
extends ResourceImplementationTImpl
implements ResourceImplementationType {
    protected ResourceImplementationTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.RESOURCE_IMPLEMENTATION_TYPE;
    }
}

