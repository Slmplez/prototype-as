/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.preferences;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.internal.preferences.Activator;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.preferences.exchange.IProductPreferencesService;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.service.prefs.Preferences;
import org.osgi.util.tracker.ServiceTracker;

public class DefaultPreferences
extends EclipsePreferences {
    private static Set loadedNodes = Collections.synchronizedSet(new HashSet());
    private static final String KEY_PREFIX = "%";
    private static final String KEY_DOUBLE_PREFIX = "%%";
    private static final IPath NL_DIR = new Path("$nl$");
    private static final String PROPERTIES_FILE_EXTENSION = "properties";
    private static Properties productCustomization;
    private static Properties productTranslation;
    private static Properties commandLineCustomization;
    private EclipsePreferences loadLevel;
    private Thread initializingThread;
    private String qualifier;
    private int segmentCount;
    private WeakReference pluginReference;
    public static String pluginCustomizationFile;
    static /* synthetic */ Class class$0;

    static {
        pluginCustomizationFile = null;
    }

    public DefaultPreferences() {
        this(null, null);
    }

    private DefaultPreferences(EclipsePreferences parent, String name, Object context) {
        this(parent, name);
        this.pluginReference = new WeakReference<Object>(context);
    }

    private DefaultPreferences(EclipsePreferences parent, String name) {
        super(parent, name);
        if (parent instanceof DefaultPreferences) {
            this.pluginReference = ((DefaultPreferences)parent).pluginReference;
        }
        String path = this.absolutePath();
        this.segmentCount = DefaultPreferences.getSegmentCount(path);
        if (this.segmentCount < 2) {
            return;
        }
        this.qualifier = DefaultPreferences.getSegment(path, 1);
    }

    private void applyBundleDefaults() {
        Bundle bundle = PreferencesOSGiUtils.getDefault().getBundle(this.name());
        if (bundle == null) {
            return;
        }
        URL url = FileLocator.find((Bundle)bundle, (IPath)new Path("preferences.ini"), null);
        if (url == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Preference default override file not found for bundle: " + bundle.getSymbolicName());
            }
            return;
        }
        URL transURL = FileLocator.find((Bundle)bundle, (IPath)NL_DIR.append("preferences").addFileExtension(PROPERTIES_FILE_EXTENSION), null);
        if (transURL == null && EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Preference translation file not found for bundle: " + bundle.getSymbolicName());
        }
        this.applyDefaults(this.name(), this.loadProperties(url), this.loadProperties(transURL));
    }

    private void applyCommandLineDefaults() {
        if (commandLineCustomization == null) {
            String filename = pluginCustomizationFile;
            if (filename == null) {
                if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                    PrefsMessages.message("Command-line preferences customization file not specified.");
                }
                return;
            }
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Using command-line preference customization file: " + filename);
            }
            commandLineCustomization = this.loadProperties(filename);
        }
        this.applyDefaults(null, commandLineCustomization, null);
    }

    private void applyDefaults(String id, Properties defaultValues, Properties translations) {
        Enumeration e = defaultValues.keys();
        while (e.hasMoreElements()) {
            String fullKey = (String)e.nextElement();
            String value = defaultValues.getProperty(fullKey);
            if (value == null) continue;
            Path childPath = new Path(fullKey);
            String key = childPath.lastSegment();
            childPath = childPath.removeLastSegments(1);
            String localQualifier = id;
            if (id == null) {
                localQualifier = childPath.segment(0);
                childPath = childPath.removeFirstSegments(1);
            }
            if (!this.name().equals(localQualifier)) continue;
            value = this.translatePreference(value, translations);
            if (EclipsePreferences.DEBUG_PREFERENCE_SET) {
                PrefsMessages.message("Setting default preference: " + new Path(this.absolutePath()).append((IPath)childPath).append(key) + '=' + value);
            }
            ((EclipsePreferences)this.internalNode(childPath.toString(), false, null)).internalPut(key, value);
        }
    }

    public IEclipsePreferences node(String childName, Object context) {
        return this.internalNode(childName, true, context);
    }

    private void applyRuntimeDefaults() {
        WeakReference ref = PreferencesService.getDefault().applyRuntimeDefaults(this.name(), this.pluginReference);
        if (ref != null) {
            this.pluginReference = ref;
        }
    }

    private void applyProductDefaults() {
        if (productCustomization == null) {
            BundleContext context = Activator.getContext();
            if (context != null) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.internal.preferences.exchange.IProductPreferencesService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                ServiceTracker productTracker = new ServiceTracker(context, clazz.getName(), null);
                productTracker.open();
                IProductPreferencesService productSpecials = (IProductPreferencesService)productTracker.getService();
                if (productSpecials != null) {
                    productCustomization = productSpecials.getProductCustomization();
                    productTranslation = productSpecials.getProductTranslation();
                }
                productTracker.close();
            } else {
                PrefsMessages.message("Product-specified preferences called before plugin is started");
            }
            if (productCustomization == null) {
                productCustomization = new Properties();
            }
        }
        if (!productCustomization.isEmpty()) {
            this.applyDefaults(null, productCustomization, productTranslation);
        }
    }

    public void flush() {
    }

    protected IEclipsePreferences getLoadLevel() {
        if (this.loadLevel == null) {
            if (this.qualifier == null) {
                return null;
            }
            EclipsePreferences node = this;
            int i = 2;
            while (i < this.segmentCount) {
                node = (EclipsePreferences)node.parent();
                ++i;
            }
            this.loadLevel = node;
        }
        return this.loadLevel;
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new DefaultPreferences(nodeParent, nodeName, context);
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.name());
    }

    protected void load() {
        this.setInitializingBundleDefaults();
        try {
            this.applyRuntimeDefaults();
            this.applyBundleDefaults();
        }
        finally {
            this.clearInitializingBundleDefaults();
        }
        this.applyProductDefaults();
        this.applyCommandLineDefaults();
    }

    protected String internalPut(String key, String newValue) {
        String relativePath;
        String result = super.internalPut(key, newValue);
        if (this.isInitializingBundleDefaults() && (relativePath = DefaultPreferences.getScopeRelativePath(this.absolutePath())) != null) {
            Preferences node = PreferencesService.getDefault().getRootNode().node("bundle_defaults").node(relativePath);
            node.put(key, newValue);
        }
        return result;
    }

    private void setInitializingBundleDefaults() {
        IEclipsePreferences node = this.getLoadLevel();
        if (node instanceof DefaultPreferences) {
            DefaultPreferences loader = (DefaultPreferences)node;
            loader.initializingThread = Thread.currentThread();
        }
    }

    private void clearInitializingBundleDefaults() {
        IEclipsePreferences node = this.getLoadLevel();
        if (node instanceof DefaultPreferences) {
            DefaultPreferences loader = (DefaultPreferences)node;
            loader.initializingThread = null;
        }
    }

    private boolean isInitializingBundleDefaults() {
        IEclipsePreferences node = this.getLoadLevel();
        if (node instanceof DefaultPreferences) {
            DefaultPreferences loader = (DefaultPreferences)node;
            return loader.initializingThread == Thread.currentThread();
        }
        return false;
    }

    protected static String getScopeRelativePath(String absolutePath) {
        if (absolutePath.length() < 2) {
            return null;
        }
        int index = absolutePath.indexOf(47, 1);
        if (index == -1 || index + 1 >= absolutePath.length()) {
            return null;
        }
        return absolutePath.substring(index + 1);
    }

    private Properties loadProperties(URL url) {
        Properties result;
        block16: {
            result = new Properties();
            if (url == null) {
                return result;
            }
            InputStream input = null;
            try {
                try {
                    input = url.openStream();
                    result.load(input);
                }
                catch (IOException e) {
                    if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                        PrefsMessages.message("Problem opening stream to preference customization file: " + url);
                        e.printStackTrace();
                    }
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block16;
                }
            }
            catch (Throwable throwable) {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
        }
        return result;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Properties loadProperties(String filename) {
        Properties result = new Properties();
        InputStream input = null;
        try {
            input = new BufferedInputStream(new FileInputStream(filename));
            result.load(input);
        }
        catch (FileNotFoundException fileNotFoundException) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Preference customization file not found: " + filename);
            }
            if (input == null) return result;
            try {
                input.close();
                return result;
            }
            catch (IOException iOException) {}
            return result;
        }
        catch (IOException e) {
            try {
                String message = NLS.bind((String)PrefsMessages.preferences_loadException, (Object)filename);
                Status status = new Status(4, "org.eclipse.equinox.preferences", 4, message, (Throwable)e);
                RuntimeLog.log((IStatus)status);
                if (input == null) return result;
            }
            catch (Throwable throwable) {
                if (input == null) throw throwable;
                try {
                    input.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                input.close();
                return result;
            }
            catch (IOException iOException) {}
            return result;
        }
        if (input == null) return result;
        try {
            input.close();
            return result;
        }
        catch (IOException iOException) {}
        return result;
    }

    protected void loaded() {
        loadedNodes.add(this.name());
    }

    public void sync() {
    }

    private String translatePreference(String value, Properties props) {
        value = value.trim();
        if (props == null || value.startsWith(KEY_DOUBLE_PREFIX)) {
            return value;
        }
        if (value.startsWith(KEY_PREFIX)) {
            int ix = value.indexOf(" ");
            String key = ix == -1 ? value.substring(1) : value.substring(1, ix);
            String dflt = ix == -1 ? value : value.substring(ix + 1);
            return props.getProperty(key, dflt);
        }
        return value;
    }
}

