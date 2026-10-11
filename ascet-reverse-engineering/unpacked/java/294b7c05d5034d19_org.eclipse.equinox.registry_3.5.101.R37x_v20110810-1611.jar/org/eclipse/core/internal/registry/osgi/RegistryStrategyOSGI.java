/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.ResourceTranslator
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.localization.LocaleProvider
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleListener
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.registry.osgi;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.ReferenceMap;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.internal.registry.RegistryTimestamp;
import org.eclipse.core.internal.registry.osgi.Activator;
import org.eclipse.core.internal.registry.osgi.EclipseBundleListener;
import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.internal.runtime.ResourceTranslator;
import org.eclipse.core.runtime.ContributorFactoryOSGi;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.core.runtime.spi.RegistryStrategy;
import org.eclipse.osgi.service.localization.LocaleProvider;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleListener;
import org.osgi.util.tracker.ServiceTracker;

public class RegistryStrategyOSGI
extends RegistryStrategy {
    private Object token;
    protected boolean DEBUG;
    protected boolean DEBUG_REGISTRY_EVENTS;
    private ServiceTracker xmlTracker = null;
    private ServiceTracker localeTracker = null;
    private boolean trackTimestamp;
    private static float DEFAULT_BUNDLECACHE_LOADFACTOR = 0.75f;
    private static int DEFAULT_BUNDLECACHE_SIZE = 200;
    private ReferenceMap bundleMap = new ReferenceMap(1, DEFAULT_BUNDLECACHE_SIZE, DEFAULT_BUNDLECACHE_LOADFACTOR);
    private EclipseBundleListener pluginBundleListener = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public RegistryStrategyOSGI(File[] theStorageDir, boolean[] cacheReadOnly, Object key) {
        super(theStorageDir, cacheReadOnly);
        this.token = key;
        BundleContext context = Activator.getContext();
        this.trackTimestamp = context != null ? "true".equalsIgnoreCase(context.getProperty("osgi.checkConfiguration")) : false;
    }

    public final String translate(String key, ResourceBundle resources) {
        return ResourceTranslator.getResourceString(null, (String)key, (ResourceBundle)resources);
    }

    public String[] translate(String[] nonTranslated, IContributor contributor, String locale) {
        return ResourceTranslator.getResourceString((Bundle)ContributorFactoryOSGi.resolve(contributor), (String[])nonTranslated, (String)locale);
    }

    private Bundle getBundle(String id) {
        long OSGiId;
        if (id == null) {
            return null;
        }
        try {
            OSGiId = Long.parseLong(id);
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
        Bundle bundle = (Bundle)this.bundleMap.get((int)OSGiId);
        if (bundle != null) {
            return bundle;
        }
        bundle = Activator.getContext().getBundle(OSGiId);
        this.bundleMap.put((int)OSGiId, bundle);
        return bundle;
    }

    public Object createExecutableExtension(RegistryContributor contributor, String className, String overridenContributorName) throws CoreException {
        Bundle contributingBundle = overridenContributorName != null && !overridenContributorName.equals("") ? OSGIUtils.getDefault().getBundle(overridenContributorName) : this.getBundle(contributor.getId());
        if (contributingBundle == null) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_loadClassError, (Object)"UNKNOWN BUNDLE", (Object)className), new InvalidRegistryObjectException());
        }
        Class classInstance = null;
        try {
            classInstance = contributingBundle.loadClass(className);
        }
        catch (Exception e1) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_loadClassError, (Object)contributingBundle.getSymbolicName(), (Object)className), e1);
        }
        catch (LinkageError e) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_loadClassError, (Object)contributingBundle.getSymbolicName(), (Object)className), e);
        }
        Object result = null;
        try {
            result = classInstance.newInstance();
        }
        catch (Exception e) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_instantiateClassError, (Object)contributingBundle.getSymbolicName(), (Object)className), e);
        }
        catch (LinkageError e1) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_instantiateClassError, (Object)contributingBundle.getSymbolicName(), (Object)className), e1);
        }
        return result;
    }

    private void throwException(String message, Throwable exception) throws CoreException {
        throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.registry", 1, message, exception));
    }

    public void onStart(IExtensionRegistry registry, boolean loadedFromCache) {
        super.onStart(registry, loadedFromCache);
        if (!(registry instanceof ExtensionRegistry)) {
            return;
        }
        this.pluginBundleListener = new EclipseBundleListener((ExtensionRegistry)registry, this.token, this);
        Activator.getContext().addBundleListener((BundleListener)this.pluginBundleListener);
        if (!loadedFromCache) {
            this.pluginBundleListener.processBundles(Activator.getContext().getBundles());
        }
    }

    public void onStop(IExtensionRegistry registry) {
        if (this.pluginBundleListener != null) {
            Activator.getContext().removeBundleListener((BundleListener)this.pluginBundleListener);
        }
        if (this.xmlTracker != null) {
            this.xmlTracker.close();
            this.xmlTracker = null;
        }
        if (this.localeTracker != null) {
            this.localeTracker.close();
            this.localeTracker = null;
        }
        super.onStop(registry);
    }

    public boolean cacheUse() {
        return !"true".equals(RegistryProperties.getProperty("eclipse.noRegistryCache"));
    }

    public boolean cacheLazyLoading() {
        return !"true".equalsIgnoreCase(RegistryProperties.getProperty("eclipse.noLazyRegistryCacheLoading"));
    }

    public long getContributionsTimestamp() {
        if (!this.checkContributionsTimestamp()) {
            return 0L;
        }
        RegistryTimestamp expectedTimestamp = new RegistryTimestamp();
        BundleContext context = Activator.getContext();
        Bundle[] allBundles = context.getBundles();
        int i = 0;
        while (i < allBundles.length) {
            URL pluginManifest = EclipseBundleListener.getExtensionURL(allBundles[i], false);
            if (pluginManifest != null) {
                long timestamp = this.getExtendedTimestamp(allBundles[i], pluginManifest);
                expectedTimestamp.add(timestamp);
            }
            ++i;
        }
        return expectedTimestamp.getContentsTimestamp();
    }

    public boolean checkContributionsTimestamp() {
        return this.trackTimestamp;
    }

    public long getExtendedTimestamp(Bundle bundle, URL pluginManifest) {
        if (pluginManifest == null) {
            return 0L;
        }
        try {
            return pluginManifest.openConnection().getLastModified() + bundle.getBundleId();
        }
        catch (IOException e) {
            if (this.debug()) {
                System.out.println("Unable to obtain timestamp for the bundle " + bundle.getSymbolicName());
                e.printStackTrace();
            }
            return 0L;
        }
    }

    public SAXParserFactory getXMLParser() {
        if (this.xmlTracker == null) {
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("javax.xml.parsers.SAXParserFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.xmlTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.xmlTracker.open();
        }
        return (SAXParserFactory)this.xmlTracker.getService();
    }

    public String getLocale() {
        Locale currentLocale;
        LocaleProvider localeProvider;
        if (this.localeTracker == null) {
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.service.localization.LocaleProvider");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.localeTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.localeTracker.open();
        }
        if ((localeProvider = (LocaleProvider)this.localeTracker.getService()) != null && (currentLocale = localeProvider.getLocale()) != null) {
            return currentLocale.toString();
        }
        return super.getLocale();
    }
}

