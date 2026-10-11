/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.ContentHandlerFactory;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandlerFactory;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.AllPermission;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.internal.adaptor.ContextFinder;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegateHook;
import org.eclipse.osgi.framework.adaptor.EventPublisher;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventManager;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.AliasMapper;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.BundleRepository;
import org.eclipse.osgi.framework.internal.core.BundleSource;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.InternalSystemBundle;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.core.PackageAdminImpl;
import org.eclipse.osgi.framework.internal.core.StartLevelManager;
import org.eclipse.osgi.framework.internal.core.UniversalUniqueIdentifier;
import org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.internal.loader.SystemBundleLoader;
import org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.internal.serviceregistry.HookContext;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.internal.serviceregistry.ShrinkableCollection;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleListener;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.framework.Version;
import org.osgi.framework.hooks.bundle.EventHook;
import org.osgi.framework.hooks.bundle.FindHook;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Framework
implements EventPublisher,
Runnable {
    private static final String PROP_CONTEXTCLASSLOADER_PARENT = "osgi.contextClassLoaderParent";
    private static final String CONTEXTCLASSLOADER_PARENT_APP = "app";
    private static final String CONTEXTCLASSLOADER_PARENT_EXT = "ext";
    private static final String CONTEXTCLASSLOADER_PARENT_BOOT = "boot";
    private static final String CONTEXTCLASSLOADER_PARENT_FWK = "fwk";
    public static final String PROP_FRAMEWORK_THREAD = "osgi.framework.activeThreadType";
    public static final String THREAD_NORMAL = "normal";
    public static final String PROP_EQUINOX_SECURITY = "eclipse.security";
    public static final String SECURITY_OSGI = "osgi";
    private static String J2SE = "J2SE-";
    private static String JAVASE = "JavaSE-";
    private static String PROFILE_EXT = ".profile";
    protected FrameworkAdaptor adaptor;
    protected Properties properties;
    protected boolean active;
    private FrameworkEvent[] shutdownEvent;
    protected BundleRepository bundles;
    protected PackageAdminImpl packageAdmin;
    protected SecurityAdmin securityAdmin;
    protected StartLevelManager startLevelManager;
    private ServiceRegistry serviceRegistry;
    private final Map<BundleContextImpl, CopyOnWriteIdentityMap<BundleListener, BundleListener>> allBundleListeners = new HashMap<BundleContextImpl, CopyOnWriteIdentityMap<BundleListener, BundleListener>>();
    protected static final int BUNDLEEVENT = 1;
    private final Map<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> allSyncBundleListeners = new HashMap<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>>();
    protected static final int BUNDLEEVENTSYNC = 2;
    private final Map<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> allFrameworkListeners = new HashMap<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>>();
    protected static final int FRAMEWORKEVENT = 4;
    protected static final int BATCHEVENT_BEGIN = -2147483647;
    protected static final int BATCHEVENT_END = Integer.MIN_VALUE;
    static final String eventHookName;
    static final String findHookName;
    protected EventManager eventManager;
    private Map<String, Thread> installLock;
    protected InternalSystemBundle systemBundle;
    private String[] bootDelegation;
    private String[] bootDelegationStems;
    private boolean bootDelegateAll = false;
    public final boolean contextBootDelegation = "true".equals(FrameworkProperties.getProperty("osgi.context.bootdelegation", "true"));
    public final boolean compatibiltyBootDelegation = "true".equals(FrameworkProperties.getProperty(Constants.OSGI_COMPATIBILITY_BOOTDELEGATION, "true"));
    private final boolean allowDuplicateBSNVersion = "multiple".equals(FrameworkProperties.getProperty("org.osgi.framework.bsnversion"));
    private final boolean allowRefreshDuplicateBSN = Boolean.TRUE.toString().equals(FrameworkProperties.getProperty("equinox.refresh.duplicate.bsn", "true"));
    ClassLoaderDelegateHook[] delegateHooks;
    private volatile boolean forcedRestart = false;
    protected static AliasMapper aliasMapper;
    SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    private final Map<Long, Map<String, AdminPermission>> adminPermissions = new HashMap<Long, Map<String, AdminPermission>>();
    private StreamHandlerFactory streamHandlerFactory;
    private org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory contentHandlerFactory;
    private volatile ServiceTracker<SignedContentFactory, SignedContentFactory> signedContentFactory;
    private volatile ContextFinder contextFinder;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.hooks.bundle.EventHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        eventHookName = clazz.getName();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.framework.hooks.bundle.FindHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        findHookName = clazz2.getName();
        aliasMapper = new AliasMapper();
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.osgi.framework.internal.core.Framework$GetDataFileAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> c = clazz3;
        c.getName();
    }

    public Framework(FrameworkAdaptor adaptor) {
        this.initialize(adaptor);
    }

    protected void initialize(FrameworkAdaptor initAdaptor) {
        BundleData[] bundleDatas;
        if (Profile.STARTUP) {
            Profile.logEnter("Framework.initialze()", null);
        }
        long start = System.currentTimeMillis();
        this.adaptor = initAdaptor;
        this.delegateHooks = initAdaptor instanceof BaseAdaptor ? ((BaseAdaptor)initAdaptor).getHookRegistry().getClassLoaderDelegateHooks() : null;
        this.active = false;
        this.installSecurityManager();
        if (Debug.DEBUG_SECURITY) {
            Debug.println(new StringBuffer("SecurityManager: ").append(System.getSecurityManager()).toString());
            Debug.println(new StringBuffer("ProtectionDomain of Framework.class: \n").append(this.getClass().getProtectionDomain()).toString());
        }
        this.setNLSFrameworkLog();
        this.initializeContextFinder();
        initAdaptor.initialize(this);
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "adapter initialized");
        }
        try {
            initAdaptor.initializeStorage();
        }
        catch (IOException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "adapter storage initialized");
        }
        this.initializeProperties(initAdaptor.getProperties());
        this.packageAdmin = new PackageAdminImpl(this);
        try {
            this.securityAdmin = new SecurityAdmin(null, this, initAdaptor.getPermissionStorage());
        }
        catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage(), e);
        }
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "done init props & new PermissionAdminImpl");
        }
        this.startLevelManager = new StartLevelManager(this);
        this.eventManager = new EventManager("Framework Event Dispatcher");
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "done new EventManager");
        }
        this.serviceRegistry = new ServiceRegistry(this);
        this.installLock = new HashMap<String, Thread>(10);
        this.createSystemBundle();
        this.loadVMProfile();
        this.setBootDelegation();
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "done createSystemBundle");
        }
        this.installURLStreamHandlerFactory(this.systemBundle.context, initAdaptor);
        this.installContentHandlerFactory(this.systemBundle.context, initAdaptor);
        if (Profile.STARTUP) {
            Profile.logTime("Framework.initialze()", "done new URLStream/Content HandlerFactory");
        }
        this.bundles = new BundleRepository((bundleDatas = initAdaptor.getInstalledBundles()) == null ? 10 : bundleDatas.length + 1);
        this.bundles.add(this.systemBundle);
        if (bundleDatas != null) {
            int i = 0;
            while (i < bundleDatas.length) {
                try {
                    AbstractBundle bundle = AbstractBundle.createBundle(bundleDatas[i], this, true);
                    this.bundles.add(bundle);
                }
                catch (BundleException be) {
                    this.publishFrameworkEvent(2, this.systemBundle, be);
                }
                ++i;
            }
        }
        if (Debug.DEBUG_GENERAL) {
            System.out.println(new StringBuffer("Initialize the framework: ").append(System.currentTimeMillis() - start).toString());
        }
        if (Profile.STARTUP) {
            Profile.logExit("Framework.initialize()");
        }
    }

    public FrameworkAdaptor getAdaptor() {
        return this.adaptor;
    }

    public ClassLoaderDelegateHook[] getDelegateHooks() {
        return this.delegateHooks;
    }

    public ServiceRegistry getServiceRegistry() {
        return this.serviceRegistry;
    }

    private void setNLSFrameworkLog() {
        try {
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.osgi.util.NLS");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Field frameworkLogField = clazz.getDeclaredField("frameworkLog");
            frameworkLogField.setAccessible(true);
            frameworkLogField.set(null, this.adaptor.getFrameworkLog());
        }
        catch (Exception e) {
            this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, e.getMessage(), 0, e, null));
        }
    }

    private void createSystemBundle() {
        try {
            this.systemBundle = new InternalSystemBundle(this);
            this.systemBundle.getBundleData().setBundle(this.systemBundle);
        }
        catch (BundleException e) {
            e.printStackTrace();
            throw new RuntimeException(NLS.bind(Msg.OSGI_SYSTEMBUNDLE_CREATE_EXCEPTION, e.getMessage()), e);
        }
    }

    protected void initializeProperties(Properties adaptorProperties) {
        this.properties = FrameworkProperties.getProperties();
        Enumeration<?> enumKeys = adaptorProperties.propertyNames();
        while (enumKeys.hasMoreElements()) {
            String key = (String)enumKeys.nextElement();
            if (this.properties.getProperty(key) != null) continue;
            this.properties.put(key, adaptorProperties.getProperty(key));
        }
        this.properties.put("org.osgi.framework.vendor", "Eclipse");
        this.properties.put("org.osgi.framework.version", "1.3");
        String value = this.properties.getProperty("org.osgi.framework.processor");
        if (value == null && (value = this.properties.getProperty("os.arch")) != null) {
            this.properties.put("org.osgi.framework.processor", aliasMapper.aliasProcessor(value));
        }
        if ((value = this.properties.getProperty("org.osgi.framework.os.name")) == null) {
            value = this.properties.getProperty("os.name");
            try {
                String canonicalValue = (String)aliasMapper.aliasOSName(value);
                if (canonicalValue != null) {
                    value = canonicalValue;
                }
            }
            catch (ClassCastException classCastException) {}
            if (value != null) {
                this.properties.put("org.osgi.framework.os.name", value);
            }
        }
        if ((value = this.properties.getProperty("org.osgi.framework.os.version")) == null && (value = this.properties.getProperty("os.version")) != null) {
            int space = value.indexOf(32);
            if (space > 0) {
                value = value.substring(0, space);
            }
            int major = 0;
            int minor = 0;
            int micro = 0;
            String qualifier = "";
            try {
                StringTokenizer st = new StringTokenizer(value, ".", true);
                major = this.parseVersionInt(st.nextToken());
                if (st.hasMoreTokens()) {
                    st.nextToken();
                    minor = this.parseVersionInt(st.nextToken());
                    if (st.hasMoreTokens()) {
                        st.nextToken();
                        micro = this.parseVersionInt(st.nextToken());
                        if (st.hasMoreTokens()) {
                            st.nextToken();
                            qualifier = st.nextToken();
                        }
                    }
                }
            }
            catch (NoSuchElementException noSuchElementException) {}
            try {
                value = new Version(major, minor, micro, qualifier).toString();
            }
            catch (IllegalArgumentException illegalArgumentException) {
                value = new Version(major, minor, micro).toString();
            }
            this.properties.put("org.osgi.framework.os.version", value);
        }
        if ((value = this.properties.getProperty("org.osgi.framework.language")) == null) {
            this.properties.put("org.osgi.framework.language", Locale.getDefault().getLanguage());
        }
        this.properties.put("org.osgi.supports.framework.fragment", "true");
        this.properties.put("org.osgi.supports.framework.requirebundle", "true");
        this.properties.put("org.osgi.framework.uuid", new UniversalUniqueIdentifier().toString());
    }

    /*
     * Unable to fully structure code
     */
    private int parseVersionInt(String value) {
        try {
            return Integer.parseInt(value);
        }
        catch (NumberFormatException v0) {
            sb = new StringBuffer(value.length());
            chars = value.toCharArray();
            i = 0;
            ** while (i < chars.length)
        }
lbl-1000:
        // 1 sources

        {
            if (!Character.isDigit(chars[i])) break;
            sb.append(chars[i]);
            ++i;
            continue;
        }
lbl13:
        // 2 sources

        if (sb.length() > 0) {
            return Integer.parseInt(sb.toString());
        }
        return 0;
    }

    private void setBootDelegation() {
        String bootDelegationProp = this.properties.getProperty("org.osgi.framework.bootdelegation");
        if (bootDelegationProp == null) {
            return;
        }
        if (bootDelegationProp.trim().length() == 0) {
            return;
        }
        String[] bootPackages = ManifestElement.getArrayFromList(bootDelegationProp);
        ArrayList<String> exactMatch = new ArrayList<String>(bootPackages.length);
        ArrayList<String> stemMatch = new ArrayList<String>(bootPackages.length);
        int i = 0;
        while (i < bootPackages.length) {
            if (bootPackages[i].equals("*")) {
                this.bootDelegateAll = true;
                return;
            }
            if (bootPackages[i].endsWith("*")) {
                if (bootPackages[i].length() > 2 && bootPackages[i].endsWith(".*")) {
                    stemMatch.add(bootPackages[i].substring(0, bootPackages[i].length() - 1));
                }
            } else {
                exactMatch.add(bootPackages[i]);
            }
            ++i;
        }
        if (!exactMatch.isEmpty()) {
            this.bootDelegation = exactMatch.toArray(new String[exactMatch.size()]);
        }
        if (!stemMatch.isEmpty()) {
            this.bootDelegationStems = stemMatch.toArray(new String[stemMatch.size()]);
        }
    }

    private void loadVMProfile() {
        String systemCapabilities;
        String ee;
        Properties profileProps = this.findVMProfile();
        String systemExports = this.properties.getProperty("org.osgi.framework.system.packages");
        if (systemExports == null && (systemExports = profileProps.getProperty("org.osgi.framework.system.packages")) != null) {
            this.properties.put("org.osgi.framework.system.packages", systemExports);
        }
        String type = this.properties.getProperty("osgi.java.profile.bootdelegation");
        String profileBootDelegation = profileProps.getProperty("org.osgi.framework.bootdelegation");
        if ("override".equals(type)) {
            if (profileBootDelegation == null) {
                this.properties.remove("org.osgi.framework.bootdelegation");
            } else {
                this.properties.put("org.osgi.framework.bootdelegation", profileBootDelegation);
            }
        } else if ("none".equals(type)) {
            this.properties.remove("org.osgi.framework.bootdelegation");
        }
        if (this.properties.getProperty("org.osgi.framework.executionenvironment") == null && (ee = profileProps.getProperty("org.osgi.framework.executionenvironment", profileProps.getProperty("osgi.java.profile.name"))) != null) {
            this.properties.put("org.osgi.framework.executionenvironment", ee);
        }
        if (this.properties.getProperty("org.osgi.framework.system.capabilities") == null && (systemCapabilities = profileProps.getProperty("org.osgi.framework.system.capabilities")) != null) {
            this.properties.put("org.osgi.framework.system.capabilities", systemCapabilities);
        }
    }

    private Properties findVMProfile() {
        String vmProfile;
        Properties result;
        block32: {
            String javaProfile;
            result = new Properties();
            String j2meConfig = this.properties.getProperty("microedition.configuration");
            String j2meProfiles = this.properties.getProperty("microedition.profiles");
            vmProfile = null;
            String javaEdition = null;
            Version javaVersion = null;
            if (j2meConfig != null && j2meConfig.length() > 0 && j2meProfiles != null && j2meProfiles.length() > 0) {
                String[] j2meProfileList = ManifestElement.getArrayFromList(j2meProfiles, " ");
                if (j2meProfileList != null && j2meProfileList.length > 0) {
                    vmProfile = new StringBuffer(String.valueOf(j2meConfig)).append('_').append(j2meProfileList[j2meProfileList.length - 1]).toString();
                }
            } else {
                String javaSpecVersion = this.properties.getProperty("java.specification.version");
                if (javaSpecVersion != null) {
                    StringTokenizer st = new StringTokenizer(javaSpecVersion, " _-");
                    javaSpecVersion = st.nextToken();
                    String javaSpecName = this.properties.getProperty("java.specification.name");
                    if (javaSpecName != null && (javaSpecName.indexOf("Foundation Specification") >= 0 || javaSpecName.indexOf("Foundation Profile Specification") >= 0)) {
                        vmProfile = new StringBuffer("CDC-").append(javaSpecVersion).append("_Foundation-").append(javaSpecVersion).toString();
                    } else {
                        Version v16 = new Version("1.6");
                        javaEdition = J2SE;
                        try {
                            javaVersion = new Version(javaSpecVersion);
                            if (v16.compareTo(javaVersion) <= 0) {
                                javaEdition = JAVASE;
                            }
                        }
                        catch (IllegalArgumentException illegalArgumentException) {}
                        vmProfile = new StringBuffer(String.valueOf(javaEdition)).append(javaSpecVersion).toString();
                    }
                }
            }
            URL url = null;
            String propJavaProfile = FrameworkProperties.getProperty("osgi.java.profile");
            if (propJavaProfile != null) {
                try {
                    url = new URL(propJavaProfile);
                }
                catch (MalformedURLException malformedURLException) {
                    url = this.findInSystemBundle(propJavaProfile);
                }
            }
            if (url == null && vmProfile != null && (url = this.findInSystemBundle(javaProfile = new StringBuffer(String.valueOf(vmProfile)).append(PROFILE_EXT).toString())) == null) {
                url = this.getNextBestProfile(javaEdition, javaVersion);
            }
            if (url == null) {
                url = this.findInSystemBundle("OSGi_Minimum-1.2.profile");
            }
            if (url != null) {
                InputStream in = null;
                try {
                    try {
                        in = url.openStream();
                        result.load(new BufferedInputStream(in));
                    }
                    catch (IOException iOException) {
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException iOException2) {}
                        }
                        break block32;
                    }
                }
                catch (Throwable throwable) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (in != null) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
        if (result.getProperty("osgi.java.profile.name") == null) {
            if (vmProfile != null) {
                result.put("osgi.java.profile.name", vmProfile.replace('_', '/'));
            } else {
                result.put("osgi.java.profile.name", "OSGi/Minimum-1.2");
            }
        }
        return result;
    }

    private URL getNextBestProfile(String javaEdition, Version javaVersion) {
        if (javaVersion == null || javaEdition != J2SE && javaEdition != JAVASE) {
            return null;
        }
        URL bestProfile = this.findNextBestProfile(javaEdition, javaVersion);
        if (bestProfile == null && javaEdition == JAVASE) {
            bestProfile = this.findNextBestProfile(J2SE, javaVersion);
        }
        return bestProfile;
    }

    private URL findNextBestProfile(String javaEdition, Version javaVersion) {
        URL result = null;
        int minor = javaVersion.getMinor();
        while ((result = this.findInSystemBundle(new StringBuffer(String.valueOf(javaEdition)).append(javaVersion.getMajor()).append(".").append(minor).append(PROFILE_EXT).toString())) == null && --minor > 0) {
        }
        return result;
    }

    private URL findInSystemBundle(String entry) {
        URL result = this.systemBundle.getEntry0(entry);
        if (result == null) {
            ClassLoader loader = this.getClass().getClassLoader();
            result = loader == null ? ClassLoader.getSystemResource(entry) : loader.getResource(entry);
        }
        return result;
    }

    protected boolean isActive() {
        return this.active;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public synchronized void close() {
        if (this.adaptor == null) {
            return;
        }
        if (this.active) {
            this.shutdown(64);
        }
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            List<AbstractBundle> allBundles = this.bundles.getBundles();
            int size = allBundles.size();
            int i = 0;
            while (i < size) {
                AbstractBundle bundle = allBundles.get(i);
                bundle.close();
                ++i;
            }
            this.bundles.removeAllBundles();
        }
        this.serviceRegistry = null;
        this.allBundleListeners.clear();
        this.allSyncBundleListeners.clear();
        this.allFrameworkListeners.clear();
        if (this.eventManager != null) {
            this.eventManager.close();
            this.eventManager = null;
        }
        this.secureAction = null;
        this.packageAdmin = null;
        this.adaptor = null;
        this.uninstallURLStreamHandlerFactory();
        this.uninstallContentHandlerFactory();
        if (System.getSecurityManager() instanceof EquinoxSecurityManager) {
            System.setSecurityManager(null);
        }
    }

    public synchronized void launch() {
        if (this.active) {
            return;
        }
        this.active = true;
        this.shutdownEvent = new FrameworkEvent[1];
        if (THREAD_NORMAL.equals(FrameworkProperties.getProperty(PROP_FRAMEWORK_THREAD, THREAD_NORMAL))) {
            Thread fwkThread = new Thread((Runnable)this, "Framework Active Thread");
            fwkThread.setDaemon(false);
            fwkThread.start();
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println("Trying to launch framework");
        }
        this.systemBundle.resume();
        BundleContext bundleContext = this.systemBundle.getBundleContext();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.signedContentFactory = new ServiceTracker(bundleContext, clazz.getName(), null);
        this.signedContentFactory.open();
    }

    public synchronized void shutdown(int eventType) {
        if (!this.active) {
            return;
        }
        this.shutdownEvent[0] = new FrameworkEvent(eventType, this.systemBundle, null);
        this.systemBundle.state = 16;
        this.publishBundleEvent(256, this.systemBundle);
        try {
            this.adaptor.frameworkStopping(this.systemBundle.getContext());
        }
        catch (Throwable t) {
            this.publishFrameworkEvent(2, this.systemBundle, t);
        }
        if (Debug.DEBUG_GENERAL) {
            Debug.println("Trying to shutdown Framework");
        }
        this.systemBundle.suspend();
        try {
            this.adaptor.compactStorage();
        }
        catch (IOException e) {
            this.publishFrameworkEvent(2, this.systemBundle, e);
        }
        if (this.signedContentFactory != null) {
            this.signedContentFactory.close();
        }
        this.active = false;
        this.notifyAll();
    }

    AbstractBundle createAndVerifyBundle(BundleData bundledata, boolean setBundle) throws BundleException {
        AbstractBundle installedBundle;
        if (!this.allowDuplicateBSNVersion && bundledata.getSymbolicName() != null && (installedBundle = this.getBundleBySymbolicName(bundledata.getSymbolicName(), bundledata.getVersion())) != null && installedBundle.getBundleId() != bundledata.getBundleID()) {
            String msg = NLS.bind(Msg.BUNDLE_INSTALL_SAME_UNIQUEID, new Object[]{installedBundle.getSymbolicName(), installedBundle.getVersion().toString(), installedBundle.getLocation()});
            throw new DuplicateBundleException(msg, installedBundle);
        }
        return AbstractBundle.createBundle(bundledata, this, setBundle);
    }

    public String getProperty(String key) {
        return this.properties.getProperty(key);
    }

    protected String getProperty(String key, String def) {
        return this.properties.getProperty(key, def);
    }

    protected Object setProperty(String key, String value) {
        return this.properties.put(key, value);
    }

    AbstractBundle installBundle(final String location, final InputStream in, BundleContext origin) throws BundleException {
        if (Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("install from inputstream: ").append(location).append(", ").append(in).toString());
        }
        final AccessControlContext callerContext = AccessController.getContext();
        return this.installWorker(location, new PrivilegedExceptionAction<AbstractBundle>(){

            @Override
            public AbstractBundle run() throws BundleException {
                URLConnection source = in != null ? new BundleSource(in) : Framework.this.adaptor.mapLocationToURLConnection(location);
                return Framework.this.installWorkerPrivileged(location, source, callerContext);
            }
        }, origin);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected AbstractBundle installWorker(String location, PrivilegedExceptionAction<AbstractBundle> action, BundleContext origin) throws BundleException {
        Map<String, Thread> map;
        AbstractBundle abstractBundle;
        Map<String, Thread> map2 = this.installLock;
        synchronized (map2) {
            while (true) {
                AbstractBundle bundle;
                if ((bundle = this.getBundleByLocation(location)) != null) {
                    Bundle visible = origin.getBundle(bundle.getBundleId());
                    if (visible == null) {
                        BundleData data = bundle.getBundleData();
                        String msg = NLS.bind(Msg.BUNDLE_INSTALL_SAME_UNIQUEID, new Object[]{data.getSymbolicName(), data.getVersion().toString(), data.getLocation()});
                        throw new BundleException(msg, 12);
                    }
                    return bundle;
                }
                Thread current = Thread.currentThread();
                Thread reservation = this.installLock.put(location, current);
                if (reservation == null) break;
                if (current.equals(reservation)) {
                    throw new BundleException(Msg.BUNDLE_INSTALL_RECURSION_EXCEPTION, 7);
                }
                try {
                    this.installLock.wait();
                }
                catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new BundleException("Thread has been interrupted while waiting for the location lock.", e);
                }
            }
        }
        try {
            AbstractBundle bundle = AccessController.doPrivileged(action);
            this.publishBundleEvent(new BundleEvent(1, bundle, origin.getBundle()));
            abstractBundle = bundle;
            map = this.installLock;
        }
        catch (PrivilegedActionException e) {
            try {
                if (e.getException() instanceof RuntimeException) {
                    throw (RuntimeException)e.getException();
                }
                throw (BundleException)e.getException();
            }
            catch (Throwable throwable) {
                map = this.installLock;
                synchronized (map) {
                    this.installLock.remove(location);
                    this.installLock.notifyAll();
                }
                throw throwable;
            }
        }
        synchronized (map) {
            this.installLock.remove(location);
            this.installLock.notifyAll();
        }
        return abstractBundle;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected AbstractBundle installWorkerPrivileged(String location, URLConnection source, AccessControlContext callerContext) throws BundleException {
        AbstractBundle bundle;
        BundleOperation storage = this.adaptor.installBundle(location, source);
        try {
            BundleData bundledata = storage.begin();
            bundle = this.createAndVerifyBundle(bundledata, true);
            BundleWatcher bundleStats = this.adaptor.getBundleWatcher();
            if (bundleStats != null) {
                bundleStats.watchBundle(bundle, 1);
            }
            try {
                try {
                    bundle.load();
                    if (System.getSecurityManager() != null) {
                        boolean extension;
                        boolean bl = extension = (bundledata.getType() & 0x16) != 0;
                        if (extension && !bundle.hasPermission(new AllPermission())) {
                            throw new BundleException(Msg.BUNDLE_EXTENSION_PERMISSION, 6, new SecurityException(Msg.BUNDLE_EXTENSION_PERMISSION));
                        }
                        try {
                            AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                                @Override
                                public Object run() throws Exception {
                                    Framework.this.checkAdminPermission(bundle, "lifecycle");
                                    if (extension) {
                                        Framework.this.checkAdminPermission(bundle, "extensionLifecycle");
                                    }
                                    return null;
                                }
                            }, callerContext);
                        }
                        catch (PrivilegedActionException e) {
                            throw e.getException();
                        }
                    }
                    this.bundles.add(bundle);
                    storage.commit(false);
                }
                catch (Throwable error) {
                    this.bundles.remove(bundle);
                    BundleRepository bundleRepository = this.bundles;
                    synchronized (bundleRepository) {
                        bundle.unload();
                    }
                    bundle.close();
                    throw error;
                }
            }
            finally {
                if (bundleStats != null) {
                    bundleStats.watchBundle(bundle, 2);
                }
            }
        }
        catch (Throwable t) {
            try {
                storage.undo();
            }
            catch (BundleException ee) {
                this.publishFrameworkEvent(2, this.systemBundle, ee);
            }
            if (t instanceof SecurityException) {
                throw (SecurityException)t;
            }
            if (t instanceof BundleException) {
                throw (BundleException)t;
            }
            throw new BundleException(t.getMessage(), t);
        }
        return bundle;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public AbstractBundle getBundle(long id) {
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            return this.bundles.getBundle(id);
        }
    }

    AbstractBundle getBundle(BundleContextImpl context, long id) {
        AbstractBundle bundle = this.getBundle(id);
        if (bundle == null || context.getBundle().getBundleId() == 0L) {
            return bundle;
        }
        ArrayList<AbstractBundle> single = new ArrayList<AbstractBundle>(1);
        single.add(bundle);
        this.notifyFindHooks(context, single);
        return single.size() == 0 ? null : bundle;
    }

    public BundleContextImpl getSystemBundleContext() {
        if (this.systemBundle == null) {
            return null;
        }
        return this.systemBundle.context;
    }

    public PackageAdminImpl getPackageAdmin() {
        return this.packageAdmin;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public AbstractBundle getBundleBySymbolicName(String symbolicName, Version version) {
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            return this.bundles.getBundle(symbolicName, version);
        }
    }

    protected BundleRepository getBundles() {
        return this.bundles;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected AbstractBundle[] getAllBundles() {
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            int size;
            List<AbstractBundle> allBundles;
            block4: {
                allBundles = this.bundles.getBundles();
                size = allBundles.size();
                if (size != 0) break block4;
                return null;
            }
            AbstractBundle[] bundlelist = new AbstractBundle[size];
            allBundles.toArray(bundlelist);
            return bundlelist;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    AbstractBundle[] getBundles(BundleContextImpl context) {
        ArrayList<AbstractBundle> allBundles;
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            allBundles = new ArrayList<AbstractBundle>(this.bundles.getBundles());
        }
        this.notifyFindHooks(context, allBundles);
        return allBundles.toArray(new AbstractBundle[allBundles.size()]);
    }

    private void notifyFindHooks(final BundleContextImpl context, List<AbstractBundle> allBundles) {
        final ShrinkableCollection<Bundle> shrinkable = new ShrinkableCollection<Bundle>((Collection<Bundle>)allBundles);
        if (System.getSecurityManager() == null) {
            this.notifyFindHooksPriviledged(context, shrinkable);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    Framework.this.notifyFindHooksPriviledged(context, shrinkable);
                    return null;
                }
            });
        }
    }

    void notifyFindHooksPriviledged(final BundleContextImpl context, final Collection<Bundle> allBundles) {
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyBundleFindHooks(").append(allBundles).append(")").toString());
        }
        this.getServiceRegistry().notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof FindHook) {
                    ((FindHook)hook).find(context, allBundles);
                }
            }

            @Override
            public String getHookClassName() {
                return findHookName;
            }

            @Override
            public String getHookMethodName() {
                return "find";
            }
        });
    }

    protected void resumeBundle(AbstractBundle bundle) {
        if (bundle.isActive()) {
            return;
        }
        try {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Trying to resume bundle ").append(bundle).toString());
            }
            bundle.resume();
        }
        catch (BundleException be) {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Bundle resume exception: ").append(be.getMessage()).toString());
                Debug.printStackTrace(be.getNestedException() == null ? be : be.getNestedException());
            }
            this.publishFrameworkEvent(2, bundle, be);
        }
    }

    protected boolean suspendBundle(AbstractBundle bundle, boolean lock) {
        boolean changed = false;
        if (!bundle.isActive() || bundle.isFragment()) {
            return changed;
        }
        try {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Trying to suspend bundle ").append(bundle).toString());
            }
            bundle.suspend(lock);
        }
        catch (BundleException be) {
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Bundle suspend exception: ").append(be.getMessage()).toString());
                Debug.printStackTrace(be.getNestedException() == null ? be : be.getNestedException());
            }
            this.publishFrameworkEvent(2, bundle, be);
        }
        if (!bundle.isActive()) {
            changed = true;
        }
        return changed;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected AbstractBundle getBundleByLocation(String location) {
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            final String finalLocation = location;
            return AccessController.doPrivileged(new PrivilegedAction<AbstractBundle>(){

                @Override
                public AbstractBundle run() {
                    List<AbstractBundle> allBundles = Framework.this.bundles.getBundles();
                    int size = allBundles.size();
                    int i = 0;
                    while (i < size) {
                        AbstractBundle bundle = allBundles.get(i);
                        if (finalLocation.equals(bundle.getLocation())) {
                            return bundle;
                        }
                        ++i;
                    }
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected AbstractBundle[] getBundleBySymbolicName(String symbolicName) {
        BundleRepository bundleRepository = this.bundles;
        synchronized (bundleRepository) {
            return this.bundles.getBundles(symbolicName);
        }
    }

    protected File getDataFile(AbstractBundle bundle, String filename) {
        return AccessController.doPrivileged(new GetDataFileAction(bundle, filename));
    }

    protected void checkAdminPermission(Bundle bundle, String action) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(this.getAdminPermission(bundle, action));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private AdminPermission getAdminPermission(Bundle bundle, String action) {
        Map<Long, Map<String, AdminPermission>> map = this.adminPermissions;
        synchronized (map) {
            AdminPermission result;
            Long ID = new Long(bundle.getBundleId());
            Map<String, AdminPermission> bundlePermissions = this.adminPermissions.get(ID);
            if (bundlePermissions == null) {
                bundlePermissions = new HashMap<String, AdminPermission>();
                this.adminPermissions.put(ID, bundlePermissions);
            }
            if ((result = bundlePermissions.get(action)) == null) {
                result = new AdminPermission(bundle, action);
                bundlePermissions.put(action, result);
            }
            return result;
        }
    }

    protected void installSecurityManager() {
        SecurityManager sm;
        String securityManager = FrameworkProperties.getProperty("org.osgi.framework.security", FrameworkProperties.getProperty(PROP_EQUINOX_SECURITY, FrameworkProperties.getProperty("java.security.manager")));
        if (securityManager != null && (sm = System.getSecurityManager()) == null) {
            if (securityManager.length() == 0) {
                sm = new SecurityManager();
            } else if (securityManager.equals(SECURITY_OSGI)) {
                sm = new EquinoxSecurityManager();
            } else {
                try {
                    Class<?> clazz = Class.forName(securityManager);
                    sm = (SecurityManager)clazz.newInstance();
                }
                catch (ClassNotFoundException classNotFoundException) {
                }
                catch (ClassCastException classCastException) {
                }
                catch (InstantiationException instantiationException) {
                }
                catch (IllegalAccessException illegalAccessException) {}
            }
            if (sm == null) {
                throw new NoClassDefFoundError(securityManager);
            }
            if (Debug.DEBUG_SECURITY) {
                Debug.println(new StringBuffer("Setting SecurityManager to: ").append(sm).toString());
            }
            System.setSecurityManager(sm);
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addFrameworkListener(FrameworkListener listener, BundleContextImpl context) {
        Map<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> map = this.allFrameworkListeners;
        synchronized (map) {
            CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener> listeners = this.allFrameworkListeners.get(context);
            if (listeners == null) {
                listeners = new CopyOnWriteIdentityMap();
                this.allFrameworkListeners.put(context, listeners);
            }
            listeners.put(listener, listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeFrameworkListener(FrameworkListener listener, BundleContextImpl context) {
        Map<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> map = this.allFrameworkListeners;
        synchronized (map) {
            CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener> listeners = this.allFrameworkListeners.get(context);
            if (listeners != null) {
                listeners.remove(listener);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeAllListeners(BundleContextImpl context) {
        Map<BundleContextImpl, CopyOnWriteIdentityMap<EventListener, EventListener>> map = this.allBundleListeners;
        synchronized (map) {
            this.allBundleListeners.remove(context);
        }
        map = this.allSyncBundleListeners;
        synchronized (map) {
            this.allSyncBundleListeners.remove(context);
        }
        map = this.allFrameworkListeners;
        synchronized (map) {
            this.allFrameworkListeners.remove(context);
        }
    }

    @Override
    public void publishFrameworkEvent(int type, Bundle bundle, Throwable throwable) {
        this.publishFrameworkEvent(type, bundle, throwable, null);
    }

    public void publishFrameworkEvent(int type, Bundle bundle, Throwable throwable, final FrameworkListener[] listeners) {
        if (bundle == null) {
            bundle = this.systemBundle;
        }
        final FrameworkEvent event = new FrameworkEvent(type, bundle, throwable);
        if (System.getSecurityManager() == null) {
            this.publishFrameworkEventPrivileged(event, listeners);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    Framework.this.publishFrameworkEventPrivileged(event, listeners);
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void publishFrameworkEventPrivileged(FrameworkEvent event, FrameworkListener[] callerListeners) {
        HashMap<BundleContextImpl, Set<Map.Entry<FrameworkListener, FrameworkListener>>> listenerSnapshot;
        Map<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> map = this.allFrameworkListeners;
        synchronized (map) {
            listenerSnapshot = new HashMap<BundleContextImpl, Set<Map.Entry<FrameworkListener, FrameworkListener>>>(this.allFrameworkListeners.size());
            for (Map.Entry<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> entry : this.allFrameworkListeners.entrySet()) {
                CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener> listeners2 = entry.getValue();
                if (listeners2.isEmpty()) continue;
                listenerSnapshot.put(entry.getKey(), listeners2.entrySet());
            }
        }
        ListenerQueue<Object, Object, Object> queue = this.newListenerQueue();
        if (callerListeners != null && callerListeners.length > 0) {
            HashMap<FrameworkListener, FrameworkListener> hashMap = new HashMap<FrameworkListener, FrameworkListener>();
            FrameworkListener[] frameworkListenerArray = callerListeners;
            int n = callerListeners.length;
            int listeners2 = 0;
            while (listeners2 < n) {
                FrameworkListener listener = frameworkListenerArray[listeners2];
                if (listener != null) {
                    hashMap.put(listener, listener);
                }
                ++listeners2;
            }
            if (hashMap.size() > 0) {
                BundleContextImpl dispatcher = this.getSystemBundleContext();
                queue.queueListeners(hashMap.entrySet(), dispatcher);
            }
        }
        for (Map.Entry<BundleContextImpl, CopyOnWriteIdentityMap<FrameworkListener, FrameworkListener>> entry : listenerSnapshot.entrySet()) {
            EventDispatcher dispatcher = entry.getKey();
            Set listeners = (Set)((Object)entry.getValue());
            queue.queueListeners(listeners, dispatcher);
        }
        queue.dispatchEventAsynchronous(4, event);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addBundleListener(BundleListener listener, BundleContextImpl context) {
        if (listener instanceof SynchronousBundleListener) {
            this.checkAdminPermission(context.getBundle(), "listener");
            Map<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> map = this.allSyncBundleListeners;
            synchronized (map) {
                CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener> listeners = this.allSyncBundleListeners.get(context);
                if (listeners == null) {
                    listeners = new CopyOnWriteIdentityMap();
                    this.allSyncBundleListeners.put(context, listeners);
                }
                listeners.put((SynchronousBundleListener)listener, (SynchronousBundleListener)listener);
            }
        }
        Map<BundleContextImpl, CopyOnWriteIdentityMap<BundleListener, BundleListener>> map = this.allBundleListeners;
        synchronized (map) {
            CopyOnWriteIdentityMap<BundleListener, BundleListener> listeners = this.allBundleListeners.get(context);
            if (listeners == null) {
                listeners = new CopyOnWriteIdentityMap();
                this.allBundleListeners.put(context, listeners);
            }
            listeners.put(listener, listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeBundleListener(BundleListener listener, BundleContextImpl context) {
        if (listener instanceof SynchronousBundleListener) {
            this.checkAdminPermission(context.getBundle(), "listener");
            Map<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> map = this.allSyncBundleListeners;
            synchronized (map) {
                CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener> listeners = this.allSyncBundleListeners.get(context);
                if (listeners != null) {
                    listeners.remove(listener);
                }
            }
        }
        Map<BundleContextImpl, CopyOnWriteIdentityMap<BundleListener, BundleListener>> map = this.allBundleListeners;
        synchronized (map) {
            CopyOnWriteIdentityMap<BundleListener, BundleListener> listeners = this.allBundleListeners.get(context);
            if (listeners != null) {
                listeners.remove(listener);
            }
        }
    }

    public void publishBundleEvent(int type, Bundle bundle) {
        this.publishBundleEvent(new BundleEvent(type, bundle));
    }

    private void publishBundleEvent(final BundleEvent event) {
        if (System.getSecurityManager() == null) {
            this.publishBundleEventPrivileged(event);
        } else {
            AccessController.doPrivileged(new PrivilegedAction<Object>(){

                @Override
                public Object run() {
                    Framework.this.publishBundleEventPrivileged(event);
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void publishBundleEventPrivileged(BundleEvent event) {
        Set listeners;
        EventDispatcher dispatcher;
        HashMap<BundleContextImpl, Set<Map.Entry<SynchronousBundleListener, SynchronousBundleListener>>> listenersSync;
        Map<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> map = this.allSyncBundleListeners;
        synchronized (map) {
            listenersSync = new HashMap<BundleContextImpl, Set<Map.Entry<SynchronousBundleListener, SynchronousBundleListener>>>(this.allSyncBundleListeners.size());
            for (Map.Entry<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> entry : this.allSyncBundleListeners.entrySet()) {
                CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener> listeners2 = entry.getValue();
                if (listeners2.isEmpty()) continue;
                listenersSync.put(entry.getKey(), listeners2.entrySet());
            }
        }
        HashMap listenersAsync = null;
        if ((event.getType() & 0x380) == 0) {
            Map.Entry<BundleContextImpl, CopyOnWriteIdentityMap<SynchronousBundleListener, SynchronousBundleListener>> entry;
            entry = this.allBundleListeners;
            synchronized (entry) {
                listenersAsync = new HashMap(this.allBundleListeners.size());
                for (Map.Entry entry2 : this.allBundleListeners.entrySet()) {
                    CopyOnWriteIdentityMap listeners3 = (CopyOnWriteIdentityMap)entry2.getValue();
                    if (listeners3.isEmpty()) continue;
                    listenersAsync.put((BundleContextImpl)entry2.getKey(), listeners3.entrySet());
                }
            }
        }
        Collection<BundleContext> shrinkable = listenersAsync == null ? Framework.asBundleContexts(listenersSync.keySet()) : new ShrinkableCollection<BundleContext>(Framework.asBundleContexts(listenersSync.keySet()), Framework.asBundleContexts(listenersAsync.keySet()));
        this.notifyEventHooksPrivileged(event, shrinkable);
        if (!listenersSync.isEmpty()) {
            ListenerQueue listenerQueue = this.newListenerQueue();
            for (Map.Entry entry : listenersSync.entrySet()) {
                dispatcher = (EventDispatcher)entry.getKey();
                listeners = (Set)entry.getValue();
                listenerQueue.queueListeners(listeners, dispatcher);
            }
            listenerQueue.dispatchEventSynchronous(2, event);
        }
        if (listenersAsync != null && !listenersAsync.isEmpty()) {
            ListenerQueue listenerQueue = this.newListenerQueue();
            for (Map.Entry entry : listenersAsync.entrySet()) {
                dispatcher = (EventDispatcher)entry.getKey();
                listeners = (Set)entry.getValue();
                listenerQueue.queueListeners(listeners, dispatcher);
            }
            listenerQueue.dispatchEventAsynchronous(1, event);
        }
    }

    public static Collection<BundleContext> asBundleContexts(Collection<? extends BundleContext> c) {
        return c;
    }

    private void notifyEventHooksPrivileged(final BundleEvent event, final Collection<BundleContext> result) {
        if (event.getType() == -2147483647 || event.getType() == Integer.MIN_VALUE) {
            return;
        }
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer("notifyBundleEventHooks(").append(event.getType()).append(":").append(event.getBundle()).append(", ").append(result).append(" )").toString());
        }
        this.getServiceRegistry().notifyHooksPrivileged(new HookContext(){

            @Override
            public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
                if (hook instanceof EventHook) {
                    ((EventHook)hook).event(event, result);
                }
            }

            @Override
            public String getHookClassName() {
                return eventHookName;
            }

            @Override
            public String getHookMethodName() {
                return "event";
            }
        });
    }

    public <K, V, E> ListenerQueue<K, V, E> newListenerQueue() {
        return new ListenerQueue(this.eventManager);
    }

    private void initializeContextFinder() {
        Thread current = Thread.currentThread();
        try {
            ClassLoader parent = null;
            String type = FrameworkProperties.getProperty(PROP_CONTEXTCLASSLOADER_PARENT);
            if (CONTEXTCLASSLOADER_PARENT_APP.equals(type)) {
                parent = ClassLoader.getSystemClassLoader();
            } else if (CONTEXTCLASSLOADER_PARENT_BOOT.equals(type)) {
                parent = null;
            } else if (CONTEXTCLASSLOADER_PARENT_FWK.equals(type)) {
                Class<?> clazz = class$5;
                if (clazz == null) {
                    try {
                        clazz = class$5 = Class.forName("org.eclipse.osgi.framework.internal.core.Framework");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                parent = clazz.getClassLoader();
            } else if (CONTEXTCLASSLOADER_PARENT_EXT.equals(type)) {
                ClassLoader appCL = ClassLoader.getSystemClassLoader();
                if (appCL != null) {
                    parent = appCL.getParent();
                }
            } else {
                parent = current.getContextClassLoader();
            }
            this.contextFinder = new ContextFinder(parent);
            current.setContextClassLoader(this.contextFinder);
            return;
        }
        catch (Exception e) {
            FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 1, 0, NLS.bind(Msg.CANNOT_SET_CONTEXTFINDER, null), 0, e, null);
            this.adaptor.getFrameworkLog().log(entry);
            return;
        }
    }

    public static Field getField(Class<?> clazz, Class<?> type, boolean instance) {
        Field[] fields = clazz.getDeclaredFields();
        int i = 0;
        while (i < fields.length) {
            boolean isStatic = Modifier.isStatic(fields[i].getModifiers());
            if (instance != isStatic && fields[i].getType().equals(type)) {
                fields[i].setAccessible(true);
                return fields[i];
            }
            ++i;
        }
        return null;
    }

    private void installContentHandlerFactory(BundleContext context, FrameworkAdaptor frameworkAdaptor) {
        org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory chf = new org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory(context, frameworkAdaptor);
        try {
            URLConnection.setContentHandlerFactory(chf);
        }
        catch (Error err) {
            try {
                Framework.forceContentHandlerFactory(chf);
            }
            catch (Exception ex) {
                this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, context.getBundle(), ex));
                throw err;
            }
        }
        this.contentHandlerFactory = chf;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void forceContentHandlerFactory(org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory chf) throws Exception {
        Field factoryField;
        Class<?> clazz;
        Class<?> clazz2 = class$6;
        if (clazz2 == null) {
            try {
                clazz2 = class$6 = Class.forName("java.net.URLConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$7) == null) {
            try {
                clazz = class$7 = Class.forName("java.net.ContentHandlerFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((factoryField = Framework.getField(clazz2, clazz, false)) == null) {
            throw new Exception("Could not find ContentHandlerFactory field");
        }
        Class<?> clazz3 = class$6;
        if (clazz3 == null) {
            try {
                clazz3 = class$6 = Class.forName("java.net.URLConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz4 = clazz3;
        synchronized (clazz3) {
            ContentHandlerFactory factory = (ContentHandlerFactory)factoryField.get(null);
            if (factory != null) {
                try {
                    factory.getClass().getMethod("isMultiplexing", null);
                    Class<?> clazz5 = factory.getClass();
                    Class[] classArray = new Class[1];
                    Class<?> clazz6 = class$8;
                    if (clazz6 == null) {
                        try {
                            clazz6 = class$8 = Class.forName("java.lang.Object");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz6;
                    Method register = clazz5.getMethod("register", classArray);
                    register.invoke(factory, chf);
                }
                catch (NoSuchMethodException noSuchMethodException) {
                    chf.setParentFactory(factory);
                    factory = chf;
                }
            }
            factoryField.set(null, null);
            Framework.resetContentHandlers();
            URLConnection.setContentHandlerFactory(factory);
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void uninstallContentHandlerFactory() {
        try {
            Field factoryField;
            Class<?> clazz;
            Class<?> clazz2 = class$6;
            if (clazz2 == null) {
                try {
                    clazz2 = class$6 = Class.forName("java.net.URLConnection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz = class$7) == null) {
                try {
                    clazz = class$7 = Class.forName("java.net.ContentHandlerFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((factoryField = Framework.getField(clazz2, clazz, false)) == null) {
                return;
            }
            Class<?> clazz3 = class$6;
            if (clazz3 == null) {
                try {
                    clazz3 = class$6 = Class.forName("java.net.URLConnection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> clazz4 = clazz3;
            synchronized (clazz3) {
                ContentHandlerFactory factory = (ContentHandlerFactory)factoryField.get(null);
                if (factory == this.contentHandlerFactory) {
                    factory = (ContentHandlerFactory)this.contentHandlerFactory.designateSuccessor();
                } else {
                    Class<?> clazz5 = factory.getClass();
                    Class[] classArray = new Class[1];
                    Class<?> clazz6 = class$8;
                    if (clazz6 == null) {
                        try {
                            clazz6 = class$8 = Class.forName("java.lang.Object");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz6;
                    Method unregister = clazz5.getMethod("unregister", classArray);
                    unregister.invoke(factory, this.contentHandlerFactory);
                }
                factoryField.set(null, null);
                Framework.resetContentHandlers();
                if (factory != null) {
                    URLConnection.setContentHandlerFactory(factory);
                }
                // ** MonitorExit[var2_2] (shouldn't be in output)
            }
        }
        catch (Exception exception) {}
        {
            return;
        }
    }

    private static void resetContentHandlers() throws IllegalAccessException {
        Hashtable handlers;
        Field handlersField;
        Class<?> clazz;
        Class<?> clazz2 = class$6;
        if (clazz2 == null) {
            try {
                clazz2 = class$6 = Class.forName("java.net.URLConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$9) == null) {
            try {
                clazz = class$9 = Class.forName("java.util.Hashtable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((handlersField = Framework.getField(clazz2, clazz, false)) != null && (handlers = (Hashtable)handlersField.get(null)) != null) {
            handlers.clear();
        }
    }

    private void installURLStreamHandlerFactory(BundleContext context, FrameworkAdaptor frameworkAdaptor) {
        StreamHandlerFactory shf = new StreamHandlerFactory(context, frameworkAdaptor);
        try {
            URL.setURLStreamHandlerFactory(shf);
        }
        catch (Error err) {
            try {
                Framework.forceURLStreamHandlerFactory(shf);
            }
            catch (Exception ex) {
                this.adaptor.getFrameworkLog().log(new FrameworkEvent(2, context.getBundle(), ex));
                throw err;
            }
        }
        this.streamHandlerFactory = shf;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void forceURLStreamHandlerFactory(StreamHandlerFactory shf) throws Exception {
        Object lock;
        Field factoryField;
        Class<?> clazz;
        Class<?> clazz2 = class$10;
        if (clazz2 == null) {
            try {
                clazz2 = class$10 = Class.forName("java.net.URL");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$11) == null) {
            try {
                clazz = class$11 = Class.forName("java.net.URLStreamHandlerFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((factoryField = Framework.getField(clazz2, clazz, false)) == null) {
            throw new Exception("Could not find URLStreamHandlerFactory field");
        }
        Object object = lock = Framework.getURLStreamHandlerFactoryLock();
        synchronized (object) {
            URLStreamHandlerFactory factory = (URLStreamHandlerFactory)factoryField.get(null);
            if (factory != null) {
                try {
                    factory.getClass().getMethod("isMultiplexing", null);
                    Class<?> clazz3 = factory.getClass();
                    Class[] classArray = new Class[1];
                    Class<?> clazz4 = class$8;
                    if (clazz4 == null) {
                        try {
                            clazz4 = class$8 = Class.forName("java.lang.Object");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz4;
                    Method register = clazz3.getMethod("register", classArray);
                    register.invoke(factory, shf);
                }
                catch (NoSuchMethodException noSuchMethodException) {
                    shf.setParentFactory(factory);
                    factory = shf;
                }
            }
            factoryField.set(null, null);
            Framework.resetURLStreamHandlers();
            URL.setURLStreamHandlerFactory(factory);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void uninstallURLStreamHandlerFactory() {
        try {
            Object lock;
            Field factoryField;
            Class<?> clazz;
            Class<?> clazz2 = class$10;
            if (clazz2 == null) {
                try {
                    clazz2 = class$10 = Class.forName("java.net.URL");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz = class$11) == null) {
                try {
                    clazz = class$11 = Class.forName("java.net.URLStreamHandlerFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((factoryField = Framework.getField(clazz2, clazz, false)) == null) {
                return;
            }
            Object object = lock = Framework.getURLStreamHandlerFactoryLock();
            synchronized (object) {
                URLStreamHandlerFactory factory = (URLStreamHandlerFactory)factoryField.get(null);
                if (factory == this.streamHandlerFactory) {
                    factory = (URLStreamHandlerFactory)this.streamHandlerFactory.designateSuccessor();
                } else {
                    Class<?> clazz3 = factory.getClass();
                    Class[] classArray = new Class[1];
                    Class<?> clazz4 = class$8;
                    if (clazz4 == null) {
                        try {
                            clazz4 = class$8 = Class.forName("java.lang.Object");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz4;
                    Method unregister = clazz3.getMethod("unregister", classArray);
                    unregister.invoke(factory, this.streamHandlerFactory);
                }
                factoryField.set(null, null);
                Framework.resetURLStreamHandlers();
                if (factory != null) {
                    URL.setURLStreamHandlerFactory(factory);
                }
            }
        }
        catch (Exception exception) {}
    }

    private static Object getURLStreamHandlerFactoryLock() throws IllegalAccessException {
        Object lock;
        try {
            Class<?> clazz = class$10;
            if (clazz == null) {
                try {
                    clazz = class$10 = Class.forName("java.net.URL");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Field streamHandlerLockField = clazz.getDeclaredField("streamHandlerLock");
            streamHandlerLockField.setAccessible(true);
            lock = streamHandlerLockField.get(null);
        }
        catch (NoSuchFieldException noSuchFieldException) {
            Class<?> clazz = class$10;
            if (clazz == null) {
                try {
                    clazz = class$10 = Class.forName("java.net.URL");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            lock = clazz;
        }
        return lock;
    }

    private static void resetURLStreamHandlers() throws IllegalAccessException {
        Hashtable handlers;
        Field handlersField;
        Class<?> clazz;
        Class<?> clazz2 = class$10;
        if (clazz2 == null) {
            try {
                clazz2 = class$10 = Class.forName("java.net.URL");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$9) == null) {
            try {
                clazz = class$9 = Class.forName("java.util.Hashtable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((handlersField = Framework.getField(clazz2, clazz, false)) != null && (handlers = (Hashtable)handlersField.get(null)) != null) {
            handlers.clear();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void run() {
        Framework framework = this;
        synchronized (framework) {
            while (true) {
                if (!this.active) {
                    return;
                }
                try {
                    this.wait(1000L);
                }
                catch (InterruptedException interruptedException) {}
            }
        }
    }

    void setForcedRestart(boolean forcedRestart) {
        this.forcedRestart = forcedRestart;
    }

    boolean isForcedRestart() {
        return this.forcedRestart;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public FrameworkEvent waitForStop(long timeout) throws InterruptedException {
        boolean waitForEver = timeout == 0L;
        long start = System.currentTimeMillis();
        long timeLeft = timeout;
        Framework framework = this;
        synchronized (framework) {
            FrameworkEvent[] event = this.shutdownEvent;
            while (event != null && event[0] == null) {
                this.wait(timeLeft);
                if (!waitForEver && (timeLeft = start + timeout - System.currentTimeMillis()) <= 0L) break;
            }
            if (event == null || event[0] == null) {
                return new FrameworkEvent(512, this.systemBundle, null);
            }
            return event[0];
        }
    }

    public boolean isServiceAssignableTo(Bundle registrant, Bundle client, String className, Class<?> serviceClass) {
        SystemBundleLoader systemLoader;
        AbstractBundle consumer = (AbstractBundle)client;
        if (consumer.isFragment()) {
            return false;
        }
        AbstractBundle producer = (AbstractBundle)registrant;
        if (consumer == producer) {
            return true;
        }
        String pkgName = BundleLoader.getPackageName(className);
        if (pkgName.startsWith("java.")) {
            return true;
        }
        BundleLoader producerBL = producer.getBundleLoader();
        if (producerBL == null) {
            return false;
        }
        BundleLoader consumerBL = consumer.getBundleLoader();
        if (consumerBL == null) {
            return false;
        }
        PackageSource consumerSource = consumerBL.getPackageSource(pkgName);
        if (consumerSource == null) {
            return true;
        }
        if (this.isBootDelegationPackage(pkgName) && (systemLoader = (SystemBundleLoader)this.systemBundle.getBundleLoader()).isEEPackage(pkgName)) {
            return true;
        }
        PackageSource producerSource = producerBL.getPackageSource(pkgName);
        if (producerSource == null) {
            if (serviceClass != null) {
                Bundle bundle;
                Class<?> clazz = class$12;
                if (clazz == null) {
                    try {
                        clazz = class$12 = Class.forName("org.osgi.framework.ServiceFactory");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz.isAssignableFrom(serviceClass) && (bundle = this.packageAdmin.getBundle(serviceClass)) != null && bundle != registrant) {
                    return true;
                }
            }
            if ((producerSource = this.getPackageSource(serviceClass, pkgName)) == null) {
                return false;
            }
        }
        return producerSource.hasCommonSource(consumerSource);
    }

    private PackageSource getPackageSource(Class<?> serviceClass, String pkgName) {
        if (serviceClass == null) {
            return null;
        }
        AbstractBundle serviceBundle = (AbstractBundle)this.packageAdmin.getBundle(serviceClass);
        if (serviceBundle == null) {
            return null;
        }
        BundleLoader producerBL = serviceBundle.getBundleLoader();
        if (producerBL == null) {
            return null;
        }
        PackageSource producerSource = producerBL.getPackageSource(pkgName);
        if (producerSource != null) {
            return producerSource;
        }
        Class<?>[] interfaces = serviceClass.getInterfaces();
        int i = 0;
        while (i < interfaces.length) {
            producerSource = this.getPackageSource(interfaces[i], pkgName);
            if (producerSource != null) {
                return producerSource;
            }
            ++i;
        }
        return this.getPackageSource(serviceClass.getSuperclass(), pkgName);
    }

    public boolean isBootDelegationPackage(String name) {
        int i;
        if (this.bootDelegateAll) {
            return true;
        }
        if (this.bootDelegation != null) {
            i = 0;
            while (i < this.bootDelegation.length) {
                if (name.equals(this.bootDelegation[i])) {
                    return true;
                }
                ++i;
            }
        }
        if (this.bootDelegationStems != null) {
            i = 0;
            while (i < this.bootDelegationStems.length) {
                if (name.startsWith(this.bootDelegationStems[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    SignedContentFactory getSignedContentFactory() {
        ServiceTracker<SignedContentFactory, SignedContentFactory> currentTracker = this.signedContentFactory;
        return currentTracker == null ? null : currentTracker.getService();
    }

    ContextFinder getContextFinder() {
        return this.contextFinder;
    }

    public boolean isRefreshDuplicateBSNAllowed() {
        return this.allowRefreshDuplicateBSN;
    }

    private class DuplicateBundleException
    extends BundleException
    implements StatusException {
        private static final long serialVersionUID = 135669822846323624L;
        private final Bundle duplicate;

        public DuplicateBundleException(String msg, Bundle duplicate) {
            super(msg, 9);
            this.duplicate = duplicate;
        }

        public Object getStatus() {
            return this.duplicate;
        }

        public int getStatusCode() {
            return 1;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class GetDataFileAction
    implements PrivilegedAction<File> {
        private AbstractBundle bundle;
        private String filename;

        public GetDataFileAction(AbstractBundle bundle, String filename) {
            this.bundle = bundle;
            this.filename = filename;
        }

        @Override
        public File run() {
            return this.bundle.getBundleData().getDataFile(this.filename);
        }
    }
}

