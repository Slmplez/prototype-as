/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 */
package org.eclipse.sphinx.emf.ecore;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.sphinx.emf.ecore.proxymanagement.ProxyResolutionBehavior;

public class ExtendedEObjectImpl
extends EObjectImpl {
    public EObject eResolveProxy(InternalEObject proxy) {
        return ProxyResolutionBehavior.INSTANCE.eResolveProxy((EObject)this, (EObject)proxy);
    }
}

