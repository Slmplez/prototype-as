/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.FrameworkEvent
 *  org.osgi.framework.FrameworkListener
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.Version
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.service.startlevel.StartLevel
 */
package org.eclipse.equinox.internal.simpleconfigurator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo;
import org.eclipse.equinox.internal.simpleconfigurator.utils.EquinoxUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.SimpleConfiguratorUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.StateResolverUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.Utils;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.Version;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.service.startlevel.StartLevel;

class ConfigApplier {
    private static final String LAST_BUNDLES_INFO = "last.bundles.info";
    private static final String PROP_DEVMODE = "osgi.dev";
    private final BundleContext manipulatingContext;
    private final PackageAdmin packageAdminService;
    private final StartLevel startLevelService;
    private final boolean runningOnEquinox;
    private final boolean inDevMode;
    private final Bundle callingBundle;
    private final URI baseLocation;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    ConfigApplier(BundleContext context, Bundle callingBundle) {
        ServiceReference startLevelRef;
        ServiceReference packageAdminRef;
        this.manipulatingContext = context;
        this.callingBundle = callingBundle;
        this.runningOnEquinox = "Eclipse".equals(context.getProperty("org.osgi.framework.vendor"));
        this.inDevMode = this.manipulatingContext.getProperty(PROP_DEVMODE) != null;
        this.baseLocation = this.runningOnEquinox ? EquinoxUtils.getInstallLocationURI(context) : null;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((packageAdminRef = this.manipulatingContext.getServiceReference(clazz.getName())) == null) {
            throw new IllegalStateException("No PackageAdmin service is available.");
        }
        this.packageAdminService = (PackageAdmin)this.manipulatingContext.getService(packageAdminRef);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.service.startlevel.StartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((startLevelRef = this.manipulatingContext.getServiceReference(clazz2.getName())) == null) {
            throw new IllegalStateException("No StartLevelService service is available.");
        }
        this.startLevelService = (StartLevel)this.manipulatingContext.getService(startLevelRef);
    }

