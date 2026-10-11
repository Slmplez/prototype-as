/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.auth.AuthorizationHandler
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.internal.runtime.Messages;
import org.eclipse.core.internal.runtime.PlatformActivator;
import org.eclipse.core.internal.runtime.auth.AuthorizationHandler;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IPluginRegistry;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.osgi.framework.Bundle;

public final class Platform {
    public static final String PI_RUNTIME = "org.eclipse.core.runtime";
    public static final String PT_APPLICATIONS = "applications";
    public static final String PT_ADAPTERS = "adapters";
    public static final String PT_PREFERENCES = "preferences";
    public static final String PT_PRODUCT = "products";
    public static final String OPTION_STARTTIME = "org.eclipse.core.runtime/starttime";
    public static final String PREF_PLATFORM_PERFORMANCE = "runtime.performance";
    public static final String PREF_LINE_SEPARATOR = "line.separator";
    public static final int MIN_PERFORMANCE = 1;
    public static final int MAX_PERFORMANCE = 5;
    public static final int PARSE_PROBLEM = 1;
    public static final int PLUGIN_ERROR = 2;
    public static final int INTERNAL_ERROR = 3;
    public static final int FAILED_READ_METADATA = 4;
    public static final int FAILED_WRITE_METADATA = 5;
    public static final int FAILED_DELETE_METADATA = 6;
    public static final String OS_WIN32 = "win32";
    public static final String OS_LINUX = "linux";
    public static final String OS_AIX = "aix";
    public static final String OS_SOLARIS = "solaris";
    public static final String OS_HPUX = "hpux";
    public static final String OS_QNX = "qnx";
    public static final String OS_MACOSX = "macosx";
    public static final String OS_UNKNOWN = "unknown";
    public static final String ARCH_X86 = "x86";
    public static final String ARCH_PA_RISC = "PA_RISC";
    public static final String ARCH_PPC = "ppc";
    public static final String ARCH_SPARC = "sparc";
    public static final String ARCH_X86_64 = "x86_64";
    public static final String ARCH_AMD64 = "x86_64";
    public static final String ARCH_IA64 = "ia64";
    public static final String ARCH_IA64_32 = "ia64_32";
    public static final String WS_WIN32 = "win32";
    public static final String WS_MOTIF = "motif";
    public static final String WS_GTK = "gtk";
    public static final String WS_PHOTON = "photon";
    public static final String WS_CARBON = "carbon";
    public static final String WS_COCOA = "cocoa";
    public static final String WS_WPF = "wpf";
    public static final String WS_UNKNOWN = "unknown";
    private static final String LINE_SEPARATOR_KEY_MAC_OS_9 = Messages.line_separator_platform_mac_os_9;
    private static final String LINE_SEPARATOR_KEY_UNIX = Messages.line_separator_platform_unix;
    private static final String LINE_SEPARATOR_KEY_WINDOWS = Messages.line_separator_platform_windows;
    private static final String LINE_SEPARATOR_VALUE_CR = "\r";
    private static final String LINE_SEPARATOR_VALUE_LF = "\n";
    private static final String LINE_SEPARATOR_VALUE_CRLF = "\r\n";
    private static boolean authNotAvailableLogged = false;

    private Platform() {
    }

    public static void addAuthorizationInfo(URL serverUrl, String realm, String authScheme, Map info) throws CoreException {
        try {
            AuthorizationHandler.addAuthorizationInfo((URL)serverUrl, (String)realm, (String)authScheme, (Map)info);
        }
        catch (NoClassDefFoundError e) {
            Platform.logAuthNotAvailable(e);
        }
    }

    public static void addLogListener(ILogListener listener) {
        InternalPlatform.getDefault().addLogListener(listener);
    }

    public static void addProtectionSpace(URL resourceUrl, String realm) throws CoreException {
        try {
            AuthorizationHandler.addProtectionSpace((URL)resourceUrl, (String)realm);
        }
        catch (NoClassDefFoundError e) {
            Platform.logAuthNotAvailable(e);
        }
    }

    public static URL asLocalURL(URL url) throws IOException {
        return FileLocator.toFileURL((URL)url);
    }

    public static void endSplash() {
        InternalPlatform.getDefault().endSplash();
    }

