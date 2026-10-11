/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.mapping;

import java.util.Date;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;

public class LocalResourceVariant
implements IResourceVariant {
    private final IResource resource;

    public LocalResourceVariant(IResource resource) {
        this.resource = resource;
    }

    public byte[] asBytes() {
        return this.getContentIdentifier().getBytes();
    }

    public String getContentIdentifier() {
        return new Date(this.resource.getLocalTimeStamp()).toString();
    }

    public IStorage getStorage(IProgressMonitor monitor) throws TeamException {
        if (this.resource.getType() == 1) {
            return (IFile)this.resource;
        }
        return null;
    }

    public boolean isContainer() {
        return this.resource.getType() != 1;
    }

    public String getName() {
        return this.resource.getName();
    }
}

