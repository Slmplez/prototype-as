/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.team.core.mapping.IStorageMerger;

class StorageMergerDescriptor {
    private static final String CLASS_ATTRIBUTE = "class";
    private IConfigurationElement fElement;

    public StorageMergerDescriptor(IConfigurationElement element) {
        this.fElement = element;
    }

    public IStorageMerger createStreamMerger() {
        try {
            return (IStorageMerger)this.fElement.createExecutableExtension(CLASS_ATTRIBUTE);
        }
        catch (CoreException coreException) {
            return null;
        }
        catch (ClassCastException classCastException) {
            return null;
        }
    }
}

