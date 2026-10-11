/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.resources.mapping;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.resources.mapping.ModelProviderDescriptor;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.mapping.IModelProviderDescriptor;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;

public class ModelProviderManager {
    private static Map<String, IModelProviderDescriptor> descriptors;
    private static ModelProviderManager instance;

    public static synchronized ModelProviderManager getDefault() {
        if (instance == null) {
            instance = new ModelProviderManager();
        }
        return instance;
    }

    private void detectCycles() {
    }

    public IModelProviderDescriptor getDescriptor(String id) {
        this.lazyInitialize();
        return descriptors.get(id);
    }

    public IModelProviderDescriptor[] getDescriptors() {
        this.lazyInitialize();
        return descriptors.values().toArray(new IModelProviderDescriptor[descriptors.size()]);
    }

    public ModelProvider getModelProvider(String modelProviderId) throws CoreException {
        IModelProviderDescriptor desc = this.getDescriptor(modelProviderId);
        if (desc == null) {
            return null;
        }
        return desc.getModelProvider();
    }

    protected void lazyInitialize() {
        if (descriptors != null) {
            return;
        }
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.resources", "modelProviders");
        IExtension[] extensions = point.getExtensions();
        descriptors = new HashMap<String, IModelProviderDescriptor>(extensions.length * 2 + 1);
        int i = 0;
        int imax = extensions.length;
        while (i < imax) {
            ModelProviderDescriptor desc = null;
            try {
                desc = new ModelProviderDescriptor(extensions[i]);
            }
            catch (CoreException e) {
                Policy.log(e);
            }
            if (desc != null) {
                descriptors.put(desc.getId(), desc);
            }
            ++i;
        }
        this.detectCycles();
    }
}

