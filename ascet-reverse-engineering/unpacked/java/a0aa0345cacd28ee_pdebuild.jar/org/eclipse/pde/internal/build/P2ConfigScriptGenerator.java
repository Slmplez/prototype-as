/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.build.AssembleConfigScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.ProductGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.osgi.framework.Version;

public class P2ConfigScriptGenerator
extends AssembleConfigScriptGenerator {
    private static final VersionRange OLD_EXECUTABLE_RANGE = new VersionRange(Version.emptyVersion, true, new Version(3, 3, 200, "v20090306-1900"), false);
    private AssemblyInformation assemblyInformation = null;
    private boolean assembling = false;
    private boolean versionsList = false;

    public P2ConfigScriptGenerator(AssemblyInformation assemblyInformation, boolean assembling) {
        this.assemblyInformation = assemblyInformation;
        this.assembling = assembling;
    }

    public void initialize(String directoryName, String feature) {
        this.directory = directoryName;
        this.featureId = feature;
    }

    public void generate() {
        this.initializeCollections();
        try {
            String prefix = this.assembling ? "assemble." : "package.";
            this.openScript(this.directory, String.valueOf(prefix) + this.featureId + ".p2.xml");
        }
        catch (CoreException coreException) {
            return;
        }
        this.generatePrologue();
        this.generateMainBegin();
        this.generateGatherCalls();
        this.generateMetadataCalls();
        this.generateMainEnd();
        this.generateGatherBinPartsTarget();
        this.generateCustomAssemblyTarget();
        this.generateSigningTarget();
        this.generateMetadataTarget();
        this.generateEpilogue();
        this.closeScript();
    }

    protected void initializeCollections() {
        LinkedHashSet p = new LinkedHashSet();
        LinkedHashSet f = new LinkedHashSet();
        LinkedHashSet r = new LinkedHashSet();
        Iterator iterator = P2ConfigScriptGenerator.getConfigInfos().iterator();
        while (iterator.hasNext()) {
            Config config = (Config)iterator.next();
            p.addAll(this.assemblyInformation.getPlugins(config));
            f.addAll(this.assemblyInformation.getFeatures(config));
            r.addAll(this.assemblyInformation.getRootFileProviders(config));
        }
        this.plugins = p.toArray(new BundleDescription[p.size()]);
        this.features = f.toArray(new BuildTimeFeature[f.size()]);
        this.rootFileProviders = r;
    }

    protected void generatePrologue() {
        this.script.printProjectDeclaration("Publish p2 metadata", "main", null);
        ProductFile product = this.getProductFile();
        if (product != null) {
            String launcherName = product.getLauncherName() != null ? product.getLauncherName() : "eclipse";
            this.script.printProperty("launcherName", launcherName);
            this.script.printProperty("launcherProvider", "org.eclipse.equinox.executable");
        }
        this.script.printProperty("p2.build.repo", "file:" + Utils.getPropertyFormat("buildDirectory") + "/buildRepo");
        this.script.printProperty("assemblyTempDir", String.valueOf(Utils.getPropertyFormat("buildDirectory")) + "/tmp");
        this.script.printProperty("jarProcessor.sign", (this.signJars ? Boolean.TRUE : Boolean.FALSE).toString());
        this.script.printAvailableTask("customAssembly", "${builder}/customAssembly.xml", "${builder}/customAssembly.xml");
        if (this.productQualifier != null) {
            this.script.printProperty("p2.product.qualifier", this.productQualifier);
        }
        this.script.printProperty("p2.mirror.raw", "false");
        this.script.printProperty("p2.mirror.slicing.filter", "");
        this.script.printProperty("p2.mirror.slicing.followOnlyFilteredRequirements", "false");
        this.script.printProperty("p2.mirror.slicing.followStrict", "false");
        this.script.printProperty("p2.mirror.slicing.includeFeatures", "true");
        this.script.printProperty("p2.mirror.slicing.includeNonGreedy", "false");
        this.script.printProperty("p2.mirror.slicing.includeOptional", this.havePDEUIState() ? "false" : "true");
        this.script.printProperty("p2.mirror.slicing.latestVersionOnly", "false");
        this.script.printProperty("p2.mirror.slicing.platformFilter", "");
        this.script.println();
        this.generateCustomGatherMacro();
    }

    protected void generateMainEnd() {
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateMetadataCalls() {
        this.script.printAntCallTask("generate.p2.metadata", true, null);
    }

    protected void generateGatherCalls() {
        super.generateGatherCalls();
        if (this.signJars) {
            this.script.printAntCallTask("sign.p2.repository", true, null);
        }
        this.script.println();
    }

    protected void generateBrandingCalls() {
        ProductFile product = this.getProductFile();
        if (product != null) {
            List configs = P2ConfigScriptGenerator.getConfigInfos();
            Iterator iterator = configs.iterator();
            while (iterator.hasNext()) {
                Config config = (Config)iterator.next();
                if (Config.genericConfig().equals(config)) continue;
                this.script.printTab();
                this.script.print("<eclipse.brand.p2.artifacts ");
                this.script.printAttribute("launcherName", Utils.getPropertyFormat("launcherName"), true);
                this.script.printAttribute("config", config.toString("."), true);
                this.script.printAttribute("iconsList", this.computeIconsList(config.getOs()), true);
                this.script.printAttribute("launcherProvider", Utils.getPropertyFormat("launcherProvider"), true);
                this.script.printAttribute("productId", product.getId(), true);
                this.script.printAttribute("productVersion", this.getReplacedProductVersion(), true);
                this.script.printAttribute("repository", Utils.getPropertyFormat("p2.build.repo"), true);
                this.script.printAttribute("tempDirectory", Utils.getPropertyFormat("assemblyTempDir"), true);
                this.script.println("/>");
            }
        }
        this.script.printDeleteTask(String.valueOf(Utils.getPropertyFormat("assemblyTempDir")) + "/p2.branding", null, null);
        this.script.println();
    }

    protected void generateSigningTarget() {
        this.script.printTargetDeclaration("sign.p2.repository", null, null, null, null);
        if (this.signJars && this.plugins.length + this.features.length > 0) {
            this.script.printTab();
            this.script.print("<p2.process.artifacts");
            this.script.printAttribute("repositoryPath", Utils.getPropertyFormat("p2.build.repo"), true);
            this.script.println(">");
            this.script.printTab();
            this.script.print("\t<sign");
            this.script.printAttribute("keystore", Utils.getPropertyFormat("sign.keystore"), true);
            this.script.printAttribute("storepass", Utils.getPropertyFormat("sign.storepass"), true);
            this.script.printAttribute("keypass", Utils.getPropertyFormat("sign.keypass"), true);
            this.script.printAttribute("alias", Utils.getPropertyFormat("sign.alias"), true);
            this.script.printAttribute("unsign", Utils.getPropertyFormat("jarProcessor.unsign"), true);
            this.script.print(" />\n");
            int i = 0;
            while (i < this.plugins.length) {
                this.script.printTab();
                this.script.print("\t<plugin");
                this.script.printAttribute("id", this.plugins[i].getSymbolicName(), true);
                this.script.printAttribute("version", this.plugins[i].getVersion().toString(), true);
                this.script.print(" /> \n");
                ++i;
            }
            i = 0;
            while (i < this.features.length) {
                this.script.printTab();
                this.script.print("\t<feature");
                this.script.printAttribute("id", this.features[i].getId(), true);
                this.script.printAttribute("version", this.features[i].getVersion(), true);
                this.script.print(" />\n");
                ++i;
            }
            this.script.println("</p2.process.artifacts>");
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateMetadataTarget() {
        this.script.printTargetDeclaration("generate.p2.metadata", null, null, null, null);
        this.script.printProperty("p2.flavor", "tooling");
        this.generateBrandingCalls();
        ProductFile product = this.getProductFile();
        if (product != null) {
            File parent;
            File p2Inf;
            String productPath = product.getLocation();
            String productDir = String.valueOf(P2ConfigScriptGenerator.getWorkingDirectory()) + '/' + "features" + '/' + "org.eclipse.pde.build.container.feature" + "/product";
            File productFile = new File(productPath);
            String newProduct = new File(productDir, productFile.getName()).getAbsolutePath();
            this.script.printCopyFileTask(productPath, newProduct, true);
            if (!this.generateProductP2Inf(productFile, productDir) && (p2Inf = new File(parent = new File(productPath).getParentFile(), "p2.inf")).exists()) {
                this.script.printCopyTask(p2Inf.getAbsolutePath(), productDir, null, false, true);
            }
            this.script.printTab();
            this.script.print("<replace ");
            this.script.printAttribute("file", new File(productDir, "p2.inf").getAbsolutePath(), true);
            this.script.printAttribute("token", "@FLAVOR@", true);
            this.script.printAttribute("value", Utils.getPropertyFormat("p2.flavor"), true);
            this.script.println("/>");
            this.generateCopyConfigs(product, productDir);
            this.generateProductReplaceTask(product, newProduct, this.assemblyInformation);
            this.script.printTab();
            this.script.print("<p2.publish.product");
            this.script.printAttribute("flavor", Utils.getPropertyFormat("p2.flavor"), true);
            this.script.printAttribute("repository", Utils.getPropertyFormat("p2.build.repo"), true);
            this.script.printAttribute("productFile", newProduct, true);
            this.script.println(">");
            URI[] metadata = this.getContextMetadata();
            URI[] artifacts = this.getContextArtifacts();
            int i = 0;
            while (metadata != null && i < metadata.length) {
                this.script.printTab();
                this.script.print("\t<contextRepository");
                this.script.printAttribute("location", URIUtil.toUnencodedString((URI)metadata[i]), true);
                this.script.printAttribute("metadata", "true", true);
                this.script.println("/>");
                ++i;
            }
            i = 0;
            while (artifacts != null && i < artifacts.length) {
                this.script.printTab();
                this.script.print("\t<contextRepository");
                this.script.printAttribute("location", URIUtil.toUnencodedString((URI)artifacts[i]), true);
                this.script.printAttribute("artifact", "true", true);
                this.script.println("/>");
                ++i;
            }
            Iterator iterator = P2ConfigScriptGenerator.getConfigInfos().iterator();
            while (iterator.hasNext()) {
                Config config = (Config)iterator.next();
                if (Config.genericConfig().equals(config)) continue;
                this.script.printTab();
                this.script.print("\t<config");
                this.script.printAttribute("os", config.getOs(), true);
                this.script.printAttribute("ws", config.getWs(), true);
                this.script.printAttribute("arch", config.getArch(), true);
                this.script.println("/>");
            }
            if (this.versionsList) {
                this.script.printTab();
                this.script.print("\t<advice");
                this.script.printAttribute("kind", "featureVersions", true);
                this.script.printAttribute("file", String.valueOf(P2ConfigScriptGenerator.getWorkingDirectory()) + '/' + "finalFeaturesVersions" + ".properties", true);
                this.script.println("/>");
                this.script.printTab();
                this.script.print("\t<advice");
                this.script.printAttribute("kind", "pluginVersions", true);
                this.script.printAttribute("file", String.valueOf(P2ConfigScriptGenerator.getWorkingDirectory()) + '/' + "finalPluginsVersions" + ".properties", true);
                this.script.println("/>");
            }
            this.script.println("</p2.publish.product>");
        }
        this.script.println();
        this.generateSynchContext();
        this.script.printTargetEnd();
    }

    protected void generateCopyConfigs(ProductFile product, String productDir) {
        if (!product.haveCustomConfig()) {
            return;
        }
        Iterator iterator = P2ConfigScriptGenerator.getConfigInfos().iterator();
        while (iterator.hasNext()) {
            String path;
            File entryFile;
            Config config = (Config)iterator.next();
            String entry = product.getConfigIniPath(config.getOs());
            if (entry == null || (entryFile = new File(entry)).exists() && entryFile.isAbsolute() || (path = this.findConfigFile(product, config.getOs())) == null) continue;
            File configFile = new File(path);
            this.script.printCopyFileTask(configFile.getAbsolutePath(), String.valueOf(productDir) + '/' + entry, true);
        }
    }

    protected void generateSynchContext() {
        ProductFile product = this.getProductFile();
        ArrayList<BuildTimeFeature> binaryFeatures = null;
        if (product == null) {
            binaryFeatures = new ArrayList<BuildTimeFeature>();
            int i = 0;
            while (i < this.features.length) {
                BuildTimeFeature feature = this.features[i];
                if (feature.isBinary()) {
                    binaryFeatures.add(feature);
                }
                ++i;
            }
        }
        if (product == null && (binaryFeatures == null || binaryFeatures.size() == 0)) {
            return;
        }
        HashMap<String, String> args = new HashMap<String, String>();
        args.put("raw", Utils.getPropertyFormat("p2.mirror.raw"));
        this.script.printStartTag("p2.mirror", args);
        this.script.printTab();
        this.script.print("\t<slicingOptions");
        this.script.printAttribute("includeNonGreedy", Utils.getPropertyFormat("p2.mirror.slicing.includeNonGreedy"), true);
        this.script.printAttribute("filter", Utils.getPropertyFormat("p2.mirror.slicing.filter"), true);
        this.script.printAttribute("followOnlyFilteredRequirements", Utils.getPropertyFormat("p2.mirror.slicing.followOnlyFilteredRequirements"), true);
        this.script.printAttribute("followStrict", Utils.getPropertyFormat("p2.mirror.slicing.followStrict"), true);
        this.script.printAttribute("includeFeatures", Utils.getPropertyFormat("p2.mirror.slicing.includeFeatures"), true);
        this.script.printAttribute("includeOptional", Utils.getPropertyFormat("p2.mirror.slicing.includeOptional"), true);
        this.script.printAttribute("latestVersionOnly", Utils.getPropertyFormat("p2.mirror.slicing.latestVersionOnly"), true);
        this.script.printAttribute("platformFilter", Utils.getPropertyFormat("p2.mirror.slicing.platformFilter"), true);
        this.script.println("/>");
        this.script.printTab();
        this.script.print("\t<source");
        this.script.printAttribute("location", Utils.getPropertyFormat("p2.build.repo"), true);
        this.script.println("/>");
        URI[] context = this.getContextMetadata();
        int i = 0;
        while (context != null && i < context.length) {
            this.script.printTab();
            this.script.print("\t<source");
            this.script.printAttribute("location", URIUtil.toUnencodedString((URI)context[i]), true);
            this.script.printAttribute("optional", "true", true);
            this.script.printAttribute("kind", "metadata", true);
            this.script.println("/>");
            ++i;
        }
        URI[] artifacts = this.getContextArtifacts();
        int i2 = 0;
        while (artifacts != null && i2 < artifacts.length) {
            this.script.printTab();
            this.script.print("\t<source");
            this.script.printAttribute("location", URIUtil.toUnencodedString((URI)artifacts[i2]), true);
            this.script.printAttribute("optional", "true", true);
            this.script.printAttribute("kind", "artifact", true);
            this.script.println("/>");
            ++i2;
        }
        this.script.printTab();
        this.script.print("\t<destination ");
        this.script.printAttribute("location", Utils.getPropertyFormat("p2.build.repo"), true);
        this.script.printAttribute("kind", "metadata", true);
        this.script.println("/>");
        this.script.print("\t<destination ");
        this.script.printAttribute("location", Utils.getPropertyFormat("p2.build.repo"), true);
        this.script.printAttribute("kind", "artifact", true);
        this.script.println("/>");
        this.script.printTab();
        if (product != null) {
            String version = product.getVersion();
            if (version.endsWith("qualifier")) {
                Version oldVersion = new Version(version);
                version = String.valueOf(oldVersion.getMajor()) + "." + oldVersion.getMinor() + "." + oldVersion.getMicro() + "." + Utils.getPropertyFormat("p2.product.qualifier");
            }
            this.script.print("\t<iu");
            this.script.printAttribute("id", product.getId(), true);
            this.script.printAttribute("version", version, true);
            this.script.println("/>");
        } else {
            i2 = 0;
            while (i2 < this.features.length) {
                BuildTimeFeature feature = this.features[i2];
                if (feature.isBinary()) {
                    binaryFeatures.add(feature);
                    this.script.print("\t<iu");
                    this.script.printAttribute("id", this.getFeatureGroupId(feature), true);
                    this.script.printAttribute("version", feature.getVersion(), true);
                    this.script.println("/>");
                }
                ++i2;
            }
        }
        this.script.printEndTag("p2.mirror");
    }

    private boolean generateProductP2Inf(File productFile, String root) {
        ProductGenerator generator = new ProductGenerator();
        generator.setProduct(productFile.getAbsolutePath());
        generator.setBuildSiteFactory(this.siteFactory);
        generator.setRoot(root);
        generator.setWorkingDirectory(P2ConfigScriptGenerator.getWorkingDirectory());
        generator.setAssemblyInfo(this.assemblyInformation);
        generator.setFeatureId(this.featureId);
        try {
            return generator.generateP2Info();
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    protected void generateEpilogue() {
        this.script.printProjectEnd();
    }

    protected void generateCustomGatherMacro() {
        ArrayList<String> attributes = new ArrayList<String>(5);
        attributes.add("dir");
        attributes.add("propertyName");
        attributes.add("propertyValue");
        attributes.add("subFolder");
        attributes.add("projectName");
        this.script.printMacroDef("customGather", attributes);
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("@{propertyName}", "@{propertyValue}");
        this.script.printAntTask("build.xml", "@{dir}", "publish.bin.parts", null, null, params);
        params.put("projectLocation", "${basedir}/@{dir}");
        params.put("projectName", "@{projectName}");
        params.put("target.folder", "@{propertyValue}@{subFolder}");
        this.printCustomAssemblyAntCall("gather.bin.parts", params);
        this.script.printEndMacroDef();
        this.script.println();
    }

    protected void generateGatherBinPartsTarget() {
        String featureFullName;
        Path featureLocation;
        BuildTimeFeature feature;
        BuildTimeFeature oldExecutableFeature = null;
        ArrayList<FileSet> binaryFeatures = new ArrayList<FileSet>();
        ArrayList<FileSet> binaryBundles = new ArrayList<FileSet>();
        this.script.printTargetDeclaration("gather.bin.parts", null, null, null, null);
        int i = 0;
        while (i < this.plugins.length) {
            BundleDescription plugin = this.plugins[i];
            Path pluginLocation = new Path(plugin.getLocation());
            if (Utils.isBinary(plugin)) {
                binaryBundles.add(new FileSet(pluginLocation.removeLastSegments(1).toOSString(), null, pluginLocation.lastSegment(), null, null, null, null));
            } else {
                this.printCustomGatherCall(ModelBuildScriptGenerator.getNormalizedName(plugin), Utils.makeRelative((IPath)pluginLocation, (IPath)new Path(workingDirectory)).toOSString(), "destination.temp.folder", Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS), null);
            }
            ++i;
        }
        HashSet<BuildTimeFeature> featureSet = BuildDirector.p2Gathering ? new HashSet<BuildTimeFeature>() : null;
        int i2 = 0;
        while (i2 < this.features.length) {
            feature = this.features[i2];
            featureLocation = new Path(feature.getRootLocation());
            if (feature.isBinary()) {
                binaryFeatures.add(new FileSet(featureLocation.removeLastSegments(1).toOSString(), null, featureLocation.lastSegment(), null, null, null, null));
            } else {
                featureFullName = String.valueOf(feature.getId()) + "_" + feature.getVersion();
                this.printCustomGatherCall(featureFullName, Utils.makeRelative((IPath)featureLocation, (IPath)new Path(workingDirectory)).toOSString(), "feature.base", Utils.getPropertyFormat("eclipse.base"), "/features");
                featureSet.add(feature);
            }
            ++i2;
        }
        Iterator iter = this.rootFileProviders.iterator();
        while (iter.hasNext()) {
            feature = (BuildTimeFeature)((Object)iter.next());
            if (featureSet.contains((Object)feature)) continue;
            if (this.isOldExecutableFeature(feature)) {
                oldExecutableFeature = feature;
                this.script.printAntCallTask("p2.compatibility.gather.executable", true, null);
                continue;
            }
            featureLocation = new Path(feature.getRootLocation());
            featureFullName = String.valueOf(feature.getId()) + "_" + feature.getVersion();
            this.printCustomGatherCall(featureFullName, Utils.makeRelative((IPath)featureLocation, (IPath)new Path(workingDirectory)).toOSString(), "feature.base", Utils.getPropertyFormat("eclipse.base"), "/features");
        }
        String repo = Utils.getPropertyFormat("p2.build.repo");
        URI[] context = this.getContextMetadata();
        this.script.printP2PublishFeaturesAndBundles(repo, repo, binaryBundles.toArray(new FileSet[binaryBundles.size()]), binaryFeatures.toArray(new FileSet[binaryFeatures.size()]), Utils.getPropertyFormat("p2.category.site"), Utils.getPropertyFormat("p2.category.prefix"), Utils.getPropertyFormat("p2.category.definition"), Utils.getPropertyFormat("p2.category.version"), context);
        this.script.printTargetEnd();
        this.script.println();
        if (oldExecutableFeature != null) {
            this.generateCompatibilityGatherExecutable(oldExecutableFeature);
        }
    }

    private boolean isOldExecutableFeature(BuildTimeFeature feature) {
        if (!feature.getId().equals("org.eclipse.equinox.executable")) {
            return false;
        }
        if (feature.isBinary() || !OLD_EXECUTABLE_RANGE.isIncluded(new Version(feature.getVersion()))) {
            return false;
        }
        Properties properties = this.getFeatureBuildProperties(feature);
        return properties != null && Boolean.valueOf((String)properties.get("custom")) != false;
    }

    private void generateCompatibilityGatherExecutable(BuildTimeFeature executableFeature) {
        File overridesFile;
        String featureFullName;
        Path featureLocation;
        block5: {
            featureLocation = new Path(executableFeature.getRootLocation());
            featureFullName = String.valueOf(executableFeature.getId()) + "_" + executableFeature.getVersion();
            File productDir = new File(P2ConfigScriptGenerator.getWorkingDirectory(), "features/org.eclipse.pde.build.container.feature/product");
            productDir.mkdirs();
            overridesFile = new File(productDir, "overrides.properties");
            Properties overrides = Utils.getOldExecutableRootOverrides();
            BufferedOutputStream outputStream = null;
            try {
                try {
                    outputStream = new BufferedOutputStream(new FileOutputStream(overridesFile));
                    overrides.store(outputStream, "Overrides for org.eclipse.equinox.executable");
                }
                catch (IOException iOException) {
                    Utils.close(outputStream);
                    break block5;
                }
            }
            catch (Throwable throwable) {
                Utils.close(outputStream);
                throw throwable;
            }
            Utils.close(outputStream);
        }
        this.script.printTargetDeclaration("p2.compatibility.gather.executable", null, null, null, null);
        this.script.printTab();
        this.script.print("<eclipse.gatherFeature");
        this.script.printAttribute("metadataRepository", Utils.getPropertyFormat("p2.build.repo"), true);
        this.script.printAttribute("artifactRepository", Utils.getPropertyFormat("p2.build.repo"), true);
        this.script.printAttribute("buildResultFolder", executableFeature.getRootLocation(), true);
        this.script.printAttribute("baseDirectory", executableFeature.getRootLocation(), true);
        this.script.printAttribute("overrides", overridesFile.getAbsolutePath(), true);
        this.script.println("/>");
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("projectLocation", "${basedir}/" + Utils.makeRelative((IPath)featureLocation, (IPath)new Path(workingDirectory)).toOSString());
        params.put("feature.base", Utils.getPropertyFormat("eclipse.base"));
        params.put("projectName", featureFullName);
        params.put("target.folder", String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "features");
        this.printCustomAssemblyAntCall("gather.bin.parts", params);
        this.script.printTargetEnd();
        this.script.println();
    }

    public void setVersionsList(boolean versionsList) {
        this.versionsList = versionsList;
    }
}

