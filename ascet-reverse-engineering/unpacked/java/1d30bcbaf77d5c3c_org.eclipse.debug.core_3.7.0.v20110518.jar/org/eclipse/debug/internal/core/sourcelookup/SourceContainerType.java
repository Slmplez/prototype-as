/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceContainerTypeDelegate;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public class SourceContainerType
implements ISourceContainerType {
    private ISourceContainerTypeDelegate fDelegate = null;
    private IConfigurationElement fElement = null;

    public SourceContainerType(IConfigurationElement element) {
        this.fElement = element;
    }

    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        return this.getDelegate().createSourceContainer(memento);
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        if (this.equals(container.getType())) {
            return this.getDelegate().getMemento(container);
        }
        Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, SourceLookupMessages.SourceContainerType_0, null);
        throw new CoreException((IStatus)status);
    }

    public String getName() {
        return this.fElement.getAttribute("name");
    }

    public String getId() {
        return this.fElement.getAttribute("id");
    }

    private ISourceContainerTypeDelegate getDelegate() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = (ISourceContainerTypeDelegate)this.fElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    public String getDescription() {
        return this.fElement.getAttribute("description");
    }
}

