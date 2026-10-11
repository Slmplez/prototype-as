/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.filesystem.provider;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.FileCache;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.osgi.util.NLS;

public abstract class FileStore
extends PlatformObject
implements IFileStore {
    private static final byte[] buffer = new byte[8192];
    protected static final IFileInfo[] EMPTY_FILE_INFO_ARRAY = new IFileInfo[0];
    protected static final String[] EMPTY_STRING_ARRAY = new String[0];

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static final void transferStreams(InputStream source, OutputStream destination, String path, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            byte[] byArray = buffer;
            synchronized (buffer) {
                while (true) {
                    String msg;
                    int bytesRead = -1;
                    try {
                        bytesRead = source.read(buffer);
                    }
                    catch (IOException e) {
                        msg = NLS.bind((String)Messages.failedReadDuringWrite, (Object)path);
                        Policy.error(271, msg, e);
                    }
                    try {
                        if (bytesRead == -1) {
                            destination.close();
                            break;
                        }
                        destination.write(buffer, 0, bytesRead);
                    }
                    catch (IOException e) {
                        msg = NLS.bind((String)Messages.couldNotWrite, (Object)path);
                        Policy.error(272, msg, e);
                    }
                    monitor.worked(1);
                }
                // ** MonitorExit[var4_4] (shouldn't be in output)
            }
        }
        finally {
            Policy.safeClose(source);
            Policy.safeClose(destination);
        }
        {
            return;
        }
    }

    public IFileInfo[] childInfos(int options, IProgressMonitor monitor) throws CoreException {
        IFileStore[] childStores = this.childStores(options, monitor);
        IFileInfo[] childInfos = new IFileInfo[childStores.length];
        int i = 0;
        while (i < childStores.length) {
            childInfos[i] = childStores[i].fetchInfo();
            ++i;
        }
        return childInfos;
    }

    public abstract String[] childNames(int var1, IProgressMonitor var2) throws CoreException;

    public IFileStore[] childStores(int options, IProgressMonitor monitor) throws CoreException {
        String[] children = this.childNames(options, monitor);
        IFileStore[] wrapped = new IFileStore[children.length];
        int i = 0;
        while (i < wrapped.length) {
            wrapped[i] = this.getChild(children[i]);
            ++i;
        }
        return wrapped;
    }

    public void copy(IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        Policy.checkCanceled(monitor);
        IFileInfo sourceInfo = this.fetchInfo(0, null);
        if (sourceInfo.isDirectory()) {
            this.copyDirectory(sourceInfo, destination, options, monitor);
        } else {
            this.copyFile(sourceInfo, destination, options, monitor);
        }
    }

    protected void copyDirectory(IFileInfo sourceInfo, IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
        try {
            IFileStore[] children = null;
            int opWork = 1;
            if ((options & 4) == 0) {
                children = this.childStores(0, null);
                opWork += children.length;
            }
            monitor.beginTask("", opWork);
            monitor.subTask(NLS.bind((String)Messages.copying, (Object)this.toString()));
            destination.mkdir(0, Policy.subMonitorFor(monitor, 1));
            this.transferAttributes(sourceInfo, destination);
            if (children == null) {
                return;
            }
            int i = 0;
            while (i < children.length) {
                children[i].copy(destination.getChild(children[i].getName()), options, Policy.subMonitorFor(monitor, 1));
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void copyFile(IFileInfo sourceInfo, IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
        try {
            long length;
            if ((options & 2) == 0 && destination.fetchInfo().exists()) {
                Policy.error(268, NLS.bind((String)Messages.fileExists, (Object)destination));
            }
            int totalWork = (length = sourceInfo.getLength()) == -1L ? -1 : 1 + (int)(length / (long)buffer.length);
            String sourcePath = this.toString();
            monitor.beginTask(NLS.bind((String)Messages.copying, (Object)sourcePath), totalWork);
            InputStream in = null;
            OutputStream out = null;
            try {
                in = this.openInputStream(0, Policy.subMonitorFor(monitor, 0));
                out = destination.openOutputStream(0, Policy.subMonitorFor(monitor, 0));
                FileStore.transferStreams(in, out, sourcePath, monitor);
                this.transferAttributes(sourceInfo, destination);
            }
            catch (CoreException e) {
                Policy.safeClose(in);
                Policy.safeClose(out);
                if (!destination.fetchInfo(0, null).exists()) {
                    destination.delete(0, null);
                }
                throw e;
            }
        }
        finally {
            monitor.done();
        }
    }

    public void delete(int options, IProgressMonitor monitor) throws CoreException {
        Policy.error(273, NLS.bind((String)Messages.noImplDelete, (Object)this.toString()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileStore)) {
            return false;
        }
        return this.toURI().equals(((FileStore)obj).toURI());
    }

    public IFileInfo fetchInfo() {
        try {
            return this.fetchInfo(0, null);
        }
        catch (CoreException coreException) {
            FileInfo result = new FileInfo(this.getName());
            result.setExists(false);
            return result;
        }
    }

    public abstract IFileInfo fetchInfo(int var1, IProgressMonitor var2) throws CoreException;

    public IFileStore getChild(IPath path) {
        IFileStore result = this;
        int i = 0;
        int imax = path.segmentCount();
        while (i < imax) {
            result = result.getChild(path.segment(i));
            ++i;
        }
        return result;
    }

    public IFileStore getFileStore(IPath path) {
        IFileStore result = this;
        String segment = null;
        int i = 0;
        int imax = path.segmentCount();
        while (i < imax) {
            segment = path.segment(i);
            if (!segment.equals(".")) {
                result = segment.equals("..") && result.getParent() != null ? result.getParent() : result.getChild(segment);
            }
            ++i;
        }
        return result;
    }

    public abstract IFileStore getChild(String var1);

    public IFileSystem getFileSystem() {
        try {
            return EFS.getFileSystem(this.toURI().getScheme());
        }
        catch (CoreException e) {
            throw new RuntimeException(e);
        }
    }

    public abstract String getName();

    public abstract IFileStore getParent();

    public int hashCode() {
        return this.toURI().hashCode();
    }

    public boolean isParentOf(IFileStore other) {
        do {
            if ((other = other.getParent()) != null) continue;
            return false;
        } while (!this.equals(other));
        return true;
    }

    public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
        Policy.error(272, NLS.bind((String)Messages.noImplWrite, (Object)this.toString()));
        return null;
    }

    public void move(IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            try {
                monitor.beginTask(NLS.bind((String)Messages.moving, (Object)destination.toString()), 100);
                this.copy(destination, options & 2, Policy.subMonitorFor(monitor, 70));
                this.delete(0, Policy.subMonitorFor(monitor, 30));
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.couldNotMove, (Object)this.toString());
                Policy.error(272, message, e);
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
    }

    public abstract InputStream openInputStream(int var1, IProgressMonitor var2) throws CoreException;

    public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
        Policy.error(272, NLS.bind((String)Messages.noImplWrite, (Object)this.toString()));
        return null;
    }

    public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
        Policy.error(272, NLS.bind((String)Messages.noImplWrite, (Object)this.toString()));
    }

    public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        if (options != 4096) {
            return null;
        }
        return FileCache.getCache().cache(this, monitor);
    }

    public String toString() {
        return this.toURI().toString();
    }

    public abstract URI toURI();

    private void transferAttributes(IFileInfo sourceInfo, IFileStore destination) throws CoreException {
        int options = 3072;
        destination.putInfo(sourceInfo, options, null);
    }
}

