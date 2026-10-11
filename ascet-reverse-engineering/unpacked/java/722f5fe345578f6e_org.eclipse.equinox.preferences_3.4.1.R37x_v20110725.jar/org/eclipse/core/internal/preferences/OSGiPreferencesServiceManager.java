/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.ServiceFactory
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.core.internal.preferences;

import java.util.TreeSet;
import org.eclipse.core.internal.preferences.OSGiPreferencesServiceImpl;
import org.eclipse.core.runtime.preferences.ConfigurationScope;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class OSGiPreferencesServiceManager
implements ServiceFactory,
BundleListener {
    private static final String ORG_ECLIPSE_CORE_INTERNAL_PREFERENCES_OSGI = "org.eclipse.core.internal.preferences.osgi";
    private Preferences prefBundles;

    public OSGiPreferencesServiceManager(BundleContext context) {
        context.addBundleListener((BundleListener)this);
        this.prefBundles = ConfigurationScope.INSTANCE.getNode(ORG_ECLIPSE_CORE_INTERNAL_PREFERENCES_OSGI);
        try {
            Bundle[] allBundles = context.getBundles();
            TreeSet<String> bundleQualifiers = new TreeSet<String>();
            int i = 0;
            while (i < allBundles.length) {
                bundleQualifiers.add(this.getQualifier(allBundles[i]));
                ++i;
            }
            String[] prefsBundles = this.prefBundles.keys();
            int i2 = 0;
            while (i2 < prefsBundles.length) {
                if (!bundleQualifiers.contains(prefsBundles[i2])) {
                    this.removePrefs(prefsBundles[i2]);
                }
                ++i2;
            }
        }
        catch (BackingStoreException backingStoreException) {}
    }

    public Object getService(Bundle bundle, ServiceRegistration registration) {
        String qualifier = this.getQualifier(bundle);
        Preferences bundlesNode = this.getBundlesNode();
        bundlesNode.put(qualifier, "");
        try {
            bundlesNode.flush();
        }
        catch (BackingStoreException backingStoreException) {}
        return new OSGiPreferencesServiceImpl(ConfigurationScope.INSTANCE.getNode(this.getQualifier(bundle)));
    }

    private String getQualifier(Bundle bundle) {
        String qualifier = "org.eclipse.core.runtime.preferences.OSGiPreferences." + bundle.getBundleId();
        return qualifier;
    }

    public void ungetService(Bundle bundle, ServiceRegistration registration, Object service) {
        try {
            ConfigurationScope.INSTANCE.getNode(this.getQualifier(bundle)).flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }

    public void bundleChanged(BundleEvent event) {
        if (event.getType() == 16) {
            try {
                this.removePrefs(this.getQualifier(event.getBundle()));
            }
            catch (BackingStoreException backingStoreException) {}
        }
    }

    protected void removePrefs(String qualifier) throws BackingStoreException {
        ConfigurationScope.INSTANCE.getNode(qualifier).removeNode();
        Preferences bundlesNode = this.getBundlesNode();
        bundlesNode.remove(qualifier);
        bundlesNode.flush();
    }

    private Preferences getBundlesNode() {
        try {
            if (this.prefBundles == null || !this.prefBundles.nodeExists("")) {
                this.prefBundles = ConfigurationScope.INSTANCE.getNode(ORG_ECLIPSE_CORE_INTERNAL_PREFERENCES_OSGI);
            }
            return this.prefBundles;
        }
        catch (BackingStoreException backingStoreException) {
            return null;
        }
    }
}

