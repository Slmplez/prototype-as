/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseClassLoadingHook
implements ClassLoadingHook {
    private static final String[] LIB_EXTENSIONS;
    private static final String[] EMPTY_STRINGS;

    static {
        EMPTY_STRINGS = new String[0];
        String[] libExtensions = ManifestElement.getArrayFromList(FrameworkProperties.getProperty("osgi.framework.library.extensions", FrameworkProperties.getProperty("org.osgi.framework.library.extensions")), ",");
        int i = 0;
        while (i < libExtensions.length) {
            if (libExtensions[i].length() > 0 && libExtensions[i].charAt(0) != '.') {
                libExtensions[i] = new StringBuffer(String.valueOf('.')).append(libExtensions[i]).toString();
            }
            ++i;
        }
        LIB_EXTENSIONS = libExtensions;
    }

    public static String[] mapLibraryNames(String mappedLibName) {
        int extIndex = mappedLibName.lastIndexOf(46);
        if (LIB_EXTENSIONS.length == 0 || extIndex < 0) {
            return EMPTY_STRINGS;
        }
        String libNameBase = mappedLibName.substring(0, extIndex);
        String[] results = new String[LIB_EXTENSIONS.length];
        int i = 0;
        while (i < results.length) {
            results[i] = new StringBuffer(String.valueOf(libNameBase)).append(LIB_EXTENSIONS[i]).toString();
            ++i;
        }
        return results;
    }

    @Override
    public String findLibrary(BaseData data, String libName) {
        String mappedName = System.mapLibraryName(libName);
        String path = null;
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("  mapped library name: ").append(mappedName).toString());
        }
        if ((path = this.findNativePath(data, mappedName)) == null) {
            String[] mappedNames = BaseClassLoadingHook.mapLibraryNames(mappedName);
            int i = 0;
            while (i < mappedNames.length && path == null) {
                path = this.findNativePath(data, mappedNames[i]);
                ++i;
            }
        }
        if (path == null) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("  library does not exist: ").append(mappedName).toString());
            }
            path = this.findNativePath(data, libName);
        }
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("  returning library: ").append(path).toString());
        }
        return path;
    }

    private String findNativePath(BaseData bundledata, String libname) {
        String[] nativepaths;
        int slash = libname.lastIndexOf(47);
        if (slash >= 0) {
            libname = libname.substring(slash + 1);
        }
        if ((nativepaths = this.getNativePaths(bundledata)) == null) {
            return null;
        }
        int i = 0;
        while (i < nativepaths.length) {
            String path;
            slash = nativepaths[i].lastIndexOf(47);
            String string = path = slash < 0 ? nativepaths[i] : nativepaths[i].substring(slash + 1);
            if (path.equals(libname)) {
                if (nativepaths[i].startsWith("external:")) {
                    String externalPath = BaseStorageHook.substituteVars(nativepaths[i].substring("external:".length()));
                    File nativeFile = new File(externalPath);
                    return nativeFile.getAbsolutePath();
                }
                File nativeFile = bundledata.getBundleFile().getFile(nativepaths[i], true);
                if (nativeFile != null) {
                    return nativeFile.getAbsolutePath();
                }
            }
            ++i;
        }
        return null;
    }

    private String[] getNativePaths(BaseData bundledata) {
        BaseStorageHook storageHook = (BaseStorageHook)bundledata.getStorageHook(BaseStorageHook.KEY);
        return storageHook != null ? storageHook.getNativePaths() : null;
    }

    @Override
    public boolean addClassPathEntry(ArrayList<ClasspathEntry> cpEntries, String cp, ClasspathManager hostmanager, BaseData sourcedata, ProtectionDomain sourcedomain) {
        return false;
    }

    @Override
    public ClassLoader getBundleClassLoaderParent() {
        return null;
    }

    @Override
    public byte[] processClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        return null;
    }

    @Override
    public BaseClassLoader createClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, BundleProtectionDomain domain, BaseData data, String[] bundleclasspath) {
        return null;
    }

    @Override
    public void initializedClassLoader(BaseClassLoader baseClassLoader, BaseData data) {
    }
}

