/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Properties;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFileWrapperChain;
import org.eclipse.osgi.baseadaptor.bundlefile.DirBundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.MRUBundleFileList;
import org.eclipse.osgi.baseadaptor.bundlefile.NestedDirBundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.ZipBundleFile;
import org.eclipse.osgi.baseadaptor.hooks.BundleFileFactoryHook;
import org.eclipse.osgi.baseadaptor.hooks.BundleFileWrapperFactoryHook;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.internal.baseadaptor.BasePermissionStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.internal.baseadaptor.BundleInstall;
import org.eclipse.osgi.internal.baseadaptor.BundleUninstall;
import org.eclipse.osgi.internal.baseadaptor.BundleUpdate;
import org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper;
import org.eclipse.osgi.internal.baseadaptor.StateManager;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.storagemanager.ManagedOutputStream;
import org.eclipse.osgi.storagemanager.StorageManager;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.SynchronousBundleListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseStorage
implements SynchronousBundleListener {
    private static final String RUNTIME_ADAPTOR = "org.eclipse.osgi/eclipseadaptor";
    private static final String OPTION_PLATFORM_ADMIN = "org.eclipse.osgi/eclipseadaptor/debug/platformadmin";
    private static final String OPTION_PLATFORM_ADMIN_RESOLVER = "org.eclipse.osgi/eclipseadaptor/debug/platformadmin/resolver";
    private static final String OPTION_MONITOR_PLATFORM_ADMIN = "org.eclipse.osgi/eclipseadaptor/resolver/timing";
    private static final String OPTION_RESOLVER_READER = "org.eclipse.osgi/eclipseadaptor/resolver/reader/timing";
    private static final String PROP_FRAMEWORK_EXTENSIONS = "osgi.framework.extensions";
    private static final String PROP_BUNDLE_STORE = "osgi.bundlestore";
    static final String DATA_DIR_NAME = "data";
    static final String LIB_TEMP = "libtemp";
    private static final String PROP_ENABLE_STATE_SAVER = "eclipse.enableStateSaver";
    static final String BUNDLEFILE_NAME = "bundlefile";
    private static final String PROP_CLEAN = "osgi.clean";
    public static final byte BUNDLEDATA_VERSION = 18;
    public static final byte EXTENSION_INITIALIZE = 1;
    public static final byte EXTENSION_INSTALLED = 2;
    public static final byte EXTENSION_UNINSTALLED = 4;
    public static final byte EXTENSION_UPDATED = 8;
    public static final int TYPE_DIRECTORYBUNDLE = 0x10000000;
    public static final int TYPE_FILEBUNDLE = 0x20000000;
    public static final String DELETE_FLAG = ".delete";
    private static final String PERM_DATA_FILE = ".permdata";
    private static final byte PERMDATA_VERSION = 1;
    private MRUBundleFileList mruList = new MRUBundleFileList();
    BaseAdaptor adaptor;
    private String installPath;
    private StorageManager storageManager;
    private StateManager stateManager;
    private KeyedHashSet storageHooks = new KeyedHashSet(5, false);
    private BundleContext context;
    private SynchronousBundleListener extensionListener;
    private final Method addFwkURLMethod;
    private final Method addExtURLMethod;
    private String[] configuredExtensions;
    private long timeStamp = 0L;
    private int initialBundleStartLevel = 1;
    private final Object nextIdMonitor = new Object();
    private volatile long nextId = 1L;
    private File bundleStoreRoot;
    private BasePermissionStorage permissionStorage;
    private StateSaver stateSaver;
    private boolean invalidState;
    private boolean storageManagerClosed;
    static /* synthetic */ Class class$0;

    BaseStorage() {
        this.addFwkURLMethod = BaseStorage.findAddURLMethod(this.getFwkClassLoader(), "addURL");
        this.addExtURLMethod = BaseStorage.findAddURLMethod(this.getExtClassLoader(), "addURL");
    }

    public void initialize(BaseAdaptor initAdaptor) throws IOException {
        Location installLoc;
        this.adaptor = initAdaptor;
        BaseStorage.setDebugOptions();
        if (Boolean.valueOf(FrameworkProperties.getProperty(PROP_CLEAN)).booleanValue()) {
            this.cleanOSGiCache();
        }
        if ((installLoc = LocationManager.getInstallLocation()) != null) {
            URL installURL = installLoc.getURL();
            this.installPath = installURL.getPath();
        }
        boolean readOnlyConfiguration = LocationManager.getConfigurationLocation().isReadOnly();
        this.storageManager = this.initFileManager(LocationManager.getOSGiConfigurationDir(), readOnlyConfiguration ? "none" : null, readOnlyConfiguration);
        this.storageManagerClosed = false;
        StorageHook[] hooks = initAdaptor.getHookRegistry().getStorageHooks();
        int i = 0;
        while (i < hooks.length) {
            this.storageHooks.add(hooks[i]);
            ++i;
        }
    }

    private static Method findAddURLMethod(ClassLoader cl, String name) {
        if (cl == null) {
            return null;
        }
        Class<?> clazz = cl.getClass();
        Class[] classArray = new Class[1];
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("java.net.URL");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz2;
        return BaseStorage.findMethod(clazz, name, classArray);
    }

    private static Method findMethod(Class<?> clazz, String name, Class<?>[] args) {
        if (clazz == null) {
            return null;
        }
        try {
            Method result = clazz.getDeclaredMethod(name, args);
            result.setAccessible(true);
            return result;
        }
        catch (NoSuchMethodException noSuchMethodException) {
        }
        catch (SecurityException securityException) {}
        return BaseStorage.findMethod(clazz.getSuperclass(), name, args);
    }

    private static void callAddURLMethod(ClassLoader cl, Method meth, URL arg) throws InvocationTargetException {
        try {
            meth.invoke(cl, arg);
        }
        catch (Throwable t) {
            throw new InvocationTargetException(t);
        }
    }

    private ClassLoader getFwkClassLoader() {
        return this.getClass().getClassLoader();
    }

    private ClassLoader getExtClassLoader() {
        ClassLoader cl = ClassLoader.getSystemClassLoader();
        ClassLoader extcl = cl.getParent();
        while (extcl != null && extcl.getParent() != null) {
            extcl = extcl.getParent();
        }
        return extcl;
    }

    private static void setDebugOptions() {
        FrameworkDebugOptions options = FrameworkDebugOptions.getDefault();
        if (options == null) {
            return;
        }
        StateManager.DEBUG = options != null;
        StateManager.DEBUG_READER = options.getBooleanOption(OPTION_RESOLVER_READER, false);
        StateManager.MONITOR_PLATFORM_ADMIN = options.getBooleanOption(OPTION_MONITOR_PLATFORM_ADMIN, false);
        StateManager.DEBUG_PLATFORM_ADMIN = options.getBooleanOption(OPTION_PLATFORM_ADMIN, false);
        StateManager.DEBUG_PLATFORM_ADMIN_RESOLVER = options.getBooleanOption(OPTION_PLATFORM_ADMIN_RESOLVER, false);
    }

    protected StorageManager initFileManager(File baseDir, String lockMode, boolean readOnly) throws IOException {
        StorageManager sManager = new StorageManager(baseDir, lockMode, readOnly);
        try {
            sManager.open(!readOnly);
        }
        catch (IOException ex) {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Error reading framework metadata: ").append(ex.getMessage()).toString());
                Debug.printStackTrace(ex);
            }
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FILEMANAGER_OPEN_ERROR, ex.getMessage());
            FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, ex, null);
            this.adaptor.getFrameworkLog().log(logEntry);
            FrameworkProperties.setProperty("eclipse.exitcode", "15");
            String errorDialog = new StringBuffer("<title>").append(AdaptorMsg.ADAPTOR_STORAGE_INIT_FAILED_TITLE).append("</title>").append(NLS.bind(AdaptorMsg.ADAPTOR_STORAGE_INIT_FAILED_MSG, baseDir)).append("\n").append(ex.getMessage()).toString();
            FrameworkProperties.setProperty("eclipse.exitdata", errorDialog);
            throw ex;
        }
        return sManager;
    }

    public boolean isReadOnly() {
        return this.storageManager.isReadOnly();
    }

    public void compact() {
        if (!this.isReadOnly()) {
            this.compact(this.getBundleStoreRoot());
        }
    }

    private void compact(File directory) {
        String[] list;
        if (Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("compact(").append(directory.getPath()).append(")").toString());
        }
        if ((list = directory.list()) == null) {
            return;
        }
        int len = list.length;
        int i = 0;
        while (i < len) {
            File target;
            if (!DATA_DIR_NAME.equals(list[i]) && (target = new File(directory, list[i])).isDirectory()) {
                File delete = new File(target, DELETE_FLAG);
                if (delete.exists()) {
                    if (!AdaptorUtil.rm(target) && !delete.exists()) {
                        try {
                            FileOutputStream out = new FileOutputStream(delete);
                            out.close();
                        }
                        catch (IOException e) {
                            if (Debug.DEBUG_GENERAL) {
                                Debug.println(new StringBuffer("Unable to write ").append(delete.getPath()).append(": ").append(e.getMessage()).toString());
                            }
                        }
                    }
                } else {
                    this.compact(target);
                }
            }
            ++i;
        }
    }

    public long getFreeSpace() throws IOException {
        return -1L;
    }

    public File getDataFile(BaseData data, String path) {
        BaseStorageHook storageHook = (BaseStorageHook)data.getStorageHook(BaseStorageHook.KEY);
        if (storageHook == null) {
            return null;
        }
        return storageHook.getDataFile(path);
    }

    BaseAdaptor getAdaptor() {
        return this.adaptor;
    }

    public void installNativeCode(BaseData data, String[] nativepaths) throws BundleException {
        BaseStorageHook storageHook;
        if (nativepaths.length > 0 && (storageHook = (BaseStorageHook)data.getStorageHook(BaseStorageHook.KEY)) != null) {
            storageHook.installNativePaths(nativepaths);
        }
    }

    public Dictionary<String, String> loadManifest(BaseData data) throws BundleException {
        return this.loadManifest(data, false);
    }

    public Dictionary<String, String> loadManifest(BaseData bundleData, boolean firstTime) throws BundleException {
        Dictionary<String, String> result = null;
        StorageHook[] dataStorageHooks = bundleData.getStorageHooks();
        int i = 0;
        while (i < dataStorageHooks.length && result == null) {
            result = dataStorageHooks[i].getManifest(firstTime);
            ++i;
        }
        if (result == null) {
            result = AdaptorUtil.loadManifestFrom(bundleData);
        }
        if (result == null) {
            throw new BundleException(NLS.bind(AdaptorMsg.MANIFEST_NOT_FOUND_EXCEPTION, "META-INF/MANIFEST.MF", bundleData.getLocation()), 3);
        }
        return result;
    }

    public File getExtractFile(BaseData data, String path) {
        File parentPath;
        File childPath;
        BaseStorageHook storageHook = (BaseStorageHook)data.getStorageHook(BaseStorageHook.KEY);
        if (storageHook == null) {
            return null;
        }
        File childGenDir = storageHook.getGenerationDir();
        if (childGenDir != null && (childPath = new File(childGenDir, path)).exists()) {
            return childPath;
        }
        File parentGenDir = storageHook.getParentGenerationDir();
        if (parentGenDir != null && (parentPath = new File(parentGenDir, path)).exists()) {
            return parentPath;
        }
        File bundleGenerationDir = storageHook.createGenerationDir();
        if (bundleGenerationDir != null && bundleGenerationDir.exists()) {
            return new File(bundleGenerationDir, path);
        }
        return null;
    }

    public BaseData[] getInstalledBundles() {
        try {
            return this.readBundleDatas();
        }
        catch (Throwable t) {
            FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, "Error loading bundle datas.  Recalculating cache.", 0, t, null);
            this.adaptor.getFrameworkLog().log(logEntry);
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private BaseData[] readBundleDatas() {
        InputStream bundleDataStream = this.findStorageStream(".bundledata");
        if (bundleDataStream == null) {
            return null;
        }
        try {
            DataInputStream in = new DataInputStream(new BufferedInputStream(bundleDataStream));
            try {
                StorageHook[] hooks;
                byte version = in.readByte();
                if (version != 18) {
                    return null;
                }
                this.timeStamp = in.readLong();
                this.initialBundleStartLevel = in.readInt();
                this.nextId = in.readLong();
                int numStorageHooks = in.readInt();
                if (numStorageHooks != (hooks = this.adaptor.getHookRegistry().getStorageHooks()).length) {
                    return null;
                }
                int i = 0;
                while (i < numStorageHooks) {
                    Object storageKey = hooks[i].getKey();
                    int storageVersion = hooks[i].getStorageVersion();
                    if (!storageKey.equals(in.readUTF())) return null;
                    if (storageVersion != in.readInt()) {
                        return null;
                    }
                    ++i;
                }
                int bundleCount = in.readInt();
                ArrayList<BaseData> result = new ArrayList<BaseData>(bundleCount);
                long id = -1L;
                boolean bundleDiscarded = false;
                int i2 = 0;
                while (i2 < bundleCount) {
                    BaseData data;
                    boolean error;
                    block23: {
                        error = false;
                        data = null;
                        try {
                            id = in.readLong();
                            if (id != 0L) {
                                data = this.loadBaseData(id, in);
                                data.getBundleFile();
                                StorageHook[] dataStorageHooks = data.getStorageHooks();
                                int j = 0;
                                while (j < dataStorageHooks.length) {
                                    dataStorageHooks[j].validate();
                                    ++j;
                                }
                                if (Debug.DEBUG_GENERAL) {
                                    Debug.println(new StringBuffer("BundleData created: ").append(data).toString());
                                }
                                this.processExtension(data, (byte)1);
                                result.add(data);
                            }
                        }
                        catch (IllegalArgumentException illegalArgumentException) {
                            bundleDiscarded = true;
                            error = true;
                        }
                        catch (BundleException bundleException) {
                            bundleDiscarded = true;
                            error = true;
                        }
                        catch (IOException e) {
                            bundleDiscarded = true;
                            error = true;
                            if (!Debug.DEBUG_GENERAL) break block23;
                            Debug.println(new StringBuffer("Error reading framework metadata: ").append(e.getMessage()).toString());
                            Debug.printStackTrace(e);
                        }
                    }
                    if (error && data != null) {
                        BaseStorageHook storageHook = (BaseStorageHook)data.getStorageHook(BaseStorageHook.KEY);
                        storageHook.delete(true, 1);
                    }
                    ++i2;
                }
                if (bundleDiscarded) {
                    FrameworkProperties.setProperty("eclipse.refreshBundles", "true");
                }
                BaseData[] baseDataArray = result.toArray(new BaseData[result.size()]);
                return baseDataArray;
            }
            finally {
                in.close();
            }
        }
        catch (IOException e) {
            if (!Debug.DEBUG_GENERAL) return null;
            Debug.println(new StringBuffer("Error reading framework metadata: ").append(e.getMessage()).toString());
            Debug.printStackTrace(e);
            return null;
        }
    }

    void saveAllData(boolean shutdown) {
        if (Debug.DEBUG_GENERAL) {
            Debug.println("Saving framework data ...");
        }
        if (this.storageManagerClosed) {
            try {
                this.storageManager.open(!LocationManager.getConfigurationLocation().isReadOnly());
                this.storageManagerClosed = false;
            }
            catch (IOException e) {
                String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FILEMANAGER_OPEN_ERROR, e.getMessage());
                FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null);
                this.adaptor.getFrameworkLog().log(logEntry);
            }
        }
        this.saveBundleDatas();
        this.saveStateData(shutdown);
        this.savePermissionStorage();
        if (shutdown) {
            this.stateManager.stopDataManager();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private BasePermissionStorage readPermissionData() {
        BasePermissionStorage result = new BasePermissionStorage(this);
        InputStream permDataStream = this.findStorageStream(PERM_DATA_FILE);
        if (permDataStream == null) {
            return result;
        }
        try {
            DataInputStream in = new DataInputStream(new BufferedInputStream(permDataStream));
            try {
                int numCondPerms;
                int numLocs;
                int i;
                if (1 != in.readByte()) {
                    BasePermissionStorage basePermissionStorage = result;
                    return basePermissionStorage;
                }
                int numPerms = in.readInt();
                if (numPerms > 0) {
                    String[] perms = new String[numPerms];
                    i = 0;
                    while (i < numPerms) {
                        perms[i] = in.readUTF();
                        ++i;
                    }
                    result.setPermissionData(null, perms);
                }
                if ((numLocs = in.readInt()) > 0) {
                    i = 0;
                    while (i < numLocs) {
                        String loc = in.readUTF();
                        numPerms = in.readInt();
                        String[] perms = new String[numPerms];
                        int j = 0;
                        while (j < numPerms) {
                            perms[j] = in.readUTF();
                            ++j;
                        }
                        result.setPermissionData(loc, perms);
                        ++i;
                    }
                }
                if ((numCondPerms = in.readInt()) > 0) {
                    String[] condPerms = new String[numCondPerms];
                    int i2 = 0;
                    while (i2 < numCondPerms) {
                        condPerms[i2] = in.readUTF();
                        ++i2;
                    }
                    result.saveConditionalPermissionInfos(condPerms);
                }
                result.setDirty(false);
                return result;
            }
            finally {
                in.close();
            }
        }
        catch (IOException e) {
            this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, this.context.getBundle(), e));
        }
        return result;
    }

    private void savePermissionStorage() {
        if (this.permissionStorage == null || this.isReadOnly() || !this.permissionStorage.isDirty()) {
            return;
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println("About to save permission data ...");
        }
        try {
            ManagedOutputStream fmos = this.storageManager.getOutputStream(PERM_DATA_FILE);
            DataOutputStream out = new DataOutputStream(new BufferedOutputStream(fmos));
            boolean error = true;
            try {
                String[] condPerms;
                String[] locations;
                out.writeByte(1);
                String[] defaultPerms = this.permissionStorage.getPermissionData(null);
                out.writeInt(defaultPerms == null ? 0 : defaultPerms.length);
                if (defaultPerms != null) {
                    int i = 0;
                    while (i < defaultPerms.length) {
                        out.writeUTF(defaultPerms[i]);
                        ++i;
                    }
                }
                out.writeInt((locations = this.permissionStorage.getLocations()) == null ? 0 : locations.length);
                if (locations != null) {
                    int i = 0;
                    while (i < locations.length) {
                        out.writeUTF(locations[i]);
                        String[] perms = this.permissionStorage.getPermissionData(locations[i]);
                        out.writeInt(perms == null ? 0 : perms.length);
                        if (perms != null) {
                            int j = 0;
                            while (j < perms.length) {
                                out.writeUTF(perms[j]);
                                ++j;
                            }
                        }
                        ++i;
                    }
                }
                out.writeInt((condPerms = this.permissionStorage.getConditionalPermissionInfos()) == null ? 0 : condPerms.length);
                if (condPerms != null) {
                    int i = 0;
                    while (i < condPerms.length) {
                        out.writeUTF(condPerms[i]);
                        ++i;
                    }
                }
                out.close();
                this.permissionStorage.setDirty(false);
                error = false;
            }
            catch (Throwable throwable) {
                if (error) {
                    fmos.abort();
                    try {
                        out.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (error) {
                fmos.abort();
                try {
                    out.close();
                }
                catch (IOException iOException) {}
            }
        }
        catch (IOException e) {
            this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, this.context.getBundle(), e));
            return;
        }
    }

    private void saveBundleDatas() {
        if (this.stateManager == null || this.isReadOnly() || this.timeStamp == this.stateManager.getSystemState().getTimeStamp() && !this.stateManager.saveNeeded()) {
            return;
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println("Saving bundle data ...");
        }
        try {
            ManagedOutputStream fmos = this.storageManager.getOutputStream(".bundledata");
            DataOutputStream out = new DataOutputStream(new BufferedOutputStream(fmos));
            boolean error = true;
            try {
                out.writeByte(18);
                out.writeLong(this.stateManager.getSystemState().getTimeStamp());
                out.writeInt(this.initialBundleStartLevel);
                out.writeLong(this.nextId);
                StorageHook[] hooks = this.adaptor.getHookRegistry().getStorageHooks();
                out.writeInt(hooks.length);
                int i = 0;
                while (i < hooks.length) {
                    out.writeUTF((String)hooks[i].getKey());
                    out.writeInt(hooks[i].getStorageVersion());
                    ++i;
                }
                Bundle[] bundles = this.context.getBundles();
                out.writeInt(bundles.length);
                int i2 = 0;
                while (i2 < bundles.length) {
                    long id = bundles[i2].getBundleId();
                    out.writeLong(id);
                    if (id != 0L) {
                        BundleData data = ((AbstractBundle)bundles[i2]).getBundleData();
                        this.saveBaseData((BaseData)data, out);
                    }
                    ++i2;
                }
                out.close();
                this.timeStamp = this.stateManager.getSystemState().getTimeStamp();
                error = false;
            }
            catch (Throwable throwable) {
                if (error) {
                    fmos.abort();
                    try {
                        out.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (error) {
                fmos.abort();
                try {
                    out.close();
                }
                catch (IOException iOException) {}
            }
        }
        catch (IOException e) {
            this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, this.context.getBundle(), e));
            return;
        }
    }

    private void cleanRemovalPendings(State systemState, BundleDescription[] removalPendings) {
        if (removalPendings.length == 0) {
            return;
        }
        systemState.resolve(removalPendings);
        int i = 0;
        while (i < removalPendings.length) {
            Object userObject = removalPendings[i].getUserObject();
            if (userObject instanceof BundleLoaderProxy) {
                BundleLoader.closeBundleLoader((BundleLoaderProxy)userObject);
                try {
                    ((BundleLoaderProxy)userObject).getBundleData().close();
                }
                catch (IOException iOException) {}
            } else if (userObject instanceof BundleData) {
                try {
                    ((BundleData)userObject).close();
                }
                catch (IOException iOException) {}
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void saveStateData(boolean shutdown) {
        BundleDescription[] removalPendings;
        State systemState = this.stateManager.getSystemState();
        if (shutdown && "true".equals(FrameworkProperties.getProperty("osgi.forcedRestart"))) {
            systemState.setTimeStamp(systemState.getTimeStamp() + 1L);
        }
        if ((removalPendings = systemState.getRemovalPending()).length > 0) {
            if (!shutdown) {
                return;
            }
            this.cleanRemovalPendings(systemState, removalPendings);
        }
        if (this.stateManager == null || this.isReadOnly() || !this.stateManager.saveNeeded()) {
            return;
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println("Saving resolver state data ...");
        }
        File stateTmpFile = null;
        File lazyTmpFile = null;
        try {
            try {
                stateTmpFile = File.createTempFile(".state", ".new", LocationManager.getOSGiConfigurationDir());
                lazyTmpFile = File.createTempFile(".lazy", ".new", LocationManager.getOSGiConfigurationDir());
                if (shutdown) {
                    this.stateManager.shutdown(stateTmpFile, lazyTmpFile);
                } else {
                    StateManager stateManager = this.stateManager;
                    synchronized (stateManager) {
                        this.stateManager.update(stateTmpFile, lazyTmpFile);
                    }
                }
                this.storageManager.lookup(".state", true);
                this.storageManager.lookup(".lazy", true);
                this.storageManager.update(new String[]{".state", ".lazy"}, new String[]{stateTmpFile.getName(), lazyTmpFile.getName()});
            }
            catch (IOException e) {
                this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, this.context.getBundle(), e));
                if (stateTmpFile != null && stateTmpFile.exists()) {
                    stateTmpFile.delete();
                }
                if (lazyTmpFile != null && lazyTmpFile.exists()) {
                    lazyTmpFile.delete();
                }
            }
        }
        finally {
            if (stateTmpFile != null && stateTmpFile.exists()) {
                stateTmpFile.delete();
            }
            if (lazyTmpFile != null && lazyTmpFile.exists()) {
                lazyTmpFile.delete();
            }
        }
    }

    public PermissionStorage getPermissionStorage() {
        if (this.permissionStorage == null) {
            this.permissionStorage = this.readPermissionData();
        }
        return this.permissionStorage;
    }

    public int getInitialBundleStartLevel() {
        return this.initialBundleStartLevel;
    }

    public void setInitialBundleStartLevel(int value) {
        this.initialBundleStartLevel = value;
        this.requestSave();
    }

    public void save(BaseData data) {
        if (data.isDirty()) {
            --this.timeStamp;
            this.requestSave();
            data.setDirty(false);
        }
    }

    public BundleOperation installBundle(String location, URLConnection source) {
        BaseData data = this.createBaseData(this.getNextBundleId(), location);
        return new BundleInstall(data, source, this);
    }

    public BundleOperation updateBundle(BaseData data, URLConnection source) {
        return new BundleUpdate(data, source, this);
    }

    public BundleOperation uninstallBundle(BaseData data) {
        return new BundleUninstall(data, this);
    }

    protected Object getBundleContent(BaseData bundledata) {
        BaseStorageHook storageHook = (BaseStorageHook)bundledata.getStorageHook(BaseStorageHook.KEY);
        if (storageHook == null) {
            throw new IllegalStateException();
        }
        return storageHook.isReference() ? new File(storageHook.getFileName()) : new File(storageHook.getGenerationDir(), storageHook.getFileName());
    }

    public BundleFile createBundleFile(Object content, BaseData data) throws IOException {
        BundleFile result;
        boolean base = false;
        if (content == null) {
            base = true;
            content = this.getBundleContent(data);
        }
        if ((result = data.getBundleFile(content, base)) != null) {
            return result;
        }
        BundleFileFactoryHook[] factories = this.adaptor.getHookRegistry().getBundleFileFactoryHooks();
        int i = 0;
        while (i < factories.length && result == null) {
            result = factories[i].createBundleFile(content, data, base);
            ++i;
        }
        if (result == null && content instanceof File) {
            File file = (File)content;
            result = this.isDirectory(data, base, file) ? new DirBundleFile(file) : new ZipBundleFile(file, data, this.getMRUList());
        }
        if (result == null && content instanceof String) {
            result = new NestedDirBundleFile(data.getBundleFile(), (String)content);
        }
        if (result == null) {
            throw new IOException(new StringBuffer("Cannot create bundle file for content of type: ").append(content.getClass().getName()).toString());
        }
        BundleFileWrapperFactoryHook[] wrapperFactories = this.adaptor.getHookRegistry().getBundleFileWrapperFactoryHooks();
        BundleFileWrapperChain wrapped = wrapperFactories.length == 0 ? null : new BundleFileWrapperChain(result, null);
        int i2 = 0;
        while (i2 < wrapperFactories.length) {
            BundleFile wrapperBundle = wrapperFactories[i2].wrapBundleFile(result, content, data, base);
            if (wrapperBundle != null && wrapperBundle != result) {
                wrapped = new BundleFileWrapperChain(wrapperBundle, wrapped);
                result = wrapped;
            }
            ++i2;
        }
        if (!base) {
            data.setBundleFile(content, result);
        }
        return result;
    }

    private synchronized MRUBundleFileList getMRUList() {
        if (this.mruList == null) {
            this.mruList = new MRUBundleFileList();
        }
        return this.mruList;
    }

    private boolean isDirectory(BaseData data, boolean base, File file) {
        if (!base) {
            return file.isDirectory();
        }
        boolean isDirectory = false;
        int type = data.getType();
        if ((type & 0x30000000) == 0) {
            isDirectory = file.isDirectory();
            data.setType(type | (isDirectory ? 0x10000000 : 0x20000000));
        } else {
            isDirectory = (type & 0x10000000) != 0;
        }
        return isDirectory;
    }

    public synchronized StateManager getStateManager() {
        if (this.stateManager != null) {
            return this.stateManager;
        }
        this.stateManager = this.readStateData();
        this.checkSystemState(this.stateManager.getSystemState());
        return this.stateManager;
    }

    private void checkSystemState(State state) {
        BundleDescription systemBundle;
        BundleDescription[] bundles = state.getBundles();
        if (bundles == null) {
            return;
        }
        boolean removedBundle = false;
        int i = 0;
        while (i < bundles.length) {
            if (this.adaptor.getBundle(bundles[i].getBundleId()) == null) {
                state.removeBundle(bundles[i]);
                removedBundle = true;
            }
            ++i;
        }
        if (removedBundle) {
            state.resolve(false);
        }
        if ((systemBundle = state.getBundle(0L)) == null || !systemBundle.isResolved()) {
            ResolverError[] errors = systemBundle == null ? new ResolverError[]{} : state.getResolverErrors(systemBundle);
            StringBuffer sb = new StringBuffer();
            int i2 = 0;
            while (i2 < errors.length) {
                sb.append(errors[i2].toString());
                if (i2 < errors.length - 1) {
                    sb.append(", ");
                }
                ++i2;
            }
            throw new IllegalStateException(NLS.bind(AdaptorMsg.SYSTEMBUNDLE_NOTRESOLVED, sb.toString()));
        }
    }

    private StateManager readStateData() {
        File[] stateFiles = this.findStorageFiles(new String[]{".state", ".lazy"});
        File stateFile = stateFiles[0];
        File lazyFile = stateFiles[1];
        this.stateManager = new StateManager(stateFile, lazyFile, this.context, this.timeStamp);
        State systemState = null;
        if (!this.invalidState && (systemState = this.stateManager.readSystemState()) != null) {
            return this.stateManager;
        }
        systemState = this.stateManager.createSystemState();
        Bundle[] installedBundles = this.context.getBundles();
        if (installedBundles == null) {
            return this.stateManager;
        }
        StateObjectFactory factory = this.stateManager.getFactory();
        int i = 0;
        while (i < installedBundles.length) {
            AbstractBundle toAdd = (AbstractBundle)installedBundles[i];
            try {
                Dictionary<String, String> toAddManifest = this.loadManifest((BaseData)toAdd.getBundleData(), true);
                BundleDescription newDescription = factory.createBundleDescription(systemState, toAddManifest, toAdd.getLocation(), toAdd.getBundleId());
                systemState.addBundle(newDescription);
            }
            catch (BundleException bundleException) {}
            ++i;
        }
        systemState.resolve();
        this.invalidState = false;
        return this.stateManager;
    }

    private File[] findStorageFiles(String[] fileNames) {
        File[] storageFiles;
        block16: {
            block15: {
                storageFiles = new File[fileNames.length];
                try {
                    int i = 0;
                    while (i < storageFiles.length) {
                        storageFiles[i] = this.storageManager.lookup(fileNames[i], false);
                        ++i;
                    }
                }
                catch (IOException ex) {
                    if (!Debug.DEBUG_GENERAL) break block15;
                    Debug.println(new StringBuffer("Error reading state file ").append(ex.getMessage()).toString());
                    Debug.printStackTrace(ex);
                }
            }
            boolean success = true;
            int i = 0;
            while (i < storageFiles.length) {
                if (storageFiles[i] == null || !storageFiles[i].isFile()) {
                    success = false;
                    break;
                }
                ++i;
            }
            if (success) {
                return storageFiles;
            }
            Location parentConfiguration = null;
            Location currentConfiguration = LocationManager.getConfigurationLocation();
            if (currentConfiguration != null && (parentConfiguration = currentConfiguration.getParentLocation()) != null) {
                try {
                    File stateLocationDir = new File(parentConfiguration.getURL().getFile(), "org.eclipse.osgi");
                    StorageManager newFileManager = this.initFileManager(stateLocationDir, "none", true);
                    int i2 = 0;
                    while (i2 < storageFiles.length) {
                        storageFiles[i2] = newFileManager.lookup(fileNames[i2], false);
                        ++i2;
                    }
                    newFileManager.close();
                }
                catch (IOException ex) {
                    if (Debug.DEBUG_GENERAL) {
                        Debug.println(new StringBuffer("Error reading state file ").append(ex.getMessage()).toString());
                        Debug.printStackTrace(ex);
                    }
                    break block16;
                }
            }
            try {
                if (!this.isReadOnly()) {
                    int i3 = 0;
                    while (i3 < storageFiles.length) {
                        storageFiles[i3] = this.storageManager.lookup(fileNames[i3], true);
                        ++i3;
                    }
                }
            }
            catch (IOException ex) {
                if (!Debug.DEBUG_GENERAL) break block16;
                Debug.println(new StringBuffer("Error reading state file ").append(ex.getMessage()).toString());
                Debug.printStackTrace(ex);
            }
        }
        return storageFiles;
    }

    public void frameworkStart(BundleContext fwContext) {
        this.context = fwContext;
        if (Boolean.valueOf(FrameworkProperties.getProperty(PROP_ENABLE_STATE_SAVER, "true")).booleanValue()) {
            this.stateSaver = new StateSaver();
        }
    }

    public void frameworkStop(BundleContext fwContext) {
        MRUBundleFileList current;
        if (this.stateSaver != null) {
            this.stateSaver.shutdown();
        }
        this.saveAllData(true);
        this.storageManager.close();
        this.storageManagerClosed = true;
        if (this.extensionListener != null) {
            this.context.removeBundleListener(this.extensionListener);
        }
        if ((current = this.mruList) != null) {
            current.shutdown();
        }
        this.mruList = null;
        this.stateManager = null;
    }

    public void frameworkStopping(BundleContext fwContext) {
    }

    public void addProperties(Properties properties) {
        if (this.addFwkURLMethod != null) {
            properties.put("org.osgi.supports.framework.extension", "true");
        }
        properties.put(PROP_BUNDLE_STORE, this.getBundleStoreRoot().getAbsolutePath());
    }

    private InputStream findStorageStream(String fileName) {
        InputStream storageStream;
        block7: {
            storageStream = null;
            try {
                storageStream = this.storageManager.getInputStream(fileName);
            }
            catch (IOException ex) {
                if (!Debug.DEBUG_GENERAL) break block7;
                Debug.println(new StringBuffer("Error reading framework metadata: ").append(ex.getMessage()).toString());
                Debug.printStackTrace(ex);
            }
        }
        if (storageStream == null) {
            Location currentConfiguration = LocationManager.getConfigurationLocation();
            Location parentConfiguration = null;
            if (currentConfiguration != null && (parentConfiguration = currentConfiguration.getParentLocation()) != null) {
                try {
                    File bundledataLocationDir = new File(parentConfiguration.getURL().getFile(), "org.eclipse.osgi");
                    StorageManager newStorageManager = this.initFileManager(bundledataLocationDir, "none", true);
                    storageStream = newStorageManager.getInputStream(fileName);
                    newStorageManager.close();
                }
                catch (MalformedURLException malformedURLException) {
                }
                catch (IOException iOException) {}
            }
        }
        return storageStream;
    }

    protected void saveBaseData(BaseData bundledata, DataOutputStream out) throws IOException {
        StorageHook[] hooks = bundledata.getStorageHooks();
        out.writeInt(hooks.length);
        int i = 0;
        while (i < hooks.length) {
            out.writeUTF((String)hooks[i].getKey());
            hooks[i].save(out);
            ++i;
        }
    }

    protected BaseData loadBaseData(long id, DataInputStream in) throws IOException {
        BaseData result = new BaseData(id, this.adaptor);
        int numHooks = in.readInt();
        StorageHook[] hooks = new StorageHook[numHooks];
        int i = 0;
        while (i < numHooks) {
            String hookKey = in.readUTF();
            StorageHook storageHook = (StorageHook)this.storageHooks.getByKey(hookKey);
            if (storageHook == null) {
                throw new IOException();
            }
            hooks[i] = storageHook.load(result, in);
            ++i;
        }
        result.setStorageHooks(hooks);
        return result;
    }

    protected BaseData createBaseData(long id, String location) {
        BaseData result = new BaseData(id, this.adaptor);
        result.setLocation(location);
        return result;
    }

    public String getInstallPath() {
        return this.installPath;
    }

    private void cleanOSGiCache() {
        File osgiConfig = LocationManager.getOSGiConfigurationDir();
        if (!AdaptorUtil.rm(osgiConfig)) {
            this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, new StringBuffer("The -clean (osgi.clean) option was not successful. Unable to clean the storage area: ").append(osgiConfig.getAbsolutePath()).toString(), 0, null, null));
        }
    }

    protected void processExtension(BaseData bundleData, byte type) throws BundleException {
        if ((bundleData.getType() & 2) != 0) {
            this.validateExtension(bundleData);
            this.processFrameworkExtension(bundleData, type);
        } else if ((bundleData.getType() & 4) != 0) {
            this.validateExtension(bundleData);
            this.processBootExtension(bundleData, type);
        } else if ((bundleData.getType() & 0x10) != 0) {
            this.validateExtension(bundleData);
            this.processExtExtension(bundleData, type);
        }
    }

    private void validateExtension(BundleData bundleData) throws BundleException {
        Dictionary<String, String> extensionManifest = bundleData.getManifest();
        if (extensionManifest.get("Import-Package") != null) {
            throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_EXTENSION_IMPORT_ERROR, bundleData.getLocation()), 3);
        }
        if (extensionManifest.get("Require-Bundle") != null) {
            throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_EXTENSION_REQUIRE_ERROR, bundleData.getLocation()), 3);
        }
        if (extensionManifest.get("Bundle-NativeCode") != null) {
            throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_EXTENSION_NATIVECODE_ERROR, bundleData.getLocation()), 3);
        }
    }

    protected void processFrameworkExtension(BaseData bundleData, byte type) throws BundleException {
        if (this.addFwkURLMethod == null) {
            throw new BundleException("Framework extensions are not supported.", 1, new UnsupportedOperationException());
        }
        this.addExtensionContent(bundleData, type, this.getFwkClassLoader(), this.addFwkURLMethod);
    }

    protected void processExtExtension(BaseData bundleData, byte type) throws BundleException {
        if (this.addExtURLMethod == null) {
            throw new BundleException("Extension classpath extensions are not supported.", 1, new UnsupportedOperationException());
        }
        this.addExtensionContent(bundleData, type, this.getExtClassLoader(), this.addExtURLMethod);
    }

    private void addExtensionContent(BaseData bundleData, byte type, ClassLoader addToLoader, Method addToMethod) {
        if ((type & 0xC) != 0) {
            return;
        }
        String[] extensions = this.getConfiguredExtensions();
        int i = 0;
        while (i < extensions.length) {
            if (extensions[i].equals(bundleData.getSymbolicName())) {
                return;
            }
            ++i;
        }
        if ((type & 2) != 0) {
            if (this.extensionListener == null) {
                this.extensionListener = this;
                this.context.addBundleListener(this.extensionListener);
            }
            return;
        }
        File[] files = this.getExtensionFiles(bundleData);
        if (files == null) {
            return;
        }
        int i2 = 0;
        while (i2 < files.length) {
            if (files[i2] != null) {
                try {
                    BaseStorage.callAddURLMethod(addToLoader, addToMethod, AdaptorUtil.encodeFileURL(files[i2]));
                }
                catch (InvocationTargetException e) {
                    this.adaptor.getEventPublisher().publishFrameworkEvent(2, bundleData.getBundle(), e);
                }
                catch (MalformedURLException e) {
                    this.adaptor.getEventPublisher().publishFrameworkEvent(2, bundleData.getBundle(), e);
                }
            }
            ++i2;
        }
        try {
            addToLoader.loadClass("thisIsNotAClass");
        }
        catch (ClassNotFoundException classNotFoundException) {}
    }

    protected String[] getConfiguredExtensions() {
        if (this.configuredExtensions != null) {
            return this.configuredExtensions;
        }
        String prop = FrameworkProperties.getProperty(PROP_FRAMEWORK_EXTENSIONS);
        this.configuredExtensions = prop == null || prop.trim().length() == 0 ? new String[0] : ManifestElement.getArrayFromList(prop);
        return this.configuredExtensions;
    }

    protected void processBootExtension(BundleData bundleData, byte type) throws BundleException {
        throw new BundleException("Boot classpath extensions are not supported.", 1, new UnsupportedOperationException());
    }

    private void initBundleStoreRoot() {
        File configurationLocation = LocationManager.getOSGiConfigurationDir();
        this.bundleStoreRoot = configurationLocation != null ? new File(configurationLocation, "bundles") : new File("bundles");
    }

    public File getBundleStoreRoot() {
        if (this.bundleStoreRoot == null) {
            this.initBundleStoreRoot();
        }
        return this.bundleStoreRoot;
    }

    protected File[] getExtensionFiles(BaseData bundleData) {
        File[] files = null;
        try {
            String[] paths = bundleData.getClassPath();
            if (DevClassPathHelper.inDevelopmentMode()) {
                String[] devPaths = DevClassPathHelper.getDevClassPath(bundleData.getSymbolicName());
                String[] origPaths = paths;
                paths = new String[origPaths.length + devPaths.length];
                System.arraycopy(origPaths, 0, paths, 0, origPaths.length);
                System.arraycopy(devPaths, 0, paths, origPaths.length, devPaths.length);
            }
            ArrayList<File> results = new ArrayList<File>(paths.length);
            int i = 0;
            while (i < paths.length) {
                if (".".equals(paths[i])) {
                    results.add(bundleData.getBundleFile().getBaseFile());
                } else {
                    File result = bundleData.getBundleFile().getFile(paths[i], false);
                    if (result != null) {
                        results.add(result);
                    }
                }
                ++i;
            }
            return results.toArray(new File[results.size()]);
        }
        catch (BundleException e) {
            this.adaptor.getEventPublisher().publishFrameworkEvent(2, bundleData.getBundle(), e);
            return files;
        }
    }

    void requestSave() {
        if (this.stateSaver == null) {
            return;
        }
        this.stateSaver.requestSave();
    }

    public void updateState(BaseData bundleData, int type) throws BundleException {
        if (this.stateManager == null) {
            this.invalidState = true;
            return;
        }
        State systemState = this.stateManager.getSystemState();
        BundleDescription oldDescription = null;
        BundleDescription newDescription = null;
        switch (type) {
            case 1: 
            case 8: {
                if (type == 8) {
                    oldDescription = systemState.getBundle(bundleData.getBundleID());
                }
                newDescription = this.stateManager.getFactory().createBundleDescription(systemState, bundleData.getManifest(), bundleData.getLocation(), bundleData.getBundleID());
                newDescription.setUserObject(bundleData);
                if (oldDescription == null) {
                    systemState.addBundle(newDescription);
                    break;
                }
                systemState.updateBundle(newDescription);
                break;
            }
            case 16: {
                systemState.removeBundle(bundleData.getBundleID());
            }
        }
        if (newDescription != null) {
            this.validateNativeCodePaths(newDescription, bundleData);
        }
    }

    private void validateNativeCodePaths(BundleDescription newDescription, BaseData data) {
        NativeCodeSpecification nativeCode = newDescription.getNativeCodeSpecification();
        if (nativeCode == null) {
            return;
        }
        NativeCodeDescription[] nativeCodeDescs = nativeCode.getPossibleSuppliers();
        int i = 0;
        while (i < nativeCodeDescs.length) {
            BaseStorageHook storageHook = (BaseStorageHook)data.getStorageHook(BaseStorageHook.KEY);
            if (storageHook != null) {
                try {
                    storageHook.validateNativePaths(nativeCodeDescs[i].getNativePaths());
                }
                catch (BundleException bundleException) {
                    this.stateManager.getSystemState().setNativePathsInvalid(nativeCodeDescs[i], true);
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public long getNextBundleId() {
        Object object = this.nextIdMonitor;
        synchronized (object) {
            return this.nextId++;
        }
    }

    @Override
    public void bundleChanged(BundleEvent event) {
        if (event.getType() != 32) {
            return;
        }
        BaseData data = (BaseData)((AbstractBundle)event.getBundle()).getBundleData();
        try {
            if ((data.getType() & 2) != 0) {
                this.processFrameworkExtension(data, (byte)1);
            } else if ((data.getType() & 4) != 0) {
                this.processBootExtension(data, (byte)1);
            } else if ((data.getType() & 0x10) != 0) {
                this.processExtExtension(data, (byte)1);
            }
        }
        catch (BundleException bundleException) {}
    }

    public String copyToTempLibrary(BaseData data, String absolutePath) throws IOException {
        File storageRoot = this.getBundleStoreRoot();
        File libTempDir = new File(storageRoot, LIB_TEMP);
        File realLib = new File(absolutePath);
        String libName = realLib.getName();
        File bundleTempDir = null;
        File libTempFile = null;
        Long bundleID = new Long(data.getBundleID());
        int i = 0;
        while (i < Integer.MAX_VALUE) {
            bundleTempDir = new File(libTempDir, new StringBuffer(String.valueOf(bundleID.toString())).append("_").append(new Integer(i).toString()).toString());
            libTempFile = new File(bundleTempDir, libName);
            if (!bundleTempDir.exists() || !libTempFile.exists()) break;
            ++i;
        }
        if (!bundleTempDir.exists()) {
            bundleTempDir.mkdirs();
            bundleTempDir.deleteOnExit();
            File deleteFlag = new File(libTempDir, DELETE_FLAG);
            if (!deleteFlag.exists()) {
                try {
                    FileOutputStream out = new FileOutputStream(deleteFlag);
                    out.close();
                }
                catch (IOException iOException) {}
            }
        }
        FileInputStream in = new FileInputStream(realLib);
        AdaptorUtil.readFile(in, libTempFile);
        BundleFile.setPermissions(libTempFile);
        libTempFile.deleteOnExit();
        return libTempFile.getAbsolutePath();
    }

    private class StateSaver
    implements Runnable {
        private final long delay_interval;
        private final long max_total_delay_interval;
        private boolean shutdown = false;
        private long lastSaveTime = 0L;
        private Thread runningThread = null;
        private Thread shutdownHook = null;

        StateSaver() {
            String prop = FrameworkProperties.getProperty("eclipse.stateSaveDelayInterval");
            long delayValue = 30000L;
            long maxDelayValue = 1800000L;
            if (prop != null) {
                try {
                    long val = Long.parseLong(prop);
                    if (val >= 1000L && val <= 1800000L) {
                        delayValue = val;
                        maxDelayValue = val * 60L;
                    } else if (val == 0L) {
                        delayValue = 0L;
                        maxDelayValue = 0L;
                    }
                }
                catch (NumberFormatException numberFormatException) {}
            }
            this.delay_interval = delayValue;
            this.max_total_delay_interval = maxDelayValue;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         * Unable to fully structure code
         */
        public void run() {
            var2_2 = systemState = BaseStorage.this.adaptor.getState();
            synchronized (var2_2) {
                firstSaveTime = this.lastSaveTime;
                curSaveTime = 0L;
                do lbl-1000:
                // 3 sources

                {
                    block9: {
                        block8: {
                            block10: {
                                if (System.currentTimeMillis() - firstSaveTime <= this.max_total_delay_interval) break block10;
                                curSaveTime = this.lastSaveTime;
                                break block9;
                            }
                            delayTime = Math.min(this.delay_interval, this.lastSaveTime - curSaveTime);
                            curSaveTime = this.lastSaveTime;
                            try {
                                if (this.shutdown) break block8;
                                systemState.wait(delayTime);
                            }
                            catch (InterruptedException v0) {
                                curSaveTime = this.lastSaveTime;
                                break block9;
                            }
                        }
                        if (!this.shutdown && curSaveTime < this.lastSaveTime) ** GOTO lbl-1000
                    }
                    BaseStorage.this.saveAllData(false);
                } while (!this.shutdown && curSaveTime < this.lastSaveTime);
                this.runningThread = null;
                try {
                    Runtime.getRuntime().removeShutdownHook(this.shutdownHook);
                }
                catch (IllegalStateException v1) {}
                this.shutdownHook = null;
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void shutdown() {
            block8: {
                State systemState = BaseStorage.this.adaptor.getState();
                Thread joinWith = null;
                State state = systemState;
                synchronized (state) {
                    this.shutdown = true;
                    joinWith = this.runningThread;
                    systemState.notifyAll();
                }
                try {
                    if (joinWith != null) {
                        if (Debug.DEBUG_GENERAL) {
                            Debug.println("About to join saving thread");
                        }
                        joinWith.join();
                        if (Debug.DEBUG_GENERAL) {
                            Debug.println("Joined with saving thread");
                        }
                    }
                }
                catch (InterruptedException ie) {
                    if (!Debug.DEBUG_GENERAL) break block8;
                    Debug.println("Error shutdowning StateSaver: " + ie.getMessage());
                    Debug.printStackTrace(ie);
                }
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void requestSave() {
            State systemState;
            State state = systemState = BaseStorage.this.adaptor.getState();
            synchronized (state) {
                if (this.shutdown) {
                    return;
                }
                if (this.delay_interval == 0L) {
                    BaseStorage.this.saveAllData(false);
                    return;
                }
                this.lastSaveTime = System.currentTimeMillis();
                if (this.runningThread == null) {
                    this.shutdownHook = new Thread(new Runnable(){

                        public void run() {
                            StateSaver.this.shutdown();
                        }
                    });
                    this.runningThread = new Thread((Runnable)this, "State Saver");
                    this.runningThread.start();
                    Runtime.getRuntime().addShutdownHook(this.shutdownHook);
                }
            }
        }
    }
}

