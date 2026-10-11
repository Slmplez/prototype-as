/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssembleScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.SourceFeatureInformation;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.AbstractBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.CompilationScriptGenerator;
import org.eclipse.pde.internal.build.builder.DevClassPathHelper;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.SourceGenerator;
import org.eclipse.pde.internal.build.packager.PackageScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.osgi.framework.Version;

public class BuildScriptGenerator
extends AbstractScriptGenerator {
    protected boolean generateArchive = true;
    protected boolean children = true;
    protected boolean groupConfigs = false;
    protected String[] elements;
    protected DevClassPathHelper devEntries;
    protected boolean recursiveGeneration = true;
    protected boolean generateBuildScript = true;
    protected boolean includePlatformIndependent = true;
    protected boolean signJars = false;
    protected boolean generateJnlp = false;
    protected boolean generateFeatureVersionSuffix = false;
    protected boolean parallel = false;
    protected boolean workspaceBinaries = false;
    protected int threadCount = -1;
    protected int threadsPerProcessor = -1;
    protected String[] eeSources = null;
    protected String product;
    private HashMap archivesFormat;
    private String archivesFormatAsString;
    private boolean generateAssembleScript = true;
    private boolean ignoreMissingPropertiesFile = true;
    protected boolean generateVersionsList = false;
    private Properties antProperties = null;
    private BundleDescription[] bundlesToBuild;
    private boolean flatten = false;
    private boolean sourceReferences = false;
    private String sourceBundleMode = null;
    private String sourceBundleTemplateFeature = "org.eclipse.pde.build.uber.feature";
    private String sourceBundleFeatureId = null;
    private String sourceBundleFeatureVersion = "1.0.0." + System.currentTimeMillis();
    private static final String PROPERTY_ARCHIVESFORMAT = "archivesFormat";

    public void generate() throws CoreException {
        if (this.archivesFormatAsString != null) {
            this.realSetArchivesFormat(this.archivesFormatAsString);
            this.archivesFormatAsString = null;
        }
        ArrayList plugins = new ArrayList(5);
        ArrayList features = new ArrayList(5);
        try {
            AbstractScriptGenerator.setStaticAntProperties(this.antProperties);
            this.sortElements(features, plugins);
            this.pluginsForFilterRoots = plugins;
            this.featuresForFilterRoots = features;
            this.getSite(true);
            this.generateModels(plugins);
            this.generateFeatures(features);
            this.flushState();
        }
        finally {
            AbstractScriptGenerator.setStaticAntProperties(null);
        }
    }

    protected void sortElements(List features, List plugins) {
        if (this.elements == null) {
            return;
        }
        int i = 0;
        while (i < this.elements.length) {
            int index = this.elements[i].indexOf(64);
            String type = this.elements[i].substring(0, index);
            String element = this.elements[i].substring(index + 1);
            if (type.equals("plugin") || type.equals("fragment")) {
                plugins.add(element);
            } else if (type.equals("feature")) {
                features.add(element);
            }
            ++i;
        }
    }

    protected void generateModels(List models) throws CoreException {
        AbstractScriptGenerator generator = null;
        try {
            Iterator iterator = models.iterator();
            while (iterator.hasNext()) {
                generator = new ModelBuildScriptGenerator();
                ((AbstractBuildScriptGenerator)generator).setReportResolutionErrors(this.reportResolutionErrors);
                ((AbstractBuildScriptGenerator)generator).setIgnoreMissingPropertiesFile(this.ignoreMissingPropertiesFile);
                String[] modelInfo = this.getNameAndVersion((String)iterator.next());
                generator.setBuildSiteFactory(this.siteFactory);
                ((ModelBuildScriptGenerator)generator).setModelId(modelInfo[0], modelInfo[1]);
                ((ModelBuildScriptGenerator)generator).setFeatureGenerator(new BuildDirector());
                generator.setPluginPath(this.pluginPath);
                ((AbstractBuildScriptGenerator)generator).setDevEntries(this.devEntries);
                ((AbstractBuildScriptGenerator)generator).setCompiledElements(((AbstractBuildScriptGenerator)generator).getCompiledElements());
                generator.setBuildingOSGi(BuildScriptGenerator.isBuildingOSGi());
                ((ModelBuildScriptGenerator)generator).setSignJars(this.signJars);
                ((ModelBuildScriptGenerator)generator).setGenerateSourceReferences(this.sourceReferences);
                ((ModelBuildScriptGenerator)generator).generate();
            }
            if (this.bundlesToBuild != null) {
                int i = 0;
                while (i < this.bundlesToBuild.length) {
                    generator = new ModelBuildScriptGenerator();
                    ((AbstractBuildScriptGenerator)generator).setReportResolutionErrors(this.reportResolutionErrors);
                    ((AbstractBuildScriptGenerator)generator).setIgnoreMissingPropertiesFile(this.ignoreMissingPropertiesFile);
                    generator.setBuildSiteFactory(this.siteFactory);
                    ((ModelBuildScriptGenerator)generator).setModel(this.bundlesToBuild[i]);
                    ((ModelBuildScriptGenerator)generator).setFeatureGenerator(new BuildDirector());
                    generator.setPluginPath(this.pluginPath);
                    ((AbstractBuildScriptGenerator)generator).setDevEntries(this.devEntries);
                    ((AbstractBuildScriptGenerator)generator).setCompiledElements(((AbstractBuildScriptGenerator)generator).getCompiledElements());
                    generator.setBuildingOSGi(BuildScriptGenerator.isBuildingOSGi());
                    ((ModelBuildScriptGenerator)generator).setSignJars(this.signJars);
                    ((ModelBuildScriptGenerator)generator).setGenerateSourceReferences(this.sourceReferences);
                    ((ModelBuildScriptGenerator)generator).generate();
                    ++i;
                }
            }
        }
        finally {
            if (generator != null) {
                generator.getSite(false).getRegistry().cleanupOriginalState();
            }
        }
    }

    private String[] getNameAndVersion(String id) {
        int versionPosition = id.indexOf(":");
        String[] result = new String[2];
        if (versionPosition != -1) {
            result[1] = id.substring(versionPosition + 1);
            result[0] = id.substring(0, versionPosition);
        } else {
            result[0] = id;
        }
        return result;
    }

    protected void generateFeatures(List features) throws CoreException {
        AssemblyInformation assemblageInformation = null;
        BuildDirector generator = null;
        if (this.product != null) {
            String replacement = QualifierReplacer.replaceQualifierInVersion("1.0.0.qualifier", "", null, null);
            this.productQualifier = new Version(replacement).getQualifier();
        }
        if (features.size() > 0) {
            assemblageInformation = new AssemblyInformation();
            generator = new BuildDirector(assemblageInformation);
            generator.setGenerateIncludedFeatures(this.recursiveGeneration);
            generator.setAnalyseChildren(this.children);
            generator.setBinaryFeatureGeneration(true);
            generator.setScriptGeneration(this.generateBuildScript);
            generator.setPluginPath(this.pluginPath);
            generator.setBuildSiteFactory(this.siteFactory);
            generator.setDevEntries(this.devEntries);
            generator.setSourceToGather(new SourceFeatureInformation());
            generator.setCompiledElements(generator.getCompiledElements());
            generator.setBuildingOSGi(BuildScriptGenerator.isBuildingOSGi());
            generator.includePlatformIndependent(this.includePlatformIndependent);
            generator.setReportResolutionErrors(this.reportResolutionErrors);
            generator.setIgnoreMissingPropertiesFile(this.ignoreMissingPropertiesFile);
            generator.setSignJars(this.signJars);
            generator.setGenerateJnlp(this.generateJnlp);
            generator.setGenerateVersionSuffix(this.generateFeatureVersionSuffix);
            generator.setProduct(this.product);
            generator.setProductQualifier(this.productQualifier);
            generator.setUseWorkspaceBinaries(this.workspaceBinaries);
            generator.setContextMetadata(this.contextMetadata);
            generator.setContextArtifacts(this.contextArtifacts);
            generator.setGenerateSourceReferences(this.sourceReferences);
        }
        if (generator != null) {
            try {
                String[] featureInfo = null;
                Iterator i = features.iterator();
                while (i.hasNext()) {
                    featureInfo = this.getNameAndVersion((String)i.next());
                    BuildTimeFeature feature = this.getSite(false).findFeature(featureInfo[0], featureInfo[1], true);
                    generator.generate(feature);
                }
                if (this.sourceBundleMode != null) {
                    this.generateSourceBundles(generator);
                }
                if (features.size() != 1) {
                    featureInfo = new String[]{"all"};
                }
                if (this.flatten) {
                    this.generateCompileScript(assemblageInformation, featureInfo);
                }
                if (this.generateAssembleScript) {
                    this.generateAssembleScripts(assemblageInformation, featureInfo, generator.siteFactory);
                    if (features.size() != 1) {
                        featureInfo = new String[]{""};
                    }
                    this.generatePackageScripts(assemblageInformation, featureInfo, generator.siteFactory);
                }
                if (this.generateVersionsList) {
                    this.generateVersionsLists(assemblageInformation);
                }
            }
            finally {
                this.getSite(false).getRegistry().cleanupOriginalState();
            }
        }
    }

    private void generateSourceBundles(BuildDirector generator) throws CoreException {
        Set allBundles = "all".equalsIgnoreCase(this.sourceBundleMode) ? generator.getAssemblyData().getAllPlugins() : generator.getAssemblyData().getAllCompiledPlugins();
        BuildTimeFeature feature = this.getSite(false).findFeature(this.sourceBundleTemplateFeature, (String)null, false);
        if (feature == null) {
            feature = new BuildTimeFeature(this.sourceBundleTemplateFeature, this.sourceBundleFeatureVersion);
        }
        if (this.sourceBundleFeatureId == null) {
            this.sourceBundleFeatureId = String.valueOf(this.sourceBundleTemplateFeature) + ".source";
        }
        Iterator iterator = allBundles.iterator();
        while (iterator.hasNext()) {
            BundleDescription bundle = (BundleDescription)iterator.next();
            if (Utils.isSourceBundle(bundle)) continue;
            feature.addEntry(new FeatureEntry(bundle.getSymbolicName(), bundle.getVersion().toString(), true));
        }
        SourceGenerator sourceGenerator = new SourceGenerator();
        sourceGenerator.setExtraEntries(new String[0]);
        sourceGenerator.setDirector(generator);
        sourceGenerator.setIndividual(true);
        sourceGenerator.generateSourceFeature(feature, this.sourceBundleFeatureId);
        BuildTimeFeature sourceFeature = this.getSite(false).findFeature(this.sourceBundleFeatureId, feature.getVersion(), true);
        generator.generate(sourceFeature);
    }

    protected void generateVersionsLists(AssemblyInformation assemblageInformation) throws CoreException {
        if (assemblageInformation == null) {
            return;
        }
        List configs = BuildScriptGenerator.getConfigInfos();
        HashSet features = new HashSet();
        HashSet plugins = new HashSet();
        Properties versions = new Properties();
        Iterator iter = configs.iterator();
        while (iter.hasNext()) {
            Config config = (Config)iter.next();
            String configString = config.toStringReplacingAny("_", "ANY");
            Collection list = assemblageInformation.getFeatures(config);
            versions.clear();
            features.addAll(list);
            String featureFile = "finalFeaturesVersions." + configString + ".properties";
            this.readVersions(versions, featureFile);
            Iterator i = list.iterator();
            while (i.hasNext()) {
                Feature feature = (Feature)i.next();
                this.recordVersion(feature.getId(), new Version(feature.getVersion()), versions);
            }
            this.saveVersions(versions, featureFile);
            list = assemblageInformation.getPlugins(config);
            versions.clear();
            plugins.addAll(list);
            String pluginFile = "finalPluginsVersions." + configString + ".properties";
            this.readVersions(versions, pluginFile);
            Iterator i2 = list.iterator();
            while (i2.hasNext()) {
                BundleDescription bundle = (BundleDescription)i2.next();
                this.recordVersion(bundle.getSymbolicName(), bundle.getVersion(), versions);
            }
            this.saveVersions(versions, pluginFile);
        }
        versions.clear();
        String featureFile = "finalFeaturesVersions.properties";
        this.readVersions(versions, featureFile);
        Iterator i = features.iterator();
        while (i.hasNext()) {
            Feature feature = (Feature)i.next();
            this.recordVersion(feature.getId(), new Version(feature.getVersion()), versions);
        }
        this.saveVersions(versions, featureFile);
        versions.clear();
        String pluginVersion = "finalPluginsVersions.properties";
        this.readVersions(versions, pluginVersion);
        Iterator i3 = plugins.iterator();
        while (i3.hasNext()) {
            BundleDescription bundle = (BundleDescription)i3.next();
            this.recordVersion(bundle.getSymbolicName(), bundle.getVersion(), versions);
        }
        this.saveVersions(versions, pluginVersion);
    }

    protected void recordVersion(String name, Version version, Properties properties) {
        String versionString = version.toString();
        if (properties.containsKey(name)) {
            Version existing = new Version((String)properties.get(name));
            if (version.compareTo(existing) >= 0) {
                properties.put(name, versionString);
            }
        } else {
            properties.put(name, versionString);
        }
        String suffix = String.valueOf('_') + String.valueOf(version.getMajor()) + '.' + String.valueOf(version.getMinor()) + '.' + String.valueOf(version.getMicro());
        properties.put(String.valueOf(name) + suffix, versionString);
    }

    private String getFilePath(String fileName) {
        return String.valueOf(workingDirectory) + '/' + fileName;
    }

    protected void readVersions(Properties properties, String fileName) {
        String location = this.getFilePath(fileName);
        try {
            BufferedInputStream is = new BufferedInputStream(new FileInputStream(location));
            try {
                properties.load(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (IOException iOException) {}
    }

    protected void saveVersions(Properties properties, String fileName) throws CoreException {
        String location = this.getFilePath(fileName);
        try {
            BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(location));
            try {
                properties.store(os, null);
            }
            finally {
                ((OutputStream)os).close();
            }
        }
        catch (IOException iOException) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)location);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, null));
        }
    }

    protected void generatePackageScripts(AssemblyInformation assemblageInformation, String[] featureInfo, BuildTimeSiteFactory factory) throws CoreException {
        PackageScriptGenerator assembler = null;
        assembler = new PackageScriptGenerator(workingDirectory, assemblageInformation, featureInfo[0]);
        assembler.setSignJars(this.signJars);
        assembler.setGenerateJnlp(this.generateJnlp);
        assembler.setArchivesFormat(this.getArchivesFormat());
        assembler.setProduct(this.product);
        assembler.setProductQualifier(this.productQualifier);
        assembler.setBuildSiteFactory(factory);
        assembler.setGroupConfigs(this.groupConfigs);
        assembler.setVersionsList(this.generateVersionsList);
        assembler.setContextMetadata(this.contextMetadata);
        assembler.setContextArtifacts(this.contextArtifacts);
        assembler.generate();
    }

    private void generateAssembleScripts(AssemblyInformation assemblageInformation, String[] featureInfo, BuildTimeSiteFactory factory) throws CoreException {
        AssembleScriptGenerator assembler = new AssembleScriptGenerator(workingDirectory, assemblageInformation, featureInfo[0]);
        assembler.setSignJars(this.signJars);
        assembler.setGenerateJnlp(this.generateJnlp);
        assembler.setArchivesFormat(this.getArchivesFormat());
        assembler.setProduct(this.product);
        assembler.setProductQualifier(this.productQualifier);
        assembler.setBuildSiteFactory(factory);
        assembler.setGroupConfigs(this.groupConfigs);
        assembler.setVersionsList(this.generateVersionsList);
        assembler.setContextMetadata(this.contextMetadata);
        assembler.setContextArtifacts(this.contextArtifacts);
        assembler.generate();
    }

    private void generateCompileScript(AssemblyInformation assemblageInformation, String[] featureInfo) throws CoreException {
        CompilationScriptGenerator generator = new CompilationScriptGenerator();
        generator.setBuildSiteFactory(this.siteFactory);
        generator.setWorkingDirectory(workingDirectory);
        generator.setAssemblyData(assemblageInformation);
        generator.setFeatureId(featureInfo[0]);
        generator.setParallel(this.parallel);
        generator.setThreadCount(this.threadCount);
        generator.setThreadsPerProcessor(this.threadsPerProcessor);
        generator.generate();
    }

    public void setGenerateArchive(boolean generateArchive) {
        this.generateArchive = generateArchive;
    }

    public void setChildren(boolean children) {
        this.children = children;
    }

    public void setDevEntries(String devEntries) {
        if (devEntries != null) {
            this.devEntries = new DevClassPathHelper(devEntries);
        }
    }

    public void setElements(String[] elements) {
        this.elements = elements;
    }

    public void setRecursiveGeneration(boolean recursiveGeneration) {
        this.recursiveGeneration = recursiveGeneration;
    }

    public void setGenerateAssembleScript(boolean generateAssembleScript) {
        this.generateAssembleScript = generateAssembleScript;
    }

    public void setGenerateVersionsList(boolean generateVersionsList) {
        this.generateVersionsList = generateVersionsList;
    }

    public void setSourceBundleMode(String value) {
        this.sourceBundleMode = value;
    }

    public void setSourceBundleFeatureId(String value) {
        this.sourceBundleFeatureId = value;
    }

    public void setSourceBundleTemplateFeature(String value) {
        this.sourceBundleTemplateFeature = value;
    }

    public void setSourceBundleFeatureVersion(String value) {
        this.sourceBundleFeatureVersion = value;
    }

    public void setReportResolutionErrors(boolean value) {
        this.reportResolutionErrors = value;
    }

    public void setP2Gathering(boolean value) {
        BuildDirector.p2Gathering = value;
    }

    public void setIgnoreMissingPropertiesFile(boolean value) {
        this.ignoreMissingPropertiesFile = value;
    }

    public void setProduct(String value) {
        this.product = value;
    }

    public void setSignJars(boolean value) {
        this.signJars = value;
    }

    public void setGenerateJnlp(boolean value) {
        this.generateJnlp = value;
    }

    public void setGenerateFeatureVersionSuffix(boolean value) {
        this.generateFeatureVersionSuffix = value;
    }

    public void setArchivesFormat(String archivesFormatAsString) {
        this.archivesFormatAsString = archivesFormatAsString;
    }

    public void realSetArchivesFormat(String formatString) throws CoreException {
        if (Utils.getPropertyFormat(PROPERTY_ARCHIVESFORMAT).equalsIgnoreCase(formatString)) {
            this.archivesFormat = new ArchiveTable(0);
            return;
        }
        this.archivesFormat = new ArchiveTable(BuildScriptGenerator.getConfigInfos().size() + 1);
        String[] configs = Utils.getArrayFromStringWithBlank(formatString, "&");
        int i = 0;
        while (i < configs.length) {
            String[] configElements = Utils.getArrayFromStringWithBlank(configs[i], ",");
            if (configElements.length != 3) {
                Status error = new Status(4, "org.eclipse.pde.build", 22, NLS.bind((String)Messages.error_configWrongFormat, (Object)configs[i]), null);
                throw new CoreException((IStatus)error);
            }
            String[] archAndFormat = Utils.getArrayFromStringWithBlank(configElements[2], "-");
            if (archAndFormat.length != 2) {
                String message = NLS.bind((String)Messages.invalid_archivesFormat, (Object)formatString);
                Status status = new Status(4, "org.eclipse.pde.build", message);
                throw new CoreException((IStatus)status);
            }
            Config aConfig = new Config(configElements[0], configElements[1], archAndFormat[0]);
            if (BuildScriptGenerator.getConfigInfos().contains(aConfig) || configElements[0].equals("group")) {
                this.archivesFormat.put(aConfig, archAndFormat[1]);
            }
            ++i;
        }
    }

    protected HashMap getArchivesFormat() {
        if (this.archivesFormat == null) {
            try {
                this.realSetArchivesFormat(Utils.getPropertyFormat(PROPERTY_ARCHIVESFORMAT));
            }
            catch (CoreException coreException) {}
        }
        return this.archivesFormat;
    }

    public void includePlatformIndependent(boolean b) {
        this.includePlatformIndependent = b;
    }

    public void setGroupConfigs(boolean value) {
        this.groupConfigs = value;
    }

    public void setImmutableAntProperties(Properties properties) {
        this.antProperties = properties;
    }

    public void setBundles(BundleDescription[] bundles) {
        this.bundlesToBuild = bundles;
    }

    public void setFlattenDependencies(boolean flatten) {
        this.flatten = flatten;
    }

    public void setParallel(boolean parallel) {
        this.parallel = parallel;
    }

    public void setThreadCount(int threadCount) {
        this.threadCount = threadCount;
    }

    public void setThreadsPerProcessor(int threadsPerProcessor) {
        this.threadsPerProcessor = threadsPerProcessor;
    }

    public void setEESources(String[] eeSources) {
        this.eeSources = eeSources;
    }

    public String[] getEESources() {
        return this.eeSources;
    }

    public void setUseWorkspaceBinaries(boolean workspaceBinaries) {
        this.workspaceBinaries = workspaceBinaries;
    }

    public void setGenerateSourceReferences(boolean generateSourceRef) {
        this.sourceReferences = generateSourceRef;
    }

    private static class ArchiveTable
    extends HashMap {
        private static final long serialVersionUID = -3063402400461435816L;

        public ArchiveTable(int size) {
            super(size);
        }

        public Object get(Object arg0) {
            Object result = super.get(arg0);
            if (result == null) {
                result = "antZip";
            }
            return result;
        }
    }
}

