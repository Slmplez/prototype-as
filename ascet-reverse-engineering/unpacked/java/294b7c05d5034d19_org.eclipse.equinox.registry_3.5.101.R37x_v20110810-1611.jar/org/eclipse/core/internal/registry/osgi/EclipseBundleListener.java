/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.ResourceTranslator
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.SynchronousBundleListener
 */
package org.eclipse.core.internal.registry.osgi;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.internal.registry.osgi.RegistryStrategyOSGI;
import org.eclipse.core.internal.runtime.ResourceTranslator;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.ContributorFactoryOSGi;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.SynchronousBundleListener;

public class EclipseBundleListener
implements SynchronousBundleListener {
    private static final String PLUGIN_MANIFEST = "plugin.xml";
    private static final String FRAGMENT_MANIFEST = "fragment.xml";
    private ExtensionRegistry registry;
    private RegistryStrategyOSGI strategy;
    private Object token;
    private HashMap dynamicAddStateStamps = new HashMap();
    private long[] currentStateStamp = new long[1];

    public EclipseBundleListener(ExtensionRegistry registry, Object key, RegistryStrategyOSGI strategy) {
        this.registry = registry;
        this.token = key;
        this.strategy = strategy;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void bundleChanged(BundleEvent event) {
        Bundle bundle = event.getBundle();
        switch (event.getType()) {
            case 32: {
                long[] lArray = this.currentStateStamp;
                synchronized (this.currentStateStamp) {
                    long newStateStamp = this.registry.computeState();
                    if (this.currentStateStamp[0] != newStateStamp) {
                        this.currentStateStamp[0] = newStateStamp;
                        this.dynamicAddStateStamps.clear();
                    }
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    this.addBundle(bundle, true);
                    break;
                }
            }
            case 64: {
                this.removeBundle(bundle);
            }
        }
    }

    public void processBundles(Bundle[] bundles) {
        int i = 0;
        while (i < bundles.length) {
            if (this.isBundleResolved(bundles[i])) {
                this.addBundle(bundles[i], false);
            } else {
                this.removeBundle(bundles[i]);
            }
            ++i;
        }
    }

    private boolean isBundleResolved(Bundle bundle) {
        return (bundle.getState() & 0x3C) != 0;
    }

    private void removeBundle(Bundle bundle) {
        URL pluginManifest;
        long timestamp = 0L;
        if (this.strategy.checkContributionsTimestamp() && (pluginManifest = EclipseBundleListener.getExtensionURL(bundle, false)) != null) {
            timestamp = this.strategy.getExtendedTimestamp(bundle, pluginManifest);
        }
        this.registry.remove(Long.toString(bundle.getBundleId()), timestamp);
    }

    public static URL getExtensionURL(Bundle bundle, boolean report) {
        if (bundle.getBundleId() == 0L) {
            return null;
        }
        if (bundle.getSymbolicName() == null) {
            return null;
        }
        boolean isFragment = OSGIUtils.getDefault().isFragment(bundle);
        String manifestName = isFragment ? FRAGMENT_MANIFEST : PLUGIN_MANIFEST;
        URL extensionURL = bundle.getEntry(manifestName);
        if (extensionURL == null) {
            return null;
        }
        if (!EclipseBundleListener.isSingleton(bundle)) {
            if (report && !EclipseBundleListener.isGeneratedManifest(bundle)) {
                String message = NLS.bind((String)RegistryMessages.parse_nonSingleton, (Object)bundle.getSymbolicName());
                RuntimeLog.log((IStatus)new Status(2, "org.eclipse.equinox.registry", 0, message, null));
            }
            return null;
        }
        if (!isFragment) {
            return extensionURL;
        }
        Bundle[] hosts = OSGIUtils.getDefault().getHosts(bundle);
        if (hosts == null) {
            return null;
        }
        if (EclipseBundleListener.isSingleton(hosts[0])) {
            return extensionURL;
        }
        if (report) {
            String message = NLS.bind((String)RegistryMessages.parse_nonSingletonFragment, (Object)bundle.getSymbolicName(), (Object)hosts[0].getSymbolicName());
            RuntimeLog.log((IStatus)new Status(2, "org.eclipse.equinox.registry", 0, message, null));
        }
        return null;
    }

    private static boolean isGeneratedManifest(Bundle bundle) {
        return bundle.getHeaders("").get("Generated-from") != null;
    }

    private void addBundle(Bundle bundle, boolean checkNLSFragments) {
        BufferedInputStream is;
        IContributor contributor;
        if (checkNLSFragments) {
            this.checkForNLSFragment(bundle);
        }
        if (this.registry.hasContributor(contributor = ContributorFactoryOSGi.createContributor(bundle))) {
            return;
        }
        URL pluginManifest = EclipseBundleListener.getExtensionURL(bundle, true);
        if (pluginManifest == null) {
            return;
        }
        try {
            is = new BufferedInputStream(pluginManifest.openStream());
        }
        catch (IOException iOException) {
            is = null;
        }
        if (is == null) {
            return;
        }
        ResourceBundle translationBundle = null;
        try {
            translationBundle = ResourceTranslator.getResourceBundle((Bundle)bundle);
        }
        catch (MissingResourceException missingResourceException) {}
        long timestamp = 0L;
        if (this.strategy.checkContributionsTimestamp()) {
            timestamp = this.strategy.getExtendedTimestamp(bundle, pluginManifest);
        }
        this.registry.addContribution(is, contributor, true, pluginManifest.getPath(), translationBundle, this.token, timestamp);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void checkForNLSFragment(Bundle bundle) {
        if (!OSGIUtils.getDefault().isFragment(bundle)) {
            long[] lArray = this.currentStateStamp;
            synchronized (this.currentStateStamp) {
                this.dynamicAddStateStamps.put(Long.toString(bundle.getBundleId()), new Long(this.currentStateStamp[0]));
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return;
            }
        }
        Bundle[] hosts = OSGIUtils.getDefault().getHosts(bundle);
        if (hosts == null) {
            return;
        }
        int i = 0;
        while (i < hosts.length) {
            this.checkForNLSFiles(hosts[i], bundle);
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void checkForNLSFiles(Bundle host, Bundle fragment) {
        String hostID = Long.toString(host.getBundleId());
        long[] lArray = this.currentStateStamp;
        synchronized (this.currentStateStamp) {
            int i;
            Long hostStateStamp = (Long)this.dynamicAddStateStamps.get(hostID);
            if (hostStateStamp != null && this.currentStateStamp[0] == hostStateStamp) {
                // ** MonitorExit[var4_4] (shouldn't be in output)
                return;
            }
            // ** MonitorExit[var4_4] (shouldn't be in output)
            Bundle[] fragments = OSGIUtils.getDefault().getFragments(host);
            boolean refresh = false;
            if (this.hasNLSFilesFor(host, fragment)) {
                refresh = true;
            } else {
                i = 0;
                while (i < fragments.length && !refresh) {
                    if (!fragment.equals(fragments[i]) && this.hasNLSFilesFor(fragments[i], fragment)) {
                        refresh = true;
                    }
                    ++i;
                }
            }
            if (!refresh) return;
            this.removeBundle(host);
            this.addBundle(host, false);
            i = 0;
            while (i < fragments.length) {
                if (!fragment.equals(fragments[i])) {
                    this.removeBundle(fragments[i]);
                    this.addBundle(fragments[i], false);
                }
                ++i;
            }
            long[] lArray2 = this.currentStateStamp;
            synchronized (this.currentStateStamp) {
                this.dynamicAddStateStamps.put(hostID, new Long(this.currentStateStamp[0]));
                // ** MonitorExit[var6_8] (shouldn't be in output)
                return;
            }
        }
    }

    private boolean hasNLSFilesFor(Bundle target, Bundle fragment) {
        String filePattern;
        URL baseNLS;
        if (!this.registry.hasContributor(Long.toString(target.getBundleId()))) {
            return false;
        }
        Dictionary targetHeaders = target.getHeaders("");
        String localization = (String)targetHeaders.get("Bundle-Localization");
        if (localization == null) {
            localization = "OSGI-INF/l10n/bundle";
        }
        if ((baseNLS = target.getEntry(String.valueOf(localization) + ".properties")) == null) {
            return false;
        }
        int lastSlash = localization.lastIndexOf(47);
        if (lastSlash == localization.length() - 1) {
            return false;
        }
        String baseDir = lastSlash < 0 ? "" : localization.substring(0, lastSlash);
        Enumeration nlsFiles = fragment.findEntries(baseDir, filePattern = String.valueOf(lastSlash < 0 ? localization : localization.substring(lastSlash + 1)) + "_*.properties", false);
        return nlsFiles != null;
    }

    private static boolean isSingleton(Bundle bundle) {
        Dictionary allHeaders = bundle.getHeaders("");
        String symbolicNameHeader = (String)allHeaders.get("Bundle-SymbolicName");
        try {
            ManifestElement[] symbolicNameElements;
            if (symbolicNameHeader != null && (symbolicNameElements = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)symbolicNameHeader)).length > 0) {
                String singleton = symbolicNameElements[0].getDirective("singleton");
                if (singleton == null) {
                    singleton = symbolicNameElements[0].getAttribute("singleton");
                }
                if (!"true".equalsIgnoreCase(singleton)) {
                    String manifestVersion = (String)allHeaders.get("Bundle-ManifestVersion");
                    return manifestVersion == null && OSGIUtils.getDefault().getBundle(symbolicNameElements[0].getValue()) == bundle;
                }
            }
        }
        catch (BundleException bundleException) {}
        return true;
    }
}

