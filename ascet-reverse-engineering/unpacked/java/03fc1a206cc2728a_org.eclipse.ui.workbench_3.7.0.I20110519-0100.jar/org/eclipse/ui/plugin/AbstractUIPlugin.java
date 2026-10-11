/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IPluginDescriptor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.dialogs.DialogSettings
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.widgets.Display
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.SynchronousBundleListener
 */
package org.eclipse.ui.plugin;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.dialogs.DialogSettings;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WWinPluginAction;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.preferences.ScopedPreferenceStore;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.SynchronousBundleListener;

public abstract class AbstractUIPlugin
extends Plugin {
    private static final String FN_DIALOG_SETTINGS = "dialog_settings.xml";
    private IDialogSettings dialogSettings = null;
    private ScopedPreferenceStore preferenceStore;
    private ImageRegistry imageRegistry = null;
    private BundleListener bundleListener;

    public AbstractUIPlugin(IPluginDescriptor descriptor) {
        super(descriptor);
    }

    public AbstractUIPlugin() {
    }

    protected ImageRegistry createImageRegistry() {
        if (Display.getCurrent() != null) {
            return new ImageRegistry(Display.getCurrent());
        }
        if (PlatformUI.isWorkbenchRunning()) {
            return new ImageRegistry(PlatformUI.getWorkbench().getDisplay());
        }
        throw new SWTError(22);
    }

    public IDialogSettings getDialogSettings() {
        if (this.dialogSettings == null) {
            this.loadDialogSettings();
        }
        return this.dialogSettings;
    }

    public ImageRegistry getImageRegistry() {
        if (this.imageRegistry == null) {
            this.imageRegistry = this.createImageRegistry();
            this.initializeImageRegistry(this.imageRegistry);
        }
        return this.imageRegistry;
    }

    public IPreferenceStore getPreferenceStore() {
        if (this.preferenceStore == null) {
            this.preferenceStore = new ScopedPreferenceStore((IScopeContext)new InstanceScope(), this.getBundle().getSymbolicName());
        }
        return this.preferenceStore;
    }

    public IWorkbench getWorkbench() {
        return PlatformUI.getWorkbench();
    }

    protected void initializeDefaultPreferences(IPreferenceStore store) {
    }

    protected void initializeDefaultPluginPreferences() {
        this.loadPreferenceStore();
        this.initializeDefaultPreferences(this.getPreferenceStore());
    }

    protected void initializeImageRegistry(ImageRegistry reg) {
    }

    protected void loadDialogSettings() {
        block18: {
            String readWritePath;
            File settingsFile;
            this.dialogSettings = new DialogSettings("Workbench");
            IPath dataLocation = this.getStateLocationOrNull();
            if (dataLocation != null && (settingsFile = new File(readWritePath = dataLocation.append(FN_DIALOG_SETTINGS).toOSString())).exists()) {
                try {
                    this.dialogSettings.load(readWritePath);
                }
                catch (IOException iOException) {
                    this.dialogSettings = new DialogSettings("Workbench");
                }
                return;
            }
            URL dsURL = BundleUtility.find(this.getBundle(), FN_DIALOG_SETTINGS);
            if (dsURL == null) {
                return;
            }
            InputStream is = null;
            try {
                try {
                    is = dsURL.openStream();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(is, "utf-8"));
                    this.dialogSettings.load((Reader)reader);
                }
                catch (IOException iOException) {
                    this.dialogSettings = new DialogSettings("Workbench");
                    try {
                        if (is != null) {
                            is.close();
                        }
                        break block18;
                    }
                    catch (IOException iOException2) {}
                    break block18;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (is != null) {
                    is.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    protected void loadPreferenceStore() {
    }

    protected void refreshPluginActions() {
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        Display.getDefault().asyncExec(new Runnable(){

            public void run() {
                WWinPluginAction.refreshActionList();
            }
        });
    }

    protected void saveDialogSettings() {
        if (this.dialogSettings == null) {
            return;
        }
        try {
            IPath path = this.getStateLocationOrNull();
            if (path == null) {
                return;
            }
            String readWritePath = path.append(FN_DIALOG_SETTINGS).toOSString();
            this.dialogSettings.save(readWritePath);
        }
        catch (IOException iOException) {
        }
        catch (IllegalStateException illegalStateException) {}
    }

    protected void savePreferenceStore() {
        this.savePluginPreferences();
    }

    public void startup() throws CoreException {
        super.startup();
    }

    public void shutdown() throws CoreException {
        super.shutdown();
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        final BundleContext fc = context;
        this.bundleListener = new SynchronousBundleListener(){

            public void bundleChanged(BundleEvent event) {
                if (event.getBundle() == AbstractUIPlugin.this.getBundle() && event.getType() == 2) {
                    if (AbstractUIPlugin.this.getBundle().getState() == 32) {
                        AbstractUIPlugin.this.refreshPluginActions();
                    }
                    fc.removeBundleListener((BundleListener)this);
                }
            }
        };
        context.addBundleListener(this.bundleListener);
    }

    public void stop(BundleContext context) throws Exception {
        try {
            if (this.bundleListener != null) {
                context.removeBundleListener(this.bundleListener);
            }
            this.saveDialogSettings();
            this.savePreferenceStore();
            this.preferenceStore = null;
            if (this.imageRegistry != null) {
                this.imageRegistry.dispose();
            }
            this.imageRegistry = null;
        }
        finally {
            super.stop(context);
        }
    }

    public static ImageDescriptor imageDescriptorFromPlugin(String pluginId, String imageFilePath) {
        ImageDescriptor imageDescriptor;
        if (pluginId == null || imageFilePath == null) {
            throw new IllegalArgumentException();
        }
        IWorkbench workbench = PlatformUI.isWorkbenchRunning() ? PlatformUI.getWorkbench() : null;
        ImageDescriptor imageDescriptor2 = imageDescriptor = workbench == null ? null : workbench.getSharedImages().getImageDescriptor(imageFilePath);
        if (imageDescriptor != null) {
            return imageDescriptor;
        }
        Bundle bundle = Platform.getBundle((String)pluginId);
        if (!BundleUtility.isReady(bundle)) {
            return null;
        }
        URL fullPathString = BundleUtility.find(bundle, imageFilePath);
        if (fullPathString == null) {
            try {
                fullPathString = new URL(imageFilePath);
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        return ImageDescriptor.createFromURL((URL)fullPathString);
    }

    private IPath getStateLocationOrNull() {
        try {
            return this.getStateLocation();
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
    }
}

