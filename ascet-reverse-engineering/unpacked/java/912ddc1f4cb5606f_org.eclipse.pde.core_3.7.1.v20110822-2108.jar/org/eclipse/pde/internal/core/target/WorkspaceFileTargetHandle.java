/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.target;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.internal.core.target.AbstractTargetHandle;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;

public class WorkspaceFileTargetHandle
extends AbstractTargetHandle {
    private IFile fFile;
    static final String SCHEME = "resource";

    static ITargetHandle restoreHandle(URI uri) {
        String part = uri.getSchemeSpecificPart();
        Path path = new Path(part);
        IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)path);
        return new WorkspaceFileTargetHandle(file);
    }

    public WorkspaceFileTargetHandle(IFile file) {
        this.fFile = file;
    }

    public String getMemento() throws CoreException {
        try {
            URI uri = new URI(SCHEME, this.fFile.getFullPath().toPortableString(), null);
            return uri.toString();
        }
        catch (URISyntaxException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.WorkspaceFileTargetHandle_0, (Throwable)e));
        }
    }

    protected InputStream getInputStream() throws CoreException {
        return this.fFile.getContents();
    }

    public boolean exists() {
        return this.fFile.exists();
    }

    public boolean equals(Object obj) {
        if (obj instanceof WorkspaceFileTargetHandle) {
            WorkspaceFileTargetHandle handle = (WorkspaceFileTargetHandle)obj;
            return this.fFile.equals((Object)handle.fFile);
        }
        return false;
    }

    public int hashCode() {
        return this.fFile.hashCode() + this.getClass().hashCode();
    }

    void delete() throws CoreException {
        if (this.fFile.exists()) {
            this.fFile.delete(false, null);
        }
        P2TargetUtils.deleteProfile(this);
    }

    public void save(ITargetDefinition definition) throws CoreException {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ((TargetDefinition)definition).write(outputStream);
        ByteArrayInputStream stream = new ByteArrayInputStream(outputStream.toByteArray());
        if (!this.fFile.exists()) {
            this.fFile.create((InputStream)stream, false, null);
        } else {
            IStatus status;
            if (this.fFile.isReadOnly() && !(status = ResourcesPlugin.getWorkspace().validateEdit(new IFile[]{this.fFile}, null)).isOK()) {
                throw new CoreException(status);
            }
            this.fFile.setContents((InputStream)stream, true, false, null);
        }
    }

    public String toString() {
        return this.fFile.getName();
    }

    public IFile getTargetFile() {
        return this.fFile;
    }
}

