/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import org.eclipse.emf.ecore.EObject;

public interface ImplementationVariantT
extends EObject {
    public ElementImplementationType getElementImplementation();

    public void setElementImplementation(ElementImplementationType var1);

    public MethodImplementationT getMethodImplementation();

    public void setMethodImplementation(MethodImplementationT var1);

    public String getName();

    public void setName(String var1);
}

