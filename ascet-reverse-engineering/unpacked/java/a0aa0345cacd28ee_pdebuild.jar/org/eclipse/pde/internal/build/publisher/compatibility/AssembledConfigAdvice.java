/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.DataLoader
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice
 *  org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice
 */
package org.eclipse.pde.internal.build.publisher.compatibility;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.publisher.eclipse.DataLoader;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice;

public class AssembledConfigAdvice
implements IConfigAdvice,
IExecutableAdvice {
    private String configSpec = null;
    private String launcherName = null;
    private LauncherData launcherData = null;
    private ConfigData configData = null;

    public AssembledConfigAdvice(String configSpec, File configRoot, String launcherName) {
        this.configSpec = configSpec;
        this.launcherName = launcherName;
        this.initializeData(configRoot);
    }

    public BundleInfo[] getBundles() {
        return this.configData.getBundles();
    }

    public Map getProperties() {
        Properties configProps = this.configData.getProperties();
        HashMap<String, String> props = new HashMap<String, String>(configProps.size() + 1);
        CollectionUtils.putAll((Properties)configProps, props);
        int startLevel = this.configData.getInitialBundleStartLevel();
        if (startLevel != -1) {
            props.put("osgi.bundles.defaultStartLevel", String.valueOf(startLevel));
        }
        return props;
    }

    public boolean isApplicable(String spec, boolean includeDefault, String id, Version version) {
        return this.configSpec.equals(spec);
    }

    private File getLauncher(File root) {
        if (this.launcherName == null) {
            this.launcherName = "eclipse";
        }
        if (this.configSpec.indexOf("macosx") > 0) {
            File launcher = new File(root, String.valueOf(this.launcherName) + ".app/Contents/MacOS/" + this.launcherName);
            if (!launcher.exists()) {
                return new File(root, String.valueOf(Character.toUpperCase(this.launcherName.charAt(0))) + this.launcherName.substring(1) + ".app/Contents/MacOS/" + this.launcherName);
            }
            return launcher;
        }
        if (this.configSpec.indexOf("win32") > 0) {
            return new File(root, String.valueOf(this.launcherName) + ".exe");
        }
        return new File(root, this.launcherName);
    }

    private void initializeData(File configRoot) {
        DataLoader loader = new DataLoader(new File(configRoot, "configuration/config.ini"), this.getLauncher(configRoot));
        this.configData = loader.getConfigData();
        this.launcherData = loader.getLauncherData();
    }

    public String getExecutableName() {
        return this.launcherName != null ? this.launcherName : "eclipse";
    }

    public String[] getProgramArguments() {
        return this.launcherData != null ? this.launcherData.getProgramArgs() : new String[]{};
    }

    public String[] getVMArguments() {
        return this.launcherData != null ? this.launcherData.getJvmArgs() : new String[]{};
    }
}

