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

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public class ZipEntryStorage
extends PlatformObject
implements IStorage {
    private ZipFile fArchive;
    private ZipEntry fZipEntry;

    public ZipEntryStorage(ZipFile archive, ZipEntry entry) {
        this.setArchive(archive);
        this.setZipEntry(entry);
    }

    public InputStream getContents() throws CoreException {
        try {
            return this.getArchive().getInputStream(this.getZipEntry());
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, SourceLookupMessages.ZipEntryStorage_0, (Throwable)e));
        }
    }

    public IPath getFullPath() {
        return new Path(this.getArchive().getName()).append(this.getZipEntry().getName());
    }

    public String getName() {
        int index = this.getZipEntry().getName().lastIndexOf(92);
        if (index == -1) {
            index = this.getZipEntry().getName().lastIndexOf(47);
        }
        if (index == -1) {
            return this.getZipEntry().getName();
        }
        return this.getZipEntry().getName().substring(index + 1);
    }

    public boolean isReadOnly() {
        return true;
    }

    private void setArchive(ZipFile archive) {
        this.fArchive = archive;
    }

    public ZipFile getArchive() {
        return this.fArchive;
    }

    private void setZipEntry(ZipEntry entry) {
        this.fZipEntry = entry;
    }

    public ZipEntry getZipEntry() {
        return this.fZipEntry;
    }

    public boolean equals(Object object) {
        return object instanceof ZipEntryStorage && this.getArchive().equals(((ZipEntryStorage)((Object)object)).getArchive()) && this.getZipEntry().getName().equals(((ZipEntryStorage)((Object)object)).getZipEntry().getName());
    }

    public int hashCode() {
        return this.getZipEntry().getName().hashCode();
    }
}

