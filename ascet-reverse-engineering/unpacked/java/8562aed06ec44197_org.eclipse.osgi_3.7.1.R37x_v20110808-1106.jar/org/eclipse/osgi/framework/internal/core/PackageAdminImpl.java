/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.ExportedPackageImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.InternalSystemBundle;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.core.Util;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundlePermission;
import org.osgi.framework.BundleReference;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.FrameworkWiring;
import org.osgi.service.packageadmin.ExportedPackage;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.service.packageadmin.RequiredBundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PackageAdminImpl
implements PackageAdmin,
FrameworkWiring {
    protected Framework framework;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.core.PackageAdminImpl$GetBundleAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> c = clazz;
        c.getName();
    }

    protected PackageAdminImpl(Framework framework) {
        this.framework = framework;
    }

    @Override
    public ExportedPackage[] getExportedPackages(Bundle bundle) {
        ArrayList<ExportedPackageImpl> allExports = new ArrayList<ExportedPackageImpl>();
        FrameworkAdaptor adaptor = this.framework.adaptor;
        if (adaptor == null) {
            return null;
        }
        ExportPackageDescription[] allDescriptions = adaptor.getState().getExportedPackages();
        int i = 0;
        while (i < allDescriptions.length) {
            ExportedPackageImpl exportedPackage = this.createExportedPackage(allDescriptions[i]);
            if (exportedPackage != null && (bundle == null || exportedPackage.getBundle() == bundle)) {
                allExports.add(exportedPackage);
            }
            ++i;
        }
        return allExports.size() == 0 ? null : allExports.toArray(new ExportedPackage[allExports.size()]);
    }

    private ExportedPackageImpl createExportedPackage(ExportPackageDescription description) {
        BundleDescription exporter = description.getExporter();
        if (exporter == null || exporter.getHost() != null) {
            return null;
        }
        Object userObject = exporter.getUserObject();
        if (!(userObject instanceof BundleLoaderProxy)) {
            BundleHost bundle = (BundleHost)this.framework.getBundle(exporter.getBundleId());
            if (bundle == null) {
                return null;
            }
            userObject = bundle.getLoaderProxy();
        }
        return new ExportedPackageImpl(description, (BundleLoaderProxy)userObject);
    }

    @Override
    public ExportedPackage getExportedPackage(String name) {
        ExportedPackage[] allExports = this.getExportedPackages((Bundle)null);
        if (allExports == null) {
            return null;
        }
        ExportedPackage result = null;
        int i = 0;
        while (i < allExports.length) {
            if (name.equals(allExports[i].getName())) {
                if (result == null) {
                    result = allExports[i];
                } else {
                    Version curVersion = result.getVersion();
                    Version newVersion = allExports[i].getVersion();
                    if (newVersion.compareTo(curVersion) >= 0) {
                        result = allExports[i];
                    }
                }
            }
            ++i;
        }
        return result;
    }

    @Override
    public ExportedPackage[] getExportedPackages(String name) {
        ExportedPackage[] allExports = this.getExportedPackages((Bundle)null);
        if (allExports == null) {
            return null;
        }
        ArrayList<ExportedPackage> result = new ArrayList<ExportedPackage>(1);
        int i = 0;
        while (i < allExports.length) {
            if (name.equals(allExports[i].getName())) {
                result.add(allExports[i]);
            }
            ++i;
        }
        return result.size() == 0 ? null : result.toArray(new ExportedPackage[result.size()]);
    }

    @Override
    public void refreshPackages(Bundle[] input) {
        this.refreshPackages(input, false, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refreshPackages(Bundle[] input, boolean synchronously, FrameworkListener[] listeners) {
        Bundle[] copy;
        this.framework.checkAdminPermission(this.framework.systemBundle, "resolve");
        if (input != null) {
            Bundle[] bundleArray = input;
            synchronized (input) {
                copy = new AbstractBundle[input.length];
                System.arraycopy(input, 0, copy, 0, input.length);
                // ** MonitorExit[var5_4] (shouldn't be in output)
            }
        } else {
            copy = null;
        }
        {
            if (synchronously) {
                this.doResolveBundles(copy, true, listeners);
                if (this.framework.isForcedRestart()) {
                    this.framework.systemBundle.stop();
                }
            } else {
                Thread refresh = this.framework.secureAction.createThread(new Runnable((AbstractBundle[])copy, listeners){
                    private final /* synthetic */ AbstractBundle[] val$copy;
                    private final /* synthetic */ FrameworkListener[] val$listeners;
                    {
                        this.val$copy = abstractBundleArray;
                        this.val$listeners = frameworkListenerArray;
                    }

                    public void run() {
                        PackageAdminImpl.this.doResolveBundles(this.val$copy, true, this.val$listeners);
                        if (PackageAdminImpl.this.framework.isForcedRestart()) {
                            PackageAdminImpl.this.framework.shutdown(256);
                        }
                    }
                }, "Refresh Packages", this.framework.getContextFinder());
                refresh.start();
            }
            return;
        }
    }

    @Override
    public boolean resolveBundles(Bundle[] bundles) {
        return this.resolveBundles(bundles, false);
    }

    boolean resolveBundles(Bundle[] bundles, boolean propagateError) {
        block5: {
            this.framework.checkAdminPermission(this.framework.systemBundle, "resolve");
            if (bundles == null) {
                bundles = this.framework.getAllBundles();
            }
            try {
                this.doResolveBundles(bundles, false, null);
            }
            catch (ResolverHookException e) {
                if (!propagateError) break block5;
                throw e;
            }
        }
        int i = 0;
        while (i < bundles.length) {
            if (!((AbstractBundle)bundles[i]).isResolved()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected synchronized void doResolveBundles(Bundle[] bundles, boolean refreshPackages, FrameworkListener[] listeners) {
        try {
            try {
                Object resolving;
                int numBundles;
                if (Profile.STARTUP) {
                    Profile.logEnter("resolve bundles");
                }
                this.framework.publishBundleEvent(-2147483647, this.framework.systemBundle);
                State systemState = this.framework.adaptor.getState();
                BundleDescription[] descriptions = null;
                int n = numBundles = bundles == null ? 0 : bundles.length;
                if (!refreshPackages) {
                    resolving = new ArrayList();
                    Bundle[] bundleArray = bundles;
                    int n2 = bundles.length;
                    int n3 = 0;
                    while (n3 < n2) {
                        Bundle bundle = bundleArray[n3];
                        BundleDescription description = ((AbstractBundle)bundle).getBundleDescription();
                        if ((bundle.getState() & 2) != 0 && description != null) {
                            resolving.add(description);
                        }
                        ++n3;
                    }
                    descriptions = resolving.toArray(new BundleDescription[resolving.size()]);
                } else if (numBundles > 0) {
                    this.populateLoaders(this.framework.getAllBundles());
                    resolving = this.framework.bundles;
                    synchronized (resolving) {
                        ArrayList<BundleDescription> results = new ArrayList<BundleDescription>(numBundles);
                        BundleDelta[] addDeltas = null;
                        int i = 0;
                        while (i < numBundles) {
                            AbstractBundle[] sameNames;
                            BundleDescription description = ((AbstractBundle)bundles[i]).getBundleDescription();
                            if (description != null && description.getBundleId() != 0L && !results.contains(description)) {
                                results.add(description);
                            }
                            if (this.framework.isRefreshDuplicateBSNAllowed() && (sameNames = this.framework.bundles.getBundles(bundles[i].getSymbolicName())) != null && sameNames.length > 1) {
                                if (addDeltas == null) {
                                    addDeltas = systemState.getChanges().getChanges(1, false);
                                }
                                int j = 0;
                                while (j < sameNames.length) {
                                    BundleDescription sameName;
                                    if (sameNames[j] != bundles[i] && (sameName = sameNames[j].getBundleDescription()) != null && sameName.getBundleId() != 0L && !results.contains(sameName) && this.checkExtensionBundle(sameName, addDeltas)) {
                                        results.add(sameName);
                                    }
                                    ++j;
                                }
                            }
                            ++i;
                        }
                        descriptions = results.size() == 0 ? null : results.toArray(new BundleDescription[results.size()]);
                    }
                }
                StateDelta stateDelta = systemState.resolve(descriptions, refreshPackages);
                BundleDelta[] delta = stateDelta.getChanges();
                this.processDelta(delta, refreshPackages, systemState);
                if (stateDelta.getResovlerHookException() != null) {
                    throw stateDelta.getResovlerHookException();
                }
            }
            catch (Throwable t) {
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println("PackageAdminImpl.doResolveBundles: Error occured :");
                    Debug.printStackTrace(t);
                }
                if (t instanceof RuntimeException) {
                    throw (RuntimeException)t;
                }
                if (t instanceof Error) {
                    throw (Error)t;
                }
                if (Profile.STARTUP) {
                    Profile.logExit("resolve bundles");
                }
                if (this.framework.isActive()) {
                    this.framework.publishBundleEvent(Integer.MIN_VALUE, this.framework.systemBundle);
                    if (refreshPackages) {
                        this.framework.publishFrameworkEvent(4, this.framework.systemBundle, null, listeners);
                    }
                }
            }
        }
        finally {
            if (Profile.STARTUP) {
                Profile.logExit("resolve bundles");
            }
            if (this.framework.isActive()) {
                this.framework.publishBundleEvent(Integer.MIN_VALUE, this.framework.systemBundle);
                if (refreshPackages) {
                    this.framework.publishFrameworkEvent(4, this.framework.systemBundle, null, listeners);
                }
            }
        }
    }

    private void populateLoaders(AbstractBundle[] bundles) {
        int i = 0;
        while (i < bundles.length) {
            BundleLoader loader;
            if (bundles[i] instanceof BundleHost && bundles[i].isResolved() && (loader = ((BundleHost)bundles[i]).getBundleLoader()) != null) {
                loader.getImportedSources(null);
            }
            ++i;
        }
    }

    private boolean checkExtensionBundle(BundleDescription sameName, BundleDelta[] addDeltas) {
        if (sameName.getHost() == null || !sameName.isResolved()) {
            return true;
        }
        return ((BundleDescription)sameName.getHost().getSupplier()).getBundleId() != 0L || addDeltas.length > 0;
    }

    private void resumeBundles(AbstractBundle[] bundles, boolean refreshPackages, int[] previousStates) {
        if (Debug.DEBUG_PACKAGEADMIN) {
            Debug.println("PackageAdminImpl: restart the bundles");
        }
        if (bundles == null) {
            return;
        }
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i].isResolved() && (refreshPackages || (bundles[i].getBundleData().getStatus() & 2) != 0 && !bundles[i].testStateChanging(Thread.currentThread()))) {
                if (previousStates[i] == 32) {
                    try {
                        bundles[i].start(1);
                    }
                    catch (BundleException e) {
                        this.framework.publishFrameworkEvent(2, bundles[i], e);
                    }
                } else {
                    this.framework.resumeBundle(bundles[i]);
                }
            }
            ++i;
        }
    }

    private void suspendBundle(AbstractBundle bundle) {
        if (bundle.isActive() && !bundle.isFragment()) {
            this.framework.suspendBundle(bundle, true);
        } else if (bundle.getStateChanging() != Thread.currentThread()) {
            try {
                bundle.beginStateChange();
            }
            catch (BundleException e) {
                this.framework.publishFrameworkEvent(2, bundle, e);
            }
        }
        if (Debug.DEBUG_PACKAGEADMIN && bundle.stateChanging == null) {
            Debug.println(new StringBuffer("Bundle state change lock is clear! ").append(bundle).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
    }

    private void applyRemovalPending(BundleDelta bundleDelta) throws BundleException {
        if ((bundleDelta.getType() & 0x100) != 0) {
            BundleDescription bundle = bundleDelta.getBundle();
            if (bundle.getDependents() != null && bundle.getDependents().length > 0) {
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println(new StringBuffer("Bundles still depend on removed bundle! ").append(bundle).toString());
                    Debug.printStackTrace(new Exception("Stack trace"));
                }
                throw new BundleException(Msg.OSGI_INTERNAL_ERROR);
            }
            Object userObject = bundle.getUserObject();
            if (userObject instanceof BundleLoaderProxy) {
                BundleLoader.closeBundleLoader((BundleLoaderProxy)userObject);
                try {
                    ((BundleLoaderProxy)userObject).getBundleData().close();
                }
                catch (IOException iOException) {}
            } else if (userObject instanceof BundleData) {
                try {
                    ((BundleData)userObject).close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private AbstractBundle setResolved(BundleDescription bundleDescription) {
        if (!bundleDescription.isResolved()) {
            return null;
        }
        AbstractBundle bundle = this.framework.getBundle(bundleDescription.getBundleId());
        if (bundle == null) {
            BundleException be = new BundleException(NLS.bind(Msg.BUNDLE_NOT_IN_FRAMEWORK, bundleDescription));
            this.framework.publishFrameworkEvent(2, this.framework.systemBundle, be);
            return null;
        }
        boolean resolve = true;
        if (bundle.isFragment()) {
            BundleDescription[] hosts = bundleDescription.getHost().getHosts();
            int i = 0;
            while (i < hosts.length) {
                BundleHost host = (BundleHost)this.framework.getBundle(hosts[i].getBundleId());
                resolve = ((BundleFragment)bundle).addHost(host);
                ++i;
            }
        }
        if (resolve) {
            bundle.resolve();
        }
        return bundle;
    }

    private void applyDeltas(BundleDelta[] bundleDeltas) throws BundleException {
        Arrays.sort(bundleDeltas, new Comparator<BundleDelta>(){

            @Override
            public int compare(BundleDelta delta0, BundleDelta delta1) {
                return (int)(delta0.getBundle().getBundleId() - delta1.getBundle().getBundleId());
            }
        });
        int i = 0;
        while (i < bundleDeltas.length) {
            NativeCodeSpecification nativeCode;
            AbstractBundle bundle;
            int type = bundleDeltas[i].getType();
            if ((type & 0x180) != 0) {
                this.applyRemovalPending(bundleDeltas[i]);
            }
            if ((type & 8) != 0 && (bundle = this.setResolved(bundleDeltas[i].getBundle())) != null && bundle.isResolved() && (nativeCode = bundleDeltas[i].getBundle().getNativeCodeSpecification()) != null && nativeCode.getSupplier() != null) {
                try {
                    BundleData data = bundle.getBundleData();
                    data.installNativeCode(((NativeCodeDescription)nativeCode.getSupplier()).getNativePaths());
                }
                catch (BundleException e) {
                    this.framework.publishFrameworkEvent(2, bundle, e);
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    private AbstractBundle[] processDelta(BundleDelta[] bundleDeltas, boolean refreshPackages, State systemState) {
        block47: {
            block48: {
                bundlesList = new ArrayList<AbstractBundle>(bundleDeltas.length);
                i = 0;
                while (i < bundleDeltas.length) {
                    if (!((bundleDeltas[i].getType() & 256) != 0 && (bundleDeltas[i].getType() & 2) == 0 || (changedBundle = this.framework.getBundle(bundleDeltas[i].getBundle().getBundleId())) == null || bundlesList.contains(changedBundle))) {
                        bundlesList.add(changedBundle);
                    }
                    ++i;
                }
                refresh = bundlesList.toArray(new AbstractBundle[bundlesList.size()]);
                Util.sort(refresh, 0, refresh.length);
                this.framework.startLevelManager.sortByDependency((AbstractBundle[])refresh);
                previouslyResolved = new boolean[refresh.length];
                previousStates = new int[refresh.length];
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println("refreshPackages: Suspend each bundle and acquire its state change lock");
                }
                restart = false;
                i = refresh.length - 1;
                while (i >= 0) {
                    previouslyResolved[i] = refresh[i].isResolved();
                    if (refresh[i] == this.framework.systemBundle) {
                        restart = true;
                    } else if ((refresh[i].bundledata.getType() & 2) != 0 && previouslyResolved[i]) {
                        restart = true;
                    } else if ((refresh[i].bundledata.getType() & 4) != 0) {
                        restart = true;
                    } else if ((refresh[i].bundledata.getType() & 16) != 0 && previouslyResolved[i]) {
                        restart = true;
                    }
                    --i;
                }
                if (!restart) break block47;
                FrameworkProperties.setProperty("osgi.forcedRestart", "true");
                this.framework.setForcedRestart(true);
                if (!Debug.DEBUG_PACKAGEADMIN) break block48;
                Debug.println("refreshPackages: release the state change locks");
            }
            if (refreshPackages) {
                i = 0;
                while (i < refresh.length) {
                    changedBundle = refresh[i];
                    changedBundle.completeStateChange();
                    ++i;
                }
            }
            return null;
        }
        try {
            block49: {
                if (refreshPackages) {
                    i = refresh.length - 1;
                    while (i >= 0) {
                        previousStates[i] = refresh[i].getState();
                        this.suspendBundle((AbstractBundle)refresh[i]);
                        --i;
                    }
                }
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println("refreshPackages: refresh the bundles");
                }
                i = this.framework.bundles;
                synchronized (i) {
                    i = refresh.length - 1;
                    while (i >= 0) {
                        refresh[i].refresh();
                        --i;
                    }
                }
                i = refresh.length - 1;
                while (i >= 0) {
                    if (previouslyResolved[i]) {
                        this.framework.publishBundleEvent(64, (Bundle)refresh[i]);
                    }
                    --i;
                }
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println("refreshPackages: applying deltas to bundles");
                }
                var9_16 = this.framework.bundles;
                synchronized (var9_16) {
                    this.applyDeltas(bundleDeltas);
                    // MONITOREXIT @DISABLED, blocks:[2, 3, 5, 8] lbl85 : MonitorExitStatement: MONITOREXIT : var9_16
                }
                {
                    catch (Throwable var11_24) {}
                }
                finally {
                    if (Debug.DEBUG_PACKAGEADMIN) {
                        Debug.println("refreshPackages: release the state change locks");
                    }
                    if (!refreshPackages) break block49;
                    i = 0;
                    ** while (i < refresh.length)
                }
lbl-1000:
                // 1 sources

                {
                    changedBundle = refresh[i];
                    changedBundle.completeStateChange();
                    ++i;
                    continue;
                }
            }
            if (refreshPackages) {
                if (Debug.DEBUG_PACKAGEADMIN) {
                    Debug.println("refreshPackages: clean up adaptor storage");
                }
                try {
                    this.framework.adaptor.compactStorage();
                }
                catch (IOException e) {
                    if (Debug.DEBUG_PACKAGEADMIN) {
                        Debug.println(new StringBuffer("refreshPackages exception: ").append(e.getMessage()).toString());
                        Debug.printStackTrace(e);
                    }
                    this.framework.publishFrameworkEvent(2, this.framework.systemBundle, new BundleException(Msg.BUNDLE_REFRESH_FAILURE, e));
                }
            }
        }
        catch (BundleException e) {
            if (Debug.DEBUG_PACKAGEADMIN) {
                Debug.println(new StringBuffer("refreshPackages exception: ").append(e.getMessage()).toString());
                Debug.printStackTrace(e.getNestedException() == null ? e : e.getNestedException());
            }
            this.framework.publishFrameworkEvent(2, this.framework.systemBundle, new BundleException(Msg.BUNDLE_REFRESH_FAILURE, e));
        }
        if (Debug.DEBUG_PACKAGEADMIN) {
            Debug.println("refreshPackages: send out RESOLVED events");
        }
        i = 0;
        while (i < refresh.length) {
            if (refresh[i].isResolved()) {
                this.framework.publishBundleEvent(32, (Bundle)refresh[i]);
            }
            ++i;
        }
        if (!this.framework.isActive()) {
            return refresh;
        }
        if (refreshPackages) {
            this.framework.securityAdmin.clearCaches();
            if (bundleDeltas.length > 0) {
                systemState.setTimeStamp(systemState.getTimeStamp() == 0x7FFFFFFFFFFFFFFFL ? 0L : systemState.getTimeStamp() + 1L);
            }
        }
        this.resumeBundles((AbstractBundle[])refresh, refreshPackages, previousStates);
        return refresh;
    }

    @Override
    public RequiredBundle[] getRequiredBundles(String symbolicName) {
        AbstractBundle[] bundles = symbolicName == null ? this.framework.getAllBundles() : this.framework.getBundleBySymbolicName(symbolicName);
        if (bundles == null || bundles.length == 0) {
            return null;
        }
        ArrayList<BundleLoaderProxy> result = new ArrayList<BundleLoaderProxy>(bundles.length);
        int i = 0;
        while (i < bundles.length) {
            if (!bundles[i].isFragment() && bundles[i].isResolved() && bundles[i].getSymbolicName() != null && bundles[i].hasPermission(new BundlePermission(bundles[i].getSymbolicName(), "provide"))) {
                result.add(((BundleHost)bundles[i]).getLoaderProxy());
            }
            ++i;
        }
        return result.size() == 0 ? null : result.toArray(new RequiredBundle[result.size()]);
    }

    @Override
    public Bundle[] getBundles(String symbolicName, String versionRange) {
        if (symbolicName == null) {
            throw new IllegalArgumentException();
        }
        AbstractBundle[] bundles = this.framework.getBundleBySymbolicName(symbolicName);
        if (bundles == null) {
            return null;
        }
        if (versionRange == null) {
            Bundle[] result = new AbstractBundle[bundles.length];
            System.arraycopy(bundles, 0, result, 0, result.length);
            return result;
        }
        ArrayList<AbstractBundle> result = new ArrayList<AbstractBundle>(bundles.length);
        VersionRange range = new VersionRange(versionRange);
        int i = 0;
        while (i < bundles.length) {
            if (range.isIncluded(bundles[i].getVersion())) {
                result.add(bundles[i]);
            }
            ++i;
        }
        if (result.size() == 0) {
            return null;
        }
        return result.toArray(new AbstractBundle[result.size()]);
    }

    @Override
    public Bundle[] getFragments(Bundle bundle) {
        return ((AbstractBundle)bundle).getFragments();
    }

    @Override
    public Bundle[] getHosts(Bundle bundle) {
        BundleHost[] hosts = ((AbstractBundle)bundle).getHosts();
        if (hosts == null) {
            return null;
        }
        Bundle[] result = new Bundle[hosts.length];
        int i = 0;
        while (i < hosts.length) {
            result[i] = hosts[i];
            ++i;
        }
        return result;
    }

    Bundle getBundlePriv(Class<?> clazz) {
        ClassLoaderDelegate delegate;
        ClassLoader cl = clazz.getClassLoader();
        if (cl instanceof BundleClassLoader && (delegate = ((BundleClassLoader)((Object)cl)).getDelegate()) instanceof BundleLoader) {
            return ((BundleLoader)delegate).getBundle();
        }
        if (cl == this.getClass().getClassLoader()) {
            return this.framework.systemBundle;
        }
        return null;
    }

    @Override
    public Bundle getBundle(Class clazz) {
        if (System.getSecurityManager() == null) {
            return this.getBundlePriv(clazz);
        }
        return AccessController.doPrivileged(new GetBundleAction(this, clazz));
    }

    @Override
    public int getBundleType(Bundle bundle) {
        return ((AbstractBundle)bundle).isFragment() ? 1 : 0;
    }

    protected void cleanup() {
    }

    protected void setResolvedBundles(InternalSystemBundle systemBundle) {
        this.checkSystemBundle(systemBundle);
        State state = this.framework.adaptor.getState();
        BundleDescription[] descriptions = state.getBundles();
        int i = 0;
        while (i < descriptions.length) {
            if (descriptions[i].getBundleId() == 0L) {
                this.setFrameworkVersion(descriptions[i]);
            } else {
                this.setResolved(descriptions[i]);
            }
            ++i;
        }
    }

    private void checkSystemBundle(InternalSystemBundle systemBundle) {
        try {
            State state = this.framework.adaptor.getState();
            BundleDescription oldSystemBundle = state.getBundle(0L);
            boolean different = false;
            if (oldSystemBundle == null || !systemBundle.getBundleData().getVersion().equals(oldSystemBundle.getVersion())) {
                different = true;
            }
            if (!different && FrameworkProperties.getProperty("osgi.dev") == null) {
                return;
            }
            BundleDescription newSystemBundle = state.getFactory().createBundleDescription(state, systemBundle.getHeaders(""), systemBundle.getLocation(), 0L);
            if (newSystemBundle == null) {
                throw new BundleException(Msg.OSGI_SYSTEMBUNDLE_DESCRIPTION_ERROR);
            }
            if (!different) {
                ExportPackageDescription[] newPackages;
                ExportPackageDescription[] oldPackages = oldSystemBundle.getExportPackages();
                if (oldPackages.length >= (newPackages = newSystemBundle.getExportPackages()).length) {
                    int i = 0;
                    while (i < newPackages.length && !different) {
                        if (oldPackages[i].getName().equals(newPackages[i].getName())) {
                            Version oldVersion = oldPackages[i].getVersion();
                            Version newVersion = newPackages[i].getVersion();
                            different = oldVersion == null ? newVersion != null : !((Object)oldVersion).equals(newVersion);
                        } else {
                            different = true;
                        }
                        ++i;
                    }
                } else {
                    different = true;
                }
            }
            if (different) {
                state.removeBundle(0L);
                state.addBundle(newSystemBundle);
                state.resolve(false);
            }
        }
        catch (BundleException e) {
            e.printStackTrace();
            throw new RuntimeException(NLS.bind(Msg.OSGI_SYSTEMBUNDLE_CREATE_EXCEPTION, e.getMessage()), e);
        }
    }

    private void setFrameworkVersion(BundleDescription systemBundle) {
        ExportPackageDescription[] packages = systemBundle.getExportPackages();
        int i = 0;
        while (i < packages.length) {
            if (packages[i].getName().equals("org.osgi.framework")) {
                FrameworkProperties.setProperty("org.osgi.framework.version", packages[i].getVersion().toString());
                break;
            }
            ++i;
        }
        FrameworkProperties.setProperty("osgi.framework.version", systemBundle.getVersion().toString());
    }

    @Override
    public Bundle getBundle() {
        return this.framework.getBundle(0L);
    }

    @Override
    public void refreshBundles(Collection<Bundle> bundles, FrameworkListener[] listeners) {
        this.refreshPackages(bundles == null ? null : bundles.toArray(new Bundle[bundles.size()]), false, listeners);
    }

    @Override
    public boolean resolveBundles(Collection<Bundle> bundles) {
        return this.resolveBundles(bundles == null ? null : bundles.toArray(new Bundle[bundles.size()]));
    }

    @Override
    public Collection<Bundle> getRemovalPendingBundles() {
        BundleDescription[] removals = this.framework.adaptor.getState().getRemovalPending();
        HashSet<Bundle> result = new HashSet<Bundle>();
        int i = 0;
        while (i < removals.length) {
            Object ref = removals[i].getUserObject();
            if (ref instanceof BundleReference) {
                result.add(((BundleReference)ref).getBundle());
            }
            ++i;
        }
        return result;
    }

    @Override
    public Collection<Bundle> getDependencyClosure(Collection<Bundle> bundles) {
        Collection<BundleDescription> descriptions = this.getDescriptionClosure(bundles);
        HashSet<Bundle> result = new HashSet<Bundle>();
        for (BundleDescription description : descriptions) {
            Bundle bundle;
            Object userObject = description.getUserObject();
            if (!(userObject instanceof BundleReference) || (bundle = ((BundleReference)userObject).getBundle()) == null) continue;
            result.add(bundle);
        }
        return result;
    }

    private Collection<BundleDescription> getDescriptionClosure(Collection<Bundle> bundles) {
        State state = this.framework.adaptor.getState();
        ArrayList<BundleDescription> descriptions = new ArrayList<BundleDescription>();
        for (Bundle bundle : bundles) {
            BundleDescription description = state.getBundle(bundle.getBundleId());
            if (description == null) continue;
            descriptions.add(description);
        }
        return state.getDependencyClosure(descriptions);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class GetBundleAction
    implements PrivilegedAction<Bundle> {
        private Class<?> clazz;
        private PackageAdminImpl impl;

        public GetBundleAction(PackageAdminImpl impl, Class<?> clazz) {
            this.impl = impl;
            this.clazz = clazz;
        }

        @Override
        public Bundle run() {
            return this.impl.getBundlePriv(this.clazz);
        }
    }
}

