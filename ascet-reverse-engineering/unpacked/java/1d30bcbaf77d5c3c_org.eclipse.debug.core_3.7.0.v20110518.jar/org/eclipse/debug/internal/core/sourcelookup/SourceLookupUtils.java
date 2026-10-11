/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ResourcesPlugin
 */
package org.eclipse.debug.internal.core.sourcelookup;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchesListener2;

public class SourceLookupUtils {
    private static HashMap fgZipFileCache = new HashMap(5);
    private static ArchiveCleaner fgCleaner = null;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ZipFile getZipFile(String name) throws IOException {
        HashMap hashMap = fgZipFileCache;
        synchronized (hashMap) {
            ZipFile zip;
            if (fgCleaner == null) {
                fgCleaner = new ArchiveCleaner();
                DebugPlugin.getDefault().getLaunchManager().addLaunchListener(fgCleaner);
                ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)fgCleaner, 6);
            }
            if ((zip = (ZipFile)fgZipFileCache.get(name)) == null) {
                zip = new ZipFile(name);
                fgZipFileCache.put(name, zip);
            }
            return zip;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void closeArchives() {
        HashMap hashMap = fgZipFileCache;
        synchronized (hashMap) {
            Iterator iter = fgZipFileCache.values().iterator();
            while (iter.hasNext()) {
                ZipFile file;
                ZipFile zipFile = file = (ZipFile)iter.next();
                synchronized (zipFile) {
                    try {
                        file.close();
                    }
                    catch (IOException e) {
                        DebugPlugin.log(e);
                    }
                }
            }
            fgZipFileCache.clear();
        }
    }

    public static void shutdown() {
        SourceLookupUtils.closeArchives();
        if (fgCleaner != null) {
            DebugPlugin.getDefault().getLaunchManager().removeLaunchListener(fgCleaner);
            ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)fgCleaner);
        }
    }

    static class ArchiveCleaner
    implements IResourceChangeListener,
    ILaunchesListener2 {
        ArchiveCleaner() {
        }

        public void launchesRemoved(ILaunch[] launches) {
            int i = 0;
            while (i < launches.length) {
                ILaunch launch = launches[i];
                if (!launch.isTerminated()) {
                    SourceLookupUtils.closeArchives();
                    return;
                }
                ++i;
            }
        }

        public void launchesAdded(ILaunch[] launches) {
        }

        public void launchesChanged(ILaunch[] launches) {
        }

        public void resourceChanged(IResourceChangeEvent event) {
            SourceLookupUtils.closeArchives();
        }

        public void launchesTerminated(ILaunch[] launches) {
            SourceLookupUtils.closeArchives();
        }
    }
}

