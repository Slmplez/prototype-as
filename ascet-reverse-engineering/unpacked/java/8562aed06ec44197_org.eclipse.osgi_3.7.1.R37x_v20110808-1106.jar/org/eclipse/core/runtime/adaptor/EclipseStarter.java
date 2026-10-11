/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.adaptor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.core.runtime.internal.adaptor.DefaultStartupMonitor;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.core.runtime.internal.adaptor.LocationHelper;
import org.eclipse.core.runtime.internal.adaptor.MessageHelper;
import org.eclipse.core.runtime.internal.adaptor.Semaphore;
import org.eclipse.osgi.framework.adaptor.FilePath;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.ConsoleManager;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.runnable.StartupMonitor;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleListener;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.service.startlevel.StartLevel;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseStarter {
    private static FrameworkAdaptor adaptor;
    private static BundleContext context;
    private static boolean initialize;
    public static boolean debug;
    private static boolean running;
    private static Framework framework;
    private static ServiceRegistration<?> defaultMonitorRegistration;
    private static ServiceRegistration<?> appLauncherRegistration;
    private static ServiceRegistration<?> splashStreamRegistration;
    private static final String CLEAN = "-clean";
    private static final String CONSOLE = "-console";
    private static final String CONSOLE_LOG = "-consoleLog";
    private static final String DEBUG = "-debug";
    private static final String INITIALIZE = "-initialize";
    private static final String DEV = "-dev";
    private static final String WS = "-ws";
    private static final String OS = "-os";
    private static final String ARCH = "-arch";
    private static final String NL = "-nl";
    private static final String NL_EXTENSIONS = "-nlExtensions";
    private static final String CONFIGURATION = "-configuration";
    private static final String USER = "-user";
    private static final String NOEXIT = "-noExit";
    private static final String LAUNCHER = "-launcher";
    private static final String DATA = "-data";
    public static final String PROP_BUNDLES = "osgi.bundles";
    public static final String PROP_BUNDLES_STARTLEVEL = "osgi.bundles.defaultStartLevel";
    public static final String PROP_EXTENSIONS = "osgi.framework.extensions";
    public static final String PROP_INITIAL_STARTLEVEL = "osgi.startLevel";
    public static final String PROP_DEBUG = "osgi.debug";
    public static final String PROP_DEV = "osgi.dev";
    public static final String PROP_CLEAN = "osgi.clean";
    public static final String PROP_CONSOLE = "osgi.console";
    public static final String PROP_CONSOLE_CLASS = "osgi.consoleClass";
    public static final String PROP_CHECK_CONFIG = "osgi.checkConfiguration";
    public static final String PROP_OS = "osgi.os";
    public static final String PROP_WS = "osgi.ws";
    public static final String PROP_NL = "osgi.nl";
    private static final String PROP_NL_EXTENSIONS = "osgi.nl.extensions";
    public static final String PROP_ARCH = "osgi.arch";
    public static final String PROP_ADAPTOR = "osgi.adaptor";
    public static final String PROP_SYSPATH = "osgi.syspath";
    public static final String PROP_LOGFILE = "osgi.logfile";
    public static final String PROP_FRAMEWORK = "osgi.framework";
    public static final String PROP_INSTALL_AREA = "osgi.install.area";
    public static final String PROP_FRAMEWORK_SHAPE = "osgi.framework.shape";
    public static final String PROP_NOSHUTDOWN = "osgi.noShutdown";
    private static final String PROP_FORCED_RESTART = "osgi.forcedRestart";
    public static final String PROP_EXITCODE = "eclipse.exitcode";
    public static final String PROP_EXITDATA = "eclipse.exitdata";
    public static final String PROP_CONSOLE_LOG = "eclipse.consoleLog";
    public static final String PROP_IGNOREAPP = "eclipse.ignoreApp";
    public static final String PROP_REFRESH_BUNDLES = "eclipse.refreshBundles";
    private static final String PROP_ALLOW_APPRELAUNCH = "eclipse.allowAppRelaunch";
    private static final String PROP_APPLICATION_LAUNCHDEFAULT = "eclipse.application.launchDefault";
    private static final String FILE_SCHEME = "file:";
    private static final String REFERENCE_SCHEME = "reference:";
    private static final String REFERENCE_PROTOCOL = "reference";
    private static final String INITIAL_LOCATION = "initial@";
    protected static final String DEFAULT_ADAPTOR_CLASS = "org.eclipse.osgi.baseadaptor.BaseAdaptor";
    private static final int DEFAULT_INITIAL_STARTLEVEL = 6;
    private static final String DEFAULT_BUNDLES_STARTLEVEL = "4";
    private static FrameworkLog log;
    private static Map<String, String[]> searchCandidates;
    private static EclipseAppLauncher appLauncher;
    private static List<Runnable> shutdownHandlers;
    private static ConsoleManager consoleMgr;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;

    static {
        initialize = false;
        debug = false;
        running = false;
        framework = null;
        defaultMonitorRegistration = null;
        appLauncherRegistration = null;
        splashStreamRegistration = null;
        searchCandidates = new HashMap<String, String[]>(4);
        consoleMgr = null;
    }

    public static void main(String[] args) throws Exception {
        Object result;
        if (FrameworkProperties.getProperty("eclipse.startTime") == null) {
            FrameworkProperties.setProperty("eclipse.startTime", Long.toString(System.currentTimeMillis()));
        }
        if (FrameworkProperties.getProperty(PROP_NOSHUTDOWN) == null) {
            FrameworkProperties.setProperty(PROP_NOSHUTDOWN, "true");
        }
        if (FrameworkProperties.getProperty(Constants.OSGI_COMPATIBILITY_BOOTDELEGATION) == null) {
            FrameworkProperties.setProperty(Constants.OSGI_COMPATIBILITY_BOOTDELEGATION, "false");
        }
        if ((result = EclipseStarter.run(args, null)) instanceof Integer && !Boolean.valueOf(FrameworkProperties.getProperty(PROP_NOSHUTDOWN)).booleanValue()) {
            System.exit((Integer)result);
        }
    }

    public static Object run(String[] args, Runnable endSplashHandler) throws Exception {
        if (Profile.STARTUP) {
            Profile.logEnter("EclipseStarter.run()", null);
        }
        if (running) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ALREADY_RUNNING);
        }
        boolean startupFailed = true;
        try {
            EclipseStarter.startup(args, endSplashHandler);
            startupFailed = false;
            if (Boolean.valueOf(FrameworkProperties.getProperty(PROP_IGNOREAPP)).booleanValue() || EclipseStarter.isForcedRestart()) {
                return null;
            }
            Object object = EclipseStarter.run(null);
            return object;
        }
        catch (Throwable e) {
            if (endSplashHandler != null) {
                endSplashHandler.run();
            }
            FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, startupFailed ? EclipseAdaptorMsg.ECLIPSE_STARTUP_STARTUP_ERROR : EclipseAdaptorMsg.ECLIPSE_STARTUP_APP_ERROR, 1, e, null);
            if (log != null) {
                log.log(logEntry);
            } else {
                e.printStackTrace();
            }
        }
        finally {
            String report;
            try {
                if (EclipseStarter.isForcedRestart()) {
                    FrameworkProperties.setProperty(PROP_EXITCODE, "23");
                }
                if (!Boolean.valueOf(FrameworkProperties.getProperty(PROP_NOSHUTDOWN)).booleanValue()) {
                    EclipseStarter.shutdown();
                }
            }
            catch (Throwable e) {
                FrameworkLogEntry logEntry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, EclipseAdaptorMsg.ECLIPSE_STARTUP_SHUTDOWN_ERROR, 1, e, null);
                if (log != null) {
                    log.log(logEntry);
                }
                e.printStackTrace();
            }
            if (Profile.STARTUP) {
                Profile.logExit("EclipseStarter.run()");
            }
            if ((report = Profile.getProfileLog()) != null && report.length() > 0) {
                System.out.println(report);
            }
        }
        if (FrameworkProperties.getProperty(PROP_EXITCODE) == null) {
            FrameworkProperties.setProperty(PROP_EXITCODE, "13");
            FrameworkProperties.setProperty(PROP_EXITDATA, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_CHECK_LOG, log == null ? null : log.getFile().getPath()));
        }
        return null;
    }

    public static boolean isRunning() {
        return running;
    }

    public static BundleContext startup(String[] args, Runnable endSplashHandler) throws Exception {
        if (Profile.STARTUP) {
            Profile.logEnter("EclipseStarter.startup()", null);
        }
        if (running) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ALREADY_RUNNING);
        }
        FrameworkProperties.initializeProperties();
        EclipseStarter.processCommandLine(args);
        LocationManager.initializeLocations();
        EclipseStarter.loadConfigurationInfo();
        EclipseStarter.finalizeProperties();
        Profile.initProps();
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "props inited");
        }
        adaptor = EclipseStarter.createAdaptor();
        log = adaptor.getFrameworkLog();
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "adapter created");
        }
        framework = new Framework(adaptor);
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "OSGi created");
        }
        context = framework.getBundle(0L).getBundleContext();
        EclipseStarter.registerFrameworkShutdownHandlers();
        EclipseStarter.publishSplashScreen(endSplashHandler);
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "osgi launched");
        }
        if ((consoleMgr = ConsoleManager.startConsole(framework)) != null && Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "console started");
        }
        framework.launch();
        long stateStamp = adaptor.getState().getTimeStamp();
        Bundle[] startBundles = EclipseStarter.loadBasicBundles();
        if (startBundles == null || "true".equals(FrameworkProperties.getProperty(PROP_REFRESH_BUNDLES)) && EclipseStarter.refreshPackages(EclipseStarter.getCurrentBundles(false))) {
            EclipseStarter.waitForShutdown();
            return context;
        }
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "loading basic bundles");
        }
        EclipseStarter.setStartLevel(EclipseStarter.getStartLevel());
        if (Profile.STARTUP) {
            Profile.logTime("EclipseStarter.startup()", "StartLevel set");
        }
        EclipseStarter.ensureBundlesActive(startBundles);
        if ((debug || FrameworkProperties.getProperty(PROP_DEV) != null) && stateStamp != adaptor.getState().getTimeStamp()) {
            EclipseStarter.logUnresolvedBundles(context.getBundles());
        }
        running = true;
        if (Profile.STARTUP) {
            Profile.logExit("EclipseStarter.startup()");
        }
        return context;
    }

    private static int getStartLevel() {
        block3: {
            String level = FrameworkProperties.getProperty(PROP_INITIAL_STARTLEVEL);
            if (level != null) {
                try {
                    return Integer.parseInt(level);
                }
                catch (NumberFormatException numberFormatException) {
                    if (!debug) break block3;
                    System.out.println(new StringBuffer("Start level = ").append(level).append("  parsed. Using hardcoded default: 6").toString());
                }
            }
        }
        return 6;
    }

    public static Object run(Object argument) throws Exception {
        if (Profile.STARTUP) {
            Profile.logEnter("EclipseStarter.run(Object)()", null);
        }
        if (!running) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_NOT_RUNNING);
        }
        if (initialize) {
            return new Integer(0);
        }
        try {
            if (appLauncher == null) {
                boolean launchDefault = Boolean.valueOf(FrameworkProperties.getProperty(PROP_APPLICATION_LAUNCHDEFAULT, "true"));
                appLauncher = new EclipseAppLauncher(context, Boolean.valueOf(FrameworkProperties.getProperty(PROP_ALLOW_APPRELAUNCH)), launchDefault, log);
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.osgi.service.runnable.ApplicationLauncher");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                appLauncherRegistration = context.registerService(clazz.getName(), (Object)appLauncher, null);
                return appLauncher.start(argument);
            }
            return appLauncher.reStart(argument);
        }
        catch (Exception e) {
            if (log != null && context != null) {
                EclipseStarter.logUnresolvedBundles(context.getBundles());
            }
            throw e;
        }
    }

    public static void shutdown() throws Exception {
        if (!running || framework == null) {
            return;
        }
        if (appLauncherRegistration != null) {
            appLauncherRegistration.unregister();
        }
        if (splashStreamRegistration != null) {
            splashStreamRegistration.unregister();
        }
        if (defaultMonitorRegistration != null) {
            defaultMonitorRegistration.unregister();
        }
        if (appLauncher != null) {
            appLauncher.shutdown();
        }
        appLauncherRegistration = null;
        appLauncher = null;
        splashStreamRegistration = null;
        defaultMonitorRegistration = null;
        if (consoleMgr != null) {
            consoleMgr.stopConsole();
            consoleMgr = null;
        }
        framework.close();
        framework = null;
        context = null;
        running = false;
    }

    private static void ensureBundlesActive(Bundle[] bundles) {
        ServiceTracker tracker = null;
        try {
            int i = 0;
            while (i < bundles.length) {
                if (bundles[i].getState() != 32) {
                    if (bundles[i].getState() == 2) {
                        log.log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_BUNDLE_NOT_RESOLVED, bundles[i].getLocation()), 0, null, null));
                    } else {
                        StartLevel sl;
                        if (tracker == null) {
                            Class<?> clazz = class$1;
                            if (clazz == null) {
                                try {
                                    clazz = Class.forName("org.osgi.service.startlevel.StartLevel");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            tracker = new ServiceTracker(context, clazz.getName(), null);
                            tracker.open();
                        }
                        if ((sl = (StartLevel)tracker.getService()) != null && sl.getBundleStartLevel(bundles[i]) <= sl.getStartLevel()) {
                            log.log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_BUNDLE_NOT_ACTIVE, bundles[i]), 0, null, null));
                        }
                    }
                }
                ++i;
            }
        }
        finally {
            if (tracker != null) {
                tracker.close();
            }
        }
    }

    private static void logUnresolvedBundles(Bundle[] bundles) {
        State state = adaptor.getState();
        FrameworkLog logService = adaptor.getFrameworkLog();
        StateHelper stateHelper = adaptor.getPlatformAdmin().getStateHelper();
        VersionConstraint[] leafConstraints = stateHelper.getUnsatisfiedLeaves(state.getBundles());
        HashMap<BundleDescription, ArrayList<VersionConstraint>> missing = new HashMap<BundleDescription, ArrayList<VersionConstraint>>();
        int i = 0;
        while (i < leafConstraints.length) {
            if (!(leafConstraints[i] instanceof BundleSpecification && ((BundleSpecification)leafConstraints[i]).isOptional() || leafConstraints[i] instanceof ImportPackageSpecification && ("optional".equals(((ImportPackageSpecification)leafConstraints[i]).getDirective("resolution")) || "dynamic".equals(((ImportPackageSpecification)leafConstraints[i]).getDirective("resolution"))))) {
                BundleDescription bundle = leafConstraints[i].getBundle();
                ArrayList<VersionConstraint> constraints = (ArrayList<VersionConstraint>)missing.get(bundle);
                if (constraints == null) {
                    constraints = new ArrayList<VersionConstraint>();
                    missing.put(bundle, constraints);
                }
                constraints.add(leafConstraints[i]);
            }
            ++i;
        }
        if (missing.size() > 0) {
            FrameworkLogEntry[] rootChildren = new FrameworkLogEntry[missing.size()];
            int rootIndex = 0;
            for (BundleDescription description : missing.keySet()) {
                String symbolicName = description.getSymbolicName() == null ? "org.eclipse.osgi" : description.getSymbolicName();
                String generalMessage = NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_BUNDLE_NOT_RESOLVED, description.getLocation());
                List constraints = (List)missing.get(description);
                FrameworkLogEntry[] logChildren = new FrameworkLogEntry[constraints.size()];
                int i2 = 0;
                while (i2 < logChildren.length) {
                    logChildren[i2] = new FrameworkLogEntry(symbolicName, 2, 0, MessageHelper.getResolutionFailureMessage((VersionConstraint)constraints.get(i2)), 0, null, null);
                    ++i2;
                }
                rootChildren[rootIndex] = new FrameworkLogEntry("org.eclipse.osgi", 2, 0, generalMessage, 0, null, logChildren);
                ++rootIndex;
            }
            logService.log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, EclipseAdaptorMsg.ECLIPSE_STARTUP_ROOTS_NOT_RESOLVED, 0, null, rootChildren));
        }
        ArrayList<FrameworkLogEntry> allChildren = new ArrayList<FrameworkLogEntry>();
        int i3 = 0;
        while (i3 < bundles.length) {
            if (bundles[i3].getState() == 2) {
                String symbolicName = bundles[i3].getSymbolicName() == null ? "org.eclipse.osgi" : bundles[i3].getSymbolicName();
                String generalMessage = NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_ERROR_BUNDLE_NOT_RESOLVED, bundles[i3]);
                BundleDescription description = state.getBundle(bundles[i3].getBundleId());
                if (description != null) {
                    FrameworkLogEntry[] logChildren = null;
                    VersionConstraint[] unsatisfied = stateHelper.getUnsatisfiedConstraints(description);
                    if (unsatisfied.length > 0) {
                        logChildren = new FrameworkLogEntry[unsatisfied.length];
                        int j = 0;
                        while (j < unsatisfied.length) {
                            logChildren[j] = new FrameworkLogEntry(symbolicName, 2, 0, MessageHelper.getResolutionFailureMessage(unsatisfied[j]), 0, null, null);
                            ++j;
                        }
                    } else {
                        ResolverError[] resolverErrors = state.getResolverErrors(description);
                        if (resolverErrors.length > 0) {
                            logChildren = new FrameworkLogEntry[resolverErrors.length];
                            int j = 0;
                            while (j < resolverErrors.length) {
                                logChildren[j] = new FrameworkLogEntry(symbolicName, 2, 0, resolverErrors[j].toString(), 0, null, null);
                                ++j;
                            }
                        }
                    }
                    allChildren.add(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, generalMessage, 0, null, logChildren));
                }
            }
            ++i3;
        }
        if (allChildren.size() > 0) {
            logService.log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, EclipseAdaptorMsg.ECLIPSE_STARTUP_ALL_NOT_RESOLVED, 0, null, allChildren.toArray(new FrameworkLogEntry[allChildren.size()])));
        }
    }

    private static void publishSplashScreen(Runnable endSplashHandler) {
        block11: {
            if (endSplashHandler == null) {
                return;
            }
            try {
                Method method = endSplashHandler.getClass().getMethod("getOutputStream", new Class[0]);
                Object outputStream = method.invoke(endSplashHandler, new Object[0]);
                if (!(outputStream instanceof OutputStream)) break block11;
                Hashtable<String, String> osProperties = new Hashtable<String, String>();
                ((Dictionary)osProperties).put("name", "splashstream");
                Class<?> clazz = class$2;
                if (clazz == null) {
                    try {
                        clazz = class$2 = Class.forName("java.io.OutputStream");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                splashStreamRegistration = context.registerService(clazz.getName(), outputStream, osProperties);
            }
            catch (Exception exception) {}
        }
        try {
            Hashtable<String, Integer> monitorProps = new Hashtable<String, Integer>();
            ((Dictionary)monitorProps).put("service.ranking", new Integer(Integer.MIN_VALUE));
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.osgi.service.runnable.StartupMonitor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            defaultMonitorRegistration = context.registerService(clazz.getName(), (Object)new DefaultStartupMonitor(endSplashHandler), monitorProps);
        }
        catch (IllegalStateException illegalStateException) {}
    }

    private static URL searchForBundle(String name, String parent) throws MalformedURLException {
        Object result;
        URL url = null;
        File fileLocation = null;
        boolean reference = false;
        try {
            new URL(name);
            url = new URL(new File(parent).toURL(), name);
        }
        catch (MalformedURLException malformedURLException) {
            File child = new File(name);
            fileLocation = child.isAbsolute() ? child : new File(parent, name);
            url = new URL(REFERENCE_PROTOCOL, null, fileLocation.toURL().toExternalForm());
            reference = true;
        }
        if (!reference) {
            URL baseURL = url;
            if (url.getProtocol().equals(REFERENCE_PROTOCOL)) {
                File child;
                reference = true;
                String baseSpec = url.getFile();
                baseURL = baseSpec.startsWith(FILE_SCHEME) ? ((child = new File(baseSpec.substring(5))).isAbsolute() ? child.toURL() : new File(parent, child.getPath()).toURL()) : new URL(baseSpec);
            }
            if (!(fileLocation = new File(baseURL.getFile())).isAbsolute()) {
                fileLocation = new File(parent, fileLocation.toString());
            }
        }
        if (reference) {
            result = EclipseStarter.searchFor(fileLocation.getName(), new File(fileLocation.getParent()).getAbsolutePath());
            if (result != null) {
                url = new URL(REFERENCE_PROTOCOL, null, new StringBuffer(FILE_SCHEME).append((String)result).toString());
            } else {
                return null;
            }
        }
        try {
            result = url.openConnection();
            ((URLConnection)result).connect();
            return url;
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private static Bundle[] loadBasicBundles() {
        long startTime = System.currentTimeMillis();
        String osgiBundles = FrameworkProperties.getProperty(PROP_BUNDLES);
        String osgiExtensions = FrameworkProperties.getProperty(PROP_EXTENSIONS);
        if (osgiExtensions != null && osgiExtensions.length() > 0) {
            osgiBundles = new StringBuffer(String.valueOf(osgiExtensions)).append(',').append(osgiBundles).toString();
            FrameworkProperties.setProperty(PROP_BUNDLES, osgiBundles);
        }
        String[] installEntries = EclipseStarter.getArrayFromList(osgiBundles, ",");
        InitialBundle[] initialBundles = EclipseStarter.getInitialBundles(installEntries);
        Bundle[] curInitBundles = EclipseStarter.getCurrentBundles(true);
        ArrayList<Bundle> toRefresh = new ArrayList<Bundle>(curInitBundles.length);
        EclipseStarter.uninstallBundles(curInitBundles, initialBundles, toRefresh);
        ArrayList<Bundle> startBundles = new ArrayList<Bundle>(installEntries.length);
        ArrayList<Bundle> lazyActivationBundles = new ArrayList<Bundle>(installEntries.length);
        EclipseStarter.installBundles(initialBundles, curInitBundles, startBundles, lazyActivationBundles, toRefresh);
        if (!toRefresh.isEmpty() && EclipseStarter.refreshPackages(toRefresh.toArray(new Bundle[toRefresh.size()]))) {
            return null;
        }
        Bundle[] startInitBundles = startBundles.toArray(new Bundle[startBundles.size()]);
        Bundle[] lazyInitBundles = lazyActivationBundles.toArray(new Bundle[lazyActivationBundles.size()]);
        EclipseStarter.startBundles(startInitBundles, lazyInitBundles);
        if (debug) {
            System.out.println(new StringBuffer("Time to load bundles: ").append(System.currentTimeMillis() - startTime).toString());
        }
        return startInitBundles;
    }

    private static InitialBundle[] getInitialBundles(String[] installEntries) {
        searchCandidates.clear();
        ArrayList<InitialBundle> result = new ArrayList<InitialBundle>(installEntries.length);
        int defaultStartLevel = Integer.parseInt(FrameworkProperties.getProperty(PROP_BUNDLES_STARTLEVEL, DEFAULT_BUNDLES_STARTLEVEL));
        String syspath = EclipseStarter.getSysPath();
        try {
            syspath = new File(syspath).getCanonicalPath();
        }
        catch (IOException iOException) {}
        int i = 0;
        while (i < installEntries.length) {
            String name = installEntries[i];
            int level = defaultStartLevel;
            boolean start = false;
            int index = name.lastIndexOf(64);
            if (index >= 0) {
                String[] attributes = EclipseStarter.getArrayFromList(name.substring(index + 1, name.length()), ":");
                int j = 0;
                while (j < attributes.length) {
                    String attribute = attributes[j];
                    if (attribute.equals("start")) {
                        start = true;
                    } else {
                        try {
                            level = Integer.parseInt(attribute);
                        }
                        catch (NumberFormatException numberFormatException) {
                            index = name.length();
                        }
                    }
                    ++j;
                }
                name = name.substring(0, index);
            }
            try {
                URL location = EclipseStarter.searchForBundle(name, syspath);
                if (location == null) {
                    FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_BUNDLE_NOT_FOUND, installEntries[i]), 0, null, null);
                    log.log(entry);
                } else {
                    location = EclipseStarter.makeRelative(LocationManager.getInstallLocation().getURL(), location);
                    String locationString = new StringBuffer(INITIAL_LOCATION).append(location.toExternalForm()).toString();
                    result.add(new InitialBundle(locationString, location, level, start));
                }
            }
            catch (IOException e) {
                log.log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, e.getMessage(), 0, e, null));
            }
            ++i;
        }
        return result.toArray(new InitialBundle[result.size()]);
    }

    private static boolean refreshPackages(Bundle[] bundles) {
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference<?> packageAdminRef = context.getServiceReference(clazz.getName());
        PackageAdmin packageAdmin = null;
        if (packageAdminRef != null) {
            packageAdmin = (PackageAdmin)context.getService(packageAdminRef);
        }
        if (packageAdmin == null) {
            return false;
        }
        Semaphore semaphore = new Semaphore(0);
        StartupEventListener listener = new StartupEventListener(semaphore, 4);
        context.addFrameworkListener(listener);
        context.addBundleListener(listener);
        packageAdmin.refreshPackages(bundles);
        context.ungetService(packageAdminRef);
        EclipseStarter.updateSplash(semaphore, listener);
        return EclipseStarter.isForcedRestart();
    }

    private static void waitForShutdown() {
        if (!EclipseStarter.isForcedRestart()) {
            return;
        }
        AbstractBundle systemBundle = framework.getBundle(0L);
        for (int i = 0; i < 5000 && (systemBundle.getState() & 0x38) != 0; i += 200) {
            try {
                Thread.sleep(200L);
                continue;
            }
            catch (InterruptedException interruptedException) {
                break;
            }
        }
    }

    private static FrameworkAdaptor createAdaptor() throws Exception {
        String adaptorClassName = FrameworkProperties.getProperty(PROP_ADAPTOR, DEFAULT_ADAPTOR_CLASS);
        Class<?> adaptorClass = Class.forName(adaptorClassName);
        Class[] classArray = new Class[1];
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("[Ljava.lang.String;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class[] constructorArgs = classArray;
        Constructor<?> constructor = adaptorClass.getConstructor(constructorArgs);
        return (FrameworkAdaptor)constructor.newInstance(new Object[]{new String[0]});
    }

    private static String[] processCommandLine(String[] args) throws Exception {
        EclipseEnvironmentInfo.setAllArgs(args);
        if (args.length == 0) {
            EclipseEnvironmentInfo.setFrameworkArgs(args);
            EclipseEnvironmentInfo.setAllArgs(args);
            return args;
        }
        int[] configArgs = new int[args.length];
        configArgs[0] = -1;
        int configArgIndex = 0;
        int i = 0;
        while (i < args.length) {
            boolean found = false;
            if (args[i].equalsIgnoreCase(DEBUG) && (i + 1 == args.length || i + 1 < args.length && args[i + 1].startsWith("-"))) {
                FrameworkProperties.setProperty(PROP_DEBUG, "");
                debug = true;
                found = true;
            }
            if (args[i].equalsIgnoreCase(DEV) && (i + 1 == args.length || i + 1 < args.length && args[i + 1].startsWith("-"))) {
                FrameworkProperties.setProperty(PROP_DEV, "");
                found = true;
            }
            if (args[i].equalsIgnoreCase(INITIALIZE)) {
                initialize = true;
                found = true;
            }
            if (args[i].equalsIgnoreCase(CLEAN)) {
                FrameworkProperties.setProperty(PROP_CLEAN, "true");
                found = true;
            }
            if (args[i].equalsIgnoreCase(CONSOLE_LOG)) {
                FrameworkProperties.setProperty(PROP_CONSOLE_LOG, "true");
                found = true;
            }
            if (args[i].equalsIgnoreCase(CONSOLE) && (i + 1 == args.length || i + 1 < args.length && args[i + 1].startsWith("-"))) {
                FrameworkProperties.setProperty(PROP_CONSOLE, "");
                found = true;
            }
            if (args[i].equalsIgnoreCase(NOEXIT)) {
                FrameworkProperties.setProperty(PROP_NOSHUTDOWN, "true");
                found = true;
            }
            if (found) {
                configArgs[configArgIndex++] = i;
            } else if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                String arg = args[++i];
                if (args[i - 1].equalsIgnoreCase(CONSOLE)) {
                    FrameworkProperties.setProperty(PROP_CONSOLE, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(CONFIGURATION)) {
                    FrameworkProperties.setProperty("osgi.configuration.area", arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(DATA)) {
                    FrameworkProperties.setProperty("osgi.instance.area", arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(USER)) {
                    FrameworkProperties.setProperty("osgi.user.area", arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(LAUNCHER)) {
                    FrameworkProperties.setProperty("eclipse.launcher", arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(DEV)) {
                    FrameworkProperties.setProperty(PROP_DEV, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(DEBUG)) {
                    FrameworkProperties.setProperty(PROP_DEBUG, arg);
                    debug = true;
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(WS)) {
                    FrameworkProperties.setProperty(PROP_WS, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(OS)) {
                    FrameworkProperties.setProperty(PROP_OS, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(ARCH)) {
                    FrameworkProperties.setProperty(PROP_ARCH, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(NL)) {
                    FrameworkProperties.setProperty(PROP_NL, arg);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(NL_EXTENSIONS)) {
                    FrameworkProperties.setProperty(PROP_NL_EXTENSIONS, arg);
                    found = true;
                }
                if (found) {
                    configArgs[configArgIndex++] = i - 1;
                    configArgs[configArgIndex++] = i;
                }
            }
            ++i;
        }
        if (configArgIndex == 0) {
            EclipseEnvironmentInfo.setFrameworkArgs(new String[0]);
            EclipseEnvironmentInfo.setAppArgs(args);
            return args;
        }
        String[] appArgs = new String[args.length - configArgIndex];
        String[] frameworkArgs = new String[configArgIndex];
        configArgIndex = 0;
        int j = 0;
        int k = 0;
        int i2 = 0;
        while (i2 < args.length) {
            if (i2 == configArgs[configArgIndex]) {
                frameworkArgs[k++] = args[i2];
                ++configArgIndex;
            } else {
                appArgs[j++] = args[i2];
            }
            ++i2;
        }
        EclipseEnvironmentInfo.setFrameworkArgs(frameworkArgs);
        EclipseEnvironmentInfo.setAppArgs(appArgs);
        return appArgs;
    }

    private static String[] getArrayFromList(String prop, String separator) {
        return ManifestElement.getArrayFromList(prop, separator);
    }

    protected static String getSysPath() {
        String result = FrameworkProperties.getProperty(PROP_SYSPATH);
        if (result != null) {
            return result;
        }
        result = EclipseStarter.getSysPathFromURL(FrameworkProperties.getProperty(PROP_FRAMEWORK));
        if (result == null) {
            result = EclipseStarter.getSysPathFromCodeSource();
        }
        if (result == null) {
            throw new IllegalStateException("Can not find the system path.");
        }
        if (Character.isUpperCase(result.charAt(0))) {
            char[] chars = result.toCharArray();
            chars[0] = Character.toLowerCase(chars[0]);
            result = new String(chars);
        }
        FrameworkProperties.setProperty(PROP_SYSPATH, result);
        return result;
    }

    private static String getSysPathFromURL(String urlSpec) {
        if (urlSpec == null) {
            return null;
        }
        URL url = LocationHelper.buildURL(urlSpec, false);
        if (url == null) {
            return null;
        }
        File fwkFile = new File(url.getFile());
        fwkFile = new File(fwkFile.getAbsolutePath());
        fwkFile = new File(fwkFile.getParent());
        return fwkFile.getAbsolutePath();
    }

    private static String getSysPathFromCodeSource() {
        ProtectionDomain pd;
        Class<?> clazz = class$6;
        if (clazz == null) {
            try {
                clazz = class$6 = Class.forName("org.eclipse.core.runtime.adaptor.EclipseStarter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((pd = clazz.getProtectionDomain()) == null) {
            return null;
        }
        CodeSource cs = pd.getCodeSource();
        if (cs == null) {
            return null;
        }
        URL url = cs.getLocation();
        if (url == null) {
            return null;
        }
        String result = url.getFile();
        if (result.endsWith(".jar")) {
            result = result.substring(0, result.lastIndexOf(47));
            if ("folder".equals(FrameworkProperties.getProperty(PROP_FRAMEWORK_SHAPE))) {
                result = result.substring(0, result.lastIndexOf(47));
            }
        } else {
            if (result.endsWith("/")) {
                result = result.substring(0, result.length() - 1);
            }
            result = result.substring(0, result.lastIndexOf(47));
            result = result.substring(0, result.lastIndexOf(47));
        }
        return result;
    }

    private static Bundle[] getCurrentBundles(boolean includeInitial) {
        Bundle[] installed = context.getBundles();
        ArrayList<Bundle> initial = new ArrayList<Bundle>();
        int i = 0;
        while (i < installed.length) {
            Bundle bundle = installed[i];
            if (bundle.getLocation().startsWith(INITIAL_LOCATION)) {
                if (includeInitial) {
                    initial.add(bundle);
                }
            } else if (!includeInitial && bundle.getBundleId() != 0L) {
                initial.add(bundle);
            }
            ++i;
        }
        return initial.toArray(new Bundle[initial.size()]);
    }

    private static Bundle getBundleByLocation(String location, Bundle[] bundles) {
        int i = 0;
        while (i < bundles.length) {
            Bundle bundle = bundles[i];
            if (location.equalsIgnoreCase(bundle.getLocation())) {
                return bundle;
            }
            ++i;
        }
        return null;
    }

    private static void uninstallBundles(Bundle[] curInitBundles, InitialBundle[] newInitBundles, List<Bundle> toRefresh) {
        int i = 0;
        while (i < curInitBundles.length) {
            boolean found = false;
            int j = 0;
            while (j < newInitBundles.length) {
                if (curInitBundles[i].getLocation().equalsIgnoreCase(newInitBundles[j].locationString)) {
                    found = true;
                    break;
                }
                ++j;
            }
            if (!found) {
                try {
                    curInitBundles[i].uninstall();
                    toRefresh.add(curInitBundles[i]);
                }
                catch (BundleException e) {
                    FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FAILED_UNINSTALL, curInitBundles[i].getLocation()), 0, e, null);
                    log.log(entry);
                }
            }
            ++i;
        }
    }

    private static void installBundles(InitialBundle[] initialBundles, Bundle[] curInitBundles, List<Bundle> startBundles, List<Bundle> lazyActivationBundles, List<Bundle> toRefresh) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.osgi.service.startlevel.StartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference<?> reference = context.getServiceReference(clazz.getName());
        StartLevel startService = null;
        if (reference != null) {
            startService = (StartLevel)context.getService(reference);
        }
        try {
            int i = 0;
            while (i < initialBundles.length) {
                FrameworkLogEntry entry;
                Bundle osgiBundle = EclipseStarter.getBundleByLocation(initialBundles[i].locationString, curInitBundles);
                try {
                    if (osgiBundle == null) {
                        InputStream in = initialBundles[i].location.openStream();
                        try {
                            osgiBundle = context.installBundle(initialBundles[i].locationString, in);
                        }
                        catch (BundleException e) {
                            StatusException status;
                            StatusException statusException = status = e instanceof StatusException ? (StatusException)((Object)e) : null;
                            if (status != null && status.getStatusCode() == 1 && status.getStatus() instanceof Bundle) {
                                osgiBundle = (Bundle)status.getStatus();
                            }
                            throw e;
                        }
                        if (!initialBundles[i].start && EclipseStarter.hasLazyActivationPolicy(osgiBundle)) {
                            lazyActivationBundles.add(osgiBundle);
                        }
                    }
                    if ((osgiBundle.getState() & 1) == 0 && initialBundles[i].level >= 0 && startService != null) {
                        startService.setBundleStartLevel(osgiBundle, initialBundles[i].level);
                    }
                    if (initialBundles[i].start) {
                        startBundles.add(osgiBundle);
                    }
                    if ((osgiBundle.getState() & 2) != 0) {
                        toRefresh.add(osgiBundle);
                    }
                }
                catch (BundleException e) {
                    entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FAILED_INSTALL, initialBundles[i].location), 0, e, null);
                    log.log(entry);
                }
                catch (IOException e) {
                    entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FAILED_INSTALL, initialBundles[i].location), 0, e, null);
                    log.log(entry);
                }
                ++i;
            }
        }
        finally {
            if (reference != null) {
                context.ungetService(reference);
            }
        }
    }

    private static boolean hasLazyActivationPolicy(Bundle target) {
        block9: {
            ManifestElement[] elements;
            block10: {
                Dictionary<String, String> headers;
                block8: {
                    headers = target.getHeaders("");
                    String fragmentHost = headers.get("Fragment-Host");
                    if (fragmentHost != null) {
                        return false;
                    }
                    String activationPolicy = headers.get("Bundle-ActivationPolicy");
                    try {
                        if (activationPolicy == null) break block8;
                        ManifestElement[] elements2 = ManifestElement.parseHeader("Bundle-ActivationPolicy", activationPolicy);
                        if (elements2 != null && elements2.length > 0 && "lazy".equals(elements2[0].getValue())) {
                            return true;
                        }
                        break block9;
                    }
                    catch (BundleException bundleException) {}
                }
                String eclipseLazyStart = headers.get("Eclipse-LazyStart");
                if (eclipseLazyStart == null) {
                    eclipseLazyStart = headers.get("Eclipse-AutoStart");
                }
                if ((elements = ManifestElement.parseHeader("Eclipse-LazyStart", eclipseLazyStart)) == null || elements.length <= 0) break block9;
                if (!"true".equals(elements[0].getValue())) break block10;
                return true;
            }
            if (elements[0].getDirective("exceptions") != null) {
                return true;
            }
        }
        return false;
    }

    private static void startBundles(Bundle[] startBundles, Bundle[] lazyBundles) {
        int i = 0;
        while (i < startBundles.length) {
            EclipseStarter.startBundle(startBundles[i], 0);
            ++i;
        }
        i = 0;
        while (i < lazyBundles.length) {
            EclipseStarter.startBundle(lazyBundles[i], 2);
            ++i;
        }
    }

    private static void startBundle(Bundle bundle, int options) {
        block2: {
            try {
                bundle.start(options);
            }
            catch (BundleException e) {
                if ((bundle.getState() & 4) == 0) break block2;
                FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_FAILED_START, bundle.getLocation()), 0, e, null);
                log.log(entry);
            }
        }
    }

    private static void loadConfigurationInfo() {
        Location configArea = LocationManager.getConfigurationLocation();
        if (configArea == null) {
            return;
        }
        URL location = null;
        try {
            location = new URL(new StringBuffer(String.valueOf(configArea.getURL().toExternalForm())).append("config.ini").toString());
        }
        catch (MalformedURLException malformedURLException) {}
        EclipseStarter.mergeProperties(FrameworkProperties.getProperties(), EclipseStarter.loadProperties(location));
    }

    private static Properties loadProperties(URL location) {
        Properties result = new Properties();
        if (location == null) {
            return result;
        }
        try {
            InputStream in = location.openStream();
            try {
                result.load(in);
            }
            finally {
                in.close();
            }
        }
        catch (IOException iOException) {}
        return result;
    }

    private static URL makeRelative(URL base, URL location) throws MalformedURLException {
        if (base == null) {
            return location;
        }
        if (!"file".equals(base.getProtocol())) {
            return location;
        }
        if (!location.getProtocol().equals(REFERENCE_PROTOCOL)) {
            return location;
        }
        URL nonReferenceLocation = new URL(location.getPath());
        if (!base.getProtocol().equals(nonReferenceLocation.getProtocol())) {
            return location;
        }
        File locationPath = new File(nonReferenceLocation.getPath());
        if (!locationPath.isAbsolute()) {
            return location;
        }
        File relativePath = EclipseStarter.makeRelative(new File(base.getPath()), locationPath);
        String urlPath = relativePath.getPath();
        if (File.separatorChar != '/') {
            urlPath = urlPath.replace(File.separatorChar, '/');
        }
        if (nonReferenceLocation.getPath().endsWith("/")) {
            urlPath = new StringBuffer(String.valueOf(urlPath)).append('/').toString();
        }
        URL relativeURL = new URL(base.getProtocol(), base.getHost(), base.getPort(), urlPath);
        relativeURL = new URL(new StringBuffer(REFERENCE_SCHEME).append(relativeURL.toExternalForm()).toString());
        return relativeURL;
    }

    private static File makeRelative(File base, File location) {
        if (!location.isAbsolute()) {
            return location;
        }
        File relative = new File(new FilePath(base).makeRelative(new FilePath(location)));
        return relative;
    }

    private static void mergeProperties(Properties destination, Properties source) {
        Enumeration e = source.keys();
        while (e.hasMoreElements()) {
            String key = (String)e.nextElement();
            String value = source.getProperty(key);
            if (destination.getProperty(key) != null) continue;
            destination.setProperty(key, value);
        }
    }

    private static void setStartLevel(int value) {
        ServiceReference<?> reference;
        StartLevel startLevel;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.osgi.service.startlevel.StartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        StartLevel startLevel2 = startLevel = (reference = context.getServiceReference(clazz.getName())) != null ? (StartLevel)context.getService(reference) : null;
        if (startLevel == null) {
            return;
        }
        Semaphore semaphore = new Semaphore(0);
        StartupEventListener listener = new StartupEventListener(semaphore, 8);
        context.addFrameworkListener(listener);
        context.addBundleListener(listener);
        startLevel.setStartLevel(value);
        context.ungetService(reference);
        EclipseStarter.updateSplash(semaphore, listener);
    }

    private static void updateSplash(Semaphore semaphore, StartupEventListener listener) {
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.osgi.service.runnable.StartupMonitor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceTracker monitorTracker = new ServiceTracker(context, clazz.getName(), null);
        monitorTracker.open();
        try {
            do {
                StartupMonitor monitor;
                if ((monitor = (StartupMonitor)monitorTracker.getService()) == null) continue;
                try {
                    monitor.update();
                }
                catch (Throwable throwable) {}
            } while (!semaphore.acquire(50L));
        }
        finally {
            if (listener != null) {
                context.removeFrameworkListener(listener);
                context.removeBundleListener(listener);
            }
            monitorTracker.close();
        }
    }

    private static String searchFor(String target, String start) {
        String[] candidates = searchCandidates.get(start);
        if (candidates == null) {
            String decodePath;
            File f;
            File startFile = new File(start);
            if (!startFile.exists() && start.indexOf(37) >= 0 && (f = new File(decodePath = FrameworkProperties.decode(start))).exists()) {
                startFile = f;
            }
            if ((candidates = startFile.list()) != null) {
                searchCandidates.put(start, candidates);
            }
        }
        if (candidates == null) {
            return null;
        }
        String result = null;
        Object[] maxVersion = null;
        int i = 0;
        while (i < candidates.length) {
            block11: {
                String version;
                Object[] currentVersion;
                char versionSep;
                boolean simpleJar;
                String candidateName;
                block12: {
                    candidateName = candidates[i];
                    if (!candidateName.startsWith(target)) break block11;
                    simpleJar = false;
                    char c = versionSep = candidateName.length() > target.length() ? candidateName.charAt(target.length()) : (char)'\u0000';
                    if (candidateName.length() <= target.length() || versionSep == '_' || versionSep == '-') break block12;
                    if (candidateName.length() != 4 + target.length() || !candidateName.endsWith(".jar")) break block11;
                    simpleJar = true;
                }
                if ((currentVersion = EclipseStarter.getVersionElements(version = candidateName.length() > target.length() + 1 && (versionSep == '_' || versionSep == '-') ? candidateName.substring(target.length() + 1) : "")) != null && EclipseStarter.compareVersion(maxVersion, currentVersion) < 0) {
                    File candidate = new File(start, candidateName);
                    if (!simpleJar || candidate.isFile()) {
                        result = candidate.getAbsolutePath();
                        maxVersion = currentVersion;
                    }
                }
            }
            ++i;
        }
        if (result == null) {
            return null;
        }
        return new StringBuffer(String.valueOf(result.replace(File.separatorChar, '/'))).append("/").toString();
    }

    private static Object[] getVersionElements(String version) {
        Object[] result = new Object[]{new Integer(-1), new Integer(-1), new Integer(-1), ""};
        StringTokenizer t = new StringTokenizer(version, ".");
        int i = 0;
        while (t.hasMoreTokens() && i < 4) {
            String token = t.nextToken();
            if (i < 3) {
                try {
                    result[i] = new Integer(token);
                }
                catch (Exception exception) {
                    if (i != 0) break;
                    return null;
                }
            } else {
                result[i] = token;
            }
            ++i;
        }
        return result;
    }

    private static int compareVersion(Object[] left, Object[] right) {
        if (left == null) {
            return -1;
        }
        int result = ((Integer)left[0]).compareTo((Integer)right[0]);
        if (result != 0) {
            return result;
        }
        result = ((Integer)left[1]).compareTo((Integer)right[1]);
        if (result != 0) {
            return result;
        }
        result = ((Integer)left[2]).compareTo((Integer)right[2]);
        if (result != 0) {
            return result;
        }
        return ((String)left[3]).compareTo((String)right[3]);
    }

    private static void finalizeProperties() {
        if (FrameworkProperties.getProperty(PROP_DEV) != null && FrameworkProperties.getProperty(PROP_CHECK_CONFIG) == null) {
            FrameworkProperties.setProperty(PROP_CHECK_CONFIG, "true");
        }
    }

    public static void setInitialProperties(Map<String, String> initialProperties) {
        if (initialProperties == null || initialProperties.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : initialProperties.entrySet()) {
            if (entry.getValue() != null) {
                FrameworkProperties.setProperty(entry.getKey(), entry.getValue());
                continue;
            }
            FrameworkProperties.clearProperty(entry.getKey());
        }
    }

    public static BundleContext getSystemBundleContext() {
        if (context == null || !running) {
            return null;
        }
        return context.getBundle().getBundleContext();
    }

    private static boolean isForcedRestart() {
        return Boolean.valueOf(FrameworkProperties.getProperty(PROP_FORCED_RESTART));
    }

    static void internalAddFrameworkShutdownHandler(Runnable handler) {
        if (running) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ALREADY_RUNNING);
        }
        if (shutdownHandlers == null) {
            shutdownHandlers = new ArrayList<Runnable>();
        }
        shutdownHandlers.add(handler);
    }

    static void internalRemoveFrameworkShutdownHandler(Runnable handler) {
        if (running) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_STARTUP_ALREADY_RUNNING);
        }
        if (shutdownHandlers != null) {
            shutdownHandlers.remove(handler);
        }
    }

    private static void registerFrameworkShutdownHandlers() {
        if (shutdownHandlers == null) {
            return;
        }
        final Bundle systemBundle = context.getBundle();
        for (final Runnable handler : shutdownHandlers) {
            BundleListener listener = new BundleListener(){

                public void bundleChanged(BundleEvent event) {
                    if (event.getBundle() == systemBundle && event.getType() == 4) {
                        handler.run();
                    }
                }
            };
            context.addBundleListener(listener);
        }
    }

    private static class InitialBundle {
        public final String locationString;
        public final URL location;
        public final int level;
        public final boolean start;

        InitialBundle(String locationString, URL location, int level, boolean start) {
            this.locationString = locationString;
            this.location = location;
            this.level = level;
            this.start = start;
        }
    }

    static class StartupEventListener
    implements SynchronousBundleListener,
    FrameworkListener {
        private final Semaphore semaphore;
        private final int frameworkEventType;

        public StartupEventListener(Semaphore semaphore, int frameworkEventType) {
            this.semaphore = semaphore;
            this.frameworkEventType = frameworkEventType;
        }

        public void bundleChanged(BundleEvent event) {
            if (event.getBundle().getBundleId() == 0L && event.getType() == 256) {
                this.semaphore.release();
            }
        }

        public void frameworkEvent(FrameworkEvent event) {
            if (event.getType() == this.frameworkEventType) {
                this.semaphore.release();
            }
        }
    }
}

