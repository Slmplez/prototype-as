/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.provider.FileInfo
 *  org.eclipse.core.filesystem.provider.FileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import java.io.InputStream;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.filesystem.provider.FileStore;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;

public class VirtualFileStore
extends FileStore {
    private final URI location;

    public VirtualFileStore(URI location) {
        this.location = location;
    }

    public String[] childNames(int options, IProgressMonitor monitor) {
        return FileStore.EMPTY_STRING_ARRAY;
    }

    public IFileInfo fetchInfo(int options, IProgressMonitor monitor) {
        FileInfo result = new FileInfo();
        result.setDirectory(true);
        result.setExists(true);
        result.setLastModified(1L);
        return result;
    }

    public void delete(int options, IProgressMonitor monitor) {
    }

    public IFileStore getChild(String name) {
        return EFS.getNullFileSystem().getStore(new Path(name).makeAbsolute());
    }

    public String getName() {
        return "virtual";
    }

    public IFileStore getParent() {
        return null;
    }

    public void move(IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
        destination.mkdir(0, monitor);
    }

    public InputStream openInputStream(int options, IProgressMonitor monitor) {
        return null;
    }

    public URI toURI() {
        return this.location;
    }
}

