/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.pde.internal.build;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.IPDEBuildConstants;

public class FetchTaskFactoriesRegistry
implements IPDEBuildConstants {
    private final Map factories = new HashMap();
    private final Map cache = new HashMap();

    public FetchTaskFactoriesRegistry() {
        this.initializeRegistry();
    }

    public IFetchFactory getFactory(String id) {
        Object result = this.cache.get(id);
        if (result != null) {
            return (IFetchFactory)result;
        }
        IFetchFactory toCache = this.newFactory(id);
        if (toCache != null) {
            this.cache.put(id, toCache);
            return toCache;
        }
        return null;
    }

    public IFetchFactory newFactory(String id) {
        IConfigurationElement extension = (IConfigurationElement)this.factories.get(id);
        if (extension != null) {
            try {
                IFetchFactory factory = (IFetchFactory)extension.createExecutableExtension("class");
                return factory;
            }
            catch (CoreException e) {
                BundleHelper.getDefault().getLog().log(e.getStatus());
            }
        }
        return null;
    }

    public Collection getFactoryIds() {
        return this.factories.keySet();
    }

    private void initializeRegistry() {
        IConfigurationElement[] extensions = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.pde.build.fetchFactories");
        int i = 0;
        while (i < extensions.length) {
            String id;
            IConfigurationElement extension = extensions[i];
            if ("factory".equals(extension.getName()) && (id = extension.getAttribute("id")) != null && id.trim().length() > 0) {
                this.factories.put(id, extension);
            }
            ++i;
        }
    }
}

