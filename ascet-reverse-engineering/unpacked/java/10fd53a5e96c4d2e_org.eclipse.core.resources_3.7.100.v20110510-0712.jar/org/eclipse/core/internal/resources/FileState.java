/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.UniversalUniqueIdentifier;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.osgi.util.NLS;

public class FileState
extends PlatformObject
implements IFileState {
    private static final IWorkspace workspace = ResourcesPlugin.getWorkspace();
    protected long lastModified;
    protected UniversalUniqueIdentifier uuid;
    protected IHistoryStore store;
    protected IPath fullPath;

    public FileState(IHistoryStore store, IPath fullPath, long lastModified, UniversalUniqueIdentifier uuid) {
        this.store = store;
        this.lastModified = lastModified;
        this.uuid = uuid;
        this.fullPath = fullPath;
    }

    public boolean exists() {
        return this.store.exists(this);
    }

    public String getCharset() throws CoreException {
        IResource file = workspace.getRoot().findMember(this.fullPath);
        if (file != null && file.getType() == 1) {
            return ((IFile)file).getCharset();
        }
        IContentTypeManager contentTypeManager = Platform.getContentTypeManager();
        BufferedInputStream contents = new BufferedInputStream(this.getContents());
        try {
            IContentDescription description = contentTypeManager.getDescriptionFor((InputStream)contents, this.getName(), new QualifiedName[]{IContentDescription.CHARSET});
            ((InputStream)contents).close();
            String string = description == null ? null : description.getCharset();
            return string;
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.history_errorContentDescription, (Object)this.getFullPath());
            throw new ResourceException(381, this.getFullPath(), message, e);
        }
        finally {
            FileUtil.safeClose(contents);
        }
    }

    public InputStream getContents() throws CoreException {
        return this.store.getContents(this);
    }

    public IPath getFullPath() {
        return this.fullPath;
    }

    public long getModificationTime() {
        return this.lastModified;
    }

    public String getName() {
        return this.fullPath.lastSegment();
    }

    public UniversalUniqueIdentifier getUUID() {
        return this.uuid;
    }

    public boolean isReadOnly() {
        return true;
    }

    public String toString() {
        StringBuffer s = new StringBuffer();
        s.append("FileState(uuid: ");
        s.append(this.uuid.toString());
        s.append(", lastModified: ");
        s.append(this.lastModified);
        s.append(", path: ");
        s.append(this.fullPath);
        s.append(')');
        return s.toString();
    }
}

