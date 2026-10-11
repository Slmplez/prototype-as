/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry
 *  org.eclipse.sphinx.emf.resource.ScopingResourceSetImpl
 */
package org.artop.aal.common.resource.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.ScopingResourceSetImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarResourceSetImpl
extends ScopingResourceSetImpl {
    protected List<Resource> getResourcesToSearchIn(URI uri, boolean loadOnDemand, EObject contextObject) {
        Assert.isNotNull((Object)uri);
        String deprecatedArxmlScheme = "arxml";
        if ("ar".equals(uri.scheme()) || deprecatedArxmlScheme.equals(uri.scheme())) {
            ArrayList<Resource> resourcesToSearchIn = new ArrayList<Resource>(super.getResourcesToSearchIn(uri, loadOnDemand, contextObject));
            Iterator iter = resourcesToSearchIn.iterator();
            while (iter.hasNext()) {
                if (MetaModelDescriptorRegistry.INSTANCE.getDescriptor((Resource)iter.next()) instanceof AutosarReleaseDescriptor) continue;
                iter.remove();
            }
            return resourcesToSearchIn;
        }
        return super.getResourcesToSearchIn(uri, loadOnDemand, contextObject);
    }
}

