/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.BundleFileFactoryHook;
import org.eclipse.osgi.baseadaptor.hooks.BundleFileWrapperFactoryHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingStatsHook;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegateHook;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class HookRegistry {
    public static final String HOOK_CONFIGURATORS_FILE = "hookconfigurators.properties";
    public static final String HOOK_CONFIGURATORS = "hook.configurators";
    public static final String PROP_HOOK_CONFIGURATORS_INCLUDE = "osgi.hook.configurators.include";
    public static final String PROP_HOOK_CONFIGURATORS_EXCLUDE = "osgi.hook.configurators.exclude";
    public static final String PROP_HOOK_CONFIGURATORS = "osgi.hook.configurators";
    private static final String BUILTIN_HOOKS = "builtin.hooks";
    private BaseAdaptor adaptor;
    private boolean readonly = false;
    private AdaptorHook[] adaptorHooks = new AdaptorHook[0];
    private BundleWatcher[] watchers = new BundleWatcher[0];
    private ClassLoadingHook[] classLoadingHooks = new ClassLoadingHook[0];
    private ClassLoadingStatsHook[] classLoadingStatsHooks = new ClassLoadingStatsHook[0];
    private ClassLoaderDelegateHook[] classLoaderDelegateHooks = new ClassLoaderDelegateHook[0];
    private StorageHook[] storageHooks = new StorageHook[0];
    private BundleFileFactoryHook[] bundleFileFactoryHooks = new BundleFileFactoryHook[0];
    private BundleFileWrapperFactoryHook[] bundleFileWrapperFactoryHooks = new BundleFileWrapperFactoryHook[0];

    public HookRegistry(BaseAdaptor adaptor) {
        this.adaptor = adaptor;
    }

    public FrameworkLogEntry[] initialize() {
        ArrayList<String> configurators = new ArrayList<String>(5);
        ArrayList<FrameworkLogEntry> errors = new ArrayList<FrameworkLogEntry>(0);
        this.mergeFileHookConfigurators(configurators, errors);
        this.mergePropertyHookConfigurators(configurators);
        this.loadConfigurators(configurators, errors);
        this.readonly = true;
        return errors.toArray(new FrameworkLogEntry[errors.size()]);
    }

    private void mergeFileHookConfigurators(List<String> configuratorList, List<FrameworkLogEntry> errors) {
        Enumeration<URL> hookConfigurators;
        ClassLoader cl = this.getClass().getClassLoader();
        try {
            hookConfigurators = cl != null ? cl.getResources(HOOK_CONFIGURATORS_FILE) : ClassLoader.getSystemResources(HOOK_CONFIGURATORS_FILE);
        }
        catch (IOException e) {
            errors.add(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, "getResources error on hookconfigurators.properties", 0, e, null));
            return;
        }
        int curBuiltin = 0;
        while (hookConfigurators.hasMoreElements()) {
            String hooksValue;
            Properties configuratorProps;
            InputStream input;
            URL url;
            block21: {
                url = hookConfigurators.nextElement();
                input = null;
                configuratorProps = new Properties();
                input = url.openStream();
                configuratorProps.load(input);
                hooksValue = configuratorProps.getProperty(HOOK_CONFIGURATORS);
                if (hooksValue != null) break block21;
                if (input == null) continue;
                try {
                    input.close();
                }
                catch (IOException iOException) {}
                continue;
            }
            try {
                try {
                    boolean builtin = Boolean.valueOf(configuratorProps.getProperty(BUILTIN_HOOKS));
                    String[] configurators = ManifestElement.getArrayFromList(hooksValue, ",");
                    int i = 0;
                    while (i < configurators.length) {
                        if (!configuratorList.contains(configurators[i])) {
                            if (builtin) {
                                configuratorList.add(curBuiltin++, configurators[i]);
                            } else {
                                configuratorList.add(configurators[i]);
                            }
                        }
                        ++i;
                    }
                }
                catch (IOException e) {
                    errors.add(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, new StringBuffer("error loading: ").append(url.toExternalForm()).toString(), 0, e, null));
                    if (input == null) continue;
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                    continue;
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
            if (input == null) continue;
            try {
                input.close();
            }
            catch (IOException iOException) {}
        }
    }

    private void mergePropertyHookConfigurators(List<String> configuratorList) {
        String[] configurators = ManifestElement.getArrayFromList(FrameworkProperties.getProperty(PROP_HOOK_CONFIGURATORS), ",");
        if (configurators.length > 0) {
            configuratorList.clear();
            int i = 0;
            while (i < configurators.length) {
                if (!configuratorList.contains(configurators[i])) {
                    configuratorList.add(configurators[i]);
                }
                ++i;
            }
            return;
        }
        String[] includeConfigurators = ManifestElement.getArrayFromList(FrameworkProperties.getProperty(PROP_HOOK_CONFIGURATORS_INCLUDE), ",");
        int i = 0;
        while (i < includeConfigurators.length) {
            if (!configuratorList.contains(includeConfigurators[i])) {
                configuratorList.add(includeConfigurators[i]);
            }
            ++i;
        }
        String[] excludeHooks = ManifestElement.getArrayFromList(FrameworkProperties.getProperty(PROP_HOOK_CONFIGURATORS_EXCLUDE), ",");
        int i2 = 0;
        while (i2 < excludeHooks.length) {
            configuratorList.remove(excludeHooks[i2]);
            ++i2;
        }
    }

    private void loadConfigurators(List<String> configurators, List<FrameworkLogEntry> errors) {
        for (String hookName : configurators) {
            try {
                Class<?> clazz = Class.forName(hookName);
                HookConfigurator configurator = (HookConfigurator)clazz.newInstance();
                configurator.addHooks(this);
            }
            catch (Throwable t) {
                errors.add(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, new StringBuffer("error loading hook: ").append(hookName).toString(), 0, t, null));
            }
        }
    }

    public AdaptorHook[] getAdaptorHooks() {
        return this.adaptorHooks;
    }

    public BundleWatcher[] getWatchers() {
        return this.watchers;
    }

    public ClassLoadingHook[] getClassLoadingHooks() {
        return this.classLoadingHooks;
    }

    public ClassLoadingStatsHook[] getClassLoadingStatsHooks() {
        return this.classLoadingStatsHooks;
    }

    public ClassLoaderDelegateHook[] getClassLoaderDelegateHooks() {
        return this.classLoaderDelegateHooks;
    }

    public StorageHook[] getStorageHooks() {
        return this.storageHooks;
    }

    public BundleFileFactoryHook[] getBundleFileFactoryHooks() {
        return this.bundleFileFactoryHooks;
    }

    public BundleFileWrapperFactoryHook[] getBundleFileWrapperFactoryHooks() {
        return this.bundleFileWrapperFactoryHooks;
    }

    public void addAdaptorHook(AdaptorHook adaptorHook) {
        this.adaptorHooks = (AdaptorHook[])this.add(adaptorHook, this.adaptorHooks, new AdaptorHook[this.adaptorHooks.length + 1]);
    }

    public void addWatcher(BundleWatcher watcher) {
        this.watchers = (BundleWatcher[])this.add(watcher, this.watchers, new BundleWatcher[this.watchers.length + 1]);
    }

    public void addClassLoadingHook(ClassLoadingHook classLoadingHook) {
        this.classLoadingHooks = (ClassLoadingHook[])this.add(classLoadingHook, this.classLoadingHooks, new ClassLoadingHook[this.classLoadingHooks.length + 1]);
    }

    public void addClassLoadingStatsHook(ClassLoadingStatsHook classLoadingStatsHook) {
        this.classLoadingStatsHooks = (ClassLoadingStatsHook[])this.add(classLoadingStatsHook, this.classLoadingStatsHooks, new ClassLoadingStatsHook[this.classLoadingStatsHooks.length + 1]);
    }

    public void addClassLoaderDelegateHook(ClassLoaderDelegateHook classLoaderDelegateHook) {
        this.classLoaderDelegateHooks = (ClassLoaderDelegateHook[])this.add(classLoaderDelegateHook, this.classLoaderDelegateHooks, new ClassLoaderDelegateHook[this.classLoaderDelegateHooks.length + 1]);
    }

    public void addStorageHook(StorageHook storageHook) {
        this.storageHooks = (StorageHook[])this.add(storageHook, this.storageHooks, new StorageHook[this.storageHooks.length + 1]);
    }

    public void addBundleFileFactoryHook(BundleFileFactoryHook factory) {
        this.bundleFileFactoryHooks = (BundleFileFactoryHook[])this.add(factory, this.bundleFileFactoryHooks, new BundleFileFactoryHook[this.bundleFileFactoryHooks.length + 1]);
    }

    public void addBundleFileWrapperFactoryHook(BundleFileWrapperFactoryHook factory) {
        this.bundleFileWrapperFactoryHooks = (BundleFileWrapperFactoryHook[])this.add(factory, this.bundleFileWrapperFactoryHooks, new BundleFileWrapperFactoryHook[this.bundleFileWrapperFactoryHooks.length + 1]);
    }

    private Object[] add(Object newValue, Object[] oldValues, Object[] newValues) {
        if (this.readonly) {
            throw new IllegalStateException("Cannot add hooks dynamically.");
        }
        if (oldValues.length > 0) {
            System.arraycopy(oldValues, 0, newValues, 0, oldValues.length);
        }
        newValues[oldValues.length] = newValue;
        return newValues;
    }

    public BaseAdaptor getAdaptor() {
        return this.adaptor;
    }
}

