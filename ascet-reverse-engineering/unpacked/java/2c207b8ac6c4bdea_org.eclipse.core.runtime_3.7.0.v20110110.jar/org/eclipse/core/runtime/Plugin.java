/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.runtime;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Map;
import org.eclipse.core.internal.preferences.legacy.PreferenceForwarder;
import org.eclipse.core.internal.runtime.CompatibilityHelper;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.internal.runtime.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.util.tracker.ServiceTracker;

public abstract class Plugin
implements BundleActivator {
    public static final String PLUGIN_PREFERENCE_SCOPE = "instance";
    private Bundle bundle;
    private boolean debug = false;
    private ServiceTracker debugTracker = null;
    private IPluginDescriptor descriptor;
    public static final String PREFERENCES_DEFAULT_OVERRIDE_BASE_NAME = "preferences";
    public static final String PREFERENCES_DEFAULT_OVERRIDE_FILE_NAME = "preferences.ini";
    private Preferences preferences = null;
    static /* synthetic */ Class class$0;

    public Plugin() {
    }

    public Plugin(IPluginDescriptor descriptor) {
        Assert.isNotNull((Object)descriptor);
        Assert.isTrue((!CompatibilityHelper.hasPluginObject(descriptor) ? 1 : 0) != 0, (String)NLS.bind((String)Messages.plugin_deactivatedLoad, (Object)this.getClass().getName(), (Object)(String.valueOf(descriptor.getUniqueIdentifier()) + " is not activated")));
        this.descriptor = descriptor;
        this.bundle = InternalPlatform.getDefault().getBundle(descriptor.getUniqueIdentifier());
        try {
            InternalPlatform.start(this.bundle);
        }
        catch (BundleException e) {
            String message = NLS.bind((String)Messages.plugin_startupProblems, (Object)descriptor.getUniqueIdentifier());
            Status status = new Status(4, "org.eclipse.core.runtime", 4, message, (Throwable)e);
            InternalPlatform.getDefault().log((IStatus)status);
        }
    }

    public final URL find(IPath path) {
        return FileLocator.find((Bundle)this.bundle, (IPath)path, null);
    }

    public final URL find(IPath path, Map override) {
        return FileLocator.find((Bundle)this.bundle, (IPath)path, (Map)override);
    }

    public final IPluginDescriptor getDescriptor() {
        if (this.descriptor != null) {
            return this.descriptor;
        }
        return this.initializeDescriptor(this.bundle.getSymbolicName());
    }

    public final ILog getLog() {
        return InternalPlatform.getDefault().getLog(this.bundle);
    }

    public final IPath getStateLocation() throws IllegalStateException {
        return InternalPlatform.getDefault().getStateLocation(this.bundle, true);
    }

    public final Preferences getPluginPreferences() {
        if (this.preferences != null) {
            if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
                InternalPlatform.message("Plugin preferences already loaded for: " + this.bundle.getSymbolicName());
            }
            return this.preferences;
        }
        if (InternalPlatform.DEBUG_PLUGIN_PREFERENCES) {
            InternalPlatform.message("Loading preferences for plugin: " + this.bundle.getSymbolicName());
        }
        final Bundle bundleCopy = this.bundle;
        final Preferences[] preferencesCopy = new Preferences[1];
        Runnable innerCall = new Runnable(){

            public void run() {
                preferencesCopy[0] = new PreferenceForwarder(this, bundleCopy.getSymbolicName());
            }
        };
        innerCall.run();
        this.preferences = preferencesCopy[0];
        return this.preferences;
    }

    public final void savePluginPreferences() {
        Location instance = InternalPlatform.getDefault().getInstanceLocation();
        if (instance == null || !instance.isSet()) {
            return;
        }
        this.getPluginPreferences();
        final Preferences preferencesCopy = this.preferences;
        Runnable innerCall = new Runnable(){

            public void run() {
                try {
                    ((PreferenceForwarder)preferencesCopy).flush();
                }
                catch (BackingStoreException e) {
                    Status status = new Status(4, "org.eclipse.core.runtime", 4, Messages.preferences_saveProblems, (Throwable)e);
                    InternalPlatform.getDefault().log((IStatus)status);
                }
            }
        };
        innerCall.run();
    }

    protected void initializeDefaultPluginPreferences() {
    }

    public final void internalInitializeDefaultPluginPreferences() {
        this.initializeDefaultPluginPreferences();
    }

    public boolean isDebugging() {
        if (this.bundle == null) {
            return this.debug;
        }
        String key = String.valueOf(this.bundle.getSymbolicName()) + "/debug";
        DebugOptions debugOptions = this.getDebugOptions();
        if (debugOptions == null) {
            return this.debug;
        }
        return debugOptions.isDebugEnabled() ? InternalPlatform.getDefault().getBooleanOption(key, false) : false;
    }

    public final InputStream openStream(IPath file) throws IOException {
        return FileLocator.openStream((Bundle)this.bundle, (IPath)file, (boolean)false);
    }

    public final InputStream openStream(IPath file, boolean substituteArgs) throws IOException {
        return FileLocator.openStream((Bundle)this.bundle, (IPath)file, (boolean)substituteArgs);
    }

    public void setDebugging(boolean value) {
        if (this.bundle == null) {
            this.debug = value;
            return;
        }
        String key = String.valueOf(this.bundle.getSymbolicName()) + "/debug";
        DebugOptions options = this.getDebugOptions();
        if (options == null) {
            this.debug = value;
        } else {
            if (!options.isDebugEnabled()) {
                options.setDebugEnabled(true);
            }
            options.setOption(key, value ? Boolean.TRUE.toString() : Boolean.FALSE.toString());
        }
    }

    private DebugOptions getDebugOptions() {
        if (this.bundle == null) {
            return null;
        }
        if (this.debugTracker == null) {
            BundleContext context = this.bundle.getBundleContext();
            if (context == null) {
                return null;
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
            this.debugTracker = new ServiceTracker(context, clazz.getName(), null);
            this.debugTracker.open();
        }
        return (DebugOptions)this.debugTracker.getService();
    }

    public void shutdown() throws CoreException {
        if (CompatibilityHelper.initializeCompatibility() == null) {
            return;
        }
        Exception exception = null;
        try {
            Method m = this.descriptor.getClass().getMethod("doPluginDeactivation", new Class[0]);
            m.invoke(this.descriptor, null);
        }
        catch (SecurityException e) {
            exception = e;
        }
        catch (NoSuchMethodException e) {
            exception = e;
        }
        catch (IllegalArgumentException e) {
            exception = e;
        }
        catch (IllegalAccessException e) {
            exception = e;
        }
        catch (InvocationTargetException e) {
            exception = e;
        }
        if (exception == null) {
            return;
        }
        String message = NLS.bind((String)Messages.plugin_shutdownProblems, (Object)this.descriptor.getUniqueIdentifier());
        Status status = new Status(4, "org.eclipse.core.runtime", 4, message, (Throwable)exception);
        InternalPlatform.getDefault().log((IStatus)status);
    }

    public void startup() throws CoreException {
    }

    public String toString() {
        String name = this.bundle.getSymbolicName();
        return name == null ? new Long(this.bundle.getBundleId()).toString() : name;
    }

    public void start(BundleContext context) throws Exception {
        this.bundle = context.getBundle();
        this.initializeDescriptor(this.bundle.getSymbolicName());
    }

    private IPluginDescriptor initializeDescriptor(String symbolicName) {
        if (CompatibilityHelper.initializeCompatibility() == null) {
            return null;
        }
        if (symbolicName == null) {
            return null;
        }
        IPluginDescriptor tmp = CompatibilityHelper.getPluginDescriptor(symbolicName);
        if (!symbolicName.equals("org.eclipse.core.runtime")) {
            this.descriptor = tmp;
        }
        CompatibilityHelper.setPlugin(tmp, this);
        CompatibilityHelper.setActive(tmp);
        return tmp;
    }

    public void stop(BundleContext context) throws Exception {
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
    }

    public final Bundle getBundle() {
        return this.bundle;
    }
}

