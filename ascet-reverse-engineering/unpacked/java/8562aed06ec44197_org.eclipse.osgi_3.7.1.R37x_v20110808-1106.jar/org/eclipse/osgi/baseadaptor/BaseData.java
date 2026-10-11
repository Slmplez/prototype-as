/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.protocol.bundleentry.Handler;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.baseadaptor.ArrayMap;
import org.eclipse.osgi.internal.baseadaptor.DefaultClassLoader;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseData
implements BundleData {
    private static final boolean COPY_NATIVES = Boolean.valueOf(FrameworkProperties.getProperty("osgi.classloader.copy.natives"));
    private long id;
    private BaseAdaptor adaptor;
    private Bundle bundle;
    private int startLevel = -1;
    private int status = 0;
    private StorageHook[] storageHooks;
    private String location;
    private long lastModified;
    protected BundleFile bundleFile;
    private ArrayMap<Object, BundleFile> bundleFiles;
    private boolean dirty = false;
    protected Dictionary<String, String> manifest;
    protected String fileName;
    protected Collection<String> loadedNativeCode;
    private String symbolicName;
    private Version version;
    private String activator;
    private String classpath;
    private String executionEnvironment;
    private String dynamicImports;
    private int type;

    public BaseData(long id, BaseAdaptor adaptor) {
        this.id = id;
        this.adaptor = adaptor;
    }

    @Override
    public BundleClassLoader createClassLoader(ClassLoaderDelegate delegate, BundleProtectionDomain domain, String[] bundleclasspath) {
        ClassLoadingHook[] hooks = this.adaptor.getHookRegistry().getClassLoadingHooks();
        ClassLoader parent = this.adaptor.getBundleClassLoaderParent();
        BaseClassLoader cl = null;
        int i = 0;
        while (i < hooks.length && cl == null) {
            cl = hooks[i].createClassLoader(parent, delegate, domain, this, bundleclasspath);
            ++i;
        }
        if (cl == null) {
            cl = new DefaultClassLoader(parent, delegate, domain, this, bundleclasspath);
        }
        return cl;
    }

    @Override
    public final URL getEntry(final String path) {
        if (System.getSecurityManager() == null) {
            return this.getEntry0(path);
        }
        return AccessController.doPrivileged(new PrivilegedAction<URL>(){

            @Override
            public URL run() {
                return BaseData.this.getEntry0(path);
            }
        });
    }

    final URL getEntry0(String path) {
        BundleEntry entry = this.getBundleFile().getEntry(path);
        if (entry == null) {
            return null;
        }
        path = BundleFile.fixTrailingSlash(path, entry);
        try {
            return new URL("bundleentry", new StringBuffer(String.valueOf(Long.toString(this.id))).append(".fwk").append(Integer.toString(this.adaptor.hashCode())).toString(), 0, path, new Handler(entry, this.adaptor));
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    @Override
    public final Enumeration<String> getEntryPaths(String path) {
        return this.getBundleFile().getEntryPaths(path);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String findLibrary(String libname) {
        ClassLoadingHook[] hooks = this.adaptor.getHookRegistry().getClassLoadingHooks();
        String result = null;
        int i = 0;
        while (i < hooks.length) {
            result = hooks[i].findLibrary(this, libname);
            if (result != null) break;
            ++i;
        }
        if (result != null) {
            BaseData baseData = this;
            synchronized (baseData) {
                if (this.loadedNativeCode == null) {
                    this.loadedNativeCode = new ArrayList<String>(1);
                }
                if (this.loadedNativeCode.contains(result) || COPY_NATIVES) {
                    String temp = this.copyToTempLibrary(result);
                    if (temp != null) {
                        result = temp;
                    }
                } else {
                    this.loadedNativeCode.add(result);
                }
            }
        }
        return result;
    }

    private String copyToTempLibrary(String result) {
        try {
            return this.adaptor.getStorage().copyToTempLibrary(this, result);
        }
        catch (IOException e) {
            this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, e.getMessage(), 0, e, null));
            return null;
        }
    }

    @Override
    public void installNativeCode(String[] nativepaths) throws BundleException {
        this.adaptor.getStorage().installNativeCode(this, nativepaths);
    }

    @Override
    public File getDataFile(String path) {
        return this.adaptor.getStorage().getDataFile(this, path);
    }

    @Override
    public Dictionary<String, String> getManifest() throws BundleException {
        if (this.manifest == null) {
            this.manifest = this.adaptor.getStorage().loadManifest(this);
        }
        return this.manifest;
    }

    @Override
    public long getBundleID() {
        return this.id;
    }

    @Override
    public final String getLocation() {
        return this.location;
    }

    public final void setLocation(String location) {
        this.location = location;
    }

    @Override
    public final long getLastModified() {
        return this.lastModified;
    }

    public final void setLastModified(long lastModified) {
        this.lastModified = lastModified;
    }

    @Override
    public synchronized void close() throws IOException {
        if (this.bundleFile != null) {
            this.getBundleFile().close();
        }
        if (this.bundleFiles != null) {
            for (BundleFile bundlefile : this.bundleFiles.getValues()) {
                bundlefile.close();
            }
            this.bundleFiles.clear();
        }
    }

    @Override
    public void open() throws IOException {
        this.getBundleFile().open();
    }

    @Override
    public final void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    @Override
    public final Bundle getBundle() {
        return this.bundle;
    }

    @Override
    public int getStartLevel() {
        return this.startLevel;
    }

    @Override
    public int getStatus() {
        return this.status;
    }

    @Override
    public void setStartLevel(int value) {
        this.startLevel = this.setPersistentData(value, true, this.startLevel);
    }

    @Override
    public void setStatus(int value) {
        this.status = this.setPersistentData(value, false, this.status);
    }

    private int setPersistentData(int value, boolean isStartLevel, int orig) {
        StorageHook[] hooks = this.getStorageHooks();
        int i = 0;
        while (i < hooks.length) {
            if (isStartLevel ? hooks[i].forgetStartLevelChange(value) : hooks[i].forgetStatusChange(value)) {
                return value;
            }
            ++i;
        }
        if (value != orig) {
            this.dirty = true;
        }
        return value;
    }

    @Override
    public void save() throws IOException {
        this.adaptor.getStorage().save(this);
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public void setDirty(boolean dirty) {
        this.dirty = dirty;
    }

    @Override
    public final String getSymbolicName() {
        return this.symbolicName;
    }

    public final void setSymbolicName(String symbolicName) {
        this.symbolicName = symbolicName;
    }

    @Override
    public final Version getVersion() {
        return this.version;
    }

    public final void setVersion(Version version) {
        this.version = version;
    }

    @Override
    public final int getType() {
        return this.type;
    }

    public final void setType(int type) {
        this.type = type;
    }

    @Override
    public final String[] getClassPath() throws BundleException {
        ManifestElement[] classpathElements = ManifestElement.parseHeader("Bundle-ClassPath", this.classpath);
        return BaseData.getClassPath(classpathElements);
    }

    public String getClassPathString() {
        return this.classpath;
    }

    public void setClassPathString(String classpath) {
        this.classpath = classpath;
    }

    @Override
    public final String getActivator() {
        return this.activator;
    }

    public final void setActivator(String activator) {
        this.activator = activator;
    }

    @Override
    public final String getExecutionEnvironment() {
        return this.executionEnvironment;
    }

    public void setExecutionEnvironment(String executionEnvironment) {
        this.executionEnvironment = executionEnvironment;
    }

    @Override
    public final String getDynamicImports() {
        return this.dynamicImports;
    }

    public void setDynamicImports(String dynamicImports) {
        this.dynamicImports = dynamicImports;
    }

    public final BaseAdaptor getAdaptor() {
        return this.adaptor;
    }

    public synchronized BundleFile getBundleFile() throws IllegalArgumentException {
        if (this.bundleFile == null) {
            try {
                this.bundleFile = this.adaptor.createBundleFile(null, this);
            }
            catch (IOException e) {
                throw (IllegalArgumentException)new IllegalArgumentException(e.getMessage()).initCause(e);
            }
        }
        return this.bundleFile;
    }

    public synchronized BundleFile getBundleFile(Object content, boolean base) {
        return base ? this.bundleFile : (this.bundleFiles == null ? null : this.bundleFiles.get(content));
    }

    public synchronized void setBundleFile(Object content, BundleFile bundleFile) {
        if (this.bundleFiles == null) {
            this.bundleFiles = new ArrayMap(1);
        }
        this.bundleFiles.put(content, bundleFile);
    }

    private static String[] getClassPath(ManifestElement[] classpath) {
        if (classpath == null) {
            if (Debug.DEBUG_LOADER) {
                Debug.println("  no classpath");
            }
            return new String[]{"."};
        }
        ArrayList<String> result = new ArrayList<String>(classpath.length);
        int i = 0;
        while (i < classpath.length) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("  found classpath entry ").append(classpath[i].getValueComponents()).toString());
            }
            String[] paths = classpath[i].getValueComponents();
            int j = 0;
            while (j < paths.length) {
                result.add(paths[j]);
                ++j;
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    public StorageHook getStorageHook(String key) {
        if (this.storageHooks == null) {
            return null;
        }
        int i = 0;
        while (i < this.storageHooks.length) {
            if (this.storageHooks[i].getKey().equals(key)) {
                return this.storageHooks[i];
            }
            ++i;
        }
        return null;
    }

    public void setStorageHooks(StorageHook[] storageHooks) {
        if (this.storageHooks != null) {
            return;
        }
        this.storageHooks = storageHooks;
    }

    public StorageHook[] getStorageHooks() {
        return this.storageHooks == null ? new StorageHook[]{} : this.storageHooks;
    }

    public File getExtractFile(String path) {
        return this.adaptor.getStorage().getExtractFile(this, path);
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String toString() {
        String name = this.getSymbolicName();
        if (name == null) {
            return this.getLocation();
        }
        Version ver = this.getVersion();
        if (ver == null) {
            return name;
        }
        return new StringBuffer(String.valueOf(name)).append("_").append(ver).toString();
    }

    @Override
    public Enumeration<URL> findLocalResources(String path) {
        String[] cp;
        try {
            cp = this.getClassPath();
        }
        catch (BundleException bundleException) {
            cp = new String[]{};
        }
        if (cp == null) {
            cp = new String[]{};
        }
        ClasspathManager cm = new ClasspathManager(this, cp, null);
        cm.initialize();
        Enumeration<URL> result = cm.findLocalResources(path);
        return result;
    }
}

