/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IRegistryEventListener
 *  org.eclipse.core.runtime.RegistryFactory
 */
package org.eclipse.core.internal.resources;

import java.util.HashMap;
import org.eclipse.core.internal.resources.FilterDescriptor;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.RegistryFactory;

class FilterTypeManager
implements IManager {
    private static final String FILTER_ELEMENT = "filterMatcher";
    private HashMap<String, IFilterMatcherDescriptor> factories = new HashMap();

    public FilterTypeManager() {
        IExtensionPoint point = RegistryFactory.getRegistry().getExtensionPoint("org.eclipse.core.resources", "filterMatchers");
        if (point != null) {
            IExtension[] ext = point.getExtensions();
            int i = 0;
            while (i < ext.length) {
                IExtension extension = ext[i];
                this.processExtension(extension);
                ++i;
            }
            RegistryFactory.getRegistry().addListener(new IRegistryEventListener(){

                public void added(IExtension[] extensions) {
                    int i = 0;
                    while (i < extensions.length) {
                        FilterTypeManager.this.processExtension(extensions[i]);
                        ++i;
                    }
                }

                public void added(IExtensionPoint[] extensionPoints) {
                }

                public void removed(IExtension[] extensions) {
                    int i = 0;
                    while (i < extensions.length) {
                        FilterTypeManager.this.processRemovedExtension(extensions[i]);
                        ++i;
                    }
                }

                public void removed(IExtensionPoint[] extensionPoints) {
                }
            });
        }
    }

    public IFilterMatcherDescriptor getFilterDescriptor(String id) {
        return this.factories.get(id);
    }

    public IFilterMatcherDescriptor[] getFilterDescriptors() {
        return this.factories.values().toArray(new IFilterMatcherDescriptor[0]);
    }

    protected void processExtension(IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equalsIgnoreCase(FILTER_ELEMENT)) {
                try {
                    FilterDescriptor desc = new FilterDescriptor(element);
                    this.factories.put(desc.getId(), desc);
                }
                catch (CoreException e) {
                    e.printStackTrace();
                }
            }
            ++i;
        }
    }

    protected void processRemovedExtension(IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equalsIgnoreCase(FILTER_ELEMENT)) {
                try {
                    FilterDescriptor desc = new FilterDescriptor(element, false);
                    this.factories.remove(desc.getId());
                }
                catch (CoreException e) {
                    e.printStackTrace();
                }
            }
            ++i;
        }
    }

    public void shutdown(IProgressMonitor monitor) {
    }

    public void startup(IProgressMonitor monitor) {
    }
}

