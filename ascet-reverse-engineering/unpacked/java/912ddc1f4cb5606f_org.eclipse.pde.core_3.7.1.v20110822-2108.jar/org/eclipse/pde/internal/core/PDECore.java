/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.update.configurator.ConfiguratorUtils
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.pde.internal.core;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Hashtable;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.FeatureModelManager;
import org.eclipse.pde.internal.core.JavaElementChangeListener;
import org.eclipse.pde.internal.core.JavadocLocationManager;
import org.eclipse.pde.internal.core.PDEExtensionRegistry;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.PluginModelManager;
import org.eclipse.pde.internal.core.SearchablePluginsManager;
import org.eclipse.pde.internal.core.SourceLocationManager;
import org.eclipse.pde.internal.core.TargetDefinitionManager;
import org.eclipse.pde.internal.core.TracingOptionsManager;
import org.eclipse.pde.internal.core.builders.FeatureRebuilder;
import org.eclipse.pde.internal.core.builders.PluginRebuilder;
import org.eclipse.pde.internal.core.project.BundleProjectService;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.TargetPlatformService;
import org.eclipse.update.configurator.ConfiguratorUtils;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

public class PDECore
extends Plugin {
    public static final String PLUGIN_ID = "org.eclipse.pde.core";
    public static final IPath REQUIRED_PLUGINS_CONTAINER_PATH = new Path("org.eclipse.pde.core.requiredPlugins");
    public static final IPath JAVA_SEARCH_CONTAINER_PATH = new Path("org.eclipse.pde.core.externalJavaSearch");
    public static final IPath JRE_CONTAINER_PATH = new Path(JavaRuntime.JRE_CONTAINER);
    public static final String BINARY_PROJECT_VALUE = "binary";
    public static final String BINARY_REPOSITORY_PROVIDER = "org.eclipse.pde.core.BinaryRepositoryProvider";
    public static final QualifiedName EXTERNAL_PROJECT_PROPERTY = new QualifiedName("org.eclipse.pde.core", "imported");
    public static final QualifiedName TOUCH_PROJECT = new QualifiedName("org.eclipse.pde.core", "TOUCH_PROJECT");
    public static final QualifiedName SCHEMA_PREVIEW_FILE = new QualifiedName("org.eclipse.pde.core", "SCHEMA_PREVIEW_FILE");
    private static PDECore inst;
    private static IPluginModelBase[] registryPlugins;
    private static PDEExtensionRegistry fExtensionRegistry;
    private static PDEPreferencesManager fPreferenceManager;
    private FeatureModelManager fFeatureModelManager;
    private TargetDefinitionManager fTargetProfileManager;
    private SchemaRegistry fSchemaRegistry;
    private SourceLocationManager fSourceLocationManager;
    private JavadocLocationManager fJavadocLocationManager;
    private SearchablePluginsManager fSearchablePluginsManager;
    private TracingOptionsManager fTracingOptionsManager;
    private BundleContext fBundleContext;
    private JavaElementChangeListener fJavaElementChangeListener;
    private FeatureRebuilder fFeatureRebuilder;
    private PluginRebuilder fPluginRebuilder;
    private ServiceRegistration fTargetPlatformService;
    private ServiceRegistration fBundleProjectService;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        fExtensionRegistry = null;
    }

    public static PDECore getDefault() {
        return inst;
    }

    public synchronized PDEPreferencesManager getPreferencesManager() {
        if (fPreferenceManager == null) {
            fPreferenceManager = new PDEPreferencesManager(PLUGIN_ID);
        }
        return fPreferenceManager;
    }

    public static IWorkspace getWorkspace() {
        return ResourcesPlugin.getWorkspace();
    }

    public static void log(IStatus status) {
        if (status != null) {
            ResourcesPlugin.getPlugin().getLog().log(status);
        }
    }

    public static void log(Throwable e) {
        if (e instanceof InvocationTargetException) {
            e = ((InvocationTargetException)e).getTargetException();
        }
        IStatus status = null;
        if (e instanceof CoreException) {
            status = ((CoreException)e).getStatus();
        } else if (e.getMessage() != null) {
            status = new Status(4, PLUGIN_ID, 0, e.getMessage(), e);
        }
        PDECore.log(status);
    }

    public static void logErrorMessage(String message) {
        PDECore.log((IStatus)new Status(4, PLUGIN_ID, 4, message, null));
    }

    public static void logException(Throwable e) {
        PDECore.logException(e, null);
    }

    public static void logException(Throwable e, String message) {
        if (e instanceof InvocationTargetException) {
            e = ((InvocationTargetException)e).getTargetException();
        }
        IStatus status = null;
        if (e instanceof CoreException) {
            status = ((CoreException)e).getStatus();
        } else {
            if (message == null) {
                message = e.getMessage();
            }
            if (message == null) {
                message = e.toString();
            }
            status = new Status(4, PLUGIN_ID, 0, message, e);
        }
        PDECore.log(status);
    }

    public PDECore() {
        inst = this;
    }

    public URL getInstallURL() {
        try {
            return FileLocator.resolve((URL)PDECore.getDefault().getBundle().getEntry("/"));
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public IPluginModelBase findPluginInHost(String id) {
        if (registryPlugins == null) {
            URL[] pluginPaths = ConfiguratorUtils.getCurrentPlatformConfiguration().getPluginPath();
            PDEState state = new PDEState(pluginPaths, false, (IProgressMonitor)new NullProgressMonitor());
            registryPlugins = state.getTargetModels();
        }
        int i = 0;
        while (i < registryPlugins.length) {
            if (registryPlugins[i].getPluginBase().getId().equals(id)) {
                return registryPlugins[i];
            }
            ++i;
        }
        return null;
    }

    public PluginModelManager getModelManager() {
        return PluginModelManager.getInstance();
    }

    public synchronized TargetDefinitionManager getTargetProfileManager() {
        if (this.fTargetProfileManager == null) {
            this.fTargetProfileManager = new TargetDefinitionManager();
        }
        return this.fTargetProfileManager;
    }

    public synchronized FeatureModelManager getFeatureModelManager() {
        if (this.fFeatureModelManager == null) {
            this.fFeatureModelManager = new FeatureModelManager();
        }
        return this.fFeatureModelManager;
    }

    public JavaElementChangeListener getJavaElementChangeListener() {
        return this.fJavaElementChangeListener;
    }

    public synchronized SchemaRegistry getSchemaRegistry() {
        if (this.fSchemaRegistry == null) {
            this.fSchemaRegistry = new SchemaRegistry();
        }
        return this.fSchemaRegistry;
    }

    public synchronized PDEExtensionRegistry getExtensionsRegistry() {
        if (fExtensionRegistry == null) {
            fExtensionRegistry = new PDEExtensionRegistry();
        }
        return fExtensionRegistry;
    }

    public synchronized SourceLocationManager getSourceLocationManager() {
        if (this.fSourceLocationManager == null) {
            this.fSourceLocationManager = new SourceLocationManager();
        }
        return this.fSourceLocationManager;
    }

    public synchronized JavadocLocationManager getJavadocLocationManager() {
        if (this.fJavadocLocationManager == null) {
            this.fJavadocLocationManager = new JavadocLocationManager();
        }
        return this.fJavadocLocationManager;
    }

    public synchronized TracingOptionsManager getTracingOptionsManager() {
        if (this.fTracingOptionsManager == null) {
            this.fTracingOptionsManager = new TracingOptionsManager();
        }
        return this.fTracingOptionsManager;
    }

    public synchronized SearchablePluginsManager getSearchablePluginsManager() {
        if (this.fSearchablePluginsManager == null) {
            this.fSearchablePluginsManager = new SearchablePluginsManager();
        }
        return this.fSearchablePluginsManager;
    }

    public boolean areModelsInitialized() {
        return this.getModelManager().isInitialized();
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        this.fBundleContext = context;
        this.fJavaElementChangeListener = new JavaElementChangeListener();
        this.fJavaElementChangeListener.start();
        this.fPluginRebuilder = new PluginRebuilder();
        this.fPluginRebuilder.start();
        this.fFeatureRebuilder = new FeatureRebuilder();
        this.fFeatureRebuilder.start();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.fTargetPlatformService = context.registerService(clazz.getName(), (Object)TargetPlatformService.getDefault(), new Hashtable());
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.pde.core.project.IBundleProjectService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.fBundleProjectService = context.registerService(clazz2.getName(), (Object)BundleProjectService.getDefault(), new Hashtable());
        ResourcesPlugin.getWorkspace().addSaveParticipant(PLUGIN_ID, new ISaveParticipant(){

            public void saving(ISaveContext saveContext) throws CoreException {
                P2TargetUtils.cleanOrphanedTargetDefinitionProfiles();
                if (PDECore.this.fSearchablePluginsManager != null) {
                    PDECore.this.fSearchablePluginsManager.saving(saveContext);
                }
                PluginModelManager.saveInstance();
            }

            public void rollback(ISaveContext saveContext) {
                if (PDECore.this.fSearchablePluginsManager != null) {
                    PDECore.this.fSearchablePluginsManager.rollback(saveContext);
                }
            }

            public void prepareToSave(ISaveContext saveContext) throws CoreException {
                if (PDECore.this.fSearchablePluginsManager != null) {
                    PDECore.this.fSearchablePluginsManager.prepareToSave(saveContext);
                }
            }

            public void doneSaving(ISaveContext saveContext) {
                if (PDECore.this.fSearchablePluginsManager != null) {
                    PDECore.this.fSearchablePluginsManager.doneSaving(saveContext);
                }
            }
        });
    }

    public BundleContext getBundleContext() {
        return this.fBundleContext;
    }

    public void stop(BundleContext context) throws CoreException {
        if (fPreferenceManager != null) {
            fPreferenceManager.savePluginPreferences();
        }
        this.fJavaElementChangeListener.shutdown();
        this.fPluginRebuilder.stop();
        this.fFeatureRebuilder.stop();
        if (this.fSchemaRegistry != null) {
            this.fSchemaRegistry.shutdown();
            this.fSchemaRegistry = null;
        }
        if (this.fTargetProfileManager != null) {
            this.fTargetProfileManager.shutdown();
            this.fTargetProfileManager = null;
        }
        if (this.fSearchablePluginsManager != null) {
            this.fSearchablePluginsManager.shutdown();
            this.fSearchablePluginsManager = null;
        }
        if (this.fFeatureModelManager != null) {
            this.fFeatureModelManager.shutdown();
            this.fFeatureModelManager = null;
        }
        if (fExtensionRegistry != null) {
            fExtensionRegistry.stop();
            fExtensionRegistry = null;
        }
        PluginModelManager.shutdownInstance();
        if (this.fTargetPlatformService != null) {
            this.fTargetPlatformService.unregister();
            this.fTargetPlatformService = null;
        }
        if (this.fBundleProjectService != null) {
            this.fBundleProjectService.unregister();
            this.fBundleProjectService = null;
        }
        ResourcesPlugin.getWorkspace().removeSaveParticipant(PLUGIN_ID);
    }

    public Object acquireService(String serviceName) {
        ServiceReference reference = this.fBundleContext.getServiceReference(serviceName);
        if (reference == null) {
            return null;
        }
        Object service = this.fBundleContext.getService(reference);
        if (service != null) {
            this.fBundleContext.ungetService(reference);
        }
        return service;
    }
}

