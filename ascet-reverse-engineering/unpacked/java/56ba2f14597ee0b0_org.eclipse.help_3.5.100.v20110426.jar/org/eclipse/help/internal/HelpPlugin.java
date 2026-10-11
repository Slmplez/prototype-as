/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.help.internal;

import java.io.File;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.help.internal.context.ContextManager;
import org.eclipse.help.internal.criteria.CriteriaManager;
import org.eclipse.help.internal.extension.ContentExtensionManager;
import org.eclipse.help.internal.index.IndexManager;
import org.eclipse.help.internal.toc.TocManager;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleContext;

public class HelpPlugin
extends Plugin {
    public static final String PLUGIN_ID = "org.eclipse.help";
    public static boolean DEBUG = false;
    public static boolean DEBUG_CONTEXT = false;
    public static boolean DEBUG_SEARCH = false;
    public static boolean DEBUG_TOC = false;
    public static boolean DEBUG_INDEX = false;
    public static boolean DEBUG_CRITERIA = false;
    public static final String HELP_DATA_KEY = "HELP_DATA";
    public static final String BASE_TOCS_KEY = "baseTOCS";
    public static final String IGNORED_TOCS_KEY = "ignoredTOCS";
    public static final String IGNORED_INDEXES_KEY = "ignoredIndexes";
    public static final String FILTER_INFOCENTER_KEY = "filterInfocenter";
    private static HelpPlugin plugin;
    private static Object tocManagerCreateLock;
    private TocManager tocManager;
    private ContextManager contextManager;
    private ContentExtensionManager contentExtensionManager;
    private IndexManager indexManager;
    private CriteriaManager criteriaManager;
    private IHelpProvider helpProvider;
    private File configurationDirectory;

    static {
        tocManagerCreateLock = new Object();
    }

    public static void logWarning(String message) {
        Status errorStatus = new Status(2, PLUGIN_ID, 0, message, null);
        HelpPlugin.logStatus((IStatus)errorStatus);
    }

    public static void logError(String message) {
        Status errorStatus = new Status(4, PLUGIN_ID, 0, message, null);
        HelpPlugin.logStatus((IStatus)errorStatus);
    }

    public static void logError(String message, Throwable ex) {
        if (message == null) {
            message = "";
        }
        Status errorStatus = new Status(4, PLUGIN_ID, 0, message, ex);
        HelpPlugin.logStatus((IStatus)errorStatus);
    }

    private static synchronized void logStatus(IStatus errorStatus) {
        HelpPlugin.getDefault().getLog().log(errorStatus);
    }

    public static HelpPlugin getDefault() {
        return plugin;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static TocManager getTocManager() {
        if (HelpPlugin.getDefault().tocManager == null) {
            Object object = tocManagerCreateLock;
            synchronized (object) {
                if (HelpPlugin.getDefault().tocManager == null) {
                    HelpPlugin.getDefault().tocManager = new TocManager();
                }
            }
        }
        return HelpPlugin.getDefault().tocManager;
    }

    public static ContextManager getContextManager() {
        if (HelpPlugin.getDefault().contextManager == null) {
            HelpPlugin.getDefault().contextManager = new ContextManager();
        }
        return HelpPlugin.getDefault().contextManager;
    }

    public static ContentExtensionManager getContentExtensionManager() {
        if (HelpPlugin.getDefault().contentExtensionManager == null) {
            HelpPlugin.getDefault().contentExtensionManager = new ContentExtensionManager();
        }
        return HelpPlugin.getDefault().contentExtensionManager;
    }

    public static IndexManager getIndexManager() {
        if (HelpPlugin.getDefault().indexManager == null) {
            HelpPlugin.getDefault().indexManager = new IndexManager();
        }
        return HelpPlugin.getDefault().indexManager;
    }

    public static CriteriaManager getCriteriaManager() {
        if (HelpPlugin.getDefault().criteriaManager == null) {
            HelpPlugin.getDefault().criteriaManager = new CriteriaManager();
        }
        return HelpPlugin.getDefault().criteriaManager;
    }

    public IHelpProvider getHelpProvider() {
        return this.helpProvider;
    }

    public void setHelpProvider(IHelpProvider helpProvider) {
        this.helpProvider = helpProvider;
    }

    public void start(BundleContext context) throws Exception {
        URL configURL;
        super.start(context);
        plugin = this;
        Location location = Platform.getConfigurationLocation();
        if (location != null && (configURL = location.getURL()) != null && configURL.getProtocol().startsWith("file")) {
            this.configurationDirectory = new File(configURL.getFile(), PLUGIN_ID);
        }
        if (this.configurationDirectory == null) {
            this.configurationDirectory = this.getStateLocation().toFile();
        }
        if (DEBUG = this.isDebugging()) {
            DEBUG_CONTEXT = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.help/debug/context"));
            DEBUG_SEARCH = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.help/debug/search"));
            DEBUG_TOC = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.help/debug/toc"));
            DEBUG_INDEX = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.help/debug/index"));
            DEBUG_CRITERIA = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.help/debug/criteria"));
        }
    }

    public static File getConfigurationDirectory() {
        return HelpPlugin.getDefault().configurationDirectory;
    }

    public void stop(BundleContext context) throws Exception {
        plugin = null;
        super.stop(context);
    }

    public static interface IHelpProvider {
        public InputStream getHelpContent(String var1, String var2);
    }
}

