/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.impl.ElementImplementationTImpl;
import org.eclipse.emf.ecore.EClass;

public class ElementImplementationTypeImpl
extends ElementImplementationTImpl
implements ElementImplementationType {
    protected ElementImplementationTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.ELEMENT_IMPLEMENTATION_TYPE;
    }
}

