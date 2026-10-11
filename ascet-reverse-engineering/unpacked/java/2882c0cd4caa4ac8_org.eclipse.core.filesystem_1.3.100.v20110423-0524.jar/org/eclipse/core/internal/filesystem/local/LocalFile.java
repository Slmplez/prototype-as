/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem.local;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.filesystem.provider.FileStore;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.internal.filesystem.local.InfiniteProgress;
import org.eclipse.core.internal.filesystem.local.LocalFileNativesManager;
import org.eclipse.core.internal.filesystem.local.LocalFileSystem;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public class LocalFile
extends FileStore {
    protected final File file;
    protected final String filePath;

    private static int attributes(File aFile) {
        if (!aFile.exists() || aFile.canWrite()) {
            return 0;
        }
        return 2;
    }

    public LocalFile(File file) {
        this.file = file;
        this.filePath = file.getAbsolutePath();
    }

    private void checkReadOnlyParent(File target, Throwable exception) throws CoreException {
        File parent = target.getParentFile();
        if (parent != null && (LocalFile.attributes(parent) & 2) != 0) {
            String message = NLS.bind((String)Messages.readOnlyParent, (Object)target.getAbsolutePath());
            Policy.error(277, message, exception);
        }
    }

    private void checkTargetIsNotWritable(File target, Throwable exception) throws CoreException {
        if (!target.canWrite()) {
            String message = NLS.bind((String)Messages.couldNotWrite, (Object)target.getAbsolutePath());
            Policy.error(272, message);
        }
    }

    public String[] childNames(int options, IProgressMonitor monitor) {
        String[] names = this.file.list();
        return names == null ? EMPTY_STRING_ARRAY : names;
    }

    public void copy(IFileStore destFile, int options, IProgressMonitor monitor) throws CoreException {
        if (destFile instanceof LocalFile) {
            File source = this.file;
            File destination = ((LocalFile)destFile).file;
            try {
                if (source.getCanonicalFile().equals(destination.getCanonicalFile())) {
                    return;
                }
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.couldNotRead, (Object)source.getAbsolutePath());
                Policy.error(271, message, e);
            }
        }
        super.copy(destFile, options, monitor);
    }

    public void delete(int options, IProgressMonitor monitor) throws CoreException {
        monitor = monitor == null ? new NullProgressMonitor() : new InfiniteProgress((IProgressMonitor)monitor);
        try {
            monitor.beginTask(NLS.bind((String)Messages.deleting, (Object)this), 200);
            String message = Messages.deleteProblem;
            MultiStatus result = new MultiStatus("org.eclipse.core.filesystem", 273, message, null);
            this.internalDelete(this.file, this.filePath, result, (IProgressMonitor)monitor);
            if (!result.isOK()) {
                throw new CoreException((IStatus)result);
            }
        }
        finally {
            monitor.done();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocalFile)) {
            return false;
        }
        LocalFile otherFile = (LocalFile)obj;
        if (LocalFileSystem.MACOSX) {
            return this.filePath.toLowerCase().equals(otherFile.filePath.toLowerCase());
        }
        return this.file.equals(otherFile.file);
    }

    public IFileInfo fetchInfo(int options, IProgressMonitor monitor) {
        if (LocalFileNativesManager.isUsingNatives()) {
            FileInfo info = LocalFileNativesManager.fetchFileInfo(this.filePath);
            if (info.getName().length() == 0) {
                String name = this.file.getName();
                info.setName(new String(name.toCharArray()));
            }
            return info;
        }
        FileInfo info = new FileInfo(this.file.getName());
        long lastModified = this.file.lastModified();
        if (lastModified <= 0L) {
            info.setExists(false);
            return info;
        }
        info.setLastModified(lastModified);
        info.setExists(true);
        info.setLength(this.file.length());
        info.setDirectory(this.file.isDirectory());
        info.setAttribute(2, this.file.exists() && !this.file.canWrite());
        info.setAttribute(16, this.file.isHidden());
        return info;
    }

    public IFileStore getChild(IPath path) {
        return new LocalFile(new File(this.file, path.toOSString()));
    }

    public IFileStore getFileStore(IPath path) {
        return new LocalFile(new Path(this.file.getPath()).append(path).toFile());
    }

    public IFileStore getChild(String name) {
        return new LocalFile(new File(this.file, name));
    }

    public IFileSystem getFileSystem() {
        return LocalFileSystem.getInstance();
    }

    public String getName() {
        return this.file.getName();
    }

    public IFileStore getParent() {
        File parent = this.file.getParentFile();
        return parent == null ? null : new LocalFile(parent);
    }

    public int hashCode() {
        if (LocalFileSystem.MACOSX) {
            return this.filePath.toLowerCase().hashCode();
        }
        return this.file.hashCode();
    }

    private boolean internalDelete(File target, String pathToDelete, MultiStatus status, IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        if (target.delete() || !target.exists()) {
            return true;
        }
        if (target.isDirectory()) {
            monitor.subTask(NLS.bind((String)Messages.deleting, (Object)target));
            String[] list = target.list();
            if (list == null) {
                list = EMPTY_STRING_ARRAY;
            }
            int parentLength = pathToDelete.length();
            boolean failedRecursive = false;
            int i = 0;
            int imax = list.length;
            while (i < imax) {
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                StringBuffer childBuffer = new StringBuffer(parentLength + list[i].length() + 1);
                childBuffer.append(pathToDelete);
                childBuffer.append(File.separatorChar);
                childBuffer.append(list[i]);
                String childName = childBuffer.toString();
                failedRecursive = !this.internalDelete(new File(childName), childName, status, monitor) || failedRecursive;
                monitor.worked(1);
                ++i;
            }
            try {
                if (!failedRecursive && target.delete()) {
                    return true;
                }
            }
            catch (Exception e) {
                String message = NLS.bind((String)Messages.couldnotDelete, (Object)target.getAbsolutePath());
                status.add((IStatus)new Status(4, "org.eclipse.core.filesystem", 273, message, (Throwable)e));
                return false;
            }
        }
        String message = null;
        message = this.fetchInfo().getAttribute(2) ? NLS.bind((String)Messages.couldnotDeleteReadOnly, (Object)target.getAbsolutePath()) : NLS.bind((String)Messages.couldnotDelete, (Object)target.getAbsolutePath());
        status.add((IStatus)new Status(4, "org.eclipse.core.filesystem", 273, message, null));
        return false;
    }

    public boolean isParentOf(IFileStore other) {
        int thatLength;
        if (!(other instanceof LocalFile)) {
            return false;
        }
        String thisPath = this.filePath;
        String thatPath = ((LocalFile)other).filePath;
        int thisLength = thisPath.length();
        if (thisLength >= (thatLength = thatPath.length())) {
            return false;
        }
        if (this.getFileSystem().isCaseSensitive() ? thatPath.indexOf(thisPath) != 0 : thatPath.toLowerCase().indexOf(thisPath.toLowerCase()) != 0) {
            return false;
        }
        return thisPath.charAt(thisLength - 1) == File.separatorChar || thatPath.charAt(thisLength) == File.separatorChar;
    }

    public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
        boolean shallow;
        boolean bl = shallow = (options & 4) != 0;
        if (shallow) {
            this.file.mkdir();
        } else {
            this.file.mkdirs();
        }
        if (!this.file.isDirectory()) {
            this.checkReadOnlyParent(this.file, null);
            this.checkTargetIsNotWritable(this.file, null);
            String message = NLS.bind((String)Messages.failedCreateWrongType, (Object)this.filePath);
            Policy.error(276, message);
        }
        return this;
    }

    public void move(IFileStore destFile, int options, IProgressMonitor monitor) throws CoreException {
        if (!(destFile instanceof LocalFile)) {
            super.move(destFile, options, monitor);
            return;
        }
        File source = this.file;
        File destination = ((LocalFile)destFile).file;
        boolean overwrite = (options & 2) != 0;
        monitor = Policy.monitorFor(monitor);
        try {
            String message;
            monitor.beginTask(NLS.bind((String)Messages.moving, (Object)source.getAbsolutePath()), 10);
            boolean sourceEqualsDest = false;
            try {
                sourceEqualsDest = source.getCanonicalFile().equals(destination.getCanonicalFile());
            }
            catch (IOException e) {
                String message2 = NLS.bind((String)Messages.couldNotMove, (Object)source.getAbsolutePath());
                Policy.error(272, message2, e);
            }
            if (!sourceEqualsDest && !overwrite && destination.exists()) {
                message = NLS.bind((String)Messages.fileExists, (Object)destination.getAbsolutePath());
                Policy.error(268, message);
            }
            if (source.renameTo(destination)) {
                if (!sourceEqualsDest && source.exists()) {
                    if (destination.exists()) {
                        new LocalFile(destination).delete(0, null);
                        message = NLS.bind((String)Messages.couldnotDelete, (Object)source.getAbsolutePath());
                        Policy.error(273, message);
                    }
                } else {
                    if (!destination.exists() && !destFile.fetchInfo().getAttribute(32)) {
                        message = NLS.bind((String)Messages.failedMove, (Object)source.getAbsolutePath(), (Object)destination.getAbsolutePath());
                        Policy.error(272, message);
                    }
                    monitor.worked(10);
                    return;
                }
            }
            if (sourceEqualsDest) {
                message = NLS.bind((String)Messages.couldNotMove, (Object)source.getAbsolutePath());
                Policy.error(272, message, null);
            }
            super.move(destFile, options, Policy.subMonitorFor(monitor, 10));
        }
        finally {
            monitor.done();
        }
    }

    public InputStream openInputStream(int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 1);
            FileInputStream fileInputStream = new FileInputStream(this.file);
            return fileInputStream;
        }
        catch (FileNotFoundException e) {
            String message = !this.file.exists() ? NLS.bind((String)Messages.fileNotFound, (Object)this.filePath) : (this.file.isDirectory() ? NLS.bind((String)Messages.notAFile, (Object)this.filePath) : NLS.bind((String)Messages.couldNotRead, (Object)this.filePath));
            Policy.error(271, message, e);
            return null;
        }
        finally {
            monitor.done();
        }
    }

    public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 1);
            FileOutputStream fileOutputStream = new FileOutputStream(this.file, (options & 1) != 0);
            return fileOutputStream;
        }
        catch (FileNotFoundException e) {
            this.checkReadOnlyParent(this.file, e);
            String path = this.filePath;
            String message = this.file.isDirectory() ? NLS.bind((String)Messages.notAFile, (Object)path) : NLS.bind((String)Messages.couldNotWrite, (Object)path);
            Policy.error(272, message, e);
            return null;
        }
        finally {
            monitor.done();
        }
    }

    public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
        boolean success = true;
        if ((options & 0x400) != 0 && LocalFileNativesManager.isUsingNatives()) {
            success &= LocalFileNativesManager.putFileInfo(this.filePath, info, options);
        }
        if ((options & 0x800) != 0) {
            success &= this.file.setLastModified(info.getLastModified());
        }
        if (!success && !this.file.exists()) {
            Policy.error(269, NLS.bind((String)Messages.fileNotFound, (Object)this.filePath));
        }
    }

    public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
        if (options == 4096) {
            return super.toLocalFile(options, monitor);
        }
        return this.file;
    }

    public String toString() {
        return this.file.toString();
    }

    public URI toURI() {
        return URIUtil.toURI(this.filePath);
    }
}

