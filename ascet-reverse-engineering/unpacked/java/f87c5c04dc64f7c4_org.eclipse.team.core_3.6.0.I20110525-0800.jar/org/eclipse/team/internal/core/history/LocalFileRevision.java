/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFileState
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.history;

import java.net.URI;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.history.ITag;
import org.eclipse.team.core.history.provider.FileRevision;
import org.eclipse.team.internal.core.Messages;

public class LocalFileRevision
extends FileRevision {
    private IFileState state;
    private IFile file;
    private IFileRevision baseRevision;

    public LocalFileRevision(IFileState state) {
        this.state = state;
        this.file = null;
        this.baseRevision = null;
    }

    public LocalFileRevision(IFile file) {
        this.file = file;
        this.baseRevision = null;
        this.state = null;
    }

    public String getContentIdentifier() {
        if (this.file != null) {
            return this.baseRevision == null ? NLS.bind((String)Messages.LocalFileRevision_currentVersion, (Object)"") : NLS.bind((String)Messages.LocalFileRevision_currentVersion, (Object)this.baseRevision.getContentIdentifier());
        }
        return "";
    }

    public String getAuthor() {
        return "";
    }

    public String getComment() {
        if (this.file != null) {
            return Messages.LocalFileRevision_currentVersionTag;
        }
        return null;
    }

    public ITag[] getTags() {
        return new ITag[0];
    }

    public IStorage getStorage(IProgressMonitor monitor) throws CoreException {
        if (this.file != null) {
            return this.file;
        }
        return this.state;
    }

    public String getName() {
        if (this.file != null) {
            return this.file.getName();
        }
        return this.state.getName();
    }

    public long getTimestamp() {
        if (this.file != null) {
            return this.file.getLocalTimeStamp();
        }
        return this.state.getModificationTime();
    }

    public boolean exists() {
        if (this.file != null) {
            return this.file.exists();
        }
        return this.state.exists();
    }

    public void setBaseRevision(IFileRevision baseRevision) {
        this.baseRevision = baseRevision;
    }

    public boolean isPropertyMissing() {
        return true;
    }

    public IFileRevision withAllProperties(IProgressMonitor monitor) {
        return this;
    }

    public boolean isPredecessorOf(IFileRevision revision) {
        long compareRevisionTime = revision.getTimestamp();
        return this.getTimestamp() < compareRevisionTime;
    }

    public boolean isDescendentOf(IFileRevision revision) {
        long compareRevisionTime = revision.getTimestamp();
        return this.getTimestamp() > compareRevisionTime;
    }

    public URI getURI() {
        if (this.file != null) {
            return this.file.getLocationURI();
        }
        return URIUtil.toURI((IPath)this.state.getFullPath());
    }

    public IFile getFile() {
        return this.file;
    }

    public IFileState getState() {
        return this.state;
    }

    public boolean isCurrentState() {
        return this.file != null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LocalFileRevision) {
            LocalFileRevision other = (LocalFileRevision)obj;
            if (this.file != null && other.file != null) {
                return this.file.equals((Object)other.file);
            }
            if (this.state != null && other.state != null) {
                return this.statesEqual(this.state, other.state);
            }
        }
        return false;
    }

    private boolean statesEqual(IFileState s1, IFileState s2) {
        return s1.getFullPath().equals((Object)s2.getFullPath()) && s1.getModificationTime() == s2.getModificationTime();
    }

    public int hashCode() {
        if (this.file != null) {
            return this.file.hashCode();
        }
        if (this.state != null) {
            return (int)this.state.getModificationTime();
        }
        return super.hashCode();
    }
}

