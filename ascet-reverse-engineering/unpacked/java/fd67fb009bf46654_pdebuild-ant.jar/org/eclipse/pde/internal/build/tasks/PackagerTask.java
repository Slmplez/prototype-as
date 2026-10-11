/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.packager.PackagerGenerator
 *  org.eclipse.pde.internal.build.site.BuildTimeSiteFactory
 *  org.eclipse.pde.internal.build.site.ProfileManager
 */
package org.eclipse.pde.internal.build.tasks;

import java.util.Dictionary;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.packager.PackagerGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.site.ProfileManager;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class PackagerTask
extends Task {
    protected PackagerGenerator generator;
    private final Properties antProperties = new Properties();

    public PackagerTask() {
        this.generator = new PackagerGenerator();
        this.generator.setReportResolutionErrors(true);
        this.generator.setIgnoreMissingPropertiesFile(true);
        BuildTimeSiteFactory.setInstalledBaseSite(null);
    }

    public void setWorkingDirectory(String workingLocation) {
        this.generator.setWorkingDirectory(workingLocation);
    }

    public void setFeatureList(String featureList) throws BuildException {
        this.generator.setFeatureList(featureList);
    }

    public void setConfigInfo(String configInfo) throws CoreException {
        AbstractScriptGenerator.setConfigInfo((String)configInfo);
    }

    public void setArchivesFormat(String archivesFormat) throws CoreException {
        this.generator.setArchivesFormat(archivesFormat);
    }

    public void setBaseLocation(String baseLocation) throws BuildException {
        String[] locations = Utils.getArrayFromString((String)baseLocation);
        this.generator.setPluginPath(locations);
    }

    public void execute() throws BuildException {
        try {
            try {
                this.initializeAntProperties(this.antProperties);
                this.generator.setImmutableAntProperties(this.antProperties);
                this.generator.setProduct(this.getProject().getProperty("product"));
                this.generator.setGenerateVersionsList(Boolean.valueOf(this.getProject().getProperty("generateVersionsList")).booleanValue());
                BundleHelper.getDefault().setLog((Object)this);
                this.generator.generate();
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
        properties.setProperty("packagerMode", "true");
        String value = this.getProject().getProperty("resolution.devMode");
        if (Boolean.valueOf(value).booleanValue()) {
            properties.put("resolution.devMode", "true");
        }
        if (Boolean.valueOf(value = this.getProject().getProperty("allowBinaryCycles")).booleanValue()) {
            properties.put("allowBinaryCycles", "true");
        }
        ProfileManager manager = new ProfileManager(null, true);
        manager.copyEEProfileProperties((Dictionary)this.getProject().getProperties(), this.antProperties);
    }

    public void setPackagePropertyFile(String propertyFile) {
        this.generator.setPropertyFile(propertyFile);
    }

    public void setDeltaPack(boolean value) {
        this.generator.includePlatformIndependent(!value);
        this.generator.groupConfigs(value);
    }

    public void setFilteredDependencyCheck(boolean value) {
        this.generator.setFilterState(value);
    }

    public void setNormalize(boolean value) {
        if (value) {
            this.antProperties.setProperty("packagerAsNormalizer", "true");
        } else {
            this.antProperties.setProperty("packagerAsNormalizer", "false");
        }
    }
}

