/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem;

import java.io.File;
import java.io.IOException;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.filesystem.Activator;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.internal.filesystem.local.LocalFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;

public class FileCache {
    private static final String CACHE_DIR_NAME = "filecache";
    private static final Object creationLock = new Object();
    static final boolean MACOSX = FileCache.getOS().equals("macosx");
    private static FileCache instance = null;
    private File cacheDir;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static FileCache getCache() throws CoreException {
        Object object = creationLock;
        synchronized (object) {
            if (instance == null) {
                instance = new FileCache();
            }
            return instance;
        }
    }

    private FileCache() throws CoreException {
        IPath location = Activator.getCacheLocation();
        File cacheParent = new File(location.toFile(), CACHE_DIR_NAME);
        this.cleanOldCache(cacheParent);
        cacheParent.mkdirs();
        this.cacheDir = this.getUniqueDirectory(cacheParent, true);
    }

    public File cache(IFileStore source, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask(NLS.bind((String)Messages.copying, (Object)this.toString()), 100);
            IFileInfo myInfo = source.fetchInfo(0, Policy.subMonitorFor(monitor, 25));
            if (!myInfo.exists()) {
                File file = new File(this.cacheDir, "Non-Existent-" + System.currentTimeMillis());
                return file;
            }
            File result = myInfo.isDirectory() ? this.getUniqueDirectory(this.cacheDir, false) : File.createTempFile(source.getFileSystem().getScheme(), "efs", this.cacheDir);
            monitor.worked(25);
            LocalFile resultStore = new LocalFile(result);
            source.copy(resultStore, 2, Policy.subMonitorFor(monitor, 25));
            result.deleteOnExit();
            File file = result;
            return file;
        }
        catch (IOException iOException) {
            Policy.error(272, NLS.bind((String)Messages.couldNotWrite, (Object)this.toString()));
            return null;
        }
        finally {
            monitor.done();
        }
    }

    private void cleanOldCache(File cacheParent) throws CoreException {
        if (MACOSX) {
            this.clearImmutableFlag(cacheParent);
        }
        new LocalFile(cacheParent).delete(0, null);
    }

    private void clearImmutableFlag(File target) {
        if (!target.exists()) {
            return;
        }
        if (target.isDirectory()) {
            File[] children = target.listFiles();
            if (children != null) {
                int i = 0;
                int imax = children.length;
                while (i < imax) {
                    this.clearImmutableFlag(children[i]);
                    ++i;
                }
            }
        } else {
            LocalFile lfile = new LocalFile(target);
            try {
                IFileInfo info = lfile.fetchInfo(0, null);
                if (info.getAttribute(0x200000)) {
                    info.setAttribute(0x200000, false);
                    lfile.putInfo(info, 1024, null);
                }
            }
            catch (CoreException coreException) {}
        }
    }

    static String getOS() {
        return System.getProperty("osgi.os", "");
    }

    private File getUniqueDirectory(File parent, boolean create) {
        File dir;
        long i = 0L;
        while ((dir = new File(parent, Long.toString(System.currentTimeMillis() + i++))).exists()) {
        }
        if (create) {
            dir.mkdir();
        }
        return dir;
    }
}

