/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.history.provider;

import java.net.URI;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.history.ITag;

public abstract class FileRevision
implements IFileRevision {
    public static IFileRevision getFileRevisionFor(IFile file) {
        return new LocalFileRevision(file);
    }

    public URI getURI() {
        return null;
    }

    public long getTimestamp() {
        return -1L;
    }

    public boolean exists() {
        return true;
    }

    public String getContentIdentifier() {
        return null;
    }

    public String getAuthor() {
        return null;
    }

    public String getComment() {
        return null;
    }

    public ITag[] getBranches() {
        return new ITag[0];
    }

    public ITag[] getTags() {
        return new ITag[0];
    }

    private static final class LocalFileRevision
    extends FileRevision {
        private final IFile file;

        private LocalFileRevision(IFile file) {
            this.file = file;
        }

        public IStorage getStorage(IProgressMonitor monitor) {
            return this.file;
        }

        public String getName() {
            return this.file.getName();
        }

        public boolean exists() {
            return this.file.exists();
        }

        public long getTimestamp() {
            return this.file.getLocalTimeStamp();
        }

        public URI getURI() {
            return this.file.getLocationURI();
        }

        public IFileRevision withAllProperties(IProgressMonitor monitor) throws CoreException {
            return this;
        }

        public boolean isPropertyMissing() {
            return false;
        }

        public int hashCode() {
            return this.file.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof LocalFileRevision) {
                LocalFileRevision other = (LocalFileRevision)obj;
                return other.file.equals((Object)this.file);
            }
            return false;
        }
    }
}

