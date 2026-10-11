/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 */
package com.etas.ascet.importer.a2a;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;

public class StandaloneResourceSet
extends ResourceSetImpl {
    public EObject getEObject(URI uri, boolean loadOnDemand) {
        if (uri == null) {
            return null;
        }
        EObject resolvedEObject = null;
        for (Resource resource : this.getResources()) {
            try {
                EObject eObject = resource.getEObject(uri.fragment());
                if (eObject == null) continue;
                resolvedEObject = eObject;
                break;
            }
            catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return resolvedEObject;
    }
}

