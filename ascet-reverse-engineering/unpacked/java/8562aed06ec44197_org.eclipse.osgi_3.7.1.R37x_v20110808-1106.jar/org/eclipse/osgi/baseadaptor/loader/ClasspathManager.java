/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.loader;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingStatsHook;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.FragmentClasspath;
import org.eclipse.osgi.baseadaptor.loader.ParallelClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.ArrayMap;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClasspathManager {
    private static final FragmentClasspath[] emptyFragments = new FragmentClasspath[0];
    private static final String PROP_CLASSLOADER_LOCK = "osgi.classloader.lock";
    private static final String VALUE_CLASSNAME_LOCK = "classname";
    private static final boolean LOCK_CLASSNAME = "classname".equals(FrameworkProperties.getProperty("osgi.classloader.lock"));
    private final BaseData data;
    private final String[] classpath;
    private final BaseClassLoader classloader;
    private final boolean isParallelClassLoader;
    private final Map<String, Thread> classNameLocks = new HashMap<String, Thread>(5);
    private ClasspathEntry[] entries;
    private FragmentClasspath[] fragments = emptyFragments;
    private ArrayMap<String, String> loadedLibraries = null;
    private ThreadLocal<Collection<String>> currentlyDefining = new ThreadLocal();

    public ClasspathManager(BaseData data, String[] classpath, BaseClassLoader classloader) {
        this.data = data;
        this.classpath = classpath;
        this.classloader = classloader;
        this.isParallelClassLoader = classloader instanceof ParallelClassLoader ? ((ParallelClassLoader)classloader).isParallelCapable() : false;
    }

    public void initialize() {
        this.entries = ClasspathManager.buildClasspath(this.classpath, this, this.data, this.classloader == null ? null : this.classloader.getDomain());
        ClassLoadingHook[] hooks = this.data.getAdaptor().getHookRegistry().getClassLoadingHooks();
        if (this.classloader != null) {
            int i = 0;
            while (i < hooks.length) {
                hooks[i].initializedClassLoader(this.classloader, this.data);
                ++i;
            }
        }
    }

    public void close() {
        int i;
        if (this.entries != null) {
            i = 0;
            while (i < this.entries.length) {
                if (this.entries[i] != null) {
                    try {
                        this.entries[i].getBundleFile().close();
                    }
                    catch (IOException e) {
                        this.data.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.data.getBundle(), e);
                    }
                }
                ++i;
            }
        }
        i = 0;
        while (i < this.fragments.length) {
            this.fragments[i].close();
            ++i;
        }
    }

    public void attachFragment(BundleData sourcedata, ProtectionDomain sourcedomain, String[] sourceclasspath) {
        try {
            sourcedata.open();
        }
        catch (IOException e) {
            ((BaseData)sourcedata).getAdaptor().getEventPublisher().publishFrameworkEvent(2, ((BaseData)sourcedata).getBundle(), e);
        }
        ClasspathEntry[] fragEntries = ClasspathManager.buildClasspath(sourceclasspath, this, (BaseData)sourcedata, sourcedomain);
        FragmentClasspath fragClasspath = new FragmentClasspath((BaseData)sourcedata, fragEntries, sourcedomain);
        this.insertFragment(fragClasspath);
    }

    private synchronized void insertFragment(FragmentClasspath fragClasspath) {
        FragmentClasspath[] newFragments = new FragmentClasspath[this.fragments.length + 1];
        long fragID = fragClasspath.getBundleData().getBundleID();
        int insert = 0;
        int i = 0;
        while (i < this.fragments.length) {
            long otherID = this.fragments[i].getBundleData().getBundleID();
            if (insert == 0 && fragID < otherID) {
                newFragments[i] = fragClasspath;
                insert = 1;
            }
            newFragments[i + insert] = this.fragments[i];
            ++i;
        }
        if (insert == 0) {
            newFragments[this.fragments.length] = fragClasspath;
        }
        this.fragments = newFragments;
    }

    private static ClasspathEntry[] buildClasspath(String[] cp, ClasspathManager hostloader, BaseData sourcedata, ProtectionDomain sourcedomain) {
        ArrayList<ClasspathEntry> result = new ArrayList<ClasspathEntry>(cp.length);
        int i = 0;
        while (i < cp.length) {
            ClasspathManager.findClassPathEntry(result, cp[i], hostloader, sourcedata, sourcedomain);
            ++i;
        }
        return result.toArray(new ClasspathEntry[result.size()]);
    }

    public static void findClassPathEntry(ArrayList<ClasspathEntry> result, String cp, ClasspathManager hostloader, BaseData sourcedata, ProtectionDomain sourcedomain) {
        ClassLoadingHook[] loaderHooks = sourcedata.getAdaptor().getHookRegistry().getClassLoadingHooks();
        boolean hookAdded = false;
        int i = 0;
        while (i < loaderHooks.length) {
            hookAdded |= loaderHooks[i].addClassPathEntry(result, cp, hostloader, sourcedata, sourcedomain);
            ++i;
        }
        if (!ClasspathManager.addClassPathEntry(result, cp, hostloader, sourcedata, sourcedomain) && !hookAdded) {
            BundleException be = new BundleException(NLS.bind(AdaptorMsg.BUNDLE_CLASSPATH_ENTRY_NOT_FOUND_EXCEPTION, cp, sourcedata.getLocation()), 3);
            sourcedata.getAdaptor().getEventPublisher().publishFrameworkEvent(32, sourcedata.getBundle(), be);
        }
    }

    public static boolean addClassPathEntry(ArrayList<ClasspathEntry> result, String cp, ClasspathManager hostloader, BaseData sourcedata, ProtectionDomain sourcedomain) {
        if (cp.equals(".")) {
            result.add(hostloader.createClassPathEntry(sourcedata.getBundleFile(), sourcedomain, sourcedata));
            return true;
        }
        ClasspathEntry element = hostloader.getClasspath(cp, sourcedata, sourcedomain);
        if (element != null) {
            result.add(element);
            return true;
        }
        if (hostloader.data == sourcedata) {
            int i = 0;
            while (i < hostloader.fragments.length) {
                FragmentClasspath fragCP = hostloader.fragments[i];
                element = hostloader.getClasspath(cp, fragCP.getBundleData(), fragCP.getDomain());
                if (element != null) {
                    result.add(element);
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public ClasspathEntry getClasspath(String cp, BaseData sourcedata, ProtectionDomain sourcedomain) {
        BundleFile bundlefile = null;
        BundleEntry cpEntry = sourcedata.getBundleFile().getEntry(cp);
        if (cpEntry != null && cpEntry.getName().endsWith("/")) {
            bundlefile = ClasspathManager.createBundleFile(cp, sourcedata);
        } else {
            File file = sourcedata.getBundleFile().getFile(cp, false);
            if (file != null) {
                bundlefile = ClasspathManager.createBundleFile(file, sourcedata);
            }
        }
        if (bundlefile != null) {
            return this.createClassPathEntry(bundlefile, sourcedomain, sourcedata);
        }
        return null;
    }

    public ClasspathEntry getExternalClassPath(String cp, BaseData sourcedata, ProtectionDomain sourcedomain) {
        File file = new File(cp);
        if (!file.isAbsolute()) {
            return null;
        }
        BundleFile bundlefile = ClasspathManager.createBundleFile(file, sourcedata);
        if (bundlefile != null) {
            return this.createClassPathEntry(bundlefile, sourcedomain, sourcedata);
        }
        return null;
    }

    private static BundleFile createBundleFile(Object content, BaseData sourcedata) {
        if (content == null || content instanceof File && !((File)content).exists()) {
            return null;
        }
        try {
            return sourcedata.getAdaptor().createBundleFile(content, sourcedata);
        }
        catch (IOException e) {
            sourcedata.getAdaptor().getEventPublisher().publishFrameworkEvent(2, sourcedata.getBundle(), e);
            return null;
        }
    }

    private ClasspathEntry createClassPathEntry(BundleFile bundlefile, ProtectionDomain cpDomain, BaseData cpData) {
        ClasspathEntry entry = this.classloader != null ? this.classloader.createClassPathEntry(bundlefile, cpDomain) : new ClasspathEntry(bundlefile, null);
        entry.setBaseData(cpData);
        ProtectionDomain domain = entry.getDomain();
        if (domain instanceof BundleProtectionDomain) {
            ((BundleProtectionDomain)domain).setBundle(cpData.getBundle());
        }
        return entry;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public URL findLocalResource(String resource) {
        hooks = this.data.getAdaptor().getHookRegistry().getClassLoadingStatsHooks();
        i = 0;
        while (i < hooks.length) {
            hooks[i].preFindLocalResource(resource, this);
            ++i;
        }
        result = null;
        try {
            var5_5 = result = this.findLocalResourceImpl(resource, -1);
            return var5_5;
        }
        finally {
            i = 0;
            ** while (i < hooks.length)
        }
lbl-1000:
        // 1 sources

        {
            hooks[i].postFindLocalResource(resource, result, this);
            ++i;
            continue;
        }
lbl17:
        // 1 sources

        return var5_5;
    }

    private URL findLocalResourceImpl(String resource, int classPathIndex) {
        URL result = null;
        int curIndex = 0;
        int i = 0;
        while (i < this.entries.length) {
            if (this.entries[i] != null && (result = this.findResourceImpl(resource, this.entries[i].getBundleFile(), curIndex)) != null && (classPathIndex == -1 || classPathIndex == curIndex)) {
                return result;
            }
            ++curIndex;
            ++i;
        }
        i = 0;
        while (i < this.fragments.length) {
            ClasspathEntry[] fragEntries = this.fragments[i].getEntries();
            int j = 0;
            while (j < fragEntries.length) {
                result = this.findResourceImpl(resource, fragEntries[j].getBundleFile(), curIndex);
                if (result != null && (classPathIndex == -1 || classPathIndex == curIndex)) {
                    return result;
                }
                ++curIndex;
                ++j;
            }
            ++i;
        }
        return null;
    }

    public Enumeration<URL> findLocalResources(String resource) {
        ArrayList<URL> resources = new ArrayList<URL>(6);
        int classPathIndex = 0;
        int i = 0;
        while (i < this.entries.length) {
            URL url;
            if (this.entries[i] != null && (url = this.findResourceImpl(resource, this.entries[i].getBundleFile(), classPathIndex)) != null) {
                resources.add(url);
            }
            ++classPathIndex;
            ++i;
        }
        i = 0;
        while (i < this.fragments.length) {
            ClasspathEntry[] fragEntries = this.fragments[i].getEntries();
            int j = 0;
            while (j < fragEntries.length) {
                URL url = this.findResourceImpl(resource, fragEntries[j].getBundleFile(), classPathIndex);
                if (url != null) {
                    resources.add(url);
                }
                ++classPathIndex;
                ++j;
            }
            ++i;
        }
        if (resources.size() > 0) {
            return Collections.enumeration(resources);
        }
        return null;
    }

    private URL findResourceImpl(String name, BundleFile bundlefile, int index) {
        return bundlefile.getResourceURL(name, this.data, index);
    }

    public BundleEntry findLocalEntry(String path) {
        return this.findLocalEntry(path, -1);
    }

    public BundleEntry findLocalEntry(String path, int classPathIndex) {
        BundleEntry result = null;
        int curIndex = 0;
        int i = 0;
        while (i < this.entries.length) {
            if (this.entries[i] != null && (result = this.findEntryImpl(path, this.entries[i].getBundleFile())) != null && (classPathIndex == -1 || classPathIndex == curIndex)) {
                return result;
            }
            ++curIndex;
            ++i;
        }
        i = 0;
        while (i < this.fragments.length) {
            ClasspathEntry[] fragEntries = this.fragments[i].getEntries();
            int j = 0;
            while (j < fragEntries.length) {
                result = this.findEntryImpl(path, fragEntries[j].getBundleFile());
                if (result != null && (classPathIndex == -1 || classPathIndex == curIndex)) {
                    return result;
                }
                ++curIndex;
                ++j;
            }
            ++i;
        }
        return null;
    }

    public Enumeration<BundleEntry> findLocalEntries(String path) {
        ArrayList<BundleEntry> objects = new ArrayList<BundleEntry>(6);
        int i = 0;
        while (i < this.entries.length) {
            BundleEntry result;
            if (this.entries[i] != null && (result = this.findEntryImpl(path, this.entries[i].getBundleFile())) != null) {
                objects.add(result);
            }
            ++i;
        }
        i = 0;
        while (i < this.fragments.length) {
            ClasspathEntry[] fragEntries = this.fragments[i].getEntries();
            int j = 0;
            while (j < fragEntries.length) {
                BundleEntry result = this.findEntryImpl(path, fragEntries[j].getBundleFile());
                if (result != null) {
                    objects.add(result);
                }
                ++j;
            }
            ++i;
        }
        if (objects.size() > 0) {
            return Collections.enumeration(objects);
        }
        return null;
    }

    private BundleEntry findEntryImpl(String path, BundleFile bundleFile) {
        return bundleFile.getEntry(path);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Class<?> findLocalClass(String classname) throws ClassNotFoundException {
        result = null;
        hooks = this.data.getAdaptor().getHookRegistry().getClassLoadingStatsHooks();
        try {
            i = 0;
            while (i < hooks.length) {
                hooks[i].preFindLocalClass(classname, this);
                ++i;
            }
            result = ClasspathManager.LOCK_CLASSNAME != false || this.isParallelClassLoader != false ? this.findLocalClass_LockClassName(classname, hooks) : this.findLocalClass_LockClassLoader(classname, hooks);
            var6_5 = result;
            return var6_5;
        }
        finally {
            i = 0;
            ** while (i < hooks.length)
        }
lbl-1000:
        // 1 sources

        {
            hooks[i].postFindLocalClass(classname, result, this);
            ++i;
            continue;
        }
lbl18:
        // 1 sources

        return var6_5;
    }

    private Class<?> findLocalClass_LockClassName(String classname, ClassLoadingStatsHook[] hooks) throws ClassNotFoundException {
        boolean initialLock = this.lockClassName(classname);
        try {
            Class<?> clazz = this.findLocalClassImpl(classname, hooks);
            return clazz;
        }
        finally {
            if (initialLock) {
                this.unlockClassName(classname);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Class<?> findLocalClass_LockClassLoader(String classname, ClassLoadingStatsHook[] hooks) throws ClassNotFoundException {
        BaseClassLoader baseClassLoader = this.classloader;
        synchronized (baseClassLoader) {
            return this.findLocalClassImpl(classname, hooks);
        }
    }

    private Class<?> findLocalClassImpl(String classname, ClassLoadingStatsHook[] hooks) throws ClassNotFoundException {
        Class<?> result = this.classloader.publicFindLoaded(classname);
        if (result != null) {
            return result;
        }
        int i = 0;
        while (i < this.entries.length) {
            if (this.entries[i] != null && (result = this.findClassImpl(classname, this.entries[i], hooks)) != null) {
                return result;
            }
            ++i;
        }
        i = 0;
        while (i < this.fragments.length) {
            ClasspathEntry[] fragEntries = this.fragments[i].getEntries();
            int j = 0;
            while (j < fragEntries.length) {
                result = this.findClassImpl(classname, fragEntries[j], hooks);
                if (result != null) {
                    return result;
                }
                ++j;
            }
            ++i;
        }
        throw new ClassNotFoundException(classname);
    }

    /*
     * Unable to fully structure code
     */
    private boolean lockClassName(String classname) throws ClassNotFoundException {
        var2_2 = this.classNameLocks;
        synchronized (var2_2) {
            block8: {
                lockingThread = this.classNameLocks.get(classname);
                current = Thread.currentThread();
                if (lockingThread != current) break block8;
                return false;
            }
            while (true) lbl-1000:
            // 2 sources

            {
                if (lockingThread != null) ** break block9
                this.classNameLocks.put(classname, current);
                return true;
                break;
            }
            {
                try {
                    this.classNameLocks.wait();
                    lockingThread = this.classNameLocks.get(classname);
                    continue;
                }
                catch (InterruptedException e) {
                    current.interrupt();
                    throw new ClassNotFoundException(classname, e);
                }
                ** while (true)
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void unlockClassName(String classname) {
        Map<String, Thread> map = this.classNameLocks;
        synchronized (map) {
            this.classNameLocks.remove(classname);
            this.classNameLocks.notifyAll();
        }
    }

    private Class<?> findClassImpl(String name, ClasspathEntry classpathEntry, ClassLoadingStatsHook[] hooks) {
        Collection<String> current;
        byte[] classbytes;
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleClassLoader[").append(classpathEntry.getBundleFile()).append("].findClass(").append(name).append(")").toString());
        }
        String filename = name.replace('.', '/').concat(".class");
        BundleEntry entry = classpathEntry.getBundleFile().getEntry(filename);
        if (entry == null) {
            return null;
        }
        try {
            classbytes = entry.getBytes();
        }
        catch (IOException iOException) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("  IOException reading ").append(filename).append(" from ").append(classpathEntry.getBundleFile()).toString());
            }
            return null;
        }
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("  read ").append(classbytes.length).append(" bytes from ").append(classpathEntry.getBundleFile()).append("/").append(filename).toString());
            Debug.println(new StringBuffer("  defining class ").append(name).toString());
        }
        if ((current = this.currentlyDefining.get()) == null) {
            current = new ArrayList<String>(5);
            this.currentlyDefining.set(current);
        }
        if (current.contains(name)) {
            return null;
        }
        try {
            current.add(name);
            Class<?> clazz = this.defineClass(name, classbytes, classpathEntry, entry, hooks);
            return clazz;
        }
        catch (Error e) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("  error defining class ").append(name).toString());
            }
            throw e;
        }
        finally {
            current.remove(name);
        }
    }

    /*
     * Unable to fully structure code
     */
    private Class<?> defineClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClassLoadingStatsHook[] statsHooks) {
        hooks = this.data.getAdaptor().getHookRegistry().getClassLoadingHooks();
        modifiedBytes = classbytes;
        result = null;
        try {
            i = 0;
            while (i < hooks.length) {
                modifiedBytes = hooks[i].processClass(name, classbytes, classpathEntry, entry, this);
                if (modifiedBytes != null) {
                    classbytes = modifiedBytes;
                }
                ++i;
            }
            result = this.classloader.defineClass(name, classbytes, classpathEntry, entry);
        }
        finally {
            i = 0;
            ** while (i < statsHooks.length)
        }
lbl-1000:
        // 1 sources

        {
            statsHooks[i].recordClassDefine(name, result, classbytes, classpathEntry, entry, this);
            ++i;
            continue;
        }
lbl20:
        // 1 sources

        return result;
    }

    public BaseData getBaseData() {
        return this.data;
    }

    public FragmentClasspath[] getFragmentClasspaths() {
        return this.fragments;
    }

    public ClasspathEntry[] getHostClasspathEntries() {
        return this.entries;
    }

    public BaseClassLoader getBaseClassLoader() {
        return this.classloader;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String findLibrary(String libname) {
        Object object = this;
        synchronized (object) {
            if (this.loadedLibraries == null) {
                this.loadedLibraries = new ArrayMap(1);
            }
        }
        object = this.loadedLibraries;
        synchronized (object) {
            String libpath = this.loadedLibraries.get(libname);
            if (libpath != null) {
                return libpath;
            }
            libpath = this.classloader.getDelegate().findLibrary(libname);
            if (libpath != null) {
                this.loadedLibraries.put(libname, libpath);
            }
            return libpath;
        }
    }

    public List<URL> findEntries(String path, String filePattern, int options) {
        FragmentClasspath[] currentFragments;
        BaseAdaptor adaptor = this.getBaseData().getAdaptor();
        ArrayList<BundleData> datas = new ArrayList<BundleData>();
        datas.add(this.getBaseData());
        FragmentClasspath[] fragmentClasspathArray = currentFragments = this.getFragmentClasspaths();
        int n = currentFragments.length;
        int n2 = 0;
        while (n2 < n) {
            FragmentClasspath fragmentClasspath = fragmentClasspathArray[n2];
            datas.add(fragmentClasspath.getBundleData());
            ++n2;
        }
        ArrayList<URL> result = Collections.EMPTY_LIST;
        Enumeration<URL> eURLs = adaptor.findEntries(datas, path, filePattern, options);
        if (eURLs == null) {
            return result;
        }
        result = new ArrayList<URL>();
        while (eURLs.hasMoreElements()) {
            result.add(eURLs.nextElement());
        }
        return Collections.unmodifiableList(result);
    }

    public Collection<String> listLocalResources(String path, String filePattern, int options) {
        FragmentClasspath[] currentFragments;
        ClasspathEntry[] cpEntries;
        ArrayList<BundleFile> bundleFiles = new ArrayList<BundleFile>();
        ClasspathEntry[] classpathEntryArray = cpEntries = this.getHostClasspathEntries();
        int n = cpEntries.length;
        int n2 = 0;
        while (n2 < n) {
            ClasspathEntry cpEntry = classpathEntryArray[n2];
            bundleFiles.add(cpEntry.getBundleFile());
            ++n2;
        }
        FragmentClasspath[] fragmentClasspathArray = currentFragments = this.getFragmentClasspaths();
        int n3 = currentFragments.length;
        n = 0;
        while (n < n3) {
            ClasspathEntry[] fragEntries;
            FragmentClasspath fragmentClasspath = fragmentClasspathArray[n];
            ClasspathEntry[] classpathEntryArray2 = fragEntries = fragmentClasspath.getEntries();
            int n4 = fragEntries.length;
            int n5 = 0;
            while (n5 < n4) {
                ClasspathEntry cpEntry = classpathEntryArray2[n5];
                bundleFiles.add(cpEntry.getBundleFile());
                ++n5;
            }
            ++n;
        }
        return this.getBaseData().getAdaptor().listEntryPaths(bundleFiles, path, filePattern, options);
    }
}

