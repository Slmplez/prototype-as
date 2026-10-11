/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.internal.registry.RegistryReader;

public class PerspectiveRegistryReader
extends RegistryReader {
    private PerspectiveRegistry registry;

    public PerspectiveRegistryReader(PerspectiveRegistry out) {
        this.registry = out;
    }

    protected boolean readElement(IConfigurationElement element) {
        if (element.getName().equals("perspective")) {
            try {
                PerspectiveDescriptor desc = new PerspectiveDescriptor(element.getAttribute("id"), element);
                this.registry.addPerspective(desc);
            }
            catch (CoreException e) {
                WorkbenchPlugin.log("Unable to create layout descriptor.", e.getStatus());
            }
            return true;
        }
        return false;
    }

    public void readPerspectives(IExtensionRegistry in) {
        this.readRegistry(in, "org.eclipse.ui", "perspectives");
    }
}

