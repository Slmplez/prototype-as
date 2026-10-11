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
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;

public class WorkingSetRegistryReader
extends RegistryReader {
    private WorkingSetRegistry registry;

    public WorkingSetRegistryReader() {
    }

    public WorkingSetRegistryReader(WorkingSetRegistry registry) {
        this.registry = registry;
    }

    public boolean readElement(IConfigurationElement element) {
        if (element.getName().equals("workingSet")) {
            try {
                WorkingSetDescriptor desc = new WorkingSetDescriptor(element);
                this.registry.addWorkingSetDescriptor(desc);
            }
            catch (CoreException e) {
                WorkbenchPlugin.log("Unable to create working set descriptor.", e.getStatus());
            }
            return true;
        }
        return false;
    }

    public void readWorkingSets(IExtensionRegistry in, WorkingSetRegistry out) {
        this.registry = out;
        this.readRegistry(in, "org.eclipse.ui", "workingSets");
    }
}

