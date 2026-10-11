/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ant.core;

import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.List;
import org.eclipse.ant.core.AntCorePreferences;
import org.eclipse.ant.internal.core.AntClassLoader;
import org.eclipse.ant.internal.core.AntCoreUtil;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.BundleContext;

public class AntCorePlugin
extends Plugin {
    public static final int INTERNAL_ERROR = 120;
    private static AntCorePlugin plugin;
    private AntCorePreferences preferences;
    public static final String PI_ANTCORE = "org.eclipse.ant.core";
    public static final String PT_TASKS = "antTasks";
    public static final String PT_EXTRA_CLASSPATH = "extraClasspathEntries";
    public static final String PT_TYPES = "antTypes";
    public static final String PT_PROPERTIES = "antProperties";
    public static final String ANT_BUILDFILE_CONTENT_TYPE = "org.eclipse.ant.core.antBuildFile";
    public static final String CLASS = "class";
    public static final String NAME = "name";
    public static final String LIBRARY = "library";
    public static final String HEADLESS = "headless";
    public static final String ECLIPSE_RUNTIME = "eclipseRuntime";
    public static final String URI = "uri";
    public static final String VALUE = "value";
    public static final String ECLIPSE_PROGRESS_MONITOR = "eclipse.progress.monitor";
    public static final int ERROR_RUNNING_BUILD = 1;
    public static final int ERROR_MALFORMED_URL = 2;
    public static final int ERROR_LIBRARY_NOT_SPECIFIED = 3;

    public AntCorePlugin() {
        plugin = this;
    }

    public void stop(BundleContext context) throws Exception {
        super.stop(context);
        AntCoreUtil.setBundleContext(null);
        if (this.preferences != null) {
            this.savePluginPreferences();
        }
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        AntCoreUtil.setBundleContext(context);
    }

    private List extractExtensions(String pointName) {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PI_ANTCORE, pointName);
        if (extensionPoint == null) {
            return null;
        }
        IConfigurationElement[] extensions = extensionPoint.getConfigurationElements();
        return Arrays.asList(extensions);
    }

    public AntCorePreferences getPreferences() {
        if (this.preferences == null) {
            this.preferences = new AntCorePreferences(this.extractExtensions(PT_TASKS), this.extractExtensions(PT_EXTRA_CLASSPATH), this.extractExtensions(PT_TYPES), this.extractExtensions(PT_PROPERTIES), false);
        }
        return this.preferences;
    }

    public void setRunningHeadless(boolean headless) {
        this.preferences = new AntCorePreferences(this.extractExtensions(PT_TASKS), this.extractExtensions(PT_EXTRA_CLASSPATH), this.extractExtensions(PT_TYPES), this.extractExtensions(PT_PROPERTIES), headless);
    }

    public static AntCorePlugin getPlugin() {
        return plugin;
    }

    public ClassLoader getNewClassLoader() {
        AntCorePreferences corePreferences = this.getPreferences();
        return this.getNewClassLoader(false, corePreferences.getURLs());
    }

    public URLClassLoader getNewClassLoader(URL[] urls) {
        return this.getNewClassLoader(false, urls);
    }

    public ClassLoader getNewClassLoader(boolean allowLoading) {
        AntCorePreferences corePreferences = this.getPreferences();
        URL[] urls = corePreferences.getURLs();
        return this.getNewClassLoader(allowLoading, urls);
    }

    public URLClassLoader getNewClassLoader(boolean allowLoading, URL[] urls) {
        AntCorePreferences corePreferences = this.getPreferences();
        ClassLoader[] pluginLoaders = corePreferences.getPluginClassLoaders();
        AntClassLoader loader = new AntClassLoader(urls, pluginLoaders);
        loader.allowPluginClassLoadersToLoadAnt(allowLoading);
        return loader;
    }

    public static void log(Throwable t) {
        Status status = new Status(4, PI_ANTCORE, 120, "Error logged from Ant Core: ", t);
        AntCorePlugin.getPlugin().getLog().log((IStatus)status);
    }
}

