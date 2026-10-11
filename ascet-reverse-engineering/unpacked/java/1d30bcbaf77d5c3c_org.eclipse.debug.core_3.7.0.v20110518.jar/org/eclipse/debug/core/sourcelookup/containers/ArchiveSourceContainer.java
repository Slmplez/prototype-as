/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup.containers;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ExternalArchiveSourceContainer;

public class ArchiveSourceContainer
extends AbstractSourceContainer {
    private IFile fFile;
    private boolean fDetectRoot;
    private ExternalArchiveSourceContainer fDelegateContainer;
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.archive";

    public ArchiveSourceContainer(IFile archive, boolean detectRootPath) {
        this.fFile = archive;
        this.fDetectRoot = detectRootPath;
        if (archive.exists() && archive.getLocation() != null) {
            this.fDelegateContainer = new ExternalArchiveSourceContainer(archive.getLocation().toOSString(), detectRootPath);
        }
    }

    public String getName() {
        return this.fFile.getName();
    }

    public IFile getFile() {
        return this.fFile;
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public boolean equals(Object obj) {
        return obj instanceof ArchiveSourceContainer && ((ArchiveSourceContainer)obj).getName().equals(this.getName());
    }

    public int hashCode() {
        return this.getName().hashCode();
    }

    public Object[] findSourceElements(String name) throws CoreException {
        ExternalArchiveSourceContainer container = this.getDelegateContainer();
        if (container != null) {
            return container.findSourceElements(name);
        }
        return EMPTY;
    }

    private ExternalArchiveSourceContainer getDelegateContainer() {
        return this.fDelegateContainer;
    }

    public void init(ISourceLookupDirector director) {
        super.init(director);
        if (this.fDelegateContainer != null) {
            this.fDelegateContainer.init(director);
        }
    }

    public void dispose() {
        super.dispose();
        if (this.fDelegateContainer != null) {
            this.fDelegateContainer.dispose();
        }
    }

    public boolean isDetectRoot() {
        return this.fDetectRoot;
    }
}

