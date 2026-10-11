/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.activities.ws;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.activities.ITriggerPointAdvisor;
import org.eclipse.ui.internal.registry.RegistryReader;

public final class TriggerPointAdvisorDescriptor {
    private String id;
    private IConfigurationElement element;

    public TriggerPointAdvisorDescriptor(IConfigurationElement element) throws IllegalArgumentException {
        this.id = element.getAttribute("id");
        if (this.id == null || RegistryReader.getClassValue(element, "class") == null) {
            throw new IllegalArgumentException();
        }
        this.element = element;
    }

    public String getId() {
        return this.id;
    }

    public ITriggerPointAdvisor createAdvisor() throws CoreException {
        return (ITriggerPointAdvisor)this.element.createExecutableExtension("class");
    }
}

