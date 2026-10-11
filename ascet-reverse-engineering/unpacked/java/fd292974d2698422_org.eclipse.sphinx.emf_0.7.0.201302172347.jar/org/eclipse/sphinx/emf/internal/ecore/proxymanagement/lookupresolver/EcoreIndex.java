/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.messages.PlatformMessages
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement.lookupresolver;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.messages.PlatformMessages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
public final class EcoreIndex {
    private Map<String, EObject> index = null;

    private void assertIsAvailable() {
        if (!this.isAvailable()) {
            throw new RuntimeException(NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)"index"));
        }
    }

    public boolean isAvailable() {
        return this.index != null;
    }

    public void clear() {
        this.assertIsAvailable();
        this.index = null;
    }

    public void init() {
        this.index = new HashMap<String, EObject>();
    }

    public EObject get(URI uri) {
        this.assertIsAvailable();
        Assert.isNotNull((Object)uri, (String)NLS.bind((String)PlatformMessages.arg_mustNotBeNull, (Object)"uri"));
        return this.index.get(uri.fragment());
    }

    public void init(Collection<Resource> resources) {
        if (!this.isAvailable()) {
            this.init();
        }
        for (Resource resource : resources) {
            TreeIterator i = resource.getAllContents();
            while (i.hasNext()) {
                EObject o = (EObject)i.next();
                String fragment = resource.getURIFragment(o);
                this.index.put(fragment, o);
            }
        }
    }
}

