/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IPackageFragmentRoot;

public interface IJarEntryResource
extends IStorage {
    public IJarEntryResource[] getChildren();

    public IPath getFullPath();

    public Object getParent();

    public IPackageFragmentRoot getPackageFragmentRoot();

    public boolean isFile();
}

