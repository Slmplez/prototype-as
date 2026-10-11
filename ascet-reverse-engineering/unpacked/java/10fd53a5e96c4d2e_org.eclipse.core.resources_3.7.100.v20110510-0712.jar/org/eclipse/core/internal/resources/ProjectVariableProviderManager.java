/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public class ProjectVariableProviderManager {
    private static Map<String, Descriptor> descriptors;
    private static ProjectVariableProviderManager instance;

    public static synchronized ProjectVariableProviderManager getDefault() {
        if (instance == null) {
            instance = new ProjectVariableProviderManager();
        }
        return instance;
    }

    public Descriptor[] getDescriptors() {
        this.lazyInitialize();
        return descriptors.values().toArray(new Descriptor[descriptors.size()]);
    }

    protected void lazyInitialize() {
        if (descriptors != null) {
            return;
        }
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.resources", "variableResolvers");
        IExtension[] extensions = point.getExtensions();
        descriptors = new HashMap<String, Descriptor>(extensions.length * 2 + 1);
        int i = 0;
        int imax = extensions.length;
        while (i < imax) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int count = elements.length;
            int j = 0;
            while (j < count) {
                IConfigurationElement element = elements[j];
                String elementName = element.getName();
                if (elementName.equalsIgnoreCase("variableResolver")) {
                    Descriptor desc = null;
                    try {
                        desc = new Descriptor(extensions[i], element);
                    }
                    catch (CoreException e) {
                        Policy.log(e);
                    }
                    if (desc != null) {
                        descriptors.put(desc.getName(), desc);
                    }
                }
                ++j;
            }
            ++i;
        }
    }

    public Descriptor findDescriptor(String name) {
        Descriptor result = descriptors.get(name);
        if (result != null) {
            return result;
        }
        return null;
    }

    public static class Descriptor {
        PathVariableResolver provider = null;
        String name = null;
        String value = null;

        public Descriptor(IExtension extension, IConfigurationElement element) throws RuntimeException, CoreException {
            this.name = element.getAttribute("variable");
            this.value = element.getAttribute("value");
            try {
                this.provider = (PathVariableResolver)element.createExecutableExtension("class");
            }
            catch (CoreException t) {
                t.printStackTrace();
            }
            if (this.name == null) {
                this.fail(NLS.bind((String)Messages.mapping_invalidDef, (Object)extension.getUniqueIdentifier()));
            }
        }

        protected void fail(String reason) throws CoreException {
            throw new ResourceException((IStatus)new Status(4, "org.eclipse.core.resources", 1, reason, null));
        }

        public String getName() {
            return this.name;
        }

        public String getValue(String variable, IResource resource) {
            if (this.value != null) {
                return this.value;
            }
            return this.provider.getValue(variable, resource);
        }

        public String[] getVariableNames(String variable, IResource resource) {
            if (this.provider != null) {
                return this.provider.getVariableNames(variable, resource);
            }
            return null;
        }
    }
}

