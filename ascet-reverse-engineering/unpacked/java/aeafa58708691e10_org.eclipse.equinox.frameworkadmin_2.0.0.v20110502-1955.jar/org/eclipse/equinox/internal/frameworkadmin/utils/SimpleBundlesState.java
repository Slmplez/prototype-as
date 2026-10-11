/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.frameworkadmin.utils;

import java.io.File;
import java.net.URI;
import java.util.Dictionary;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;

public class SimpleBundlesState
implements BundlesState {
    public static final BundleInfo[] NULL_BUNDLEINFOS = new BundleInfo[0];
    private final String systemBundleSymbolicName;
    private final String systemBundleName;
    private final String systemBundleVendor;
    List bundleInfosList = new LinkedList();
    FrameworkAdmin fwAdmin = null;
    Manipulator manipulator = null;

    public static void checkAvailability(FrameworkAdmin fwAdmin) throws FrameworkAdminRuntimeException {
        if (!fwAdmin.isActive()) {
            throw new FrameworkAdminRuntimeException("FrameworkAdmin creates this object is no more available.", "FrameworkAdmin service created this object is not available any more");
        }
    }

    static File getFwJar(LauncherData launcherData) {
        if (launcherData.getFwJar() != null) {
            return launcherData.getFwJar();
        }
        return null;
    }

    public SimpleBundlesState(FrameworkAdmin ManipulatorAdmin, Manipulator Manipulator2, String systemBundleSymbolicName) {
        this.fwAdmin = ManipulatorAdmin;
        this.manipulator = ManipulatorAdmin.getManipulator();
        this.manipulator.setConfigData(Manipulator2.getConfigData());
        this.manipulator.setLauncherData(Manipulator2.getLauncherData());
        this.systemBundleSymbolicName = systemBundleSymbolicName;
        this.systemBundleName = null;
        this.systemBundleVendor = null;
        this.initialize();
    }

    public SimpleBundlesState(FrameworkAdmin ManipulatorAdmin, Manipulator Manipulator2, String systemBundleName, String systemBundleVender) {
        this.fwAdmin = ManipulatorAdmin;
        this.manipulator = ManipulatorAdmin.getManipulator();
        this.manipulator.setConfigData(Manipulator2.getConfigData());
        this.manipulator.setLauncherData(Manipulator2.getLauncherData());
        this.systemBundleSymbolicName = null;
        this.systemBundleName = systemBundleName;
        this.systemBundleVendor = systemBundleVender;
        this.initialize();
    }

    public BundleInfo[] getExpectedState() throws FrameworkAdminRuntimeException {
        if (!this.fwAdmin.isActive()) {
            throw new FrameworkAdminRuntimeException("FrameworkAdmin creates this object is no more available.", "FrameworkAdmin service created this object is not available any more");
        }
        return Utils.getBundleInfosFromList(this.bundleInfosList);
    }

    public BundleInfo[] getPrerequisteBundles(BundleInfo bInfo) {
        URI location = bInfo.getLocation();
        String requiredBundles = Utils.getManifestMainAttributes(location, "Require-Bundle");
        if (requiredBundles == null) {
            return new BundleInfo[]{this.getSystemBundle()};
        }
        String[] clauses = Utils.getClauses(requiredBundles);
        LinkedList<String> list = new LinkedList<String>();
        int i = 0;
        while (i < clauses.length) {
            list.add(Utils.getPathFromClause(clauses[i]));
            ++i;
        }
        LinkedList<BundleInfo> ret = new LinkedList<BundleInfo>();
        ret.add(this.getSystemBundle());
        Iterator ite = this.bundleInfosList.iterator();
        block1: while (ite.hasNext()) {
            BundleInfo currentBInfo = (BundleInfo)ite.next();
            URI currentLocation = currentBInfo.getLocation();
            String currentSymbolicName = Utils.getManifestMainAttributes(currentLocation, "Bundle-SymbolicName");
            if (currentSymbolicName == null) continue;
            currentSymbolicName = Utils.getPathFromClause(currentSymbolicName);
            Iterator ite2 = list.iterator();
            while (ite2.hasNext()) {
                String symbolicName = (String)ite2.next();
                if (!symbolicName.equals(currentSymbolicName)) continue;
                ret.add(currentBInfo);
                continue block1;
            }
        }
        return Utils.getBundleInfosFromList(ret);
    }

    public BundleInfo getSystemBundle() {
        if (this.systemBundleSymbolicName == null) {
            Iterator ite = this.bundleInfosList.iterator();
            while (ite.hasNext()) {
                String bundleVendor;
                BundleInfo bInfo = (BundleInfo)ite.next();
                URI location = bInfo.getLocation();
                String bundleName = Utils.getManifestMainAttributes(location, "Bundle-Name");
                if (!this.systemBundleName.equals(bundleName) || !this.systemBundleVendor.equals(bundleVendor = Utils.getManifestMainAttributes(location, "Bundle-Vendor"))) continue;
                return bInfo;
            }
            return null;
        }
        Iterator ite = this.bundleInfosList.iterator();
        while (ite.hasNext()) {
            BundleInfo bInfo = (BundleInfo)ite.next();
            URI location = bInfo.getLocation();
            String symbolicName = Utils.getManifestMainAttributes(location, "Bundle-SymbolicName");
            if (!this.systemBundleSymbolicName.equals(symbolicName = Utils.getPathFromClause(symbolicName))) continue;
            return bInfo;
        }
        return null;
    }

    public BundleInfo[] getSystemFragmentedBundles() {
        BundleInfo systemBInfo = this.getSystemBundle();
        if (systemBInfo == null) {
            return NULL_BUNDLEINFOS;
        }
        LinkedList<URI> list = new LinkedList<URI>();
        Iterator ite = this.bundleInfosList.iterator();
        while (ite.hasNext()) {
            int index;
            String fragmentHost;
            BundleInfo bInfo = (BundleInfo)ite.next();
            URI location = bInfo.getLocation();
            String manifestVersion = Utils.getManifestMainAttributes(location, "Bundle-ManifestVersion");
            if (manifestVersion == null || manifestVersion.equals("1") || manifestVersion.equals("1.0") || (fragmentHost = Utils.getManifestMainAttributes(location, "Fragment-Host")) == null || (index = fragmentHost.indexOf(";")) == -1) continue;
            String symbolicName = fragmentHost.substring(0, index).trim();
            String parameter = fragmentHost.substring(index + 1).trim();
            if (!symbolicName.equals("system.bundle") || !parameter.equals("extension:=framework")) continue;
            list.add(location);
            break;
        }
        return Utils.getBundleInfosFromList(list);
    }

    public String[] getUnsatisfiedConstraints(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        throw new FrameworkAdminRuntimeException("getUnsatisfiedConstraints(BundleInfo bInfo) is not supported in this implementation", "This implementation doesn't support this method.");
    }

    private void initialize() {
        this.bundleInfosList.clear();
        LauncherData launcherData = this.manipulator.getLauncherData();
        ConfigData configData = this.manipulator.getConfigData();
        File fwJar = SimpleBundlesState.getFwJar(launcherData);
        if (fwJar == null) {
            throw new IllegalStateException("launcherData.getLauncherConfigFile() == null && fwJar is not set.");
        }
        BundleInfo[] bInfos = configData.getBundles();
        int j = 0;
        while (j < bInfos.length) {
            this.installBundle(bInfos[j]);
            ++j;
        }
        if (this.getSystemBundle() == null) {
            BundleInfo sysBInfo = new BundleInfo(launcherData.getFwJar().toURI(), 0, true);
            sysBInfo.setBundleId(0L);
            this.installBundle(sysBInfo);
        }
    }

    public void installBundle(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        URI newLocation = bInfo.getLocation();
        Dictionary newManifest = Utils.getOSGiManifest(newLocation);
        if (newManifest == null) {
            return;
        }
        String newSymbolicName = (String)newManifest.get("Bundle-SymbolicName");
        String newVersion = (String)newManifest.get("Bundle-Version");
        boolean found = false;
        Iterator ite = this.bundleInfosList.iterator();
        while (ite.hasNext()) {
            BundleInfo currentBInfo = (BundleInfo)ite.next();
            URI location = currentBInfo.getLocation();
            if (newLocation.equals(location)) {
                found = true;
                break;
            }
            Dictionary manifest = Utils.getOSGiManifest(location);
            String symbolicName = (String)manifest.get("Bundle-SymbolicName");
            String version = (String)manifest.get("Bundle-Version");
            if (newSymbolicName == null || newVersion == null || !newSymbolicName.equals(symbolicName) || !newVersion.equals(version)) continue;
            found = true;
            break;
        }
        if (!found) {
            this.bundleInfosList.add(bInfo);
        }
    }

    public boolean isFullySupported() {
        return false;
    }

    public boolean isResolved() throws FrameworkAdminRuntimeException {
        throw new FrameworkAdminRuntimeException("isResolved() is not supported in this implementation", "This implementation doesn't support this method.");
    }

    public boolean isResolved(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        throw new FrameworkAdminRuntimeException("isResolved(BundleInfo bInfo) is not supported in this implementation", "This implementation doesn't support this method.");
    }

    public void resolve(boolean increment) throws FrameworkAdminRuntimeException {
        throw new FrameworkAdminRuntimeException("resolve(boolean increment) is not supported in this implementation", "This implementation doesn't support this method.");
    }

    public void uninstallBundle(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        URI targetLocation = bInfo.getLocation();
        int index = -1;
        Iterator ite = this.bundleInfosList.iterator();
        while (ite.hasNext()) {
            ++index;
            BundleInfo currentBInfo = (BundleInfo)ite.next();
            URI location = currentBInfo.getLocation();
            if (targetLocation.equals(location)) break;
        }
        if (index != -1) {
            this.bundleInfosList.remove(index);
        }
    }
}

