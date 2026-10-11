/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILogicalStructureProvider;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class LogicalStructureProvider {
    private IConfigurationElement fConfigurationElement;
    private String fModelIdentifier;
    private ILogicalStructureProvider fDelegate;

    public LogicalStructureProvider(IConfigurationElement element) throws CoreException {
        this.fConfigurationElement = element;
        this.fModelIdentifier = this.fConfigurationElement.getAttribute("modelIdentifier");
        if (this.fModelIdentifier == null) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LogicalStructureProvider_0, null));
        }
        String className = this.fConfigurationElement.getAttribute("class");
        if (className == null) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LogicalStructureProvider_1, null));
        }
    }

    public ILogicalStructureType[] getLogicalStructures(IValue value) {
        if (this.fModelIdentifier.equals(value.getModelIdentifier())) {
            return this.getDelegate().getLogicalStructureTypes(value);
        }
        return new ILogicalStructureType[0];
    }

    protected ILogicalStructureProvider getDelegate() {
        if (this.fDelegate == null) {
            try {
                this.fDelegate = (ILogicalStructureProvider)this.fConfigurationElement.createExecutableExtension("class");
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
        return this.fDelegate;
    }
}

