/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.util.CoreUtility;

class ExternalLibraryCache {
    private static final String LIB_CACHE_DIR = ".external_libraries";

    ExternalLibraryCache() {
    }

    public File[] getExtractedLibraries(IPluginModelBase model) {
        File fJarFile = new File(model.getInstallLocation());
        if (!fJarFile.isFile()) {
            return new File[0];
        }
        BundleDescription desc = model.getBundleDescription();
        IPluginLibrary[] libs = model.getPluginBase().getLibraries();
        File fCacheDir = new File(this.getLibraryCacheDir(), this.getBundleLibsCacheDirName(desc));
        ArrayList<File> files = new ArrayList<File>();
        int i = 0;
        while (i < libs.length) {
            String libName = libs[i].getName();
            if (!".".equals(libName)) {
                File fDestFile = new File(fCacheDir, libName = ClasspathUtilCore.expandLibraryName(libName));
                if (!fDestFile.isFile()) {
                    try {
                        File extractedLib = this.extractJar(fJarFile, libName, fDestFile);
                        if (extractedLib != null) {
                            files.add(extractedLib);
                        }
                    }
                    catch (IOException ie) {
                        PDECore.logException(ie, "Could not extract library from jarred bundle " + desc.getSymbolicName());
                    }
                } else {
                    files.add(fDestFile);
                }
            }
            ++i;
        }
        return files.toArray(new File[0]);
    }

    public void cleanExtractedLibraries(IPluginModelBase[] targetModels) {
        File fCacheDir = this.getLibraryCacheDir();
        if (!fCacheDir.isDirectory()) {
            return;
        }
        HashSet<String> bundleKeys = new HashSet<String>();
        int i = 0;
        while (i < targetModels.length) {
            if (targetModels[i].isEnabled()) {
                BundleDescription desc = targetModels[i].getBundleDescription();
                bundleKeys.add(this.getBundleLibsCacheDirName(desc));
            }
            ++i;
        }
        File[] fDirs = fCacheDir.listFiles();
        int i2 = 0;
        while (i2 < fDirs.length) {
            if (fDirs[i2].isDirectory() && !bundleKeys.contains(fDirs[i2].getName())) {
                CoreUtility.deleteContent(fDirs[i2]);
            }
            ++i2;
        }
        fCacheDir.delete();
    }

    private File getLibraryCacheDir() {
        IPath path = PDECore.getDefault().getStateLocation();
        return new File(path.toFile(), LIB_CACHE_DIR);
    }

    private String getBundleLibsCacheDirName(BundleDescription desc) {
        return String.valueOf(desc.getSymbolicName()) + "_" + desc.getVersion();
    }

    private File extractJar(File fJarFile, String libName, File fTargetFile) throws IOException {
        ZipEntry libEntry;
        InputStream in;
        JarFile f;
        block19: {
            f = new JarFile(fJarFile);
            in = null;
            try {
                libEntry = f.getEntry(libName);
                if (libEntry != null && !libEntry.isDirectory()) break block19;
            }
            catch (Throwable throwable) {
                try {
                    f.close();
                }
                catch (Exception exception) {}
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                catch (Exception exception) {}
                throw throwable;
            }
            try {
                f.close();
            }
            catch (Exception exception) {}
            try {
                if (in != null) {
                    in.close();
                }
            }
            catch (Exception exception) {}
            return null;
        }
        fTargetFile.getParentFile().mkdirs();
        in = f.getInputStream(libEntry);
        if (in == null) {
            throw new IOException();
        }
        CoreUtility.readFile(in, fTargetFile);
        File file = fTargetFile;
        try {
            f.close();
        }
        catch (Exception exception) {}
        try {
            if (in != null) {
                in.close();
            }
        }
        catch (Exception exception) {}
        return file;
    }
}

