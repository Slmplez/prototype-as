/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.filesystem;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileTree;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IFileSystem
extends IAdaptable {
    public int attributes();

    public boolean canDelete();

    public boolean canWrite();

    public IFileTree fetchFileTree(IFileStore var1, IProgressMonitor var2) throws CoreException;

    public IFileStore fromLocalFile(File var1);

    public String getScheme();

    public IFileStore getStore(IPath var1);

    public IFileStore getStore(URI var1);

    public boolean isCaseSensitive();
}

