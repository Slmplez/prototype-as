/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 */
package org.eclipse.ui.internal.activities.ws;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.activities.Persistence;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class ImageBindingRegistry
implements IExtensionChangeHandler {
    private String tag;
    private ImageRegistry registry = new ImageRegistry();

    public ImageBindingRegistry(String tag) {
        this.tag = tag;
        IExtension[] extensions = this.getExtensionPointFilter().getExtensions();
        int i = 0;
        while (i < extensions.length) {
            this.addExtension(PlatformUI.getWorkbench().getExtensionTracker(), extensions[i]);
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equals(this.tag)) {
                ImageDescriptor descriptor;
                String id = element.getAttribute("id");
                String file = element.getAttribute("icon");
                if (file == null || id == null) {
                    Persistence.log(element, "Invalid activity image binding", "definition must contain icon and ID");
                } else if (this.registry.getDescriptor(id) == null && (descriptor = AbstractUIPlugin.imageDescriptorFromPlugin(element.getNamespace(), file)) != null) {
                    this.registry.put(id, descriptor);
                    tracker.registerObject(extension, (Object)id, 2);
                }
            }
            ++i;
        }
    }

    public IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "activitySupport");
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof String) {
                this.registry.remove((String)objects[i]);
            }
            ++i;
        }
    }

    public ImageDescriptor getImageDescriptor(String id) {
        return this.registry.getDescriptor(id);
    }

    void dispose() {
        this.registry.dispose();
    }
}