    public static void flushAuthorizationInfo(URL serverUrl, String realm, String authScheme) throws CoreException {
        try {
            AuthorizationHandler.flushAuthorizationInfo((URL)serverUrl, (String)realm, (String)authScheme);
        }
        catch (NoClassDefFoundError e) {
            Platform.logAuthNotAvailable(e);
        }
    }

    private static void logAuthNotAvailable(Throwable e) {
        if (authNotAvailableLogged) {
            return;
        }
        authNotAvailableLogged = true;
        InternalPlatform.getDefault().log((IStatus)new Status(2, PI_RUNTIME, 0, Messages.auth_notAvailable, e));
    }

    public static IAdapterManager getAdapterManager() {
        return InternalPlatform.getDefault().getAdapterManager();
    }

    public static Map getAuthorizationInfo(URL serverUrl, String realm, String authScheme) {
        try {
            return AuthorizationHandler.getAuthorizationInfo((URL)serverUrl, (String)realm, (String)authScheme);
        }
        catch (NoClassDefFoundError e) {
            Platform.logAuthNotAvailable(e);
            return null;
        }
    }

    public static String[] getCommandLineArgs() {
        return InternalPlatform.getDefault().getCommandLineArgs();
    }

    public static IContentTypeManager getContentTypeManager() {
        return InternalPlatform.getDefault().getContentTypeManager();
    }

    public static String getDebugOption(String option) {
        return InternalPlatform.getDefault().getOption(option);
    }

    public static IPath getLocation() throws IllegalStateException {
        return InternalPlatform.getDefault().getLocation();
    }

    public static IPath getLogFileLocation() {
        return InternalPlatform.getDefault().getMetaArea().getLogLocation();
    }

    public static Plugin getPlugin(String id) {
        IPluginDescriptor pd;
        block4: {
            try {
                IPluginRegistry registry = Platform.getPluginRegistry();
                if (registry == null) {
                    throw new IllegalStateException();
                }
                pd = registry.getPluginDescriptor(id);
                if (pd != null) break block4;
                return null;
            }
            catch (CoreException coreException) {
                return null;
            }
        }
        return pd.getPlugin();
    }

    public static IPluginRegistry getPluginRegistry() {
        Bundle compatibility = InternalPlatform.getDefault().getBundle("org.eclipse.core.runtime.compatibility");
        if (compatibility == null) {
            throw new IllegalStateException();
        }
        Class oldInternalPlatform = null;
        try {
            oldInternalPlatform = compatibility.loadClass("org.eclipse.core.internal.plugins.InternalPlatform");
            Method getPluginRegistry = oldInternalPlatform.getMethod("getPluginRegistry", null);
            return (IPluginRegistry)getPluginRegistry.invoke(oldInternalPlatform, null);
        }
        catch (Exception exception) {
            return null;
        }
    }

    public static IPath getPluginStateLocation(Plugin plugin) {
        return plugin.getStateLocation();
    }

    public static String getProtectionSpace(URL resourceUrl) {
        try {
            return AuthorizationHandler.getProtectionSpace((URL)resourceUrl);
        }
        catch (NoClassDefFoundError e) {
            Platform.logAuthNotAvailable(e);
            return null;
        }
    }

    public static void removeLogListener(ILogListener listener) {
        InternalPlatform.getDefault().removeLogListener(listener);
    }

    public static URL resolve(URL url) throws IOException {
        return FileLocator.resolve((URL)url);
    }

    public static void run(ISafeRunnable runnable) {
        SafeRunner.run((ISafeRunnable)runnable);
    }

    public static IJobManager getJobManager() {
        return Job.getJobManager();
    }

    public static IExtensionRegistry getExtensionRegistry() {
        return RegistryFactory.getRegistry();
    }

    public static URL find(Bundle bundle, IPath path) {
        return FileLocator.find((Bundle)bundle, (IPath)path, null);
    }

    public static URL find(Bundle bundle, IPath path, Map override) {
        return FileLocator.find((Bundle)bundle, (IPath)path, (Map)override);
    }

    public static IPath getStateLocation(Bundle bundle) {
        return InternalPlatform.getDefault().getStateLocation(bundle);
    }

    public static long getStateStamp() {
        return InternalPlatform.getDefault().getStateTimeStamp();
    }

