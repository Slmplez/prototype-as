/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.security.auth;

import java.net.URL;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.security.auth.SecurePlatformInternal;
import org.eclipse.equinox.internal.security.storage.PasswordProviderSelector;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesMapper;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.util.tracker.ServiceTracker;

public class AuthPlugin
implements BundleActivator {
    public static final String PI_AUTH = "org.eclipse.equinox.security";
    private static AuthPlugin singleton;
    private BundleContext bundleContext;
    private ServiceTracker debugTracker = null;
    private ServiceTracker configTracker = null;
    private ServiceTracker environmentTracker = null;
    private volatile ServiceTracker logTracker = null;
    public static boolean DEBUG;
    public static boolean DEBUG_LOGIN_FRAMEWORK;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        DEBUG = false;
        DEBUG_LOGIN_FRAMEWORK = false;
    }

    public static AuthPlugin getDefault() {
        return singleton;
    }

    public void start(BundleContext context) throws Exception {
        this.bundleContext = context;
        singleton = this;
        DEBUG = this.getBooleanOption("org.eclipse.equinox.security/debug", false);
        if (DEBUG) {
            DEBUG_LOGIN_FRAMEWORK = this.getBooleanOption("org.eclipse.equinox.security/debug/loginFramework", false);
        }
    }

    public void stop(BundleContext context) throws Exception {
        PasswordProviderSelector.getInstance().stop();
        SecurePreferencesMapper.stop();
        SecurePlatformInternal.getInstance().stop();
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.configTracker != null) {
            this.configTracker.close();
            this.configTracker = null;
        }
        if (this.environmentTracker != null) {
            this.environmentTracker.close();
            this.environmentTracker = null;
        }
        if (this.logTracker != null) {
            this.logTracker.close();
            this.logTracker = null;
        }
        this.bundleContext = null;
        singleton = null;
    }

    public BundleContext getBundleContext() {
        return this.bundleContext;
    }

    public void logError(String msg, Throwable e) {
        RuntimeLog.log((IStatus)new Status(4, PI_AUTH, msg, e));
    }

    public void logMessage(String msg) {
        RuntimeLog.log((IStatus)new Status(1, PI_AUTH, msg, null));
    }

    public boolean getBooleanOption(String option, boolean defaultValue) {
        DebugOptions options;
        if (this.debugTracker == null) {
            if (this.bundleContext == null) {
                return defaultValue;
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.debugTracker = new ServiceTracker(this.bundleContext, clazz.getName(), null);
            this.debugTracker.open();
        }
        if ((options = (DebugOptions)this.debugTracker.getService()) == null) {
            return defaultValue;
        }
        String value = options.getOption(option);
        if (value == null) {
            return defaultValue;
        }
        return value.equalsIgnoreCase("true");
    }

    public URL getConfigURL() {
        Location location;
        Filter filter = null;
        if (this.configTracker == null) {
            try {
                filter = this.bundleContext.createFilter(Location.CONFIGURATION_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.configTracker = new ServiceTracker(this.bundleContext, filter, null);
            this.configTracker.open();
        }
        if ((location = (Location)this.configTracker.getService()) == null) {
            return null;
        }
        return location.getURL();
    }

    public EnvironmentInfo getEnvironmentInfoService() {
        if (this.environmentTracker == null) {
            if (this.bundleContext == null) {
                return null;
            }
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.environmentTracker = new ServiceTracker(this.bundleContext, clazz.getName(), null);
            this.environmentTracker.open();
        }
        return (EnvironmentInfo)this.environmentTracker.getService();
    }

    public void frameworkLogError(String msg, int severity, Throwable e) {
        FrameworkLog log;
        if (this.logTracker == null && this.bundleContext != null) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.logTracker = new ServiceTracker(this.bundleContext, clazz.getName(), null);
            this.logTracker.open();
        }
        FrameworkLog frameworkLog = log = this.logTracker == null ? null : (FrameworkLog)this.logTracker.getService();
        if (log != null) {
            log.log(new FrameworkLogEntry(PI_AUTH, severity, 0, msg, 0, e, null));
        } else {
            if (msg != null) {
                System.err.println(msg);
            }
            if (e != null) {
                e.printStackTrace(System.err);
            }
        }
    }
}

