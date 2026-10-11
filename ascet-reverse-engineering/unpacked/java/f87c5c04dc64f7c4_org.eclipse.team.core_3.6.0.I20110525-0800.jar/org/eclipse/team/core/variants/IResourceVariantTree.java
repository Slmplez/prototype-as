/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;

public interface IResourceVariantTree {
    public IResource[] roots();

    public IResource[] members(IResource var1) throws TeamException;

    public IResourceVariant getResourceVariant(IResource var1) throws TeamException;

    public boolean hasResourceVariant(IResource var1) throws TeamException;

    public IResource[] refresh(IResource[] var1, int var2, IProgressMonitor var3) throws TeamException;

    public void flushVariants(IResource var1, int var2) throws TeamException;
}

