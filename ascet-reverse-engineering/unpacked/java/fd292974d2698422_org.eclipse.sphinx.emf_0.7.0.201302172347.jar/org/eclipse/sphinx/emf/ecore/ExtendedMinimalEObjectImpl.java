/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package org.eclipse.sphinx.emf.ecore;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.sphinx.emf.ecore.MinimalEObjectImpl2;
import org.eclipse.sphinx.emf.ecore.proxymanagement.ProxyResolutionBehavior;

public class ExtendedMinimalEObjectImpl
extends MinimalEObjectImpl2 {
    public EObject eResolveProxy(InternalEObject proxy) {
        return ProxyResolutionBehavior.INSTANCE.eResolveProxy(this, (EObject)proxy);
    }
}

