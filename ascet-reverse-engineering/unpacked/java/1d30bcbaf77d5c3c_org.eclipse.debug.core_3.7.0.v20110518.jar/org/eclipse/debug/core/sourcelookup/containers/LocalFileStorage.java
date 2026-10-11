/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.sourcelookup.containers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public class LocalFileStorage
extends PlatformObject
implements IStorage {
    private File fFile;

    public LocalFileStorage(File file) {
        this.setFile(file);
    }

    public InputStream getContents() throws CoreException {
        try {
            return new FileInputStream(this.getFile());
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, SourceLookupMessages.LocalFileStorage_0, (Throwable)e));
        }
    }

    public IPath getFullPath() {
        try {
            return new Path(this.getFile().getCanonicalPath());
        }
        catch (IOException e) {
            DebugPlugin.log(e);
            return null;
        }
    }

    public String getName() {
        return this.getFile().getName();
    }

    public boolean isReadOnly() {
        return true;
    }

    private void setFile(File file) {
        this.fFile = file;
    }

    public File getFile() {
        return this.fFile;
    }

    public boolean equals(Object object) {
        return object instanceof LocalFileStorage && this.getFile().equals(((LocalFileStorage)((Object)object)).getFile());
    }

    public int hashCode() {
        return this.getFile().hashCode();
    }
}

