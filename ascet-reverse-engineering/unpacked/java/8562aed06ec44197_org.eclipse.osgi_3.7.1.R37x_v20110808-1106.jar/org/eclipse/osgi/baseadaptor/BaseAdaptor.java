/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Properties;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.EventPublisher;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.internal.baseadaptor.SystemBundleData;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Filter;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.InvalidSyntaxException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseAdaptor
implements FrameworkAdaptor {
    private static final String PROP_PARENT_CLASSLOADER = "osgi.parentClassloader";
    private static final String PARENT_CLASSLOADER_APP = "app";
    private static final String PARENT_CLASSLOADER_EXT = "ext";
    private static final String PARENT_CLASSLOADER_BOOT = "boot";
    private static final String PARENT_CLASSLOADER_FWK = "fwk";
    private static ClassLoader bundleClassLoaderParent;
    private Framework eventPublisher;
    private boolean stopping;
    private HookRegistry hookRegistry;
    private FrameworkLog log;
    private BundleContext context;
    private BaseStorage storage;
    private BundleWatcher bundleWatcher;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        ClassLoader appCL;
        String type = FrameworkProperties.getProperty("org.osgi.framework.bundle.parent");
        if (type != null) {
            if ("framework".equals(type)) {
                type = PARENT_CLASSLOADER_FWK;
            }
        } else {
            type = FrameworkProperties.getProperty(PROP_PARENT_CLASSLOADER, PARENT_CLASSLOADER_BOOT);
        }
        if (PARENT_CLASSLOADER_FWK.equalsIgnoreCase(type)) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.adaptor.FrameworkAdaptor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            bundleClassLoaderParent = clazz.getClassLoader();
        } else if (PARENT_CLASSLOADER_APP.equalsIgnoreCase(type)) {
            bundleClassLoaderParent = ClassLoader.getSystemClassLoader();
        } else if (PARENT_CLASSLOADER_EXT.equalsIgnoreCase(type) && (appCL = ClassLoader.getSystemClassLoader()) != null) {
            bundleClassLoaderParent = appCL.getParent();
        }
        if (bundleClassLoaderParent == null) {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            bundleClassLoaderParent = new ClassLoader(clazz.getClassLoader()){};
        }
    }

    public BaseAdaptor(String[] args) {
        if (LocationManager.getConfigurationLocation() == null) {
            LocationManager.initializeLocations();
        }
        this.hookRegistry = new HookRegistry(this);
        FrameworkLogEntry[] errors = this.hookRegistry.initialize();
        if (errors.length > 0) {
            int i = 0;
            while (i < errors.length) {
                this.getFrameworkLog().log(errors[i]);
                ++i;
            }
        }
        this.storage = this.getStorage();
    }

    @Override
    public void initialize(EventPublisher publisher) {
        this.eventPublisher = (Framework)publisher;
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].initialize(this);
            ++i;
        }
    }

    @Override
    public void initializeStorage() throws IOException {
        this.storage.initialize(this);
    }

    @Override
    public void compactStorage() throws IOException {
        this.storage.compact();
    }

    @Override
    public Properties getProperties() {
        Properties props;
        block13: {
            props = new Properties();
            String resource = FrameworkProperties.getProperty("osgi.framework.properties", "osgi.properties");
            try {
                InputStream in = null;
                File file = new File(resource);
                if (file.exists()) {
                    in = new FileInputStream(file);
                }
                if (in == null) {
                    in = this.getClass().getResourceAsStream(resource);
                }
                if (in != null) {
                    try {
                        props.load(new BufferedInputStream(in));
                    }
                    catch (Throwable throwable) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                        throw throwable;
                    }
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                    break block13;
                }
                if (Debug.DEBUG_GENERAL) {
                    Debug.println(new StringBuffer("Skipping osgi.properties: ").append(resource).toString());
                }
            }
            catch (IOException e) {
                if (!Debug.DEBUG_GENERAL) break block13;
                Debug.println(new StringBuffer("Unable to load osgi.properties: ").append(e.getMessage()).toString());
            }
        }
        this.storage.addProperties(props);
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].addProperties(props);
            ++i;
        }
        return props;
    }

    @Override
    public BundleData[] getInstalledBundles() {
        return this.storage.getInstalledBundles();
    }

    @Override
    public URLConnection mapLocationToURLConnection(String location) throws BundleException {
        try {
            URLConnection result = null;
            AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
            int i = 0;
            while (i < adaptorHooks.length) {
                result = adaptorHooks[i].mapLocationToURLConnection(location);
                if (result != null) {
                    return result;
                }
                ++i;
            }
            return new URL(location).openConnection();
        }
        catch (IOException e) {
            throw new BundleException(NLS.bind(AdaptorMsg.ADAPTOR_URL_CREATE_EXCEPTION, location), e);
        }
    }

    @Override
    public BundleOperation installBundle(String location, URLConnection source) {
        return this.storage.installBundle(location, source);
    }

    @Override
    public BundleOperation updateBundle(BundleData bundledata, URLConnection source) {
        return this.storage.updateBundle((BaseData)bundledata, source);
    }

    @Override
    public BundleOperation uninstallBundle(BundleData bundledata) {
        return this.storage.uninstallBundle((BaseData)bundledata);
    }

    @Override
    public long getTotalFreeSpace() throws IOException {
        return this.storage.getFreeSpace();
    }

    @Override
    public PermissionStorage getPermissionStorage() throws IOException {
        return this.storage.getPermissionStorage();
    }

    @Override
    public void frameworkStart(BundleContext fwContext) throws BundleException {
        this.context = fwContext;
        this.stopping = false;
        this.storage.frameworkStart(fwContext);
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].frameworkStart(fwContext);
            ++i;
        }
    }

    @Override
    public void frameworkStop(BundleContext fwContext) throws BundleException {
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].frameworkStop(fwContext);
            ++i;
        }
        this.storage.frameworkStop(fwContext);
    }

    @Override
    public void frameworkStopping(BundleContext fwContext) {
        this.stopping = true;
        this.storage.frameworkStopping(fwContext);
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].frameworkStopping(fwContext);
            ++i;
        }
    }

    @Override
    public int getInitialBundleStartLevel() {
        return this.storage.getInitialBundleStartLevel();
    }

    @Override
    public void setInitialBundleStartLevel(int value) {
        this.storage.setInitialBundleStartLevel(value);
    }

    @Override
    public FrameworkLog getFrameworkLog() {
        if (this.log != null) {
            return this.log;
        }
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            this.log = adaptorHooks[i].createFrameworkLog();
            if (this.log != null) {
                return this.log;
            }
            ++i;
        }
        this.log = new FrameworkLog(){

            public void log(FrameworkEvent frameworkEvent) {
                this.log(new FrameworkLogEntry(frameworkEvent.getBundle().getSymbolicName() == null ? frameworkEvent.getBundle().getLocation() : frameworkEvent.getBundle().getSymbolicName(), 4, 0, "FrameworkEvent.ERROR", 0, frameworkEvent.getThrowable(), null));
            }

            public void log(FrameworkLogEntry logEntry) {
                System.err.print(String.valueOf(logEntry.getEntry()) + " ");
                System.err.println(logEntry.getMessage());
                if (logEntry.getThrowable() != null) {
                    logEntry.getThrowable().printStackTrace(System.err);
                }
            }

            public void setWriter(Writer newWriter, boolean append) {
            }

            public void setFile(File newFile, boolean append) throws IOException {
            }

            public File getFile() {
                return null;
            }

            public void setConsoleLog(boolean consoleLog) {
            }

            public void close() {
            }
        };
        return this.log;
    }

    @Override
    public BundleData createSystemBundleData() throws BundleException {
        return new SystemBundleData(this);
    }

    @Override
    public BundleWatcher getBundleWatcher() {
        if (this.bundleWatcher != null) {
            return this.bundleWatcher;
        }
        final BundleWatcher[] watchers = this.hookRegistry.getWatchers();
        if (watchers.length == 0) {
            return null;
        }
        this.bundleWatcher = new BundleWatcher(){

            public void watchBundle(Bundle bundle, int type) {
                int i = 0;
                while (i < watchers.length) {
                    watchers[i].watchBundle(bundle, type);
                    ++i;
                }
            }
        };
        return this.bundleWatcher;
    }

    @Override
    public PlatformAdmin getPlatformAdmin() {
        return this.storage.getStateManager();
    }

    @Override
    public State getState() {
        return this.storage.getStateManager().getSystemState();
    }

    @Override
    public ClassLoader getBundleClassLoaderParent() {
        ClassLoader result = null;
        ClassLoadingHook[] cpManagerHooks = this.getHookRegistry().getClassLoadingHooks();
        int i = 0;
        while (i < cpManagerHooks.length) {
            result = cpManagerHooks[i].getBundleClassLoaderParent();
            if (result != null) {
                return result;
            }
            ++i;
        }
        return bundleClassLoaderParent;
    }

    @Override
    public void handleRuntimeError(Throwable error) {
        AdaptorHook[] adaptorHooks = this.getHookRegistry().getAdaptorHooks();
        int i = 0;
        while (i < adaptorHooks.length) {
            adaptorHooks[i].handleRuntimeError(error);
            ++i;
        }
    }

    public boolean isStopping() {
        return this.stopping;
    }

    public EventPublisher getEventPublisher() {
        return this.eventPublisher;
    }

    public HookRegistry getHookRegistry() {
        return this.hookRegistry;
    }

    public BundleContext getContext() {
        return this.context;
    }

    public Bundle getBundle(long id) {
        return this.eventPublisher.getBundle(id);
    }

    public BundleFile createBundleFile(Object content, BaseData data) throws IOException {
        return this.storage.createBundleFile(content, data);
    }

    public boolean isReadOnly() {
        return this.storage.isReadOnly();
    }

    protected BaseStorage getStorage() {
        if (this.storage != null) {
            return this.storage;
        }
        StorageHook[] hooks = this.hookRegistry.getStorageHooks();
        int i = 0;
        while (i < hooks.length && this.storage == null) {
            if (hooks[i] instanceof BaseStorageHook) {
                this.storage = ((BaseStorageHook)hooks[i]).getStorage();
            }
            ++i;
        }
        return this.storage;
    }

    @Override
    public Enumeration<URL> findEntries(List<BundleData> datas, String path, String filePattern, int options) {
        ArrayList<BundleFile> bundleFiles = new ArrayList<BundleFile>(datas.size());
        for (BundleData data : datas) {
            bundleFiles.add(((BaseData)data).getBundleFile());
        }
        List<String> pathList = this.listEntryPaths(bundleFiles, path, filePattern, options);
        if (pathList.size() == 0) {
            return null;
        }
        final String[] pathArray = pathList.toArray(new String[pathList.size()]);
        final BundleData[] dataArray = datas.toArray(new BundleData[datas.size()]);
        return new Enumeration<URL>(){
            private int curPathIndex = 0;
            private int curDataIndex = 0;
            private URL nextElement = null;

            @Override
            public boolean hasMoreElements() {
                if (this.nextElement != null) {
                    return true;
                }
                this.getNextElement();
                return this.nextElement != null;
            }

            @Override
            public URL nextElement() {
                if (!this.hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                URL result = this.nextElement;
                this.getNextElement();
                return result;
            }

            /*
             * Unable to fully structure code
             */
            private void getNextElement() {
                this.nextElement = null;
                if (this.curPathIndex < pathArray.length) ** GOTO lbl11
                return;
lbl-1000:
                // 1 sources

                {
                    curPath = pathArray[this.curPathIndex];
                    while (this.nextElement == null && this.curDataIndex < dataArray.length) {
                        this.nextElement = dataArray[this.curDataIndex++].getEntry(curPath);
                    }
                    if (this.curDataIndex < dataArray.length) continue;
                    ++this.curPathIndex;
                    this.curDataIndex = 0;
lbl11:
                    // 3 sources

                    ** while (this.nextElement == null && this.curPathIndex < pathArray.length)
                }
lbl12:
                // 1 sources

            }
        };
    }

    public List<String> listEntryPaths(List<BundleFile> bundleFiles, String path, String filePattern, int options) {
        ArrayList<String> pathList = new ArrayList<String>();
        FilterImpl patternFilter = null;
        Hashtable patternProps = null;
        if (filePattern != null) {
            if ((options & 1) == 0 && filePattern.indexOf(42) == -1 && filePattern.indexOf(92) == -1) {
                path = path.length() == 0 ? filePattern : new StringBuffer(String.valueOf(path)).append(path.charAt(path.length() - 1) == '/' ? filePattern : new StringBuffer(String.valueOf('/')).append(filePattern).toString()).toString();
                for (BundleFile bundleFile : bundleFiles) {
                    if (bundleFile.getEntry(path) == null || pathList.contains(path)) continue;
                    pathList.add(path);
                }
                return pathList;
            }
            try {
                patternFilter = FilterImpl.newInstance(new StringBuffer("(filename=").append(this.sanitizeFilterInput(filePattern)).append(")").toString());
                patternProps = new Hashtable(2);
            }
            catch (InvalidSyntaxException e) {
                Bundle b = this.context == null ? null : this.context.getBundle();
                this.eventPublisher.publishFrameworkEvent(2, b, e);
                return pathList;
            }
        }
        for (BundleFile bundleFile : bundleFiles) {
            this.listEntryPaths(bundleFile, path, patternFilter, patternProps, options, pathList);
        }
        return pathList;
    }

    private String sanitizeFilterInput(String filePattern) throws InvalidSyntaxException {
        StringBuffer buffer = null;
        boolean foundEscape = false;
        int i = 0;
        while (i < filePattern.length()) {
            char c = filePattern.charAt(i);
            switch (c) {
                case '\\': {
                    boolean bl = foundEscape = !foundEscape;
                    if (buffer == null) break;
                    buffer.append(c);
                    break;
                }
                case '(': 
                case ')': {
                    if (!foundEscape) {
                        if (buffer == null) {
                            buffer = new StringBuffer(filePattern.length() + 16);
                            buffer.append(filePattern.substring(0, i));
                        }
                        buffer.append('\\');
                    } else {
                        foundEscape = false;
                    }
                    if (buffer == null) break;
                    buffer.append(c);
                    break;
                }
                default: {
                    foundEscape = false;
                    if (buffer == null) break;
                    buffer.append(c);
                }
            }
            ++i;
        }
        if (foundEscape) {
            throw new InvalidSyntaxException("Trailing escape characters must be escaped.", filePattern);
        }
        return buffer == null ? filePattern : buffer.toString();
    }

    /*
     * Unable to fully structure code
     */
    private List<String> listEntryPaths(BundleFile bundleFile, String path, Filter patternFilter, Hashtable<String, String> patternProps, int options, List<String> pathList) {
        if (pathList == null) {
            pathList = new ArrayList<String>();
        }
        if ((entryPaths = bundleFile.getEntryPaths(path)) != null) ** GOTO lbl27
        return pathList;
lbl-1000:
        // 1 sources

        {
            entry = entryPaths.nextElement();
            lastSlash = entry.lastIndexOf(47);
            if (patternProps != null) {
                secondToLastSlash = entry.lastIndexOf(47, lastSlash - 1);
                fileEnd = entry.length();
                if (lastSlash < 0) {
                    fileStart = 0;
                } else if (lastSlash != entry.length() - 1) {
                    fileStart = lastSlash + 1;
                } else {
                    fileEnd = lastSlash;
                    fileStart = secondToLastSlash < 0 ? 0 : secondToLastSlash + 1;
                }
                fileName = entry.substring(fileStart, fileEnd);
                patternProps.put("filename", fileName);
            }
            if (!pathList.contains(entry) && (patternFilter == null || patternFilter.matchCase(patternProps))) {
                pathList.add(entry);
            }
            if ((options & 1) == 0 || entry.equals(path) || entry.length() <= 0 || lastSlash != entry.length() - 1) continue;
            this.listEntryPaths(bundleFile, entry, patternFilter, patternProps, options, pathList);
lbl27:
            // 3 sources

            ** while (entryPaths.hasMoreElements())
        }
lbl28:
        // 1 sources

        return pathList;
    }
}

