/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.texteditor.quickdiff.ReferenceProviderDescriptor;

public class QuickDiffExtensionsRegistry {
    private ReferenceProviderDescriptor fDefaultDescriptor;
    private List fDescriptors;

    public synchronized ReferenceProviderDescriptor getDefaultProvider() {
        this.ensureRegistered();
        return this.fDefaultDescriptor;
    }

    public synchronized List getReferenceProviderDescriptors() {
        this.ensureRegistered();
        return this.fDescriptors;
    }

    private void ensureRegistered() {
        if (this.fDescriptors == null) {
            this.reloadExtensions();
        }
    }

    public synchronized void reloadExtensions() {
        this.fDefaultDescriptor = null;
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        ArrayList<ReferenceProviderDescriptor> list = new ArrayList<ReferenceProviderDescriptor>();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor("org.eclipse.ui.workbench.texteditor", "quickDiffReferenceProvider");
        int i = 0;
        while (i < elements.length) {
            ReferenceProviderDescriptor desc = new ReferenceProviderDescriptor(elements[i]);
            if (desc.getId().equals("org.eclipse.ui.internal.editors.quickdiff.LastSaveReferenceProvider")) {
                this.fDefaultDescriptor = desc;
            }
            list.add(desc);
            ++i;
        }
        if (this.fDefaultDescriptor != null) {
            list.remove(this.fDefaultDescriptor);
            list.add(0, this.fDefaultDescriptor);
        }
        this.fDescriptors = Collections.unmodifiableList(list);
    }
}

