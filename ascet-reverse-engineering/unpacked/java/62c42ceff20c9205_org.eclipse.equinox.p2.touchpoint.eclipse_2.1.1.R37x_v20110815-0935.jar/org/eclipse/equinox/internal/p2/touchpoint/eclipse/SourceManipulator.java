/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.simpleconfigurator.manipulator.SimpleConfiguratorManipulatorImpl
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.simpleconfigurator.manipulator.SimpleConfiguratorManipulatorImpl;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.Version;

public class SourceManipulator {
    private List<BundleInfo> sourceBundles;
    private IProfile profile;
    boolean changed = false;
    private SimpleConfiguratorManipulatorImpl manipulator;

    public SourceManipulator(IProfile profile) {
        this.profile = profile;
        this.manipulator = new SimpleConfiguratorManipulatorImpl();
    }

    public BundleInfo[] getBundles() throws IOException {
        if (this.sourceBundles == null) {
            this.load();
        }
        return this.sourceBundles.toArray(new BundleInfo[this.sourceBundles.size()]);
    }

    public void addBundle(File bundleFile, String bundleId, Version bundleVersion) throws IOException {
        if (this.sourceBundles == null) {
            this.load();
        }
        BundleInfo sourceInfo = new BundleInfo(bundleFile.toURI());
        sourceInfo.setSymbolicName(bundleId);
        sourceInfo.setVersion(bundleVersion.toString());
        this.sourceBundles.add(sourceInfo);
    }

    public void removeBundle(File bundleFile, String bundleId, Version bundleVersion) throws MalformedURLException, IOException {
        if (this.sourceBundles == null) {
            this.load();
        }
        BundleInfo sourceInfo = new BundleInfo();
        if (bundleFile != null) {
            sourceInfo.setLocation(bundleFile.toURI());
        }
        sourceInfo.setSymbolicName(bundleId);
        sourceInfo.setVersion(bundleVersion.toString());
        this.sourceBundles.remove(sourceInfo);
    }

    public void save() throws IOException {
        if (this.sourceBundles != null) {
            this.manipulator.saveConfiguration(this.sourceBundles.toArray(new BundleInfo[this.sourceBundles.size()]), this.getFileLocation(), this.getLauncherLocation().toURI());
        }
    }

    private void load() throws MalformedURLException, IOException {
        this.sourceBundles = this.getFileLocation().exists() ? new ArrayList<BundleInfo>(Arrays.asList(this.manipulator.loadConfiguration((InputStream)new FileInputStream(this.getFileLocation()), this.getLauncherLocation().toURI()))) : new ArrayList<BundleInfo>();
    }

    private File getFileLocation() {
        return new File(Util.getConfigurationFolder(this.profile), "org.eclipse.equinox.source/source.info");
    }

    private File getLauncherLocation() {
        return Util.getInstallFolder(this.profile);
    }
}

