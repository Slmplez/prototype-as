/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.FeatureGenerator
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.site.BuildTimeSiteFactory
 *  org.eclipse.pde.internal.build.site.ProfileManager
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.File;
import java.util.Dictionary;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.FeatureGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.site.ProfileManager;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class FeatureGeneratorTask
extends Task {
    private static final String ANT_PREFIX = "${";
    private final FeatureGenerator generator = new FeatureGenerator();
    private final Properties antProperties = new Properties();

    public void execute() throws BuildException {
        try {
            try {
                BundleHelper.getDefault().setLog((Object)this);
                this.initializeAntProperties(this.antProperties);
                this.generator.setImmutableAntProperties(this.antProperties);
                this.run();
            }
            catch (CoreException e) {
                throw new BuildException(TaskHelper.statusToString(e.getStatus(), null).toString());
            }
        }
        finally {
            BundleHelper.getDefault().setLog(null);
        }
    }

    private void initializeAntProperties(Properties properties) {
        String value = this.getProject().getProperty("resolution.devMode");
        if (Boolean.valueOf(value).booleanValue()) {
            this.antProperties.put("resolution.devMode", "true");
        }
        ProfileManager manager = new ProfileManager(null, true);
        manager.copyEEProfileProperties((Dictionary)this.getProject().getProperties(), this.antProperties);
    }

    public void run() throws CoreException {
        this.generator.generate();
    }

    public void setBuildDirectory(String buildDirectory) {
        this.generator.setWorkingDirectory(buildDirectory);
    }

    public void setProductFile(String productFile) {
        this.generator.setProductFile(productFile);
    }

    public void setIncludeLaunchers(boolean includeLaunchers) {
        this.generator.setIncludeLaunchers(includeLaunchers);
    }

    public void setBaseLocation(String baseLocation) {
        BuildTimeSiteFactory.setInstalledBaseSite((String)baseLocation);
    }

    public void setPluginList(String pluginList) {
        if (pluginList != null && !pluginList.startsWith(ANT_PREFIX)) {
            this.generator.setPluginList(Utils.getArrayFromString((String)pluginList));
        }
    }

    public void setFragmentList(String fragmentList) {
        if (fragmentList != null && !fragmentList.startsWith(ANT_PREFIX)) {
            this.generator.setFragmentList(Utils.getArrayFromString((String)fragmentList));
        }
    }

    public void setFeatureList(String featureList) {
        if (featureList != null && !featureList.startsWith(ANT_PREFIX)) {
            this.generator.setFeatureList(Utils.getArrayFromString((String)featureList));
        }
    }

    public void setFeatureId(String featureId) {
        this.generator.setFeatureId(featureId);
    }

    public void setPluginPath(String pluginPath) {
        this.generator.setPluginPath(Utils.getArrayFromString((String)pluginPath, (String)File.pathSeparator));
    }

    public void setVerify(boolean verify) {
        this.generator.setVerify(verify);
    }

    public void setConfigInfo(String configInfo) throws CoreException {
        AbstractScriptGenerator.setConfigInfo((String)configInfo);
    }

    public void setBuildPropertiesFile(String buildPropertiesFile) {
        this.generator.setBuildProperties(buildPropertiesFile);
    }

    public void setNestedInclusions(String nested) {
        if (nested != null && !nested.startsWith(ANT_PREFIX)) {
            this.generator.setNestedInclusions(nested);
        }
    }

    public void setFilterP2Base(boolean value) {
        this.generator.setFilterP2Base(value);
    }
}

