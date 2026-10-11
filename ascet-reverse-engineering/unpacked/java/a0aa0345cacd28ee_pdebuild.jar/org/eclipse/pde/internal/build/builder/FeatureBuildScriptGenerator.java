/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.builder;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.ProductGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;

public class FeatureBuildScriptGenerator
extends AbstractScriptGenerator {
    protected BuildTimeFeature feature;
    protected Properties buildProperties;
    private BuildDirector director;
    private boolean generateProductFiles = true;
    protected String featureFolderName;
    protected String featureTempFolder;
    protected String featureFullName;
    protected String featureRootLocation;
    protected String sourceFeatureFullNameVersioned;
    private String customFeatureCallbacks = null;
    private String customCallbacksBuildpath = null;
    private String customCallbacksFailOnError = null;
    private String customCallbacksInheritAll = null;
    private BuildTimeFeature licenseFeature;

    public FeatureBuildScriptGenerator(BuildTimeFeature feature) {
        this.feature = feature;
        this.featureRootLocation = feature.getRootLocation();
    }

    public void setDirector(BuildDirector director) {
        this.director = director;
    }

    private void initializeVariables() throws CoreException {
        this.featureFullName = String.valueOf(this.feature.getId()) + "_" + this.feature.getVersion();
        this.featureFolderName = "features/" + this.featureFullName;
        this.featureTempFolder = Utils.getPropertyFormat("feature.temp.folder");
        Properties properties = this.getBuildProperties();
        this.customFeatureCallbacks = properties.getProperty("customBuildCallbacks");
        if ("true".equalsIgnoreCase(this.customFeatureCallbacks)) {
            this.customFeatureCallbacks = "customBuildCallbacks.xml";
        } else if ("false".equalsIgnoreCase(this.customFeatureCallbacks)) {
            this.customFeatureCallbacks = null;
        }
        this.customCallbacksBuildpath = properties.getProperty("customBuildCallbacks.buildpath", ".");
        this.customCallbacksFailOnError = properties.getProperty("customBuildCallbacks.failonerror", "false");
        this.customCallbacksInheritAll = properties.getProperty("customBuildCallbacks.inheritall");
        String sourceFeatureName = this.getBuildProperties().getProperty("sourceFeature.name");
        if (sourceFeatureName == null) {
            sourceFeatureName = this.feature.getId().endsWith(".source") ? this.feature.getId() : String.valueOf(this.feature.getId()) + ".source";
        }
        this.sourceFeatureFullNameVersioned = String.valueOf(sourceFeatureName) + "_" + this.feature.getVersion();
    }

    public void generate() throws CoreException {
        if (this.feature.isBinary()) {
            return;
        }
        if (this.getBuildProperties() == AbstractScriptGenerator.MissingProperties.getInstance() || AbstractScriptGenerator.getPropertyAsBoolean("packagerMode")) {
            this.feature.setBinary(true);
            return;
        }
        this.initializeVariables();
        boolean custom = "true".equalsIgnoreCase((String)this.getBuildProperties().get("custom"));
        File customBuildFile = null;
        if (custom) {
            customBuildFile = new File(this.featureRootLocation, "build.xml");
            if (!customBuildFile.exists()) {
                String message = NLS.bind((String)Messages.error_missingCustomBuildFile, (Object)customBuildFile);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 7, message, null));
            }
            List configs = FeatureBuildScriptGenerator.getConfigInfos();
            Iterator iter = configs.iterator();
            while (iter.hasNext()) {
                this.director.getAssemblyData().addRootFileProvider((Config)iter.next(), this.feature);
            }
            try {
                Utils.updateVersion(customBuildFile, "feature.version.suffix", this.feature.getVersion());
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_writeScript, (Object)customBuildFile);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 7, message, (Throwable)e));
            }
        }
        this.openScript(this.featureRootLocation, "build.xml");
        try {
            this.generateBuildScript();
        }
        finally {
            this.closeScript();
        }
    }

    private void generateBuildScript() throws CoreException {
        if (BundleHelper.getDefault().isDebugging()) {
            System.out.println("Generating feature " + this.featureFullName);
        }
        this.generatePrologue();
        this.generateAllPluginsTarget();
        this.generateAllFeaturesTarget();
        this.generateUpdateFeatureFile();
        this.generateAllChildrenTarget();
        this.generateChildrenTarget();
        this.generateBuildJarsTarget();
        this.generateBuildZipsTarget();
        this.generateBuildUpdateJarTarget();
        this.generatePublishBinPartsTarget();
        this.generateGatherBinPartsTarget();
        this.generateZipDistributionWholeTarget();
        this.generateZipSourcesTarget();
        this.generateZipLogsTarget();
        this.generateCleanTarget();
        this.generateRefreshTarget();
        this.generateGatherSourcesTarget();
        this.generateGatherLogsTarget();
        this.generateEpilogue();
    }

    private void generateGatherSourcesTarget() {
        this.script.printTargetDeclaration("gather.sources", null, null, null, null);
        HashMap<String, String> params = new HashMap<String, String>(2);
        params.put("destination.temp.folder", String.valueOf(Utils.getPropertyFormat("feature.temp.folder")) + '/' + "plugins" + '/' + this.sourceFeatureFullNameVersioned + '/' + "src");
        params.put("target", "gather.sources");
        this.script.printAntCallTask("children", true, params);
        this.script.printTargetEnd();
    }

    private void generateGatherLogsTarget() {
        this.script.println();
        this.script.printTargetDeclaration("gather.logs", "init", null, null, null);
        String destinationTempFolder = new Path(this.featureTempFolder).append("plugins").toString();
        this.script.printMkdirTask(destinationTempFolder);
        this.script.printProperty("destination.temp.folder", destinationTempFolder);
        this.script.printConditionIsSet("logExtension.param", "logExtension", "logExtension", "logExtension.param");
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("target", "gather.logs");
        params.put("destination.temp.folder", destinationTempFolder);
        params.put(Utils.getPropertyFormat("logExtension.param"), Utils.getPropertyFormat("logExtension"));
        this.script.printAntCallTask("all.children", false, params);
        this.script.printTargetEnd();
    }

    private void generateUpdateFeatureFile() {
        this.script.printTargetDeclaration("update.feature", "init", null, null, null);
        this.script.printTargetEnd();
    }

    private void generateBuildZipsTarget() throws CoreException {
        StringBuffer zips = new StringBuffer();
        Properties props = this.getBuildProperties();
        Iterator iterator = props.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String key = (String)entry.getKey();
            if (!key.startsWith("source.") || !key.endsWith(".zip")) continue;
            String zipName = key.substring("source.".length());
            zips.append(',');
            zips.append(zipName);
            this.generateZipIndividualTarget(zipName, (String)entry.getValue());
        }
        this.script.println();
        this.script.printTargetDeclaration("build.zips", "init" + zips.toString(), null, null, null);
        HashMap<String, String> params = new HashMap<String, String>(2);
        params.put("target", "build.zips");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printTargetEnd();
    }

    private void generateZipIndividualTarget(String zipName, String source) {
        this.script.println();
        this.script.printTargetDeclaration(zipName, "init", null, null, null);
        this.script.printZipTask(String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + zipName, String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + source, false, false, null);
        this.script.printTargetEnd();
    }

    private void generateCleanTarget() {
        this.script.println();
        this.script.printTargetDeclaration("clean", "init", null, null, NLS.bind((String)Messages.build_feature_clean, (Object)this.feature.getId()));
        this.script.printDeleteTask(null, String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".jar", null);
        this.script.printDeleteTask(null, String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".bin.dist.zip", null);
        this.script.printDeleteTask(null, String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".log.zip", null);
        this.script.printDeleteTask(null, String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".src.zip", null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        HashMap<String, String> params = new HashMap<String, String>(2);
        params.put("target", "clean");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printTargetEnd();
    }

    private void generateZipLogsTarget() {
        this.script.println();
        this.script.printTargetDeclaration("zip.logs", "init", null, null, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printMkdirTask(this.featureTempFolder);
        this.script.printConditionIsSet("logExtension.param", "logExtension", "logExtension", "logExtension.param");
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("include.children", "true");
        params.put("target", "gather.logs");
        params.put("destination.temp.folder", new Path(this.featureTempFolder).append("plugins").toString());
        params.put(Utils.getPropertyFormat("logExtension.param"), Utils.getPropertyFormat("logExtension"));
        this.script.printAntCallTask("all.children", false, params);
        IPath destination = new Path(Utils.getPropertyFormat("feature.destination")).append(String.valueOf(this.featureFullName) + ".log.zip");
        this.script.printZipTask(destination.toString(), this.featureTempFolder, true, false, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printTargetEnd();
    }

    protected void generateZipSourcesTarget() {
        this.script.println();
        this.script.printTargetDeclaration("zip.sources", "init", null, null, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printMkdirTask(this.featureTempFolder);
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("include.children", "true");
        params.put("target", "gather.sources");
        params.put("destination.temp.folder", String.valueOf(this.featureTempFolder) + '/' + "plugins" + '/' + this.sourceFeatureFullNameVersioned + '/' + "src");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printZipTask(String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".src.zip", this.featureTempFolder, true, false, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printTargetEnd();
    }

    private void generatePublishBinPartsTarget() throws CoreException {
        String include;
        Properties properties = this.getBuildProperties();
        Map root = Utils.processRootProperties(properties, true);
        Map common = (Map)root.get("!!COMMON!!");
        Iterator iter = FeatureBuildScriptGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            Config aConfig = (Config)iter.next();
            String configKey = aConfig.toString(".");
            if (!root.containsKey(configKey) && common.size() <= 0) continue;
            this.director.getAssemblyData().addRootFileProvider(aConfig, this.feature);
        }
        this.script.println();
        this.script.printTargetDeclaration("publish.bin.parts", "init", "p2.publish.parts", null, null);
        String featureTemp = String.valueOf(Utils.getPropertyFormat("feature.temp.folder")) + '/' + this.featureFolderName;
        this.script.printMkdirTask(featureTemp);
        HashMap<String, String> callbackParams = null;
        if (this.customFeatureCallbacks != null) {
            callbackParams = new HashMap<String, String>(1);
            callbackParams.put("destination.temp.folder", new Path(Utils.getPropertyFormat("feature.base")).append("plugins").toString());
            callbackParams.put("feature.directory", featureTemp);
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, callbackParams, null);
        }
        if ((include = (String)this.getBuildProperties().get("bin.includes")) == null || include.indexOf("feature.xml") == -1) {
            include = String.valueOf(include != null ? String.valueOf(include) + "," : "") + "feature.xml";
        }
        String exclude = (String)this.getBuildProperties().get("bin.excludes");
        FileSet fileSet = new FileSet(Utils.getPropertyFormat("basedir"), null, include, null, exclude, null, null);
        this.script.printCopyTask(null, featureTemp, new FileSet[]{fileSet}, true, true);
        this.generateIdReplacerCall(featureTemp);
        this.generateLicenseReplacerCall(featureTemp, this.customFeatureCallbacks != null);
        if (this.customFeatureCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, callbackParams, null);
        }
        this.script.println("<eclipse.gatherFeature ");
        this.script.println("   metadataRepository=\"" + Utils.getPropertyFormat("p2.build.repo") + "\"");
        this.script.println("   artifactRepository=\"" + Utils.getPropertyFormat("p2.build.repo") + "\"");
        if (this.customFeatureCallbacks != null) {
            this.script.println("   targetFolder=\"" + featureTemp + "\"");
        } else {
            this.script.println("   buildResultFolder=\"" + featureTemp + "\"");
        }
        this.script.println("   baseDirectory=\"${basedir}\"");
        if (this.getLicenseFeature() != null) {
            IPath licenseLocation = Utils.makeRelative((IPath)new Path(this.getLicenseFeatureRootLocation()), (IPath)new Path(this.featureRootLocation));
            String licensePath = licenseLocation.isAbsolute() ? licenseLocation.toString() : "${basedir}/" + licenseLocation.toString();
            this.script.println("   licenseDirectory=\"" + licensePath + "\"");
        }
        this.script.println("/>");
        this.script.printTargetEnd();
    }

    private void generateGatherBinPartsTarget() throws CoreException {
        String include = (String)this.getBuildProperties().get("bin.includes");
        String exclude = (String)this.getBuildProperties().get("bin.excludes");
        String root = String.valueOf(Utils.getPropertyFormat("feature.base")) + '/' + this.featureFolderName;
        this.script.println();
        this.script.printTargetDeclaration("gather.bin.parts", "init", "feature.base", null, null);
        if (include != null) {
            this.script.printMkdirTask(root);
        }
        HashMap<String, String> callbackParams = null;
        if (this.customFeatureCallbacks != null) {
            callbackParams = new HashMap<String, String>(1);
            callbackParams.put("destination.temp.folder", new Path(Utils.getPropertyFormat("feature.base")).append("plugins").toString());
            callbackParams.put("feature.directory", root);
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, callbackParams, null);
        }
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("target", "gather.bin.parts");
        params.put("destination.temp.folder", new Path(Utils.getPropertyFormat("feature.base")).append("plugins").toString());
        this.script.printAntCallTask("children", true, params);
        if (include != null) {
            FileSet fileSet = new FileSet(Utils.getPropertyFormat("basedir"), null, include, null, exclude, null, null);
            this.script.printCopyTask(null, root, new FileSet[]{fileSet}, true, false);
            this.generateIdReplacerCall(root);
            this.generateLicenseReplacerCall(root, true);
        }
        this.generateRootFilesAndPermissionsCalls();
        if (this.customFeatureCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, callbackParams, null);
        }
        this.script.printTargetEnd();
        this.generateRootFilesAndPermissions();
    }

    private void generateIdReplacerCall(String root) throws CoreException {
        String featureVersionInfo = Utils.getEntryVersionMappings(this.feature.getRawIncludedFeatureReferences(), this.getSite(false));
        String pluginVersionInfo = Utils.getEntryVersionMappings(this.feature.getRawPluginEntries(), this.getSite(false));
        this.script.println("<eclipse.idReplacer featureFilePath=\"" + AntScript.getEscaped(root) + '/' + "feature.xml" + "\"  selfVersion=\"" + this.feature.getVersion() + "\" featureIds=\"" + featureVersionInfo + "\" pluginIds=\"" + pluginVersionInfo + "\"/>");
    }

    private String getLicenseFeatureRootLocation() throws CoreException {
        if (this.getLicenseFeature() != null) {
            return this.getLicenseFeature().getRootLocation();
        }
        return "";
    }

    private BuildTimeFeature getLicenseFeature() throws CoreException {
        if (this.licenseFeature == null) {
            String licenseFeatureName = this.feature.getLicenseFeature();
            if (licenseFeatureName == null || licenseFeatureName.length() == 0) {
                return null;
            }
            this.licenseFeature = this.getSite(false).findFeature(licenseFeatureName, this.feature.getLicenseFeatureVersion(), true);
        }
        return this.licenseFeature;
    }

    private void generateLicenseReplacerCall(String featureRoot, boolean printCopy) throws CoreException {
        String licensePath;
        if (this.getLicenseFeature() == null) {
            return;
        }
        IPath licenseLocation = Utils.makeRelative((IPath)new Path(this.getLicenseFeatureRootLocation()), (IPath)new Path(this.featureRootLocation));
        String string = licensePath = licenseLocation.isAbsolute() ? licenseLocation.toString() : "${basedir}/" + licenseLocation.toString();
        if (printCopy) {
            String exclude;
            String include;
            if (this.getLicenseFeature().isBinary()) {
                include = "**";
                exclude = "META-INF/";
            } else {
                include = (String)this.getBuildProperties(this.getLicenseFeatureRootLocation()).get("bin.includes");
                exclude = (String)this.getBuildProperties(this.getLicenseFeatureRootLocation()).get("bin.excludes");
            }
            exclude = String.valueOf(exclude != null ? String.valueOf(exclude) + "," : "") + ",.project,build.properties,feature.xml,feature.properties,feature_*.properties";
            FileSet fileSet = new FileSet(licensePath, null, include, null, exclude, null, null);
            this.script.printCopyTask(null, featureRoot, new FileSet[]{fileSet}, true, true);
        }
        this.script.println("<eclipse.licenseReplacer featureFilePath=\"" + AntScript.getEscaped(featureRoot) + "\" licenseFilePath=\"" + AntScript.getEscaped(licensePath) + "\"/>");
    }

    private void generateRootFilesAndPermissionsCalls() {
        HashMap<String, String> param = new HashMap<String, String>(1);
        param.put("rootTarget", "rootFiles" + Utils.getPropertyFormat("os") + '_' + Utils.getPropertyFormat("ws") + '_' + Utils.getPropertyFormat("arch"));
        this.script.printAntCallTask("rootFiles", true, param);
    }

    private void generateRootFilesAndPermissions() throws CoreException {
        Config aConfig;
        String product;
        boolean generateEclipseProduct = Boolean.valueOf(this.getBuildProperties().getProperty("generateEclipseProduct"));
        String string = product = this.generateProductFiles || generateEclipseProduct ? this.director.getProduct() : null;
        if (product != null) {
            ProductGenerator generator = new ProductGenerator();
            generator.setProduct(product);
            generator.setBuildSiteFactory(this.siteFactory);
            generator.setBuildProperties(this.getBuildProperties());
            generator.setRoot(this.featureRootLocation);
            generator.setWorkingDirectory(FeatureBuildScriptGenerator.getWorkingDirectory());
            generator.setAssemblyInfo(this.director.getAssemblyData());
            try {
                if (!BuildDirector.p2Gathering && this.generateProductFiles) {
                    generator.generate();
                } else if (generateEclipseProduct) {
                    generator.generateEclipseProduct();
                }
            }
            catch (CoreException coreException) {}
        }
        this.script.printTargetDeclaration("rootFiles", null, null, "updateJar.omitRootfiles", null);
        this.script.printAntCallTask(Utils.getPropertyFormat("rootTarget"), true, null);
        this.script.printTargetEnd();
        this.script.println();
        Iterator iter = FeatureBuildScriptGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            aConfig = (Config)iter.next();
            this.script.printTargetDeclaration("rootFiles" + aConfig.toString("_"), null, null, null, null);
            this.generateCopyRootFiles(aConfig);
            Utils.generatePermissions(this.getBuildProperties(), aConfig, "feature.base", this.script);
            this.script.printTargetEnd();
        }
        this.script.printTargetDeclaration("rootFilesgroup_group_group", null, null, null, null);
        iter = FeatureBuildScriptGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            aConfig = (Config)iter.next();
            this.script.printAntCallTask("rootFiles" + aConfig.toString("_"), true, null);
        }
        this.script.printTargetEnd();
    }

    private void generateCopyRootFiles(Config aConfig) throws CoreException {
        Map foldersToCopy;
        Properties properties = this.getBuildProperties();
        String configKey = aConfig.toString(".");
        Map root = Utils.processRootProperties(properties, true);
        Map map = foldersToCopy = root.containsKey(configKey) ? (Map)root.get(configKey) : (Map)root.get("!!COMMON!!");
        if (foldersToCopy == null || foldersToCopy.isEmpty()) {
            return;
        }
        String configName = aConfig.toStringReplacingAny(".", "ANY");
        String shouldOverwrite = properties.getProperty("overwriteRootFiles", "true");
        boolean overwrite = Boolean.valueOf(shouldOverwrite);
        this.director.getAssemblyData().addRootFileProvider(aConfig, this.feature);
        Object[] folders = foldersToCopy.keySet().toArray();
        String fileList = null;
        int i = 0;
        while (i < folders.length) {
            String folder = (String)folders[i];
            if (!folder.equals("!!ROOT.LINK!!") && !folder.startsWith("!!ROOT.PERMISSIONS!!")) {
                fileList = (String)foldersToCopy.get(folder);
                String[] files = Utils.getArrayFromString(fileList, ",");
                FileSet[] fileSet = new FileSet[files.length];
                int j = 0;
                while (j < files.length) {
                    String file = files[j];
                    String fromDir = String.valueOf(Utils.getPropertyFormat("basedir")) + '/';
                    if (file.startsWith("absolute:")) {
                        file = file.substring(9);
                        fromDir = "";
                    } else if (file.startsWith("license:")) {
                        if (this.getLicenseFeature() == null) {
                            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 5, NLS.bind((String)Messages.error_licenseRootWithoutLicenseRef, (Object)this.featureRootLocation), null));
                        }
                        file = file.substring(8);
                        fromDir = this.getLicenseFeatureRootLocation();
                    }
                    if (file.startsWith("file:")) {
                        Path target = new Path(file.substring(5));
                        fileSet[j] = new FileSet(String.valueOf(fromDir) + target.removeLastSegments(1), null, target.lastSegment(), null, null, null, null);
                    } else {
                        fileSet[j] = new FileSet(String.valueOf(fromDir) + file, null, "**", null, null, null, null);
                    }
                    ++j;
                }
                if (fileSet.length > 0) {
                    this.script.printMkdirTask(String.valueOf(Utils.getPropertyFormat("feature.base")) + '/' + configName + '/' + Utils.getPropertyFormat("collectingFolder") + '/' + folder);
                    this.script.printCopyTask(null, String.valueOf(Utils.getPropertyFormat("feature.base")) + '/' + configName + '/' + Utils.getPropertyFormat("collectingFolder") + '/' + folder, fileSet, true, overwrite);
                }
            }
            ++i;
        }
    }

    private void generateBuildUpdateJarTarget() {
        this.script.println();
        this.script.printTargetDeclaration("build.update.jar", "init", null, null, NLS.bind((String)Messages.build_feature_buildUpdateJar, (Object)this.feature.getId()));
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("target", "build.update.jar");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printProperty("feature.base", this.featureTempFolder);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printMkdirTask(this.featureTempFolder);
        this.script.printMkdirTask(String.valueOf(this.featureTempFolder) + '/' + this.featureFolderName);
        params.clear();
        params.put("feature.base", this.featureTempFolder);
        params.put("os", this.feature.getOS() == null ? Config.ANY : this.feature.getOS());
        params.put("ws", this.feature.getWS() == null ? Config.ANY : this.feature.getWS());
        params.put("arch", this.feature.getArch() == null ? Config.ANY : this.feature.getArch());
        params.put("nl", this.feature.getNL() == null ? Config.ANY : this.feature.getNL());
        params.put("updateJar.omitRootfiles", "true");
        this.script.printAntCallTask("gather.bin.parts", false, params);
        String jar = String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".jar";
        this.script.printJarTask(jar, String.valueOf(this.featureTempFolder) + '/' + this.featureFolderName, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        if (this.director.getGenerateJnlp()) {
            this.script.println("<eclipse.jnlpGenerator feature=\"" + AntScript.getEscaped(jar) + "\"  codebase=\"" + Utils.getPropertyFormat("jnlp.codebase") + "\" j2se=\"" + Utils.getPropertyFormat("jnlp.j2se") + "\" locale=\"" + Utils.getPropertyFormat("jnlp.locale") + "\" generateOfflineAllowed=\"" + Utils.getPropertyFormat("jnlp.generateOfflineAllowed") + "\" configInfo=\"" + Utils.getPropertyFormat("jnlp.configs") + "\"/>");
        }
        if (this.director.getSignJars()) {
            if (this.director.getGenerateJnlp()) {
                this.script.printProperty("jarProcessor.unsign", "true");
            }
            this.script.println("<eclipse.jarProcessor sign=\"" + Utils.getPropertyFormat("jarProcessor.sign") + "\" pack=\"" + Utils.getPropertyFormat("jarProcessor.pack200") + "\" unsign=\"" + Utils.getPropertyFormat("jarProcessor.unsign") + "\" jar=\"" + AntScript.getEscaped(jar) + "\" alias=\"" + Utils.getPropertyFormat("sign.alias") + "\" keystore=\"" + Utils.getPropertyFormat("sign.keystore") + "\" storepass=\"" + Utils.getPropertyFormat("sign.storepass") + "\"/>");
        }
        this.script.printTargetEnd();
    }

    protected void generateZipDistributionWholeTarget() {
        this.script.println();
        this.script.printTargetDeclaration("zip.distribution", "init", null, null, NLS.bind((String)Messages.build_feature_zips, (Object)this.feature.getId()));
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printMkdirTask(this.featureTempFolder);
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("feature.base", this.featureTempFolder);
        params.put("include.children", "true");
        params.put("os", this.feature.getOS() == null ? Config.ANY : this.feature.getOS());
        params.put("ws", this.feature.getWS() == null ? Config.ANY : this.feature.getWS());
        params.put("arch", this.feature.getArch() == null ? Config.ANY : this.feature.getArch());
        params.put("nl", this.feature.getNL() == null ? Config.ANY : this.feature.getNL());
        this.script.printAntCallTask("gather.bin.parts", true, params);
        this.script.printZipTask(String.valueOf(Utils.getPropertyFormat("feature.destination")) + '/' + this.featureFullName + ".bin.dist.zip", this.featureTempFolder, false, false, null);
        this.script.printDeleteTask(this.featureTempFolder, null, null);
        this.script.printTargetEnd();
    }

    private void generateAllChildrenTarget() {
        StringBuffer depends = new StringBuffer();
        depends.append("init");
        depends.append(',');
        depends.append("all.features");
        depends.append(',');
        depends.append("all.plugins");
        depends.append(',');
        depends.append("update.feature");
        this.script.println();
        this.script.printTargetDeclaration("all.children", depends.toString(), null, null, null);
        this.script.printTargetEnd();
    }

    protected void generateAllPluginsTarget() throws CoreException {
        Set plugins = this.computeElements();
        List sortedPlugins = Utils.extractPlugins(this.getSite(false).getRegistry().getSortedBundles(), plugins);
        this.script.println();
        this.script.printTargetDeclaration("all.plugins", "init", null, null, null);
        HashSet<BundleDescription> writtenCalls = new HashSet<BundleDescription>(sortedPlugins.size());
        Iterator iter = sortedPlugins.iterator();
        while (iter.hasNext()) {
            BundleDescription current = (BundleDescription)iter.next();
            Properties bundleProperties = (Properties)current.getUserObject();
            if (bundleProperties == null || bundleProperties.get("isCompiler") == null || bundleProperties.get("isCompiler") == Boolean.FALSE || writtenCalls.contains(current)) continue;
            writtenCalls.add(current);
            FeatureEntry[] entries = Utils.getPluginEntry(this.feature, current.getSymbolicName(), false);
            int j = 0;
            while (j < entries.length) {
                List list = this.director.selectConfigs((IPlatformEntry)entries[j]);
                if (list.size() != 0) {
                    HashMap<String, String> params = null;
                    Config aMatchingConfig = (Config)list.get(0);
                    params = new HashMap<String, String>(3);
                    if (!aMatchingConfig.getOs().equals(Config.ANY)) {
                        params.put("os", aMatchingConfig.getOs());
                    }
                    if (!aMatchingConfig.getWs().equals(Config.ANY)) {
                        params.put("ws", aMatchingConfig.getWs());
                    }
                    if (!aMatchingConfig.getArch().equals(Config.ANY)) {
                        params.put("arch", aMatchingConfig.getArch());
                    }
                    IPath location = Utils.makeRelative((IPath)new Path(this.getLocation(current)), (IPath)new Path(this.featureRootLocation));
                    this.script.printAntTask("build.xml", location.toString(), Utils.getPropertyFormat("target"), null, null, params);
                }
                ++j;
            }
        }
        this.script.printTargetEnd();
    }

    protected Set computeElements() throws CoreException {
        LinkedHashSet<BundleDescription> computedElements = new LinkedHashSet<BundleDescription>(5);
        FeatureEntry[] pluginList = this.feature.getPluginEntries();
        int i = 0;
        while (i < pluginList.length) {
            FeatureEntry entry = pluginList[i];
            if (this.director.selectConfigs((IPlatformEntry)entry).size() != 0) {
                String versionRequested = entry.getVersion();
                BundleDescription model = this.getSite(false).getRegistry().getResolvedBundle(entry.getId(), versionRequested);
                if (model == null) {
                    String message = NLS.bind((String)Messages.exception_missingPlugin, (Object)(String.valueOf(entry.getId()) + "_" + entry.getVersion()));
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 5, message, null));
                }
                computedElements.add(model);
            }
            ++i;
        }
        return computedElements;
    }

    private void generateAllFeaturesTarget() throws CoreException {
        this.script.printTargetDeclaration("all.features", "init", null, null, null);
        FeatureEntry[] features = this.feature.getIncludedFeatureReferences();
        int i = 0;
        while (i < features.length) {
            String featureId = features[i].getId();
            String versionId = features[i].getVersion();
            BuildTimeFeature includedFeature = this.getSite(false).findFeature(featureId, versionId, false);
            if (includedFeature == null) {
                if (!features[i].isOptional()) {
                    String message = NLS.bind((String)Messages.exception_missingFeature, (Object)(String.valueOf(featureId) + ' ' + versionId));
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
                }
            } else if (!includedFeature.isBinary()) {
                String includedFeatureDirectory = includedFeature.getRootLocation();
                IPath location = Utils.makeRelative((IPath)new Path(includedFeatureDirectory), (IPath)new Path(this.featureRootLocation));
                this.script.printAntTask("build.xml", location.toString(), Utils.getPropertyFormat("target"), null, null, null);
            }
            ++i;
        }
        this.script.printTargetEnd();
    }

    private void generateEpilogue() {
        this.script.println();
        this.script.printProjectEnd();
    }

    private void generatePrologue() {
        this.script.printProjectDeclaration(this.feature.getId(), "build.update.jar", ".");
        this.script.println();
        this.script.printTargetDeclaration("init", null, null, null, null);
        this.script.printProperty("feature.temp.folder", String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + "feature.temp.folder");
        this.script.printProperty("feature.destination", Utils.getPropertyFormat("basedir"));
        this.script.printProperty("p2.build.repo", "file:" + Utils.getPropertyFormat("buildDirectory") + "/buildRepo");
        this.script.printConditionIsTrue("p2.publish.parts", "true", Utils.getPropertyFormat("p2.gathering"));
        if (this.customFeatureCallbacks != null) {
            this.script.printAvailableTask("customBuildCallbacks", String.valueOf(this.customCallbacksBuildpath) + '/' + this.customFeatureCallbacks, this.customFeatureCallbacks);
        }
        this.script.printTargetEnd();
    }

    protected Properties getBuildProperties() throws CoreException {
        if (this.buildProperties == null) {
            this.buildProperties = FeatureBuildScriptGenerator.readProperties(this.featureRootLocation, "build.properties", this.director.isIgnoreMissingPropertiesFile() ? 0 : 2);
        }
        return this.buildProperties;
    }

    protected Properties getBuildProperties(String featureLocation) throws CoreException {
        return FeatureBuildScriptGenerator.readProperties(featureLocation, "build.properties", this.director.isIgnoreMissingPropertiesFile() ? 0 : 2);
    }

    private void generateChildrenTarget() {
        this.script.println();
        this.script.printTargetDeclaration("children", null, "include.children", null, null);
        this.script.printAntCallTask("all.children", true, null);
        this.script.printTargetEnd();
    }

    private void generateBuildJarsTarget() {
        this.script.println();
        this.script.printTargetDeclaration("build.jars", "init", null, null, NLS.bind((String)Messages.build_feature_buildJars, (Object)this.feature.getId()));
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("target", "build.jars");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printTargetEnd();
        this.script.println();
        this.script.printTargetDeclaration("build.sources", "init", null, null, null);
        params.clear();
        params.put("target", "build.sources");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printTargetEnd();
    }

    private void generateRefreshTarget() {
        this.script.println();
        this.script.printTargetDeclaration("refresh", "init", "eclipse.running", null, NLS.bind((String)Messages.build_feature_refresh, (Object)this.feature.getId()));
        this.script.printConvertPathTask(new Path(this.featureRootLocation).removeLastSegments(0).toOSString().replace('\\', '/'), "resourcePath", false);
        this.script.printRefreshLocalTask(Utils.getPropertyFormat("resourcePath"), "infinite");
        HashMap<String, String> params = new HashMap<String, String>(2);
        params.put("target", "refresh");
        this.script.printAntCallTask("all.children", true, params);
        this.script.printTargetEnd();
    }

    public void setGenerateProductFiles(boolean generateProductFiles) {
        this.generateProductFiles = generateProductFiles;
    }
}