    void install(URL url, boolean exclusiveMode) throws IOException {
        List bundleInfoList = SimpleConfiguratorUtils.readConfiguration(url, this.baseLocation);
        if (bundleInfoList.size() == 0) {
            return;
        }
        BundleInfo[] expectedState = Utils.getBundleInfosFromList(bundleInfoList);
        String systemBundleSymbolicName = this.manipulatingContext.getBundle(0L).getSymbolicName();
        Version systemBundleVersion = this.manipulatingContext.getBundle(0L).getVersion();
        if (systemBundleSymbolicName != null) {
            int i = 0;
            while (i < expectedState.length) {
                Version version;
                String symbolicName = expectedState[i].getSymbolicName();
                if (systemBundleSymbolicName.equals(symbolicName) && !systemBundleVersion.equals((Object)(version = Version.parseVersion((String)expectedState[i].getVersion())))) {
                    throw new IllegalStateException("The System Bundle was updated. The framework must be restarted to finalize the configuration change");
                }
                ++i;
            }
        }
        HashSet<BundleInfo> toUninstall = null;
        if (!exclusiveMode) {
            BundleInfo[] lastInstalledBundles = this.getLastState();
            if (lastInstalledBundles != null) {
                toUninstall = new HashSet<BundleInfo>(Arrays.asList(lastInstalledBundles));
                toUninstall.removeAll(Arrays.asList(expectedState));
            }
            this.saveStateAsLast(url);
        }
        Collection prevouslyResolved = this.getResolvedBundles();
        ArrayList toRefresh = new ArrayList();
        ArrayList toStart = new ArrayList();
        if (exclusiveMode) {
            toRefresh.addAll(this.installBundles(expectedState, toStart));
            toRefresh.addAll(this.uninstallBundles(expectedState, this.packageAdminService));
        } else {
            toRefresh.addAll(this.installBundles(expectedState, toStart));
            if (toUninstall != null) {
                toRefresh.addAll(this.uninstallBundles(toUninstall));
            }
        }
        this.refreshPackages(toRefresh.toArray(new Bundle[toRefresh.size()]), this.manipulatingContext);
        if (toRefresh.size() > 0) {
            try {
                this.manipulatingContext.getBundle().loadClass("org.eclipse.osgi.service.resolver.PlatformAdmin");
                Bundle[] additionalRefresh = StateResolverUtils.getAdditionalRefresh(prevouslyResolved, this.manipulatingContext);
                if (additionalRefresh.length > 0) {
                    this.refreshPackages(additionalRefresh, this.manipulatingContext);
                }
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        this.startBundles(toStart.toArray(new Bundle[toStart.size()]));
    }

    private Collection getResolvedBundles() {
        HashSet<Bundle> resolved = new HashSet<Bundle>();
        Bundle[] allBundles = this.manipulatingContext.getBundles();
        int i = 0;
        while (i < allBundles.length) {
            if ((allBundles[i].getState() & 3) == 0) {
                resolved.add(allBundles[i]);
            }
            ++i;
        }
        return resolved;
    }

    private Collection uninstallBundles(HashSet toUninstall) {
        ArrayList<Bundle> removedBundles = new ArrayList<Bundle>(toUninstall.size());
        Iterator iterator = toUninstall.iterator();
        while (iterator.hasNext()) {
            BundleInfo current = (BundleInfo)iterator.next();
            Bundle[] matchingBundles = this.packageAdminService.getBundles(current.getSymbolicName(), this.getVersionRange(current.getVersion()));
            int j = 0;
            while (matchingBundles != null && j < matchingBundles.length) {
                try {
                    removedBundles.add(matchingBundles[j]);
                    matchingBundles[j].uninstall();
                }
                catch (BundleException bundleException) {}
                ++j;
            }
        }
        return removedBundles;
    }

    private void saveStateAsLast(URL url) {
        InputStream sourceStream = null;
        FileOutputStream destinationStream = null;
        File lastBundlesTxt = this.getLastBundleInfo();
        try {
            try {
                destinationStream = new FileOutputStream(lastBundlesTxt);
                sourceStream = url.openStream();
                SimpleConfiguratorUtils.transferStreams(sourceStream, destinationStream);
            }
            finally {
                if (destinationStream != null) {
                    ((OutputStream)destinationStream).close();
                }
                if (sourceStream != null) {
                    sourceStream.close();
                }
            }
        }
        catch (IOException iOException) {}
    }

    private File getLastBundleInfo() {
        return this.manipulatingContext.getDataFile(LAST_BUNDLES_INFO);
    }

    private BundleInfo[] getLastState() {
        File lastBundlesInfo = this.getLastBundleInfo();
        if (!lastBundlesInfo.isFile()) {
            return null;
        }
        try {
            return SimpleConfiguratorUtils.readConfiguration(lastBundlesInfo.toURL(), this.baseLocation).toArray(new BundleInfo[1]);
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private ArrayList installBundles(BundleInfo[] finalList, Collection toStart) {
        ArrayList<Bundle> toRefresh = new ArrayList<Bundle>();
        String useReferenceProperty = this.manipulatingContext.getProperty("org.eclipse.equinox.simpleconfigurator.useReference");
        boolean useReference = useReferenceProperty == null ? this.runningOnEquinox : Boolean.valueOf(useReferenceProperty);
        int i = 0;
        while (i < finalList.length) {
            block15: {
                if (finalList[i] != null) {
                    int startLevel;
                    Bundle current;
                    String symbolicName = finalList[i].getSymbolicName();
                    String version = finalList[i].getVersion();
                    Bundle[] matches = null;
                    if (symbolicName != null && version != null) {
                        matches = this.packageAdminService.getBundles(symbolicName, this.getVersionRange(version));
                    }
                    String bundleLocation = SimpleConfiguratorUtils.getBundleLocation(finalList[i], useReference);
                    Bundle bundle = matches == null ? null : (current = matches.length == 0 ? null : matches[0]);
                    if (current == null) {
                        try {
                            current = this.manipulatingContext.installBundle(bundleLocation);
                            toRefresh.add(current);
                        }
                        catch (BundleException e) {
                            break block15;
                        }
                    }
                    if (this.inDevMode && current.getBundleId() != 0L && current != this.manipulatingContext.getBundle() && !bundleLocation.equals(current.getLocation()) && !current.getLocation().startsWith("initial@")) {
                        try {
                            current.uninstall();
                            toRefresh.add(current);
                        }
                        catch (BundleException e) {
                            break block15;
                        }
                        try {
                            current = this.manipulatingContext.installBundle(bundleLocation);
                            toRefresh.add(current);
                        }
                        catch (BundleException e) {
                            break block15;
                        }
                    }
                    if (finalList[i].isMarkedAsStarted()) {
                        toStart.add(current);
                    }
                    if ((startLevel = finalList[i].getStartLevel()) >= 1 && current.getBundleId() != 0L && this.packageAdminService.getBundleType(current) != 1 && !"org.eclipse.equinox.simpleconfigurator".equals(current.getSymbolicName())) {
                        try {
                            this.startLevelService.setBundleStartLevel(current, startLevel);
                        }
                        catch (IllegalArgumentException ex) {
                            Utils.log(4, null, null, "Failed to set start level of Bundle:" + finalList[i], ex);
                        }
                    }
                }
            }
            ++i;
        }
        return toRefresh;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void refreshPackages(Bundle[] bundles, BundleContext context) {
        if (bundles.length == 0 || this.packageAdminService == null) {
            return;
        }
        final boolean[] flag = new boolean[1];
        FrameworkListener listener = new FrameworkListener(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public void frameworkEvent(FrameworkEvent event) {
                if (event.getType() != 4) return;
                boolean[] blArray = flag;
                synchronized (flag) {
                    flag[0] = true;
                    flag.notifyAll();
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return;
                }
            }
        };
        context.addFrameworkListener(listener);
        this.packageAdminService.refreshPackages(bundles);
        boolean[] blArray = flag;
        synchronized (flag) {
            while (true) {
                if (flag[0]) {
                    // ** MonitorExit[var5_5] (shouldn't be in output)
                    break;
                }
                try {
                    flag.wait();
                }
                catch (InterruptedException interruptedException) {}
            }
            context.removeFrameworkListener(listener);
            return;
        }
    }

    private void startBundles(Bundle[] bundles) {
        int i = 0;
        while (i < bundles.length) {
            Bundle bundle = bundles[i];
            if (bundle.getState() == 1) {
                System.err.println("Could not start: " + bundle.getSymbolicName() + '(' + bundle.getLocation() + ':' + bundle.getBundleId() + ')' + ". It's state is uninstalled.");
            } else if ((bundle.getState() != 8 || bundle != this.callingBundle && bundle != this.manipulatingContext.getBundle()) && this.packageAdminService.getBundleType(bundle) != 1) {
                try {
                    bundle.start();
                }
                catch (BundleException e) {
                    e.printStackTrace();
                }
            }
            ++i;
        }
    }

    private Collection uninstallBundles(BundleInfo[] finalList, PackageAdmin packageAdmin) {
        Bundle[] allBundles = this.manipulatingContext.getBundles();
        HashSet<Bundle> removedBundles = new HashSet<Bundle>(allBundles.length);
        int i = 0;
        while (i < allBundles.length) {
            if (allBundles[i].getBundleId() != 0L) {
                removedBundles.add(allBundles[i]);
            }
            ++i;
        }
        i = 0;
        while (i < finalList.length) {
            if (finalList[i] != null) {
                Bundle[] toAdd = packageAdmin.getBundles(finalList[i].getSymbolicName(), this.getVersionRange(finalList[i].getVersion()));
                int j = 0;
                while (toAdd != null && j < toAdd.length) {
                    removedBundles.remove(toAdd[j]);
                    ++j;
                }
            }
            ++i;
        }
        Iterator iter = removedBundles.iterator();
        while (iter.hasNext()) {
            try {
                Bundle bundle = (Bundle)iter.next();
                if (bundle.getLocation().startsWith("initial@")) {
                    iter.remove();
                    continue;
                }
                bundle.uninstall();
            }
            catch (BundleException e) {
                e.printStackTrace();
            }
        }
        return removedBundles;
    }

    private String getVersionRange(String version) {
        return version == null ? null : '[' + version + ',' + version + ']';
    }
}

