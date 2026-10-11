/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import org.eclipse.core.runtime.internal.adaptor.ClasspathManifest;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.baseadaptor.BaseClassLoadingHook;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseClassLoadingHook
implements ClassLoadingHook,
HookConfigurator {
    private static String[] NL_JAR_VARIANTS = EclipseClassLoadingHook.buildNLJarVariants(EclipseEnvironmentInfo.getDefault().getNL());
    private static boolean DEFINE_PACKAGES;
    private static final boolean DEFINE_PACKAGE_ATTRIBUTES;
    private static String[] LIB_VARIANTS;
    private Object pkgLock = new Object();

    static {
        DEFINE_PACKAGE_ATTRIBUTES = !"noattributes".equals(FrameworkProperties.getProperty("osgi.classloader.define.packages"));
        LIB_VARIANTS = EclipseClassLoadingHook.buildLibraryVariants();
        try {
            Class.forName("java.lang.Package");
            DEFINE_PACKAGES = true;
        }
        catch (ClassNotFoundException classNotFoundException) {
            DEFINE_PACKAGES = false;
        }
    }

    private static String[] buildLibraryVariants() {
        ArrayList<String> result = new ArrayList<String>();
        EclipseEnvironmentInfo info = EclipseEnvironmentInfo.getDefault();
        result.add(new StringBuffer("ws/").append(info.getWS()).append("/").toString());
        result.add(new StringBuffer("os/").append(info.getOS()).append("/").append(info.getOSArch()).append("/").toString());
        result.add(new StringBuffer("os/").append(info.getOS()).append("/").toString());
        String nl = info.getNL();
        nl = nl.replace('_', '/');
        while (nl.length() > 0) {
            result.add(new StringBuffer("nl/").append(nl).append("/").toString());
            int i = nl.lastIndexOf(47);
            String string = nl = i < 0 ? "" : nl.substring(0, i);
        }
        result.add("");
        return result.toArray(new String[result.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public byte[] processClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        Object pkg;
        if (!DEFINE_PACKAGES) {
            return null;
        }
        int lastIndex = name.lastIndexOf(46);
        if (lastIndex < 0) {
            return null;
        }
        String packageName = name.substring(0, lastIndex);
        Object object = this.pkgLock;
        synchronized (object) {
            pkg = manager.getBaseClassLoader().publicGetPackage(packageName);
            if (pkg != null) {
                return null;
            }
        }
        String specTitle = null;
        String specVersion = null;
        String specVendor = null;
        String implTitle = null;
        String implVersion = null;
        String implVendor = null;
        if (DEFINE_PACKAGE_ATTRIBUTES) {
            Manifest mf;
            ClasspathManifest cpm = (ClasspathManifest)classpathEntry.getUserObject(ClasspathManifest.KEY);
            if (cpm == null) {
                cpm = new ClasspathManifest();
                classpathEntry.addUserObject(cpm);
            }
            if ((mf = cpm.getManifest(classpathEntry, manager)) != null) {
                Attributes mainAttributes = mf.getMainAttributes();
                String dirName = new StringBuffer(String.valueOf(packageName.replace('.', '/'))).append('/').toString();
                Attributes packageAttributes = mf.getAttributes(dirName);
                boolean noEntry = false;
                if (packageAttributes == null) {
                    noEntry = true;
                    packageAttributes = mainAttributes;
                }
                if ((specTitle = packageAttributes.getValue(Attributes.Name.SPECIFICATION_TITLE)) == null && !noEntry) {
                    specTitle = mainAttributes.getValue(Attributes.Name.SPECIFICATION_TITLE);
                }
                if ((specVersion = packageAttributes.getValue(Attributes.Name.SPECIFICATION_VERSION)) == null && !noEntry) {
                    specVersion = mainAttributes.getValue(Attributes.Name.SPECIFICATION_VERSION);
                }
                if ((specVendor = packageAttributes.getValue(Attributes.Name.SPECIFICATION_VENDOR)) == null && !noEntry) {
                    specVendor = mainAttributes.getValue(Attributes.Name.SPECIFICATION_VENDOR);
                }
                if ((implTitle = packageAttributes.getValue(Attributes.Name.IMPLEMENTATION_TITLE)) == null && !noEntry) {
                    implTitle = mainAttributes.getValue(Attributes.Name.IMPLEMENTATION_TITLE);
                }
                if ((implVersion = packageAttributes.getValue(Attributes.Name.IMPLEMENTATION_VERSION)) == null && !noEntry) {
                    implVersion = mainAttributes.getValue(Attributes.Name.IMPLEMENTATION_VERSION);
                }
                if ((implVendor = packageAttributes.getValue(Attributes.Name.IMPLEMENTATION_VENDOR)) == null && !noEntry) {
                    implVendor = mainAttributes.getValue(Attributes.Name.IMPLEMENTATION_VENDOR);
                }
            }
        }
        Object object2 = this.pkgLock;
        synchronized (object2) {
            pkg = manager.getBaseClassLoader().publicGetPackage(packageName);
            if (pkg != null) {
                return null;
            }
            manager.getBaseClassLoader().publicDefinePackage(packageName, specTitle, specVersion, specVendor, implTitle, implVersion, implVendor, null);
            return null;
        }
    }

    @Override
    public boolean addClassPathEntry(ArrayList<ClasspathEntry> cpEntries, String cp, ClasspathManager hostmanager, BaseData sourcedata, ProtectionDomain sourcedomain) {
        ClasspathEntry cpEntry;
        String var = EclipseClassLoadingHook.hasPrefix(cp);
        if (var != null) {
            return this.addInternalClassPath(var, cpEntries, cp, hostmanager, sourcedata, sourcedomain);
        }
        if (cp.startsWith("external:") && (cpEntry = hostmanager.getExternalClassPath(BaseStorageHook.substituteVars(cp = cp.substring("external:".length())), sourcedata, sourcedomain)) != null) {
            cpEntries.add(cpEntry);
            return true;
        }
        return false;
    }

    private boolean addInternalClassPath(String var, ArrayList<ClasspathEntry> cpEntries, String cp, ClasspathManager hostloader, BaseData sourcedata, ProtectionDomain sourcedomain) {
        if (var.equals("ws")) {
            return ClasspathManager.addClassPathEntry(cpEntries, new StringBuffer("ws/").append(EclipseEnvironmentInfo.getDefault().getWS()).append(cp.substring(4)).toString(), hostloader, sourcedata, sourcedomain);
        }
        if (var.equals("os")) {
            return ClasspathManager.addClassPathEntry(cpEntries, new StringBuffer("os/").append(EclipseEnvironmentInfo.getDefault().getOS()).append(cp.substring(4)).toString(), hostloader, sourcedata, sourcedomain);
        }
        if (var.equals("nl")) {
            cp = cp.substring(4);
            int i = 0;
            while (i < NL_JAR_VARIANTS.length) {
                if (ClasspathManager.addClassPathEntry(cpEntries, new StringBuffer("nl/").append(NL_JAR_VARIANTS[i]).append(cp).toString(), hostloader, sourcedata, sourcedomain)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private static String hasPrefix(String libPath) {
        if (libPath.startsWith("$ws$")) {
            return "ws";
        }
        if (libPath.startsWith("$os$")) {
            return "os";
        }
        if (libPath.startsWith("$nl$")) {
            return "nl";
        }
        return null;
    }

    private static String[] buildNLJarVariants(String nl) {
        ArrayList<String> result = new ArrayList<String>();
        nl = nl.replace('_', '/');
        while (nl.length() > 0) {
            result.add(new StringBuffer("nl/").append(nl).append("/").toString());
            int i = nl.lastIndexOf(47);
            String string = nl = i < 0 ? "" : nl.substring(0, i);
        }
        result.add("");
        return result.toArray(new String[result.size()]);
    }

    public void recordClassDefine(String name, Class<?> clazz, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
    }

    @Override
    public String findLibrary(BaseData data, String libName) {
        String mappedLibName;
        String result;
        if (libName.length() == 0) {
            return null;
        }
        if (libName.charAt(0) == '/' || libName.charAt(0) == '\\') {
            libName = libName.substring(1);
        }
        if ((result = this.searchVariants(data, mappedLibName = System.mapLibraryName(libName))) != null) {
            return result;
        }
        String[] mappedLibNames = BaseClassLoadingHook.mapLibraryNames(mappedLibName);
        int i = 0;
        while (i < mappedLibNames.length && result == null) {
            result = this.searchVariants(data, mappedLibNames[i]);
            ++i;
        }
        return result;
    }

    private String searchVariants(BaseData bundledata, String path) {
        int i = 0;
        while (i < LIB_VARIANTS.length) {
            BundleFile baseBundleFile = bundledata.getBundleFile();
            BundleEntry libEntry = baseBundleFile.getEntry(new StringBuffer(String.valueOf(LIB_VARIANTS[i])).append(path).toString());
            if (libEntry != null) {
                File libFile = baseBundleFile.getFile(new StringBuffer(String.valueOf(LIB_VARIANTS[i])).append(path).toString(), true);
                if (libFile == null) {
                    return null;
                }
                if ("hpux".equals(EclipseEnvironmentInfo.getDefault().getOS())) {
                    try {
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", libFile.getAbsolutePath()}).waitFor();
                    }
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                return libFile.getAbsolutePath();
            }
            ++i;
        }
        return null;
    }

    @Override
    public ClassLoader getBundleClassLoaderParent() {
        return null;
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addClassLoadingHook(this);
    }

    @Override
    public BaseClassLoader createClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, BundleProtectionDomain domain, BaseData data, String[] bundleclasspath) {
        return null;
    }

    @Override
    public void initializedClassLoader(BaseClassLoader baseClassLoader, BaseData data) {
    }
}

