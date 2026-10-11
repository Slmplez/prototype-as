/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.sourcelookup.containers;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ZipEntryStorage;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupUtils;

public class ExternalArchiveSourceContainer
extends AbstractSourceContainer {
    private boolean fDetectRoots = false;
    private Set fPotentialRoots = null;
    private List fRoots = new ArrayList();
    private String fArchivePath = null;
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.externalArchive";

    public ExternalArchiveSourceContainer(String archivePath, boolean detectRootPaths) {
        this.fArchivePath = archivePath;
        this.fDetectRoots = detectRootPaths;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object[] findSourceElements(String name) throws CoreException {
        ZipFile file;
        name = name.replace('\\', '/');
        ZipFile zipFile = file = this.getArchive();
        synchronized (zipFile) {
            boolean isQualfied;
            boolean bl = isQualfied = name.indexOf(47) > 0;
            if (this.fDetectRoots && isQualfied) {
                ZipEntry entry = this.searchRoots(file, name);
                if (entry != null) {
                    return new Object[]{new ZipEntryStorage(file, entry)};
                }
            } else {
                ZipEntry entry = null;
                try {
                    entry = file.getEntry(name);
                }
                catch (IllegalStateException e) {
                    throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), e.getMessage(), (Throwable)e));
                }
                if (entry != null) {
                    return new Object[]{new ZipEntryStorage(file, entry)};
                }
                Enumeration<? extends ZipEntry> entries = file.entries();
                ArrayList<ZipEntryStorage> matches = null;
                while (entries.hasMoreElements()) {
                    entry = entries.nextElement();
                    String entryName = entry.getName();
                    if (!entryName.endsWith(name) || !isQualfied && entryName.length() != name.length() && entryName.charAt(entryName.length() - name.length() - 1) != '/') continue;
                    if (this.isFindDuplicates()) {
                        if (matches == null) {
                            matches = new ArrayList<ZipEntryStorage>();
                        }
                        matches.add(new ZipEntryStorage(file, entry));
                        continue;
                    }
                    return new Object[]{new ZipEntryStorage(file, entry)};
                }
                if (matches != null) {
                    return matches.toArray();
                }
            }
        }
        return EMPTY;
    }

    private ZipEntry searchRoots(ZipFile file, String name) throws CoreException {
        if (this.fPotentialRoots == null) {
            this.fPotentialRoots = new HashSet();
            this.fPotentialRoots.add("");
            try {
                Enumeration<? extends ZipEntry> entries = file.entries();
                block2: while (entries.hasMoreElements()) {
                    ZipEntry entry = entries.nextElement();
                    if (entry.isDirectory()) {
                        this.fPotentialRoots.add(entry.getName());
                        continue;
                    }
                    String entryName = entry.getName();
                    int index = entryName.lastIndexOf("/");
                    while (index > 0) {
                        if (!this.fPotentialRoots.add(entryName.substring(0, index + 1))) continue block2;
                        entryName = entryName.substring(0, index);
                        index = entryName.lastIndexOf("/");
                    }
                }
            }
            catch (IllegalStateException e) {
                throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), e.getMessage(), (Throwable)e));
            }
        }
        int i = 0;
        while (i < this.fRoots.size()) {
            String root = (String)this.fRoots.get(i);
            ZipEntry entry = file.getEntry(String.valueOf(root) + name);
            if (entry != null) {
                return entry;
            }
            ++i;
        }
        if (!this.fPotentialRoots.isEmpty()) {
            Iterator roots = this.fPotentialRoots.iterator();
            String root = null;
            ZipEntry entry = null;
            while (roots.hasNext()) {
                root = (String)roots.next();
                entry = file.getEntry(String.valueOf(root) + name);
                if (entry != null) break;
            }
            if (entry != null) {
                if (root != null) {
                    this.fRoots.add(root);
                    this.fPotentialRoots.remove(root);
                    Iterator rs = this.fPotentialRoots.iterator();
                    while (rs.hasNext()) {
                        String r = (String)rs.next();
                        if (!r.startsWith(root)) continue;
                        rs.remove();
                    }
                }
                return entry;
            }
        }
        return null;
    }

    private ZipFile getArchive() throws CoreException {
        try {
            return SourceLookupUtils.getZipFile(this.fArchivePath);
        }
        catch (IOException e) {
            File file = new File(this.fArchivePath);
            if (file.exists()) {
                this.abort(MessageFormat.format((String)SourceLookupMessages.ExternalArchiveSourceContainer_2, (Object[])new String[]{this.fArchivePath}), e);
            } else {
                this.warn(MessageFormat.format((String)SourceLookupMessages.ExternalArchiveSourceContainer_1, (Object[])new String[]{this.fArchivePath}), e);
            }
            return null;
        }
    }

    public String getName() {
        return this.fArchivePath;
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public boolean isDetectRoot() {
        return this.fDetectRoots;
    }

    public boolean equals(Object obj) {
        return obj instanceof ExternalArchiveSourceContainer && ((ExternalArchiveSourceContainer)obj).getName().equals(this.getName());
    }

    public int hashCode() {
        return this.getName().hashCode();
    }

    public void dispose() {
        super.dispose();
        if (this.fPotentialRoots != null) {
            this.fPotentialRoots.clear();
        }
        this.fRoots.clear();
    }
}