    public static ILog getLog(Bundle bundle) {
        return InternalPlatform.getDefault().getLog(bundle);
    }

    public static ResourceBundle getResourceBundle(Bundle bundle) throws MissingResourceException {
        return InternalPlatform.getDefault().getResourceBundle(bundle);
    }

    public static String getResourceString(Bundle bundle, String value) {
        return InternalPlatform.getDefault().getResourceString(bundle, value);
    }

    public static String getResourceString(Bundle bundle, String value, ResourceBundle resourceBundle) {
        return InternalPlatform.getDefault().getResourceString(bundle, value, resourceBundle);
    }

    public static String getOSArch() {
        return InternalPlatform.getDefault().getOSArch();
    }

    public static String getNL() {
        return InternalPlatform.getDefault().getNL();
    }

    public static String getNLExtensions() {
        return InternalPlatform.getDefault().getNLExtensions();
    }

    public static String getOS() {
        return InternalPlatform.getDefault().getOS();
    }

    public static String getWS() {
        return InternalPlatform.getDefault().getWS();
    }

    public static String[] getApplicationArgs() {
        return InternalPlatform.getDefault().getApplicationArgs();
    }

    public static PlatformAdmin getPlatformAdmin() {
        return InternalPlatform.getDefault().getPlatformAdmin();
    }

    public static Location getInstanceLocation() {
        return InternalPlatform.getDefault().getInstanceLocation();
    }

    public static IBundleGroupProvider[] getBundleGroupProviders() {
        return InternalPlatform.getDefault().getBundleGroupProviders();
    }

    public static IPreferencesService getPreferencesService() {
        return InternalPlatform.getDefault().getPreferencesService();
    }

    public static IProduct getProduct() {
        return InternalPlatform.getDefault().getProduct();
    }

    public static void registerBundleGroupProvider(IBundleGroupProvider provider) {
        InternalPlatform.getDefault().registerBundleGroupProvider(provider);
    }

    public static void unregisterBundleGroupProvider(IBundleGroupProvider provider) {
        InternalPlatform.getDefault().unregisterBundleGroupProvider(provider);
    }

    public static Location getConfigurationLocation() {
        return InternalPlatform.getDefault().getConfigurationLocation();
    }

    public static Location getUserLocation() {
        return InternalPlatform.getDefault().getUserLocation();
    }

    public static Location getInstallLocation() {
        return InternalPlatform.getDefault().getInstallLocation();
    }

    public static boolean isFragment(Bundle bundle) {
        return InternalPlatform.getDefault().isFragment(bundle);
    }

    public static Bundle[] getFragments(Bundle bundle) {
        return InternalPlatform.getDefault().getFragments(bundle);
    }

    public static Bundle getBundle(String symbolicName) {
        return InternalPlatform.getDefault().getBundle(symbolicName);
    }

    public static Bundle[] getBundles(String symbolicName, String version) {
        return InternalPlatform.getDefault().getBundles(symbolicName, version);
    }

    public static Bundle[] getHosts(Bundle bundle) {
        return InternalPlatform.getDefault().getHosts(bundle);
    }

    public static boolean isRunning() {
        return InternalPlatform.getDefault().isRunning();
    }

    public static String[] knownOSArchValues() {
        return InternalPlatform.getDefault().knownOSArchValues();
    }

    public static String[] knownOSValues() {
        return InternalPlatform.getDefault().knownOSValues();
    }

    public static Map knownPlatformLineSeparators() {
        HashMap<String, String> result = new HashMap<String, String>();
        result.put(LINE_SEPARATOR_KEY_MAC_OS_9, LINE_SEPARATOR_VALUE_CR);
        result.put(LINE_SEPARATOR_KEY_UNIX, LINE_SEPARATOR_VALUE_LF);
        result.put(LINE_SEPARATOR_KEY_WINDOWS, LINE_SEPARATOR_VALUE_CRLF);
        return result;
    }

    public static String[] knownWSValues() {
        return InternalPlatform.getDefault().knownWSValues();
    }

    public static boolean inDebugMode() {
        return PlatformActivator.getContext().getProperty("osgi.debug") != null;
    }

    public static boolean inDevelopmentMode() {
        return PlatformActivator.getContext().getProperty("osgi.dev") != null;
    }
}

