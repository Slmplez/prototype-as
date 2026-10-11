/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.update.internal.configurator.ConfigurationActivator;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class Utils {
    private static final String PROP_ARCH = "osgi.arch";
    private static final String PROP_NL = "osgi.nl";
    private static final String PROP_OS = "osgi.os";
    private static final String PROP_WS = "osgi.ws";
    private static final String PI_OSGI = "org.eclipse.osgi";
    private static final String KEY_PREFIX = "%";
    private static final String KEY_DOUBLE_PREFIX = "%%";
    public static boolean isWindows = System.getProperty("os.name").startsWith("Win");
    static FrameworkLog log;
    private static ServiceTracker bundleTracker;
    private static ServiceTracker instanceLocation;
    private static ServiceTracker configurationLocation;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static void debug(String s) {
        if (ConfigurationActivator.DEBUG) {
            System.out.println("PlatformConfig: " + s);
        }
    }

    public static CoreException newCoreException(String s, Throwable e) {
        MultiStatus status;
        if (e instanceof CoreException) {
            if (s == null) {
                s = "";
            }
            status = new MultiStatus("org.eclipse.update.configurator", 0, s, e);
            IStatus childrenStatus = ((CoreException)e).getStatus();
            status.add(childrenStatus);
            status.addAll(childrenStatus);
        } else {
            StringBuffer completeString = new StringBuffer("");
            if (s != null) {
                completeString.append(s);
            }
            if (e != null) {
                completeString.append(" [");
                String msg = e.getLocalizedMessage();
                completeString.append(msg != null ? msg : e.toString());
                completeString.append("]");
            }
            status = Utils.newStatus(completeString.toString(), e);
        }
        return new CoreException((IStatus)status);
    }

    public static IStatus newStatus(String message, Throwable e) {
        return new Status(4, "org.eclipse.update.configurator", 0, message, e);
    }

    public static void log(String message) {
        Utils.log(Utils.newStatus(message, null));
    }

    public static void log(IStatus status) {
        if (log != null) {
            log.log(new FrameworkLogEntry(ConfigurationActivator.PI_CONFIGURATOR, status.getSeverity(), 0, status.getMessage(), 0, status.getException(), null));
        } else {
            System.out.println(status.getMessage());
            if (status.getException() != null) {
                status.getException().printStackTrace();
            }
        }
    }

    static synchronized void shutdown() {
        if (bundleTracker != null) {
            bundleTracker.close();
            bundleTracker = null;
        }
        if (instanceLocation != null) {
            instanceLocation.close();
            instanceLocation = null;
        }
        if (configurationLocation != null) {
            configurationLocation.close();
            configurationLocation = null;
        }
    }

    public static boolean isRunning() {
        Bundle bundle = Utils.getBundle(PI_OSGI);
        return bundle == null ? false : (bundle.getState() & 0x28) != 0;
    }

    public static boolean isValidEnvironment(String os, String ws, String arch, String nl) {
        if (os != null && !Utils.isMatching(os, Utils.getOS())) {
            return false;
        }
        if (ws != null && !Utils.isMatching(ws, Utils.getWS())) {
            return false;
        }
        if (arch != null && !Utils.isMatching(arch, Utils.getArch())) {
            return false;
        }
        return nl == null || Utils.isMatchingLocale(nl, Utils.getNL());
    }

    public static String getOS() {
        return Utils.getContext().getProperty(PROP_OS);
    }

    public static String getWS() {
        return Utils.getContext().getProperty(PROP_WS);
    }

    public static String getArch() {
        return Utils.getContext().getProperty(PROP_ARCH);
    }

    public static String getNL() {
        return Utils.getContext().getProperty(PROP_NL);
    }

    public static long getStateStamp() {
        ServiceReference platformAdminReference;
        BundleContext bundleContext = Utils.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((platformAdminReference = bundleContext.getServiceReference(clazz.getName())) == null) {
            return -1L;
        }
        PlatformAdmin admin = (PlatformAdmin)Utils.getContext().getService(platformAdminReference);
        return admin == null ? -1L : admin.getState(false).getTimeStamp();
    }

    public static synchronized Bundle getBundle(String symbolicName) {
        PackageAdmin admin;
        if (bundleTracker == null) {
            BundleContext bundleContext = Utils.getContext();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            bundleTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            bundleTracker.open();
        }
        if ((admin = (PackageAdmin)bundleTracker.getService()) == null) {
            return null;
        }
        Bundle[] bundles = admin.getBundles(symbolicName, null);
        if (bundles == null) {
            return null;
        }
        int i = 0;
        while (i < bundles.length) {
            if ((bundles[i].getState() & 3) == 0) {
                return bundles[i];
            }
            ++i;
        }
        return null;
    }

    private static BundleContext getContext() {
        return ConfigurationActivator.getBundleContext();
    }

    public static synchronized Location getConfigurationLocation() {
        if (configurationLocation == null) {
            Filter filter = null;
            try {
                filter = Utils.getContext().createFilter(Location.CONFIGURATION_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            configurationLocation = new ServiceTracker(Utils.getContext(), filter, null);
            configurationLocation.open();
        }
        return (Location)configurationLocation.getService();
    }

    private static boolean isMatching(String candidateValues, String siteValues) {
        if (siteValues == null) {
            return false;
        }
        if ("*".equalsIgnoreCase(candidateValues)) {
            return true;
        }
        siteValues = siteValues.toUpperCase();
        StringTokenizer stok = new StringTokenizer(candidateValues, ",");
        while (stok.hasMoreTokens()) {
            String token = stok.nextToken().toUpperCase();
            if (siteValues.indexOf(token) == -1) continue;
            return true;
        }
        return false;
    }

    private static boolean isMatchingLocale(String candidateValues, String locale) {
        if (locale == null) {
            return false;
        }
        if ("*".equalsIgnoreCase(candidateValues)) {
            return true;
        }
        locale = locale.toUpperCase();
        candidateValues = candidateValues.toUpperCase();
        StringTokenizer stok = new StringTokenizer(candidateValues, ",");
        while (stok.hasMoreTokens()) {
            String candidate = stok.nextToken();
            if (locale.indexOf(candidate) == 0) {
                return true;
            }
            if (candidate.indexOf(locale) != 0) continue;
            return true;
        }
        return false;
    }

    public static Locale getDefaultLocale() {
        String nl = Utils.getNL();
        if (nl == null) {
            return Locale.getDefault();
        }
        StringTokenizer locales = new StringTokenizer(nl, "_");
        if (locales.countTokens() == 1) {
            return new Locale(locales.nextToken(), "");
        }
        if (locales.countTokens() == 2) {
            return new Locale(locales.nextToken(), locales.nextToken());
        }
        if (locales.countTokens() == 3) {
            return new Locale(locales.nextToken(), locales.nextToken(), locales.nextToken());
        }
        return Locale.getDefault();
    }

    public static String getResourceString(ResourceBundle resourceBundle, String string) {
        String dflt;
        if (string == null) {
            return null;
        }
        String s = string.trim();
        if (s.equals("")) {
            return string;
        }
        if (!s.startsWith(KEY_PREFIX)) {
            return string;
        }
        if (s.startsWith(KEY_DOUBLE_PREFIX)) {
            return s.substring(1);
        }
        int ix = s.indexOf(" ");
        String key = ix == -1 ? s : s.substring(0, ix);
        String string2 = dflt = ix == -1 ? s : s.substring(ix + 1);
        if (resourceBundle == null) {
            return dflt;
        }
        try {
            return resourceBundle.getString(key.substring(1));
        }
        catch (MissingResourceException missingResourceException) {
            return dflt;
        }
    }

    public static boolean isAutomaticallyStartedBundle(String bundleURL) {
        if (bundleURL.indexOf(PI_OSGI) != -1) {
            return true;
        }
        String osgiBundles = ConfigurationActivator.getBundleContext().getProperty("osgi.bundles");
        StringTokenizer st = new StringTokenizer(osgiBundles, ",");
        while (st.hasMoreTokens()) {
            File f;
            String token = st.nextToken().trim();
            int index = token.indexOf(64);
            if (index != -1) {
                token = token.substring(0, index);
            }
            if (token.startsWith("reference:file:") && bundleURL.indexOf((f = new File(token.substring(15))).getName()) != -1) {
                return true;
            }
            if (bundleURL.indexOf(token) == -1) continue;
            return true;
        }
        return false;
    }

    public static URL makeAbsolute(URL base, URL relativeLocation) {
        if (!"file".equals(base.getProtocol())) {
            return relativeLocation;
        }
        if (relativeLocation.getProtocol() != null && !relativeLocation.getProtocol().equals(base.getProtocol())) {
            return relativeLocation;
        }
        Path relativePath = new Path(relativeLocation.getPath());
        if (relativePath.isAbsolute()) {
            return relativeLocation;
        }
        try {
            IPath absolutePath = new Path(base.getPath()).append(relativeLocation.getPath());
            return absolutePath.toFile().toURL();
        }
        catch (MalformedURLException e) {
            Utils.log(e.getLocalizedMessage());
            return relativeLocation;
        }
    }

    public static URL makeRelative(URL base, URL location) {
        if (base == null) {
            return location;
        }
        if (!"file".equals(base.getProtocol())) {
            return location;
        }
        if (!base.getProtocol().equals(location.getProtocol())) {
            return location;
        }
        Path locationPath = new Path(location.getPath());
        if (!locationPath.isAbsolute()) {
            return location;
        }
        IPath relativePath = Utils.makeRelative((IPath)new Path(base.getPath()), (IPath)locationPath);
        try {
            return new URL(base.getProtocol(), base.getHost(), base.getPort(), relativePath.toString());
        }
        catch (MalformedURLException e) {
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            Utils.log(Utils.newStatus(message, e));
            return location;
        }
    }

    public static IPath makeRelative(IPath base, IPath location) {
        if (location.getDevice() != null && !location.getDevice().equalsIgnoreCase(base.getDevice())) {
            return location;
        }
        int baseCount = base.segmentCount();
        int count = base.matchingFirstSegments(location);
        String temp = "";
        int j = 0;
        while (j < baseCount - count) {
            temp = String.valueOf(temp) + "../";
            ++j;
        }
        return new Path(temp).append(location.removeFirstSegments(count));
    }

    public static String makeRelative(URL base, String absolute) {
        try {
            return Utils.makeRelative(base, new URL(absolute)).toExternalForm();
        }
        catch (MalformedURLException malformedURLException) {
            return absolute;
        }
    }

    public static String canonicalizeURL(String url) {
        if (!isWindows || !url.startsWith("file:")) {
            return url;
        }
        try {
            String path = new URL(url).getPath();
            File file = new File(path);
            path = file.toString().replace('\\', '/');
            if (Character.isUpperCase(path.charAt(0))) {
                char[] chars = path.toCharArray();
                chars[0] = Character.toLowerCase(chars[0]);
                path = new String(chars);
                return new File(path).toURL().toExternalForm();
            }
        }
        catch (MalformedURLException malformedURLException) {}
        return url;
    }

    public static synchronized URL getInstallURL() {
        Location location;
        if (instanceLocation == null) {
            Filter filter = null;
            try {
                filter = Utils.getContext().createFilter(Location.INSTALL_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            instanceLocation = new ServiceTracker(Utils.getContext(), filter, null);
            instanceLocation.open();
        }
        if ((location = (Location)instanceLocation.getService()) == null) {
            throw new IllegalStateException("The installation location must not be null");
        }
        return location.getURL();
    }
}

