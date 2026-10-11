/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.filesystem;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.filesystem.provider.FileStore;
import org.eclipse.core.internal.filesystem.NullFileSystem;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public class NullFileStore
extends FileStore {
    private IPath path;

    public NullFileStore(IPath path) {
        Assert.isNotNull((Object)path);
        this.path = path;
    }

    public IFileInfo[] childInfos(int options, IProgressMonitor monitor) {
        return EMPTY_FILE_INFO_ARRAY;
    }

    public String[] childNames(int options, IProgressMonitor monitor) {
        return EMPTY_STRING_ARRAY;
    }

    public void delete(int options, IProgressMonitor monitor) throws CoreException {
        super.delete(options, monitor);
    }

    public IFileInfo fetchInfo(int options, IProgressMonitor monitor) {
        FileInfo result = new FileInfo(this.getName());
        result.setExists(false);
        return result;
    }

    public IFileStore getChild(String name) {
        return new NullFileStore(this.path.append(name));
    }

    public IFileSystem getFileSystem() {
        return NullFileSystem.getInstance();
    }

    public String getName() {
        return String.valueOf(this.path.lastSegment());
    }

    public IFileStore getParent() {
        return this.path.segmentCount() == 0 ? null : new NullFileStore(this.path.removeLastSegments(1));
    }

    public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
        return super.mkdir(options, monitor);
    }

    public InputStream openInputStream(int options, IProgressMonitor monitor) {
        return new ByteArrayInputStream(new byte[0]);
    }

    public OutputStream openOutputStream(int options, IProgressMonitor monitor) {
        return new OutputStream(){

            public void write(int b) {
            }
        };
    }

    public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
        super.putInfo(info, options, monitor);
    }

    public String toString() {
        return this.path.toString();
    }

    public URI toURI() {
        try {
            return new URI("null", null, this.path.isEmpty() ? "/" : this.path.toString(), null);
        }
        catch (URISyntaxException e) {
            Policy.log(4, "Invalid URI", e);
            return null;
        }
    }
}

