/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegateHook;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.MultiSourcePackage;
import org.eclipse.osgi.internal.loader.NullPackageSource;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;
import org.eclipse.osgi.internal.loader.SystemBundleLoader;
import org.eclipse.osgi.internal.loader.buddy.PolicyHandler;
import org.eclipse.osgi.internal.resolver.StateBuilder;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleLoader
implements ClassLoaderDelegate {
    public static final String DEFAULT_PACKAGE = ".";
    public static final String JAVA_PACKAGE = "java.";
    public static final byte FLAG_IMPORTSINIT = 1;
    public static final byte FLAG_HASDYNAMICIMPORTS = 2;
    public static final byte FLAG_HASDYNAMICEIMPORTALL = 4;
    public static final byte FLAG_CLOSED = 8;
    public static final byte FLAG_LAZYTRIGGER = 16;
    public static final ClassContext CLASS_CONTEXT = AccessController.doPrivileged(new PrivilegedAction<ClassContext>(){

        @Override
        public ClassContext run() {
            return new ClassContext();
        }
    });
    public static final ClassLoader FW_CLASSLOADER;
    private static final int PRE_CLASS = 1;
    private static final int POST_CLASS = 2;
    private static final int PRE_RESOURCE = 3;
    private static final int POST_RESOURCE = 4;
    private static final int PRE_RESOURCES = 5;
    private static final int POST_RESOURCES = 6;
    private static final int PRE_LIBRARY = 7;
    private static final int POST_LIBRARY = 8;
    private static final boolean USE_GLOBAL_DEADLOCK_AVOIDANCE_LOCK;
    private static final List<Object[]> waitingList;
    private static Object lockThread;
    private static int lockCount;
    private final BundleLoaderProxy proxy;
    final BundleHost bundle;
    private final PolicyHandler policy;
    private final Collection<String> exportedPackages;
    private final Collection<String> substitutedPackages;
    final BundleLoaderProxy[] requiredBundles;
    final int[] reexportTable;
    private final KeyedHashSet requiredSources;
    private KeyedHashSet importedSources;
    private String[] dynamicImportPackageStems;
    private String[] dynamicImportPackages;
    private byte loaderFlags = 0;
    private BundleClassLoader classloader;
    private ClassLoader parent;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.core.Framework");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FW_CLASSLOADER = BundleLoader.getClassLoader(clazz);
        USE_GLOBAL_DEADLOCK_AVOIDANCE_LOCK = "true".equals(BundleLoaderProxy.secureAction.getProperty("osgi.classloader.singleThreadLoads"));
        waitingList = USE_GLOBAL_DEADLOCK_AVOIDANCE_LOCK ? new ArrayList(0) : null;
        lockCount = 0;
    }

    public static final String getPackageName(String name) {
        int index;
        if (name != null && (index = name.lastIndexOf(46)) > 0) {
            return name.substring(0, index);
        }
        return DEFAULT_PACKAGE;
    }

    public static final String getResourcePackageName(String name) {
        if (name != null) {
            int begin = name.length() > 1 && name.charAt(0) == '/' ? 1 : 0;
            int end = name.lastIndexOf(47);
            if (end > begin) {
                return name.substring(begin, end).replace('/', '.');
            }
        }
        return DEFAULT_PACKAGE;
    }

    protected BundleLoader(BundleHost bundle, BundleLoaderProxy proxy) throws BundleException {
        int i;
        this.bundle = bundle;
        this.proxy = proxy;
        try {
            bundle.getBundleData().open();
        }
        catch (IOException e) {
            throw new BundleException(Msg.BUNDLE_READ_EXCEPTION, e);
        }
        BundleDescription description = proxy.getBundleDescription();
        BundleDescription[] required = description.getResolvedRequires();
        if (required.length > 0) {
            HashSet<String> reExportSet = new HashSet<String>(required.length);
            BundleSpecification[] requiredSpecs = description.getRequiredBundles();
            if (requiredSpecs != null && requiredSpecs.length > 0) {
                int i2 = 0;
                while (i2 < requiredSpecs.length) {
                    if (requiredSpecs[i2].isExported()) {
                        reExportSet.add(requiredSpecs[i2].getName());
                    }
                    ++i2;
                }
            }
            this.requiredBundles = new BundleLoaderProxy[required.length];
            int[] reexported = new int[required.length];
            int reexportIndex = 0;
            i = 0;
            while (i < required.length) {
                this.requiredBundles[i] = this.getLoaderProxy(required[i]);
                if (reExportSet.contains(required[i].getSymbolicName())) {
                    reexported[reexportIndex++] = i;
                }
                ++i;
            }
            if (reexportIndex > 0) {
                this.reexportTable = new int[reexportIndex];
                System.arraycopy(reexported, 0, this.reexportTable, 0, reexportIndex);
            } else {
                this.reexportTable = null;
            }
            this.requiredSources = new KeyedHashSet(10, false);
        } else {
            this.requiredBundles = null;
            this.reexportTable = null;
            this.requiredSources = null;
        }
        ExportPackageDescription[] exports = description.getSelectedExports();
        if (exports != null && exports.length > 0) {
            this.exportedPackages = Collections.synchronizedCollection(exports.length > 10 ? new HashSet(exports.length) : new ArrayList(exports.length));
            this.initializeExports(exports, this.exportedPackages);
        } else {
            this.exportedPackages = Collections.synchronizedCollection(new ArrayList(0));
        }
        ExportPackageDescription[] substituted = description.getSubstitutedExports();
        if (substituted.length > 0) {
            this.substitutedPackages = substituted.length > 10 ? new HashSet(substituted.length) : new ArrayList(substituted.length);
            int i3 = 0;
            while (i3 < substituted.length) {
                this.substitutedPackages.add(substituted[i3].getName());
                ++i3;
            }
        } else {
            this.substitutedPackages = null;
        }
        BundleFragment[] fragmentObjects = bundle.getFragments();
        BundleDescription[] fragments = new BundleDescription[fragmentObjects == null ? 0 : fragmentObjects.length];
        i = 0;
        while (i < fragments.length) {
            fragments[i] = fragmentObjects[i].getBundleDescription();
            ++i;
        }
        if (description.hasDynamicImports()) {
            this.addDynamicImportPackage(description.getImportPackages());
        }
        i = 0;
        while (i < fragments.length) {
            if (fragments[i].isResolved() && fragments[i].hasDynamicImports()) {
                this.addDynamicImportPackage(fragments[i].getImportPackages());
            }
            ++i;
        }
        String buddyList = null;
        try {
            buddyList = bundle.getBundleData().getManifest().get("Eclipse-BuddyPolicy");
        }
        catch (BundleException bundleException) {}
        PolicyHandler policyHandler = this.policy = buddyList != null ? new PolicyHandler(this, buddyList, bundle.getFramework().getPackageAdmin()) : null;
        if (this.policy != null) {
            this.policy.open(bundle.getFramework().getSystemBundleContext());
        }
    }

    private void initializeExports(ExportPackageDescription[] exports, Collection<String> exportNames) {
        int i = 0;
        while (i < exports.length) {
            if (this.proxy.forceSourceCreation(exports[i]) && !exportNames.contains(exports[i].getName())) {
                this.proxy.createPackageSource(exports[i], true);
            }
            exportNames.add(exports[i].getName());
            ++i;
        }
    }

    public synchronized KeyedHashSet getImportedSources(KeyedHashSet visited) {
        if ((this.loaderFlags & 1) != 0) {
            return this.importedSources;
        }
        BundleDescription bundleDesc = this.proxy.getBundleDescription();
        ExportPackageDescription[] packages = bundleDesc.getResolvedImports();
        if (packages != null && packages.length > 0) {
            if (this.importedSources == null) {
                this.importedSources = new KeyedHashSet(packages.length, false);
            }
            int i = 0;
            while (i < packages.length) {
                PackageSource source;
                if (packages[i].getExporter() != bundleDesc && (source = this.createExportPackageSource(packages[i], visited)) != null) {
                    this.importedSources.add(source);
                }
                ++i;
            }
        }
        this.loaderFlags = (byte)(this.loaderFlags | 1);
        return this.importedSources;
    }

    @Override
    public synchronized boolean isLazyTriggerSet() {
        return (this.loaderFlags & 0x10) != 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setLazyTrigger() throws BundleException {
        BundleLoader bundleLoader = this;
        synchronized (bundleLoader) {
            this.loaderFlags = (byte)(this.loaderFlags | 0x10);
        }
        BundleLoaderProxy.secureAction.start(this.bundle, 0x40000001);
    }

    final PackageSource createExportPackageSource(ExportPackageDescription export, KeyedHashSet visited) {
        BundleLoaderProxy exportProxy = this.getLoaderProxy(export.getExporter());
        if (exportProxy == null) {
            return null;
        }
        PackageSource requiredSource = exportProxy.getBundleLoader().findRequiredSource(export.getName(), visited);
        PackageSource exportSource = exportProxy.createPackageSource(export, false);
        if (requiredSource == null) {
            return exportSource;
        }
        return BundleLoader.createMultiSource(export.getName(), new PackageSource[]{requiredSource, exportSource});
    }

    private static PackageSource createMultiSource(String packageName, PackageSource[] sources) {
        if (sources.length == 1) {
            return sources[0];
        }
        ArrayList<SingleSourcePackage> sourceList = new ArrayList<SingleSourcePackage>(sources.length);
        int i = 0;
        while (i < sources.length) {
            SingleSourcePackage[] innerSources = sources[i].getSuppliers();
            int j = 0;
            while (j < innerSources.length) {
                if (!sourceList.contains(innerSources[j])) {
                    sourceList.add(innerSources[j]);
                }
                ++j;
            }
            ++i;
        }
        return new MultiSourcePackage(packageName, sourceList.toArray(new SingleSourcePackage[sourceList.size()]));
    }

    public final BundleLoaderProxy getLoaderProxy(BundleDescription source) {
        Object userObject = source.getUserObject();
        if (!(userObject instanceof BundleLoaderProxy)) {
            long exportingID = source.getBundleId();
            BundleHost exportingBundle = (BundleHost)this.bundle.getFramework().getBundle(exportingID);
            if (exportingBundle == null) {
                return null;
            }
            userObject = exportingBundle.getLoaderProxy();
        }
        return (BundleLoaderProxy)userObject;
    }

    public BundleLoaderProxy getLoaderProxy() {
        return this.proxy;
    }

    synchronized void close() {
        if ((this.loaderFlags & 8) != 0) {
            return;
        }
        if (this.classloader != null) {
            this.classloader.close();
        }
        if (this.policy != null) {
            this.policy.close(this.bundle.getFramework().getSystemBundleContext());
        }
        this.loaderFlags = (byte)(this.loaderFlags | 8);
    }

    public final Class<?> loadClass(String name) throws ClassNotFoundException {
        BundleClassLoader bcl = this.createClassLoader();
        if (name.length() > 0 && name.charAt(0) == '[' && bcl instanceof ClassLoader) {
            return Class.forName(name, false, (ClassLoader)((Object)bcl));
        }
        return bcl.loadClass(name);
    }

    final URL getResource(String name) {
        return this.createClassLoader().getResource(name);
    }

    public final synchronized ClassLoader getParentClassLoader() {
        if (this.parent != null) {
            return this.parent;
        }
        this.createClassLoader();
        return this.parent;
    }

    public final synchronized BundleClassLoader createClassLoader() {
        String[] classpath;
        if (this.classloader != null) {
            return this.classloader;
        }
        try {
            classpath = this.bundle.getBundleData().getClassPath();
        }
        catch (BundleException e) {
            classpath = new String[]{};
            this.bundle.getFramework().publishFrameworkEvent(2, this.bundle, e);
        }
        if (classpath == null) {
            classpath = new String[]{};
            this.bundle.getFramework().publishFrameworkEvent(2, this.bundle, new BundleException(Msg.BUNDLE_NO_CLASSPATH_MATCH, 3));
        }
        BundleClassLoader bcl = this.createBCLPrevileged(this.bundle.getProtectionDomain(), classpath);
        this.parent = this.getParentPrivileged(bcl);
        this.classloader = bcl;
        return this.classloader;
    }

    Class<?> findLocalClass(String name) throws ClassNotFoundException {
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleLoader[").append(this).append("].findLocalClass(").append(name).append(")").toString());
        }
        try {
            Class<?> clazz = this.createClassLoader().findLocalClass(name);
            if (Debug.DEBUG_LOADER && clazz != null) {
                Debug.println(new StringBuffer("BundleLoader[").append(this).append("] found local class ").append(name).toString());
            }
            return clazz;
        }
        catch (ClassNotFoundException e) {
            if (e instanceof StatusException && (((StatusException)((Object)e)).getStatusCode() & 8) != 0) {
                throw e;
            }
            return null;
        }
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        return this.findClass(name, true);
    }

    Class<?> findClass(String name, boolean checkParent) throws ClassNotFoundException {
        ClassLoader parentCL = this.getParentClassLoader();
        if (checkParent && parentCL != null && name.startsWith(JAVA_PACKAGE)) {
            return parentCL.loadClass(name);
        }
        try {
            if (USE_GLOBAL_DEADLOCK_AVOIDANCE_LOCK) {
                BundleLoader.lock(this.createClassLoader());
            }
            Class<?> clazz = this.findClassInternal(name, checkParent, parentCL);
            return clazz;
        }
        finally {
            if (USE_GLOBAL_DEADLOCK_AVOIDANCE_LOCK) {
                BundleLoader.unlock();
            }
        }
    }

    private Class<?> findClassInternal(String name, boolean checkParent, ClassLoader parentCL) throws ClassNotFoundException {
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleLoader[").append(this).append("].loadBundleClass(").append(name).append(")").toString());
        }
        String pkgName = BundleLoader.getPackageName(name);
        boolean bootDelegation = false;
        if (checkParent && parentCL != null && this.bundle.getFramework().isBootDelegationPackage(pkgName)) {
            try {
                return parentCL.loadClass(name);
            }
            catch (ClassNotFoundException classNotFoundException) {
                bootDelegation = true;
            }
        }
        Class<?> result = null;
        try {
            result = (Class<?>)this.searchHooks(name, 1);
        }
        catch (ClassNotFoundException e) {
            throw e;
        }
        catch (FileNotFoundException fileNotFoundException) {}
        if (result != null) {
            return result;
        }
        PackageSource source = this.findImportedSource(pkgName, null);
        if (source != null) {
            result = source.loadClass(name);
            if (result != null) {
                return result;
            }
            throw new ClassNotFoundException(name);
        }
        source = this.findRequiredSource(pkgName, null);
        if (source != null) {
            result = source.loadClass(name);
        }
        if (result == null) {
            result = this.findLocalClass(name);
        }
        if (result != null) {
            return result;
        }
        if (source == null && (source = this.findDynamicSource(pkgName)) != null) {
            result = source.loadClass(name);
            if (result != null) {
                return result;
            }
            throw new ClassNotFoundException(name);
        }
        if (result == null) {
            try {
                result = (Class<?>)this.searchHooks(name, 2);
            }
            catch (ClassNotFoundException e) {
                throw e;
            }
            catch (FileNotFoundException fileNotFoundException) {}
        }
        if (result == null && this.policy != null) {
            result = this.policy.doBuddyClassLoading(name);
        }
        if (result != null) {
            return result;
        }
        if (parentCL != null && !bootDelegation && (checkParent && this.bundle.getFramework().compatibiltyBootDelegation || this.isRequestFromVM())) {
            try {
                return parentCL.loadClass(name);
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        throw new ClassNotFoundException(name);
    }

    private <E> E searchHooks(String name, int type) throws ClassNotFoundException, FileNotFoundException {
        ClassLoaderDelegateHook[] delegateHooks = this.bundle.getFramework().getDelegateHooks();
        if (delegateHooks == null) {
            return null;
        }
        Object result = null;
        int i = 0;
        while (i < delegateHooks.length && result == null) {
            switch (type) {
                case 1: {
                    result = delegateHooks[i].preFindClass(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 2: {
                    result = delegateHooks[i].postFindClass(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 3: {
                    result = delegateHooks[i].preFindResource(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 4: {
                    result = delegateHooks[i].postFindResource(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 5: {
                    result = delegateHooks[i].preFindResources(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 6: {
                    result = delegateHooks[i].postFindResources(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 7: {
                    result = delegateHooks[i].preFindLibrary(name, this.createClassLoader(), this.bundle.getBundleData());
                    break;
                }
                case 8: {
                    result = delegateHooks[i].postFindLibrary(name, this.createClassLoader(), this.bundle.getBundleData());
                }
            }
            ++i;
        }
        return (E)result;
    }

    private boolean isRequestFromVM() {
        if (this.bundle.getFramework().isBootDelegationPackage("*") || !this.bundle.getFramework().contextBootDelegation) {
            return false;
        }
        Class<?>[] context = CLASS_CONTEXT.getClassContext();
        if (context == null || context.length < 2) {
            return false;
        }
        int i = 1;
        while (i < context.length) {
            Class<?> clazz = context[i];
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = Class.forName("org.eclipse.osgi.internal.loader.BundleLoader");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz != clazz2) {
                ClassLoader cl;
                Class<?> clazz3 = class$2;
                if (clazz3 == null) {
                    try {
                        clazz3 = Class.forName("java.lang.ClassLoader");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!clazz3.isAssignableFrom(context[i]) && (cl = BundleLoader.getClassLoader(context[i])) != FW_CLASSLOADER) {
                    Class<?> clazz4 = class$3;
                    if (clazz4 == null) {
                        try {
                            clazz4 = class$3 = Class.forName("java.lang.Class");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (clazz4 == context[i] || cl instanceof BundleClassLoader) break;
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    private static ClassLoader getClassLoader(final Class<?> clazz) {
        if (System.getSecurityManager() == null) {
            return clazz.getClassLoader();
        }
        return AccessController.doPrivileged(new PrivilegedAction<ClassLoader>(){

            @Override
            public ClassLoader run() {
                return clazz.getClassLoader();
            }
        });
    }

    @Override
    public URL findResource(String name) {
        return this.findResource(name, true);
    }

    URL findResource(String name, boolean checkParent) {
        URL result;
        if (name.length() > 1 && name.charAt(0) == '/') {
            name = name.substring(1);
        }
        String pkgName = BundleLoader.getResourcePackageName(name);
        boolean bootDelegation = false;
        ClassLoader parentCL = this.getParentClassLoader();
        if (checkParent && parentCL != null) {
            if (pkgName.startsWith(JAVA_PACKAGE)) {
                return parentCL.getResource(name);
            }
            if (this.bundle.getFramework().isBootDelegationPackage(pkgName)) {
                result = parentCL.getResource(name);
                if (result != null) {
                    return result;
                }
                bootDelegation = true;
            }
        }
        result = null;
        try {
            result = (URL)this.searchHooks(name, 3);
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
        catch (ClassNotFoundException classNotFoundException) {}
        if (result != null) {
            return result;
        }
        PackageSource source = this.findImportedSource(pkgName, null);
        if (source != null) {
            return source.getResource(name);
        }
        source = this.findRequiredSource(pkgName, null);
        if (source != null) {
            result = source.getResource(name);
        }
        if (result == null) {
            result = this.findLocalResource(name);
        }
        if (result != null) {
            return result;
        }
        if (source == null && (source = this.findDynamicSource(pkgName)) != null) {
            return source.getResource(name);
        }
        if (result == null) {
            try {
                result = (URL)this.searchHooks(name, 4);
            }
            catch (FileNotFoundException fileNotFoundException) {
                return null;
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        if (result == null && this.policy != null) {
            result = this.policy.doBuddyResourceLoading(name);
        }
        if (result != null) {
            return result;
        }
        if (parentCL != null && !bootDelegation && (checkParent && this.bundle.getFramework().compatibiltyBootDelegation || this.isRequestFromVM())) {
            return parentCL.getResource(name);
        }
        return result;
    }

    @Override
    public Enumeration<URL> findResources(String name) throws IOException {
        Enumeration<URL> localResults;
        if (name.length() > 1 && name.charAt(0) == '/') {
            name = name.substring(1);
        }
        String pkgName = BundleLoader.getResourcePackageName(name);
        Enumeration<URL> result = null;
        try {
            result = (Enumeration<URL>)this.searchHooks(name, 5);
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
        if (result != null) {
            return result;
        }
        PackageSource source = this.findImportedSource(pkgName, null);
        if (source != null) {
            return source.getResources(name);
        }
        source = this.findRequiredSource(pkgName, null);
        if (source != null) {
            result = source.getResources(name);
        }
        if ((result = BundleLoader.compoundEnumerations(result, localResults = this.findLocalResources(name))) == null && source == null && (source = this.findDynamicSource(pkgName)) != null) {
            return source.getResources(name);
        }
        if (result == null) {
            try {
                result = (Enumeration<URL>)this.searchHooks(name, 6);
            }
            catch (ClassNotFoundException classNotFoundException) {
            }
            catch (FileNotFoundException fileNotFoundException) {
                return null;
            }
        }
        if (this.policy != null) {
            Enumeration<URL> buddyResult = this.policy.doBuddyResourcesLoading(name);
            result = BundleLoader.compoundEnumerations(result, buddyResult);
        }
        return result;
    }

    private boolean isSubPackage(String parentPackage, String subPackage) {
        String prefix = parentPackage.length() == 0 || parentPackage.equals(DEFAULT_PACKAGE) ? "" : new StringBuffer(String.valueOf(parentPackage)).append('.').toString();
        return subPackage.startsWith(prefix);
    }

    @Override
    public Collection<String> listResources(String path, String filePattern, int options) {
        int n;
        int n2;
        Object object;
        String pkgName = BundleLoader.getResourcePackageName(path.endsWith("/") ? path : new StringBuffer(String.valueOf(path)).append('/').toString());
        if (path.length() > 1 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        boolean subPackages = (options & 1) != 0;
        ArrayList<String> packages = new ArrayList<String>();
        KeyedHashSet importSources = this.getImportedSources(null);
        if (importSources != null) {
            KeyedElement[] imports = importSources.elements();
            object = imports;
            n2 = imports.length;
            n = 0;
            while (n < n2) {
                KeyedElement keyedElement = object[n];
                String id = ((PackageSource)keyedElement).getId();
                if (id.equals(pkgName) || subPackages && this.isSubPackage(pkgName, id)) {
                    packages.add(id);
                }
                ++n;
            }
        }
        if (this.requiredBundles != null) {
            KeyedHashSet visited = new KeyedHashSet(false);
            visited.add(this.bundle);
            object = this.requiredBundles;
            n2 = this.requiredBundles.length;
            n = 0;
            while (n < n2) {
                Object requiredProxy = object[n];
                BundleLoader requiredLoader = ((BundleLoaderProxy)requiredProxy).getBundleLoader();
                requiredLoader.addProvidedPackageNames(((BundleLoaderProxy)requiredProxy).getSymbolicName(), pkgName, packages, subPackages, visited);
                ++n;
            }
        }
        boolean localSearch = (options & 2) != 0;
        ArrayList<String> result = new ArrayList<String>();
        HashSet<String> importedPackages = new HashSet<String>(0);
        for (String name : packages) {
            PackageSource externalSource = this.findImportedSource(name, null);
            if (externalSource != null) {
                importedPackages.add(name);
            } else {
                externalSource = this.findRequiredSource(name, null);
            }
            if (externalSource == null || localSearch) continue;
            String packagePath = name.replace('.', '/');
            Collection<String> externalResources = externalSource.listResources(packagePath, filePattern);
            for (String resource : externalResources) {
                if (result.contains(resource)) continue;
                result.add(resource);
            }
        }
        Collection<String> localResources = this.createClassLoader().listLocalResources(path, filePattern, options);
        for (String resource : localResources) {
            String resourcePkg = BundleLoader.getResourcePackageName(resource);
            if (importedPackages.contains(resourcePkg) || result.contains(resource)) continue;
            result.add(resource);
        }
        return result;
    }

    public Enumeration<URL> getResources(String name) throws IOException {
        if (name.length() > 1 && name.charAt(0) == '/') {
            name = name.substring(1);
        }
        String pkgName = BundleLoader.getResourcePackageName(name);
        Enumeration<URL> result = null;
        if (pkgName.startsWith(JAVA_PACKAGE) || this.bundle.getFramework().isBootDelegationPackage(pkgName)) {
            ClassLoader parentCL = this.getParentClassLoader();
            Enumeration<URL> enumeration = result = parentCL == null ? null : parentCL.getResources(name);
            if (pkgName.startsWith(JAVA_PACKAGE)) {
                return result;
            }
        }
        return BundleLoader.compoundEnumerations(result, this.findResources(name));
    }

    public static <E> Enumeration<E> compoundEnumerations(Enumeration<E> list1, Enumeration<E> list2) {
        if (list2 == null || !list2.hasMoreElements()) {
            return list1;
        }
        if (list1 == null || !list1.hasMoreElements()) {
            return list2;
        }
        ArrayList<E> compoundResults = new ArrayList<E>();
        while (list1.hasMoreElements()) {
            compoundResults.add(list1.nextElement());
        }
        while (list2.hasMoreElements()) {
            E item = list2.nextElement();
            if (compoundResults.contains(item)) continue;
            compoundResults.add(item);
        }
        return Collections.enumeration(compoundResults);
    }

    URL findLocalResource(String name) {
        return this.createClassLoader().findLocalResource(name);
    }

    Enumeration<URL> findLocalResources(String name) {
        return this.createClassLoader().findLocalResources(name);
    }

    @Override
    public String findLibrary(final String name) {
        if (System.getSecurityManager() == null) {
            return this.findLocalLibrary(name);
        }
        return AccessController.doPrivileged(new PrivilegedAction<String>(){

            @Override
            public String run() {
                return BundleLoader.this.findLocalLibrary(name);
            }
        });
    }

    final String findLocalLibrary(String name) {
        String result = null;
        try {
            result = (String)this.searchHooks(name, 7);
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
        catch (ClassNotFoundException classNotFoundException) {}
        if (result != null) {
            return result;
        }
        result = this.bundle.getBundleData().findLibrary(name);
        if (result != null) {
            return result;
        }
        BundleFragment[] fragments = this.bundle.getFragments();
        if (fragments != null) {
            int i = 0;
            while (i < fragments.length) {
                result = fragments[i].getBundleData().findLibrary(name);
                if (result != null) {
                    return result;
                }
                ++i;
            }
        }
        try {
            return (String)this.searchHooks(name, 8);
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
    }

    public final AbstractBundle getBundle() {
        return this.bundle;
    }

    private BundleClassLoader createBCLPrevileged(final BundleProtectionDomain pd, final String[] cp) {
        if (System.getSecurityManager() == null) {
            return this.createBCL(pd, cp);
        }
        return AccessController.doPrivileged(new PrivilegedAction<BundleClassLoader>(){

            @Override
            public BundleClassLoader run() {
                return BundleLoader.this.createBCL(pd, cp);
            }
        });
    }

    BundleClassLoader createBCL(BundleProtectionDomain pd, String[] cp) {
        BundleClassLoader bcl = this.bundle.getBundleData().createClassLoader(this, pd, cp);
        BundleFragment[] fragments = this.bundle.getFragments();
        if (fragments != null) {
            int i = 0;
            while (i < fragments.length) {
                try {
                    bcl.attachFragment(fragments[i].getBundleData(), fragments[i].getProtectionDomain(), fragments[i].getBundleData().getClassPath());
                }
                catch (BundleException be) {
                    this.bundle.getFramework().publishFrameworkEvent(2, this.bundle, be);
                }
                ++i;
            }
        }
        bcl.initialize();
        return bcl;
    }

    public final String toString() {
        BundleData result = this.bundle.getBundleData();
        return result == null ? "BundleLoader.bundledata == null!" : result.toString();
    }

    private final synchronized boolean isDynamicallyImported(String pkgname) {
        int i;
        if (this instanceof SystemBundleLoader) {
            return false;
        }
        if (pkgname.startsWith(JAVA_PACKAGE)) {
            return true;
        }
        if ((this.loaderFlags & 2) == 0) {
            return false;
        }
        if ((this.loaderFlags & 4) != 0) {
            return true;
        }
        if (this.dynamicImportPackages != null) {
            i = 0;
            while (i < this.dynamicImportPackages.length) {
                if (pkgname.equals(this.dynamicImportPackages[i])) {
                    return true;
                }
                ++i;
            }
        }
        if (this.dynamicImportPackageStems != null) {
            i = 0;
            while (i < this.dynamicImportPackageStems.length) {
                if (pkgname.startsWith(this.dynamicImportPackageStems[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    final void addExportedProvidersFor(String symbolicName, String packageName, List<PackageSource> result, KeyedHashSet visited) {
        if (!visited.add(this.bundle)) {
            return;
        }
        PackageSource local = null;
        if (this.isExportedPackage(packageName)) {
            local = this.proxy.getPackageSource(packageName);
        } else if (this.isSubstitutedExport(packageName)) {
            result.add(this.findImportedSource(packageName, visited));
            return;
        }
        if (this.requiredBundles != null) {
            int size = this.reexportTable == null ? 0 : this.reexportTable.length;
            int reexportIndex = 0;
            int i = 0;
            while (i < this.requiredBundles.length) {
                if (local != null) {
                    this.requiredBundles[i].getBundleLoader().addExportedProvidersFor(symbolicName, packageName, result, visited);
                } else if (reexportIndex < size && this.reexportTable[reexportIndex] == i) {
                    ++reexportIndex;
                    this.requiredBundles[i].getBundleLoader().addExportedProvidersFor(symbolicName, packageName, result, visited);
                }
                ++i;
            }
        }
        if (local != null && local.isFriend(symbolicName)) {
            result.add(local);
        }
    }

    final void addProvidedPackageNames(String symbolicName, String packageName, List<String> result, boolean subPackages, KeyedHashSet visitied) {
        if (!visitied.add(this.bundle)) {
            return;
        }
        for (String exported : this.exportedPackages) {
            if (!exported.equals(packageName) && (!subPackages || !this.isSubPackage(packageName, exported)) || result.contains(exported)) continue;
            result.add(exported);
        }
        if (this.substitutedPackages != null) {
            for (String substituted : this.substitutedPackages) {
                if (!substituted.equals(packageName) && (!subPackages || !this.isSubPackage(packageName, substituted)) || result.contains(substituted)) continue;
                result.add(substituted);
            }
        }
        if (this.requiredBundles != null) {
            int size = this.reexportTable == null ? 0 : this.reexportTable.length;
            int reexportIndex = 0;
            int i = 0;
            while (i < this.requiredBundles.length) {
                if (reexportIndex < size && this.reexportTable[reexportIndex] == i) {
                    ++reexportIndex;
                    this.requiredBundles[i].getBundleLoader().addProvidedPackageNames(symbolicName, packageName, result, subPackages, visitied);
                }
                ++i;
            }
        }
    }

    final boolean isExportedPackage(String name) {
        return this.exportedPackages.contains(name);
    }

    final boolean isSubstitutedExport(String name) {
        return this.substitutedPackages == null ? false : this.substitutedPackages.contains(name);
    }

    private void addDynamicImportPackage(ImportPackageSpecification[] packages) {
        if (packages == null) {
            return;
        }
        ArrayList<String> dynamicImports = new ArrayList<String>(packages.length);
        int i = 0;
        while (i < packages.length) {
            if ("dynamic".equals(packages[i].getDirective("resolution"))) {
                dynamicImports.add(packages[i].getName());
            }
            ++i;
        }
        if (dynamicImports.size() > 0) {
            this.addDynamicImportPackage(dynamicImports.toArray(new String[dynamicImports.size()]));
        }
    }

    private void addDynamicImportPackage(String[] packages) {
        int i;
        ArrayList<String> names;
        ArrayList<String> stems;
        if (packages == null) {
            return;
        }
        this.loaderFlags = (byte)(this.loaderFlags | 2);
        int size = packages.length;
        if (this.dynamicImportPackageStems == null) {
            stems = new ArrayList<String>(size);
        } else {
            stems = new ArrayList(size + this.dynamicImportPackageStems.length);
            int i2 = 0;
            while (i2 < this.dynamicImportPackageStems.length) {
                stems.add(this.dynamicImportPackageStems[i2]);
                ++i2;
            }
        }
        if (this.dynamicImportPackages == null) {
            names = new ArrayList<String>(size);
        } else {
            names = new ArrayList(size + this.dynamicImportPackages.length);
            i = 0;
            while (i < this.dynamicImportPackages.length) {
                names.add(this.dynamicImportPackages[i]);
                ++i;
            }
        }
        i = 0;
        while (i < size) {
            String name = packages[i];
            if (!this.isDynamicallyImported(name)) {
                if (name.equals("*")) {
                    this.loaderFlags = (byte)(this.loaderFlags | 4);
                    return;
                }
                if (name.endsWith(".*")) {
                    stems.add(name.substring(0, name.length() - 1));
                } else {
                    names.add(name);
                }
            }
            ++i;
        }
        size = stems.size();
        if (size > 0) {
            this.dynamicImportPackageStems = stems.toArray(new String[size]);
        }
        if ((size = names.size()) > 0) {
            this.dynamicImportPackages = names.toArray(new String[size]);
        }
    }

    public final synchronized void addDynamicImportPackage(ManifestElement[] packages) {
        if (packages == null) {
            return;
        }
        ArrayList<String> dynamicImports = new ArrayList<String>(packages.length);
        ArrayList<ImportPackageSpecification> dynamicImportSpecs = new ArrayList<ImportPackageSpecification>(packages.length);
        ManifestElement[] manifestElementArray = packages;
        int n = packages.length;
        int n2 = 0;
        while (n2 < n) {
            String[] names;
            ManifestElement dynamicImportElement = manifestElementArray[n2];
            String[] stringArray = names = dynamicImportElement.getValueComponents();
            int n3 = names.length;
            int n4 = 0;
            while (n4 < n3) {
                String name = stringArray[n4];
                dynamicImports.add(name);
                ++n4;
            }
            StateBuilder.addImportPackages(dynamicImportElement, dynamicImportSpecs, 2, true);
            ++n2;
        }
        if (dynamicImports.size() > 0) {
            this.addDynamicImportPackage(dynamicImports.toArray(new String[dynamicImports.size()]));
            BundleDescription revision = this.getLoaderProxy().getBundleDescription();
            State state = revision.getContainingState();
            state.addDynamicImportPackages(revision, dynamicImportSpecs.toArray(new ImportPackageSpecification[dynamicImportSpecs.size()]));
        }
    }

    public synchronized void attachFragment(BundleFragment fragment) throws BundleException {
        ExportPackageDescription[] exports = this.proxy.getBundleDescription().getSelectedExports();
        if (this.classloader == null) {
            this.initializeExports(exports, this.exportedPackages);
            return;
        }
        String[] classpath = fragment.getBundleData().getClassPath();
        if (classpath != null) {
            this.classloader.attachFragment(fragment.getBundleData(), fragment.getProtectionDomain(), classpath);
        }
        this.initializeExports(exports, this.exportedPackages);
    }

    private PackageSource findSource(String pkgName) {
        if (pkgName == null) {
            return null;
        }
        PackageSource result = this.findImportedSource(pkgName, null);
        if (result != null) {
            return result;
        }
        return this.findRequiredSource(pkgName, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private PackageSource findImportedSource(String pkgName, KeyedHashSet visited) {
        KeyedHashSet imports = this.getImportedSources(visited);
        if (imports == null) {
            return null;
        }
        KeyedHashSet keyedHashSet = imports;
        synchronized (keyedHashSet) {
            return (PackageSource)imports.getByKey(pkgName);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private PackageSource findDynamicSource(String pkgName) {
        ExportPackageDescription exportPackage;
        if (this.isDynamicallyImported(pkgName) && (exportPackage = this.bundle.getFramework().getAdaptor().getState().linkDynamicImport(this.proxy.getBundleDescription(), pkgName)) != null) {
            PackageSource source = this.createExportPackageSource(exportPackage, null);
            Object object = this;
            synchronized (object) {
                if (this.importedSources == null) {
                    this.importedSources = new KeyedHashSet(false);
                }
            }
            object = this.importedSources;
            synchronized (object) {
                this.importedSources.add(source);
            }
            return source;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private PackageSource findRequiredSource(String pkgName, KeyedHashSet visited) {
        PackageSource source;
        if (this.requiredBundles == null) {
            return null;
        }
        KeyedHashSet keyedHashSet = this.requiredSources;
        synchronized (keyedHashSet) {
            PackageSource result = (PackageSource)this.requiredSources.getByKey(pkgName);
            if (result != null) {
                return result.isNullSource() ? null : result;
            }
        }
        if (visited == null) {
            visited = new KeyedHashSet(false);
        }
        visited.add(this.bundle);
        ArrayList<PackageSource> result = new ArrayList<PackageSource>(3);
        int i = 0;
        while (i < this.requiredBundles.length) {
            BundleLoader requiredLoader = this.requiredBundles[i].getBundleLoader();
            requiredLoader.addExportedProvidersFor(this.proxy.getSymbolicName(), pkgName, result, visited);
            ++i;
        }
        if (result.size() == 0) {
            source = NullPackageSource.getNullPackageSource(pkgName);
        } else if (result.size() == 1) {
            source = (PackageSource)result.get(0);
        } else {
            PackageSource[] srcs = result.toArray(new PackageSource[result.size()]);
            source = BundleLoader.createMultiSource(pkgName, srcs);
        }
        KeyedHashSet keyedHashSet2 = this.requiredSources;
        synchronized (keyedHashSet2) {
            this.requiredSources.add(source);
        }
        return source.isNullSource() ? null : source;
    }

    public final PackageSource getPackageSource(String pkgName) {
        PackageSource result = this.findSource(pkgName);
        if (!this.isExportedPackage(pkgName)) {
            return result;
        }
        PackageSource localSource = this.proxy.getPackageSource(pkgName);
        if (result == null) {
            return localSource;
        }
        if (localSource == null) {
            return result;
        }
        return BundleLoader.createMultiSource(pkgName, new PackageSource[]{result, localSource});
    }

    private ClassLoader getParentPrivileged(final BundleClassLoader bcl) {
        if (System.getSecurityManager() == null) {
            return bcl.getParent();
        }
        return AccessController.doPrivileged(new PrivilegedAction<ClassLoader>(){

            @Override
            public ClassLoader run() {
                return bcl.getParent();
            }
        });
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void lock(Object loader) {
        Thread currentThread = Thread.currentThread();
        boolean interrupted = false;
        Object object = loader;
        synchronized (object) {
            if (BundleLoader.tryLock(currentThread, loader)) {
                return;
            }
            do {
                try {
                    loader.wait();
                }
                catch (InterruptedException interruptedException) {
                    interrupted = true;
                }
            } while (!BundleLoader.tryLock(currentThread));
        }
        if (interrupted) {
            currentThread.interrupt();
        }
    }

    private static synchronized boolean tryLock(Thread currentThread, Object loader) {
        if (lockThread == currentThread) {
            ++lockCount;
            return true;
        }
        if (lockThread == null) {
            ++lockCount;
            lockThread = currentThread;
            return true;
        }
        waitingList.add(new Object[]{currentThread, loader});
        return false;
    }

    private static synchronized boolean tryLock(Thread currentThread) {
        if (lockThread == currentThread) {
            ++lockCount;
            return true;
        }
        return false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void unlock() {
        Thread waitingThread = null;
        Object loader = null;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.internal.loader.BundleLoader");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Object object = clazz;
        synchronized (clazz) {
            if (--lockCount != 0) {
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return;
            }
            if (waitingList.isEmpty()) {
                lockThread = null;
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return;
            }
            Object[] waiting = waitingList.get(0);
            waitingThread = (Thread)waiting[0];
            loader = waiting[1];
            // ** MonitorExit[var2_2] (shouldn't be in output)
            object = loader;
            synchronized (object) {
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.osgi.internal.loader.BundleLoader");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class<?> clazz3 = clazz2;
                synchronized (clazz2) {
                    lockThread = waitingThread;
                    waitingList.remove(0);
                    loader.notifyAll();
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                }
            }
            return;
        }
    }

    public static void closeBundleLoader(BundleLoaderProxy proxy) {
        if (proxy == null) {
            return;
        }
        BundleLoader loader = proxy.getBasicBundleLoader();
        if (loader != null) {
            loader.close();
        }
        proxy.setStale();
        BundleDescription description = proxy.getBundleDescription();
        description.setUserObject(proxy.getBundleData());
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class ClassContext
    extends SecurityManager {
        ClassContext() {
        }

        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }
}

