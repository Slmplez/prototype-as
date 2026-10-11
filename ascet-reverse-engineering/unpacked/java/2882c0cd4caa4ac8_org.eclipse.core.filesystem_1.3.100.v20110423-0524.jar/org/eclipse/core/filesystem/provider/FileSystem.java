/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.filesystem.provider;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.IFileTree;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;

public abstract class FileSystem
extends PlatformObject
implements IFileSystem {
    private String scheme;

    public int attributes() {
        return 0;
    }

    public boolean canDelete() {
        return false;
    }

    public boolean canWrite() {
        return false;
    }

    public final String getScheme() {
        return this.scheme;
    }

    public IFileStore getStore(IPath path) {
        try {
            return this.getStore(new URI(this.scheme, path.toString(), null));
        }
        catch (URISyntaxException uRISyntaxException) {
            return EFS.getNullFileSystem().getStore(path);
        }
    }

    public abstract IFileStore getStore(URI var1);

    public IFileTree fetchFileTree(IFileStore root, IProgressMonitor monitor) throws CoreException {
        return null;
    }

    public IFileStore fromLocalFile(File file) {
        return null;
    }

    public final void initialize(String aScheme) {
        if (aScheme == null) {
            throw new NullPointerException();
        }
        if (this.scheme != null) {
            throw new IllegalStateException("File system already initialized");
        }
        this.scheme = aScheme;
    }

    public boolean isCaseSensitive() {
        return true;
    }
}

