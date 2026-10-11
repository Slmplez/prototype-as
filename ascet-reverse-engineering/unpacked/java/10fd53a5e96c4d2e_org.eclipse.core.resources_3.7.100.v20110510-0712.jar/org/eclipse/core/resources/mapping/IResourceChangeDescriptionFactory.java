/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources.mapping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.IPath;

public interface IResourceChangeDescriptionFactory {
    public void change(IFile var1);

    public void close(IProject var1);

    public void copy(IResource var1, IPath var2);

    public void create(IResource var1);

    public void delete(IResource var1);

    public IResourceDelta getDelta();

    public void move(IResource var1, IPath var2);
}

