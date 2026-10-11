/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLConnection;
import java.util.Dictionary;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.FilePath;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.InvalidVersion;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseStorageHook
implements StorageHook,
AdaptorHook {
    public static final String KEY;
    public static final int HASHCODE;
    public static final int DEL_BUNDLE_STORE = 1;
    public static final int DEL_GENERATION = 2;
    private static final int STORAGE_VERSION = 1;
    public static final String EXTERNAL_LIB_PREFIX = "external:";
    public static final String VARIABLE_DELIM_STRING = "$";
    public static final char VARIABLE_DELIM_CHAR = '$';
    public static String COMPOSITE_HEADER;
    public static String COMPOSITE_BUNDLE;
    public static String SURROGATE_BUNDLE;
    private String fileName;
    private String[] nativePaths;
    private int generation = 1;
    private boolean reference;
    private BaseData bundleData;
    private BaseStorage storage;
    private File bundleStore;
    private File dataStore;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.baseadaptor.BaseStorageHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = clazz.getName();
        HASHCODE = KEY.hashCode();
        COMPOSITE_HEADER = "Equinox-CompositeBundle";
        COMPOSITE_BUNDLE = "composite";
        SURROGATE_BUNDLE = "surrogate";
    }

    public BaseStorageHook(BaseStorage storage) {
        this.storage = storage;
    }

    @Override
    public int getStorageVersion() {
        return 1;
    }

    @Override
    public StorageHook create(BaseData bundledata) throws BundleException {
        BaseStorageHook storageHook = new BaseStorageHook(this.storage);
        storageHook.bundleData = bundledata;
        return storageHook;
    }

    @Override
    public void initialize(Dictionary<String, String> manifest) throws BundleException {
        BaseStorageHook.loadManifest(this.bundleData, manifest);
    }

    static void loadManifest(BaseData target, Dictionary<String, String> manifest) throws BundleException {
        try {
            target.setVersion(Version.parseVersion(manifest.get("Bundle-Version")));
        }
        catch (IllegalArgumentException illegalArgumentException) {
            target.setVersion(new InvalidVersion(manifest.get("Bundle-Version")));
        }
        ManifestElement[] bsnHeader = ManifestElement.parseHeader("Bundle-SymbolicName", manifest.get("Bundle-SymbolicName"));
        int bundleType = 0;
        if (bsnHeader != null) {
            target.setSymbolicName(bsnHeader[0].getValue());
            String singleton = bsnHeader[0].getDirective("singleton");
            if (singleton == null) {
                singleton = bsnHeader[0].getAttribute("singleton");
            }
            if ("true".equals(singleton)) {
                bundleType |= 8;
            }
        }
        String classpath = manifest.get("Bundle-ClassPath");
        ManifestElement.parseHeader("Bundle-ClassPath", classpath);
        target.setClassPathString(classpath);
        target.setActivator(manifest.get("Bundle-Activator"));
        String host = manifest.get("Fragment-Host");
        if (host != null) {
            bundleType |= 1;
            ManifestElement[] hostElement = ManifestElement.parseHeader("Fragment-Host", host);
            if (Constants.getInternalSymbolicName().equals(hostElement[0].getValue()) || "system.bundle".equals(hostElement[0].getValue())) {
                String extensionType = hostElement[0].getDirective("extension");
                if (extensionType == null || extensionType.equals("framework")) {
                    bundleType |= 2;
                } else if (extensionType.equals("bootclasspath")) {
                    bundleType |= 4;
                } else if (extensionType.equals("extclasspath")) {
                    bundleType |= 0x10;
                }
            }
        } else {
            String composite = manifest.get(COMPOSITE_HEADER);
            if (composite != null) {
                bundleType = COMPOSITE_BUNDLE.equals(composite) ? (bundleType |= 0x20) : (bundleType |= 0x40);
            }
        }
        target.setType(bundleType);
        target.setExecutionEnvironment(manifest.get("Bundle-RequiredExecutionEnvironment"));
        target.setDynamicImports(manifest.get("DynamicImport-Package"));
    }

    @Override
    public StorageHook load(BaseData target, DataInputStream in) throws IOException {
        target.setLocation(AdaptorUtil.readString(in, false));
        target.setSymbolicName(AdaptorUtil.readString(in, false));
        target.setVersion(AdaptorUtil.loadVersion(in));
        target.setActivator(AdaptorUtil.readString(in, false));
        target.setClassPathString(AdaptorUtil.readString(in, false));
        target.setExecutionEnvironment(AdaptorUtil.readString(in, false));
        target.setDynamicImports(AdaptorUtil.readString(in, false));
        target.setStartLevel(in.readInt());
        target.setStatus(in.readInt());
        target.setType(in.readInt());
        target.setLastModified(in.readLong());
        target.setDirty(false);
        BaseStorageHook storageHook = new BaseStorageHook(this.storage);
        storageHook.bundleData = target;
        storageHook.generation = in.readInt();
        storageHook.reference = in.readBoolean();
        storageHook.setFileName(this.getAbsolute(storageHook.reference, AdaptorUtil.readString(in, false)));
        int nativePathCount = in.readInt();
        storageHook.nativePaths = nativePathCount > 0 ? new String[nativePathCount] : null;
        int i = 0;
        while (i < nativePathCount) {
            storageHook.nativePaths[i] = in.readUTF();
            ++i;
        }
        return storageHook;
    }

    private String getAbsolute(boolean isReference, String path) {
        if (!isReference) {
            return path;
        }
        File storedPath = new File(path);
        if (!storedPath.isAbsolute()) {
            return new FilePath(new StringBuffer(String.valueOf(this.storage.getInstallPath())).append(path).toString()).toString();
        }
        return path;
    }

    @Override
    public void save(DataOutputStream out) throws IOException {
        if (this.bundleData == null) {
            throw new IllegalStateException();
        }
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getLocation());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getSymbolicName());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getVersion().toString());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getActivator());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getClassPathString());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getExecutionEnvironment());
        AdaptorUtil.writeStringOrNull(out, this.bundleData.getDynamicImports());
        StorageHook[] hooks = this.bundleData.getStorageHooks();
        boolean forgetStartLevel = false;
        int i = 0;
        while (i < hooks.length && !forgetStartLevel) {
            forgetStartLevel = hooks[i].forgetStartLevelChange(this.bundleData.getStartLevel());
            ++i;
        }
        out.writeInt(!forgetStartLevel ? this.bundleData.getStartLevel() : 1);
        boolean forgetStatus = false;
        int i2 = 0;
        while (i2 < hooks.length && !forgetStatus) {
            forgetStatus = hooks[i2].forgetStatusChange(this.bundleData.getStatus());
            ++i2;
        }
        out.writeInt(!forgetStatus ? this.bundleData.getStatus() : 0xFFFFFFFE & this.bundleData.getStatus());
        out.writeInt(this.bundleData.getType());
        out.writeLong(this.bundleData.getLastModified());
        out.writeInt(this.getGeneration());
        out.writeBoolean(this.isReference());
        String storedFileName = this.isReference() ? new FilePath(this.storage.getInstallPath()).makeRelative(new FilePath(this.getFileName())) : this.getFileName();
        AdaptorUtil.writeStringOrNull(out, storedFileName);
        if (this.nativePaths == null) {
            out.writeInt(0);
        } else {
            out.writeInt(this.nativePaths.length);
            int i3 = 0;
            while (i3 < this.nativePaths.length) {
                out.writeUTF(this.nativePaths[i3]);
                ++i3;
            }
        }
    }

    @Override
    public int getKeyHashCode() {
        return HASHCODE;
    }

    @Override
    public boolean compare(KeyedElement other) {
        return other.getKey() == KEY;
    }

    @Override
    public Object getKey() {
        return KEY;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getGeneration() {
        return this.generation;
    }

    public String[] getNativePaths() {
        return this.nativePaths;
    }

    public void installNativePaths(String[] installPaths) throws BundleException {
        this.validateNativePaths(installPaths);
        this.nativePaths = installPaths;
    }

    public void validateNativePaths(String[] paths) throws BundleException {
        int i = 0;
        while (i < paths.length) {
            if (paths[i].startsWith(EXTERNAL_LIB_PREFIX)) {
                String path = BaseStorageHook.substituteVars(paths[i].substring(EXTERNAL_LIB_PREFIX.length()));
                File nativeFile = new File(path);
                if (!nativeFile.exists()) {
                    throw new BundleException(NLS.bind(AdaptorMsg.BUNDLE_NATIVECODE_EXCEPTION, nativeFile.getAbsolutePath()), 8);
                }
            } else {
                BundleEntry nativeEntry = this.bundleData.getBundleFile().getEntry(paths[i]);
                if (nativeEntry == null) {
                    throw new BundleException(NLS.bind(AdaptorMsg.BUNDLE_NATIVECODE_EXCEPTION, paths[i]), 8);
                }
            }
            ++i;
        }
    }

    public boolean isReference() {
        return this.reference;
    }

    public File getBundleStore() {
        if (this.bundleStore == null) {
            this.bundleStore = new File(this.storage.getBundleStoreRoot(), String.valueOf(this.bundleData.getBundleID()));
        }
        return this.bundleStore;
    }

    public File getDataFile(String path) {
        if (this.dataStore == null) {
            this.dataStore = new File(this.getBundleStore(), "data");
        }
        if (path != null && !this.dataStore.exists() && (this.storage.isReadOnly() || !this.dataStore.mkdirs()) && Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("Unable to create bundle data directory: ").append(this.dataStore.getPath()).toString());
        }
        return path == null ? this.dataStore : new File(this.dataStore, path);
    }

    void delete(boolean postpone, int type) throws IOException {
        File delete = null;
        switch (type) {
            case 2: {
                delete = this.getGenerationDir();
                break;
            }
            case 1: {
                delete = this.getBundleStore();
            }
        }
        if (delete != null && delete.exists() && (postpone || !AdaptorUtil.rm(delete))) {
            FileOutputStream out = new FileOutputStream(new File(delete, ".delete"));
            out.close();
        }
    }

    File getGenerationDir() {
        return new File(this.getBundleStore(), String.valueOf(this.getGeneration()));
    }

    File getParentGenerationDir() {
        Location parentConfiguration = null;
        Location currentConfiguration = LocationManager.getConfigurationLocation();
        if (currentConfiguration != null && (parentConfiguration = currentConfiguration.getParentLocation()) != null) {
            return new File(parentConfiguration.getURL().getFile(), new StringBuffer("org.eclipse.osgi/bundles/").append(this.bundleData.getBundleID()).append('/').append(this.getGeneration()).toString());
        }
        return null;
    }

    File createGenerationDir() {
        File generationDir = this.getGenerationDir();
        if (!generationDir.exists() && (this.storage.isReadOnly() || !generationDir.mkdirs()) && Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("Unable to create bundle generation directory: ").append(generationDir.getPath()).toString());
        }
        return generationDir;
    }

    public void setReference(boolean reference) {
        this.reference = reference;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
        this.bundleData.setFileName(fileName);
    }

    @Override
    public void copy(StorageHook storageHook) {
        if (!(storageHook instanceof BaseStorageHook)) {
            throw new IllegalArgumentException();
        }
        BaseStorageHook hook = (BaseStorageHook)storageHook;
        this.bundleStore = hook.bundleStore;
        this.dataStore = hook.dataStore;
        this.generation = hook.generation + 1;
    }

    @Override
    public void validate() throws IllegalArgumentException {
    }

    @Override
    public Dictionary<String, String> getManifest(boolean firstLoad) throws BundleException {
        return null;
    }

    @Override
    public boolean forgetStatusChange(int status) {
        return false;
    }

    @Override
    public boolean forgetStartLevelChange(int startlevel) {
        return false;
    }

    @Override
    public void initialize(BaseAdaptor adaptor) {
    }

    @Override
    public void frameworkStart(BundleContext context) throws BundleException {
    }

    @Override
    public void frameworkStop(BundleContext context) throws BundleException {
    }

    @Override
    public void frameworkStopping(BundleContext context) {
    }

    @Override
    public void addProperties(Properties properties) {
    }

    @Override
    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        if (location.startsWith("initial@")) {
            location = location.substring(8);
            return new URL(location).openConnection();
        }
        Bundle[] bundles = this.storage.getAdaptor().getContext().getBundles();
        AbstractBundle bundle = null;
        int i = 0;
        while (i < bundles.length && bundle == null) {
            if (location.equals(bundles[i].getLocation())) {
                bundle = (AbstractBundle)bundles[i];
            }
            ++i;
        }
        if (bundle == null) {
            return null;
        }
        BaseData data = (BaseData)bundle.getBundleData();
        BaseStorageHook hook = (BaseStorageHook)data.getStorageHook(KEY);
        return hook.isReference() ? new URL(new StringBuffer("reference:file:").append(hook.getFileName()).toString()).openConnection() : null;
    }

    @Override
    public void handleRuntimeError(Throwable error) {
    }

    @Override
    public FrameworkLog createFrameworkLog() {
        return null;
    }

    public BaseStorage getStorage() {
        return this.storage;
    }

    public static String substituteVars(String path) {
        StringBuffer buf = new StringBuffer(path.length());
        StringTokenizer st = new StringTokenizer(path, VARIABLE_DELIM_STRING, true);
        boolean varStarted = false;
        String var = null;
        while (st.hasMoreElements()) {
            String tok = st.nextToken();
            if (VARIABLE_DELIM_STRING.equals(tok)) {
                if (!varStarted) {
                    varStarted = true;
                    var = "";
                    continue;
                }
                String prop = null;
                if (var != null && var.length() > 0) {
                    prop = FrameworkProperties.getProperty(var);
                }
                if (prop == null) {
                    try {
                        Class<?> clazz = class$1;
                        if (clazz == null) {
                            try {
                                clazz = Class.forName("java.lang.System");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        Class[] classArray = new Class[1];
                        Class<?> clazz2 = class$2;
                        if (clazz2 == null) {
                            try {
                                clazz2 = Class.forName("java.lang.String");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        classArray[0] = clazz2;
                        Method getenv = clazz.getMethod("getenv", classArray);
                        prop = (String)getenv.invoke(null, var);
                    }
                    catch (Throwable throwable) {}
                }
                if (prop != null) {
                    buf.append(prop);
                } else {
                    buf.append(var == null ? "" : var);
                }
                varStarted = false;
                var = null;
                continue;
            }
            if (!varStarted) {
                buf.append(tok);
                continue;
            }
            var = tok;
        }
        if (var != null) {
            buf.append('$').append(var);
        }
        return buf.toString();
    }
}

