/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BuildScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.site.BuildTimeSiteFactory
 *  org.eclipse.pde.internal.build.site.ProfileManager
 *  org.eclipse.pde.internal.build.site.QualifierReplacer
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BuildScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.site.ProfileManager;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class BuildScriptGeneratorTask
extends Task {
    private final Properties antProperties = new Properties();
    protected BuildScriptGenerator generator = new BuildScriptGenerator();

    public void setChildren(boolean children) {
        this.generator.setChildren(children);
    }

    public void setDevEntries(String devEntries) {
        this.generator.setDevEntries(devEntries);
    }

    public void setFlattenDependencies(boolean flatten) {
        this.generator.setFlattenDependencies(flatten);
    }

    public void setGenerateSourceReferences(boolean generateSourceRef) {
        this.generator.setGenerateSourceReferences(generateSourceRef);
    }

    public void setPluginPath(String pluginPath) {
        this.generator.setPluginPath(Utils.getArrayFromString((String)pluginPath, (String)File.pathSeparator));
    }

    public void setElements(String elements) {
        this.generator.setElements(Utils.getArrayFromString((String)elements));
    }

    public void setSignificantVersionDigits(String significantDigits) {
        this.antProperties.put("significantVersionDigits", significantDigits);
    }

    public void setGeneratedVersionLength(String generatedLength) {
        this.antProperties.put("generatedVersionLength", generatedLength);
    }

    public void execute() throws BuildException {
        try {
            this.run();
        }
        catch (CoreException e) {
            throw new BuildException(TaskHelper.statusToString(e.getStatus(), null).toString());
        }
    }

    public void run() throws CoreException {
        this.initializeAntProperties(this.antProperties);
        this.setEEProfileProperties(this.antProperties);
        if (!Boolean.valueOf(this.antProperties.getProperty("suppressResolutionErrors")).booleanValue()) {
            this.generator.setReportResolutionErrors(true);
        }
        this.generator.setImmutableAntProperties(this.antProperties);
        BundleHelper.getDefault().setLog((Object)this);
        this.generator.generate();
        BundleHelper.getDefault().setLog(null);
    }

    private void initializeAntProperties(Properties properties) {
        String value = this.getProject().getProperty("resolution.devMode");
        if (Boolean.valueOf(value).booleanValue()) {
            properties.put("resolution.devMode", "true");
        }
        if (Boolean.valueOf(value = this.getProject().getProperty("individualSourceBundles")).booleanValue()) {
            properties.put("individualSourceBundles", "true");
        }
        if (Boolean.valueOf(value = this.getProject().getProperty("allowBinaryCycles")).booleanValue()) {
            properties.put("allowBinaryCycles", "true");
        }
        if (Boolean.valueOf(value = this.getProject().getProperty("p2.gathering")).booleanValue()) {
            properties.put("p2.gathering", "true");
        }
        if (Boolean.valueOf(value = this.getProject().getProperty("suppressResolutionErrors")).booleanValue()) {
            properties.put("suppressResolutionErrors", "true");
        }
        if ((value = this.getProject().getProperty("ant.version")) != null) {
            properties.put("ant.version", value);
        }
    }

    private void setEEProfileProperties(Properties antProperties) {
        ProfileManager manager = new ProfileManager(this.generator.getEESources(), true);
        manager.copyEEProfileProperties((Dictionary)this.getProject().getProperties(), antProperties);
    }

    public void setBuildDirectory(String buildDirectory) {
        this.generator.setWorkingDirectory(buildDirectory);
    }

    public void setInstall(String installLocation) {
        this.generator.setWorkingDirectory(installLocation);
    }

    public void setRecursiveGeneration(boolean recursiveGeneration) {
        this.generator.setRecursiveGeneration(recursiveGeneration);
    }

    public void setConfigInfo(String configInfo) throws CoreException {
        AbstractScriptGenerator.setConfigInfo((String)configInfo);
    }

    public void setArchivesFormat(String archivesFormat) throws CoreException {
        this.generator.setArchivesFormat(archivesFormat);
    }

    public void setBaseLocation(String baseLocation) {
        BuildTimeSiteFactory.setInstalledBaseSite((String)baseLocation);
    }

    public void setBuildingOSGi(boolean osgi) {
        this.generator.setBuildingOSGi(osgi);
    }

    public void setWorkingDirectory(String installLocation) {
        this.generator.setWorkingDirectory(installLocation);
    }

    public void setCustomEESources(String eeSources) {
        if (eeSources != null && !eeSources.startsWith("${")) {
            this.generator.setEESources(Utils.getArrayFromString((String)eeSources, (String)File.pathSeparator));
        }
    }

    public void setProduct(String value) {
        this.generator.setProduct(value);
    }

    public void setSignJars(boolean value) {
        this.generator.setSignJars(value);
    }

    public void setGenerateJnlp(boolean value) {
        this.generator.setGenerateJnlp(value);
    }

    public void setOutputUpdateJars(boolean value) {
        AbstractScriptGenerator.setForceUpdateJar((boolean)value);
    }

    public void setForceContextQualifier(String value) {
        QualifierReplacer.setGlobalQualifier((String)value);
    }

    public void setGenerateFeatureVersionSuffix(boolean value) {
        this.generator.setGenerateFeatureVersionSuffix(value);
    }

    public void setGenerateVersionsLists(boolean value) {
        this.generator.setGenerateVersionsList(value);
    }

    public void setGroupConfiguration(boolean value) {
        this.generator.setGroupConfigs(value);
    }

    public void setFilteredDependencyCheck(boolean value) {
        this.generator.setFilterState(value);
    }

    public void setPlatformProperties(String filename) {
        this.generator.setPlatformProperties(filename);
    }

    public void setFilterP2Base(boolean value) {
        this.generator.setFilterP2Base(value);
    }

    public void setParallelCompilation(boolean parallel) {
        this.generator.setParallel(parallel);
    }

    public void setParallelThreadCount(String count) {
        try {
            this.generator.setThreadCount(Integer.parseInt(count));
        }
        catch (NumberFormatException numberFormatException) {}
    }

    public void setParallelThreadsPerProcessor(String threads) {
        try {
            this.generator.setThreadsPerProcessor(Integer.parseInt(threads));
        }
        catch (NumberFormatException numberFormatException) {}
    }

    public void setContextRepository(String contexts) {
        String[] locations = Utils.getArrayFromString((String)contexts, (String)",");
        ArrayList<URI> uris = new ArrayList<URI>();
        int i = 0;
        while (i < locations.length) {
            String context = locations[i];
            if (context != null && !context.startsWith("${") && context.length() != 0) {
                if (!context.startsWith("file:")) {
                    context = "file:" + context;
                }
                try {
                    uris.add(URIUtil.fromString((String)context));
                }
                catch (URISyntaxException uRISyntaxException) {
                    this.log("Invalid repository location:" + context);
                }
            }
            ++i;
        }
        if (uris.size() > 0) {
            this.generator.setContextMetadataRepositories(uris.toArray(new URI[uris.size()]));
        }
    }

    public void setSourceBundleFeatureId(String value) {
        if (value != null && !value.startsWith("${")) {
            this.generator.setSourceBundleFeatureId(value);
        }
    }

    public void setSourceBundleTemplateFeature(String value) {
        if (value != null && !value.startsWith("${")) {
            this.generator.setSourceBundleTemplateFeature(value);
        }
    }

    public void setSourceBundleFeatureVersion(String value) {
        if (value != null && !value.startsWith("${")) {
            this.generator.setSourceBundleFeatureVersion(value);
        }
    }

    public void setSourceBundleMode(String value) {
        if (value != null && !value.startsWith("${")) {
            this.generator.setSourceBundleMode(value);
        }
    }
}

