/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.baseadaptor.loader.FragmentClasspath;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DevClassLoadingHook
implements ClassLoadingHook,
HookConfigurator,
KeyedElement {
    public static final String KEY;
    public static final int HASHCODE;
    private static final String FRAGMENT = "@fragment@";
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.baseadaptor.DevClassLoadingHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = clazz.getName();
        HASHCODE = KEY.hashCode();
    }

    @Override
    public byte[] processClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
        return null;
    }

    @Override
    public boolean addClassPathEntry(ArrayList<ClasspathEntry> cpEntries, String cp, ClasspathManager hostmanager, BaseData sourcedata, ProtectionDomain sourcedomain) {
        String[] devClassPath;
        String[] stringArray = devClassPath = !DevClassPathHelper.inDevelopmentMode() ? null : DevClassPathHelper.getDevClassPath(sourcedata.getSymbolicName());
        if (devClassPath == null || devClassPath.length == 0) {
            return false;
        }
        if (cpEntries.size() > 0 && cpEntries.get(0).getUserObject(KEY) != null) {
            return false;
        }
        boolean result = false;
        int i = 0;
        while (i < devClassPath.length) {
            if (ClasspathManager.addClassPathEntry(cpEntries, devClassPath[i], hostmanager, sourcedata, sourcedomain)) {
                result = true;
            } else {
                ClasspathEntry entry;
                String devCP = devClassPath[i];
                boolean fromFragment = devCP.endsWith(FRAGMENT);
                if (!fromFragment && devCP.indexOf("..") >= 0) {
                    File base = sourcedata.getBundleFile().getBaseFile();
                    if (base.isDirectory() && (entry = hostmanager.getExternalClassPath(new File(base, devCP).getAbsolutePath(), sourcedata, sourcedomain)) != null) {
                        cpEntries.add(entry);
                        result = true;
                    }
                } else {
                    BaseData fragData;
                    if (fromFragment) {
                        devCP = devCP.substring(0, devCP.length() - FRAGMENT.length());
                    }
                    if ((fragData = this.findFragmentSource(sourcedata, devCP, hostmanager, fromFragment)) != null && (entry = hostmanager.getExternalClassPath(devCP, fragData, sourcedomain)) != null) {
                        cpEntries.add(entry);
                        result = true;
                    }
                }
            }
            ++i;
        }
        if (result && cpEntries.size() > 0) {
            cpEntries.get(0).addUserObject(this);
        }
        return result;
    }

    private BaseData findFragmentSource(BaseData hostData, String cp, ClasspathManager manager, boolean fromFragment) {
        if (hostData != manager.getBaseData()) {
            return hostData;
        }
        File file = new File(cp);
        if (!file.isAbsolute()) {
            return hostData;
        }
        FragmentClasspath[] fragCP = manager.getFragmentClasspaths();
        int i = 0;
        while (i < fragCP.length) {
            BundleFile fragBase = fragCP[i].getBundleData().getBundleFile();
            File fragFile = fragBase.getBaseFile();
            if (fragFile != null && file.getPath().startsWith(fragFile.getPath())) {
                return fragCP[i].getBundleData();
            }
            ++i;
        }
        return fromFragment ? null : hostData;
    }

    @Override
    public String findLibrary(BaseData data, String libName) {
        return null;
    }

    @Override
    public ClassLoader getBundleClassLoaderParent() {
        return null;
    }

    @Override
    public BaseClassLoader createClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, BundleProtectionDomain domain, BaseData data, String[] bundleclasspath) {
        return null;
    }

    @Override
    public void initializedClassLoader(BaseClassLoader baseClassLoader, BaseData data) {
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        if (DevClassPathHelper.inDevelopmentMode()) {
            hookRegistry.addClassLoadingHook(new DevClassLoadingHook());
        }
    }

    @Override
    public boolean compare(KeyedElement other) {
        return other.getKey() == KEY;
    }

    @Override
    public Object getKey() {
        return KEY;
    }

    @Override
    public int getKeyHashCode() {
        return HASHCODE;
    }
}

