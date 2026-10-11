/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package org.eclipse.sphinx.emf.resource;

import java.util.List;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ScopingResourceSet
extends ResourceSet {
    public List<Resource> getResourcesInModel(Object var1);

    public List<Resource> getResourcesInModel(Object var1, boolean var2);

    public List<Resource> getResourcesInScope(Object var1);

    public List<Resource> getResourcesInScope(Object var1, boolean var2);

    public EObject getEObjectInScope(URI var1, boolean var2, EObject var3);
}

