/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceVisitor
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.sphinx.platform.resources;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

public abstract class AbstractResourceVisitor
implements IResourceVisitor {
    public final boolean visit(IResource resource) throws CoreException {
        if (!ExtendedPlatform.isPlatformPrivateResource(resource)) {
            return this.doVisit(resource);
        }
        return false;
    }

    protected abstract boolean doVisit(IResource var1) throws CoreException;
}

