/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.ShapeAdvisor;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.ant.TarFileSet;
import org.eclipse.pde.internal.build.ant.ZipFileSet;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.osgi.framework.Bundle;
import org.osgi.framework.Version;

public class AssembleConfigScriptGenerator
extends AbstractScriptGenerator {
    protected String directory;
    protected String featureId;
    protected Config configInfo;
    protected BuildTimeFeature[] features;
    protected BuildTimeFeature[] allFeatures;
    protected BundleDescription[] plugins;
    protected String filename;
    protected Collection rootFileProviders;
    protected String rootFolder = null;
    protected ArrayList addedByPermissions = new ArrayList();
    private static final String PROPERTY_SOURCE = "source";
    private static final String PROPERTY_ELEMENT_NAME = "elementName";
    private static final byte BUNDLE_TYPE = 0;
    private static final byte FEATURE_TYPE = 1;
    protected String PROPERTY_ECLIPSE_PLUGINS = "eclipse.plugins";
    protected String PROPERTY_ECLIPSE_FEATURES = "eclipse.features";
    protected boolean signJars;
    private boolean generateJnlp;
    private String archiveFormat;
    private boolean groupConfigs = false;
    private String product;
    private ProductFile productFile = null;
    protected ShapeAdvisor shapeAdvisor = null;
    private Boolean p2Bundles = null;

    public void initialize(String directoryName, String feature, Config configurationInformation, Collection elementList, Collection featureList, Collection allFeaturesList, Collection rootProviders) throws CoreException {
        this.directory = directoryName;
        this.featureId = feature;
        this.configInfo = configurationInformation;
        this.rootFileProviders = rootProviders != null ? rootProviders : new ArrayList(0);
        this.rootFolder = String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY") + '/' + Utils.getPropertyFormat("collectingFolder");
        this.features = new BuildTimeFeature[featureList.size()];
        featureList.toArray(this.features);
        this.allFeatures = new BuildTimeFeature[allFeaturesList.size()];
        allFeaturesList.toArray(this.allFeatures);
        this.plugins = new BundleDescription[elementList.size()];
        this.plugins = elementList.toArray(this.plugins);
        this.openScript(directoryName, String.valueOf(this.getTargetName()) + ".xml");
        this.shapeAdvisor = new ShapeAdvisor();
        this.shapeAdvisor.setForceUpdateJars(forceUpdateJarFormat);
    }

    protected String computeIconsList() {
        return this.computeIconsList(this.configInfo.getOs());
    }

    protected String computeIconsList(String os) {
        String result = Utils.getPropertyFormat("launcherIcons");
        if (this.getProductFile() == null) {
            return result;
        }
        String[] icons = os != null ? this.productFile.getIcons(os) : this.productFile.getIcons();
        int i = 0;
        while (i < icons.length) {
            File productLocation;
            File icon;
            String location = this.findFile(icons[i], true);
            if (location == null && (icon = new File((productLocation = new File(this.productFile.getLocation())).getParentFile(), icons[i])).exists()) {
                location = Utils.makeRelative((IPath)new Path(icon.getAbsolutePath()), (IPath)new Path(workingDirectory)).toOSString();
            }
            if (location != null) {
                result = String.valueOf(result) + ", " + Utils.getPropertyFormat("basedir") + '/' + location;
            } else {
                result = String.valueOf(result) + ", " + Utils.getPropertyFormat("buildDirectory") + '/' + "plugins" + '/' + icons[i];
                result = String.valueOf(result) + ", " + Utils.getPropertyFormat("buildDirectory") + '/' + "features" + '/' + icons[i];
            }
            ++i;
        }
        return result;
    }

    public void generate() {
        try {
            this.productFile = this.loadProduct(this.product, this.configInfo.getOs());
        }
        catch (CoreException coreException) {}
        this.generatePrologue();
        this.generateMainBegin();
        this.generateInitializationSteps();
        if (BuildDirector.p2Gathering) {
            this.generateP2Assembling();
        } else {
            this.generateGatherCalls();
            this.generateProcessingCalls();
            this.generateBrandingCalls();
            this.generateP2Steps();
        }
        this.generateArchivingCalls();
        this.generateMainEnd();
        this.generateEpilogue();
    }

    protected void generateGatherCalls() {
        this.script.printAntCallTask("gather.bin.parts", true, null);
        if (embeddedSource) {
            this.script.printAntCallTask("gather.sources", true, null);
        }
        this.printCustomAssemblyAntCall("post.gather.bin.parts", null);
        this.script.println();
    }

    protected void generateP2Assembling() {
        if (this.productFile != null) {
            this.script.printAntCallTask("runDirector", true, null);
            this.script.printAntCallTask("mirrorProduct", true, null);
        } else {
            this.script.printAntCallTask("mirrorArchive", true, null);
        }
    }

    protected void generateMirrorProductTask() {
        HashMap<String, String> mirrorArgs = new HashMap<String, String>();
        mirrorArgs.put("p2.mirror.metadata.destination", Utils.getPropertyFormat("p2.metadata.repo"));
        mirrorArgs.put("p2.mirror.artifact.destination", Utils.getPropertyFormat("p2.artifact.repo"));
        this.script.printTargetDeclaration("mirrorProduct", null, "p2.metadata.repo", "skipMirroring", null);
        this.script.printAntCallTask("mirrorArchive", true, mirrorArgs);
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateMirrorTask(boolean assembling) {
        this.script.printTargetDeclaration("mirrorArchive", null, null, "skipMirroring", null);
        this.script.printProperty("p2.append", "true");
        this.script.printProperty("p2.mirror.metadata.destination", "file:" + Utils.getPropertyFormat("eclipse.base"));
        this.script.printProperty("p2.mirror.artifact.destination", "file:" + Utils.getPropertyFormat("eclipse.base"));
        if (this.features.length + this.plugins.length + this.rootFileProviders.size() > 0 || this.productFile != null) {
            this.script.printTab();
            this.script.print("<p2.mirror ");
            this.script.printAttribute(PROPERTY_SOURCE, Utils.getPropertyFormat("p2.build.repo"), true);
            this.script.println(">");
            this.script.printTab();
            this.script.print("\t<destination ");
            this.script.printAttribute("location", Utils.getPropertyFormat("p2.mirror.metadata.destination"), true);
            this.script.printAttribute("name", Utils.getPropertyFormat("p2.metadata.repo.name"), true);
            this.script.printAttribute("compressed", Utils.getPropertyFormat("p2.compress"), true);
            this.script.printAttribute("append", assembling ? Utils.getPropertyFormat("p2.append") : "true", true);
            this.script.printAttribute("kind", "metadata", true);
            this.script.println("/>");
            this.script.printTab();
            this.script.print("\t<destination ");
            this.script.printAttribute("location", Utils.getPropertyFormat("p2.mirror.artifact.destination"), true);
            this.script.printAttribute("name", Utils.getPropertyFormat("p2.artifact.repo.name"), true);
            this.script.printAttribute("compressed", Utils.getPropertyFormat("p2.compress"), true);
            this.script.printAttribute("append", assembling ? Utils.getPropertyFormat("p2.append") : "true", true);
            this.script.printAttribute("kind", "artifact", true);
            this.script.println("/>");
            this.script.printTab();
            int i = 0;
            while (i < this.plugins.length) {
                BundleDescription plugin = this.plugins[i];
                this.script.printTab();
                this.script.print("\t<iu ");
                this.script.printAttribute("id", plugin.getSymbolicName(), true);
                this.script.printAttribute("version", plugin.getVersion().toString(), true);
                this.script.println("/>");
                ++i;
            }
            i = 0;
            while (i < this.features.length) {
                BuildTimeFeature feature = this.features[i];
                this.script.printTab();
                this.script.print("\t<iu");
                this.script.printAttribute("id", this.getFeatureGroupId(feature), true);
                this.script.printAttribute("version", feature.getVersion(), true);
                this.script.println("/>");
                ++i;
            }
            Iterator iterator = this.rootFileProviders.iterator();
            while (iterator.hasNext()) {
                BuildTimeFeature rootProvider = (BuildTimeFeature)((Object)iterator.next());
                if (this.havePDEUIState() && rootProvider.getId().equals("org.eclipse.pde.container.feature")) continue;
                this.script.printTab();
                this.script.print("\t<iu");
                this.script.printAttribute("id", this.getFeatureGroupId(rootProvider), true);
                this.script.printAttribute("version", rootProvider.getVersion(), true);
                this.script.println("/>");
            }
            if (this.productFile != null) {
                this.script.printTab();
                this.script.print("\t<iu");
                this.script.printAttribute("id", this.productFile.getId(), true);
                this.script.printAttribute("version", this.getReplacedProductVersion(), true);
                this.script.println("/>");
            }
            this.script.printTab();
            this.script.println("<iu query=\"property[@name='org.eclipse.equinox.p2.type.category']\" required=\"false\" />");
            this.script.println("</p2.mirror>");
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    protected String getFeatureGroupId(BuildTimeFeature feature) {
        Properties properties;
        if (!feature.isBinary() && (properties = this.getFeatureBuildProperties(feature)).containsKey("p2.group.id")) {
            return properties.getProperty("p2.group.id");
        }
        return String.valueOf(feature.getId()) + ".feature.group";
    }

    protected String getReplacedProductVersion() {
        String productVersion = this.productFile.getVersion();
        if (productVersion.endsWith("qualifier")) {
            Version version = new Version(productVersion);
            StringBuffer buffer = new StringBuffer();
            buffer.append(version.getMajor());
            buffer.append('.');
            buffer.append(version.getMinor());
            buffer.append('.');
            buffer.append(version.getMicro());
            buffer.append('.');
            buffer.append(Utils.getPropertyFormat("p2.product.qualifier"));
            productVersion = buffer.toString();
        }
        return productVersion;
    }

    protected void generateDirectorTarget(boolean assembling) {
        if (assembling) {
            this.script.printTargetDeclaration("runDirector.condition", null, null, null, null);
            this.script.printTab();
            this.script.print("<condition");
            this.script.printAttribute("property", "runDirector.condition", true);
            this.script.printAttribute("value", "true", true);
            this.script.println(">");
            this.script.println("\t<or>");
            this.script.println("\t\t<isset property=\"runPackager\"/>");
            this.script.println("\t\t<isset property=\"skipDirector\"/>");
            this.script.println("\t</or>");
            this.script.printEndTag("condition");
            this.script.printTargetEnd();
        }
        this.script.printTargetDeclaration("runDirector", assembling ? "runDirector.condition" : null, null, assembling ? "runDirector.condition" : "skipDirector", null);
        HashMap<String, String> parameters = new HashMap<String, String>();
        parameters.put("os", Utils.getPropertyFormat("os"));
        parameters.put("ws", Utils.getPropertyFormat("ws"));
        parameters.put("arch", Utils.getPropertyFormat("arch"));
        parameters.put("p2.repo", Utils.getPropertyFormat("p2.build.repo"));
        parameters.put("p2.director.iu", this.productFile != null ? this.productFile.getId() : Utils.getPropertyFormat("p2.root.name"));
        parameters.put("p2.director.version", this.productFile != null ? this.getReplacedProductVersion() : Utils.getPropertyFormat("p2.root.version"));
        parameters.put("p2.director.installPath", Utils.getPropertyFormat("eclipse.base"));
        this.script.printAntTask(Utils.getPropertyFormat("genericTargets"), null, "runDirector", null, "true", parameters);
        this.script.println();
        this.script.printTargetEnd();
        this.script.println();
    }

    private void generateProcessingCalls() {
        this.script.printAntCallTask("jar.processing", true, null);
        this.script.println();
    }

    private void generateArchivingCalls() {
        this.script.printAntCallTask("assemble.archive", true, null);
    }

    protected void generateMainBegin() {
        this.script.printTargetDeclaration("main", null, null, null, null);
    }

    protected void generateMainEnd() {
        this.script.printAntCallTask("cleanup.assembly", true, null);
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateCleanupAssembly(boolean assembling) {
        String condition = assembling && BuildDirector.p2Gathering ? "runPackager" : null;
        this.script.printTargetDeclaration("cleanup.assembly", null, null, condition, null);
        if (!"folder".equalsIgnoreCase(this.archiveFormat)) {
            this.script.printDeleteTask(Utils.getPropertyFormat("assemblyTempDir"), null, null);
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateBrandingCalls() {
        this.script.printBrandTask(this.rootFolder, this.computeIconsList(), Utils.getPropertyFormat("launcherName"), Utils.getPropertyFormat("os"));
    }

    private void generateP2Steps() {
        if (!this.haveP2Bundles()) {
            return;
        }
        if (this.rootFileProviders.size() == 0 && this.features.length == 0 && this.plugins.length == 0) {
            return;
        }
        this.script.printAntCallTask("generate.p2.metadata", true, null);
        this.script.println();
    }

    protected void generateArchivingTarget(boolean assembling) {
        String assemblyCondition;
        boolean condition;
        boolean bl = condition = assembling && BuildDirector.p2Gathering;
        if (condition) {
            this.script.printTargetDeclaration("assemble.archive.condition", null, null, null, null);
            this.script.printTab();
            this.script.print("<condition");
            this.script.printAttribute("property", "assemble.archive.condition", true);
            this.script.printAttribute("value", "true", true);
            this.script.println(">");
            this.script.println("\t<or>");
            this.script.println("\t\t<isset property=\"runPackager\"/>");
            if (this.productFile != null) {
                this.script.println("\t\t<isset property=\"skipDirector\"/>");
            } else {
                this.script.println("\t\t<isset property=\"skipMirroring\"/>");
            }
            this.script.println("\t</or>");
            this.script.printEndTag("condition");
            this.script.printTargetEnd();
        }
        String string = assemblyCondition = BuildDirector.p2Gathering ? "assemble.archive.condition" : null;
        String packageCondition = BuildDirector.p2Gathering ? (this.productFile != null ? "skipDirector" : "skipMirroring") : null;
        this.script.printTargetDeclaration("assemble.archive", condition ? "assemble.archive.condition" : null, null, assembling ? assemblyCondition : packageCondition, null);
        HashMap<String, String> properties = new HashMap<String, String>();
        properties.put("rootFolder", this.rootFolder);
        this.printCustomAssemblyAntCall("pre.archive", properties);
        if ("folder".equalsIgnoreCase(this.archiveFormat)) {
            this.generateMoveRootFiles();
        } else if ("zip".equalsIgnoreCase(this.archiveFormat)) {
            this.generateZipTarget();
        } else if ("antZip".equalsIgnoreCase(this.archiveFormat)) {
            this.generateAntZipTarget();
        } else if ("antTar".equalsIgnoreCase(this.archiveFormat)) {
            this.generateAntTarTarget();
        } else if ("tar".equalsIgnoreCase(this.archiveFormat)) {
            this.generateTarGZTasks(true);
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    private void generateMoveRootFiles() {
        if (this.rootFileProviders.size() == 0 || BuildDirector.p2Gathering) {
            return;
        }
        Iterator iter = this.rootFileProviders.iterator();
        while (iter.hasNext()) {
            Object object = iter.next();
            if (!(object instanceof BuildTimeFeature)) continue;
            Properties featureProperties = this.getFeatureBuildProperties((BuildTimeFeature)((Object)object));
            Utils.generatePermissions(featureProperties, this.configInfo, "eclipse.base", this.script);
        }
        if (Platform.getOS().equals("win32")) {
            FileSet[] rootFiles = new FileSet[]{new FileSet(this.rootFolder, null, "**/**", null, null, null, null)};
            this.script.printMoveTask(Utils.getPropertyFormat("eclipse.base"), rootFiles, false);
            this.script.printDeleteTask(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY"), null, null);
        } else {
            ArrayList<String> params = new ArrayList<String>(3);
            params.add("-R");
            params.add(".");
            params.add(String.valueOf('\'') + Utils.getPropertyFormat("eclipse.base") + '\'');
            String rootFileFolder = String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY");
            this.script.printExecTask("cp", String.valueOf(rootFileFolder) + '/' + Utils.getPropertyFormat("collectingFolder"), params, null);
            this.script.printDeleteTask(rootFileFolder, null, null);
        }
    }

    protected Properties getFeatureBuildProperties(BuildTimeFeature feature) {
        if (feature.isBinary()) {
            return null;
        }
        try {
            return AbstractScriptGenerator.readProperties(new Path(feature.getRootLocation()).toOSString(), "build.properties", 0);
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    protected void generateGatherSourceTarget() {
        String placeToGather;
        this.script.printTargetDeclaration("gather.sources", null, null, null, null);
        HashMap<String, String> properties = new HashMap<String, String>(1);
        properties.put("destination.temp.folder", Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS));
        int i = 0;
        while (i < this.plugins.length) {
            BundleDescription plugin = this.plugins[i];
            placeToGather = this.getLocation(plugin);
            this.script.printAntTask("build.xml", Utils.makeRelative((IPath)new Path(placeToGather), (IPath)new Path(workingDirectory)).toOSString(), "gather.sources", null, null, properties);
            Properties bundleProperties = (Properties)plugin.getUserObject();
            if (bundleProperties.get("withDot") == Boolean.TRUE) {
                String targetLocation = String.valueOf(Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS)) + '/' + ModelBuildScriptGenerator.getNormalizedName(plugin);
                String targetLocationSrc = String.valueOf(targetLocation) + "/src";
                this.script.println("<unzip dest=\"" + AntScript.getEscaped(targetLocationSrc) + "\">");
                this.script.println("\t<fileset dir=\"" + AntScript.getEscaped(targetLocation) + "\" includes=\"**/*src.zip\" casesensitive=\"false\"/>");
                this.script.println("</unzip>");
                this.script.printDeleteTask(null, null, new FileSet[]{new FileSet(targetLocation, null, "**/*src.zip", null, null, null, "false")});
            }
            ++i;
        }
        properties = new HashMap(1);
        properties.put("feature.base", Utils.getPropertyFormat("eclipse.base"));
        i = 0;
        while (i < this.features.length) {
            BuildTimeFeature feature = this.features[i];
            placeToGather = feature.getRootLocation();
            this.script.printAntTask("build.xml", Utils.makeRelative((IPath)new Path(placeToGather), (IPath)new Path(workingDirectory)).toOSString(), "gather.sources", null, null, properties);
            ++i;
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generatePackagingTargets() {
        String fileName = String.valueOf(Utils.getPropertyFormat(PROPERTY_SOURCE)) + '/' + Utils.getPropertyFormat(PROPERTY_ELEMENT_NAME);
        String fileExists = String.valueOf(Utils.getPropertyFormat(PROPERTY_SOURCE)) + '/' + Utils.getPropertyFormat(PROPERTY_ELEMENT_NAME) + "_exists";
        this.script.printComment("Beginning of the jarUp task");
        this.script.printTargetDeclaration("jarUp", null, null, null, Messages.assemble_jarUp);
        this.script.printAvailableTask(fileExists, fileName);
        HashMap<String, String> params = new HashMap<String, String>(2);
        params.put(PROPERTY_SOURCE, Utils.getPropertyFormat(PROPERTY_SOURCE));
        params.put(PROPERTY_ELEMENT_NAME, Utils.getPropertyFormat(PROPERTY_ELEMENT_NAME));
        this.script.printAvailableTask("jaringManifest", String.valueOf(fileName) + '/' + "META-INF/MANIFEST.MF");
        this.script.printConditionIsSet("jaringTask", "jarIng", "jaringManifest", "jarIng_NoManifest");
        this.script.printAntCallTask(Utils.getPropertyFormat("jaringTask"), true, params);
        this.script.printTargetEnd();
        this.script.println();
        this.script.printTargetDeclaration("jarIng", null, fileExists, null, null);
        this.script.printJarTask(String.valueOf(fileName) + ".jar", fileName, String.valueOf(fileName) + '/' + "META-INF/MANIFEST.MF", "skip");
        this.script.printDeleteTask(fileName, null, null);
        this.script.printTargetEnd();
        this.script.println();
        this.script.printTargetDeclaration("jarIng_NoManifest", null, fileExists, null, null);
        this.script.printJarTask(String.valueOf(fileName) + ".jar", fileName, null, "merge");
        this.script.printDeleteTask(fileName, null, null);
        this.script.printTargetEnd();
        this.script.printComment("End of the jarUp task");
        this.script.println();
        this.script.printComment("Beginning of the jar signing  target");
        this.script.printTargetDeclaration("jarSigning", null, null, null, Messages.sign_Jar);
        this.printCustomAssemblyAntCall("pre.jarSigning", null);
        if (this.generateJnlp) {
            this.script.printProperty("jarProcessor.unsign", "true");
        }
        this.script.println("<eclipse.jarProcessor sign=\"" + Utils.getPropertyFormat("jarProcessor.sign") + "\" pack=\"" + Utils.getPropertyFormat("jarProcessor.pack200") + "\" unsign=\"" + Utils.getPropertyFormat("jarProcessor.unsign") + "\" jar=\"" + fileName + ".jar" + "\" alias=\"" + Utils.getPropertyFormat("sign.alias") + "\" keystore=\"" + Utils.getPropertyFormat("sign.keystore") + "\" storepass=\"" + Utils.getPropertyFormat("sign.storepass") + "\" keypass=\"" + Utils.getPropertyFormat("sign.keypass") + "\"/>");
        this.script.printTargetEnd();
        this.script.printComment("End of the jarUp task");
        this.script.println();
    }

    protected void generateGZipTarget(boolean assembling) {
        this.script.printTargetDeclaration("gzipResults", null, null, assembling ? "runPackager" : null, null);
        this.script.println("<move file=\"" + Utils.getPropertyFormat("archiveFullPath") + "\" tofile=\"" + Utils.getPropertyFormat("assemblyTempDir") + '/' + Utils.getPropertyFormat("collectingFolder") + "/tmp.tar\"/>");
        this.script.printGZip(String.valueOf(Utils.getPropertyFormat("assemblyTempDir")) + '/' + Utils.getPropertyFormat("collectingFolder") + "/tmp.tar", Utils.getPropertyFormat("archiveFullPath"));
        this.script.printTargetEnd();
    }

    protected void generatePrologue() {
        this.script.printProjectDeclaration("Assemble " + this.featureId, "main", null);
        this.script.printProperty("archiveName", this.computeArchiveName());
        this.script.printProperty("os", this.configInfo.getOs());
        this.script.printProperty("ws", this.configInfo.getWs());
        this.script.printProperty("arch", this.configInfo.getArch());
        this.script.printProperty("jarProcessor.sign", (this.signJars ? Boolean.TRUE : Boolean.FALSE).toString());
        this.script.printProperty("assemblyTempDir", String.valueOf(Utils.getPropertyFormat("buildDirectory")) + "/tmp");
        this.script.printProperty("eclipse.base", String.valueOf(Utils.getPropertyFormat("assemblyTempDir")) + '/' + Utils.getPropertyFormat("collectingFolder"));
        this.script.printProperty(this.PROPERTY_ECLIPSE_PLUGINS, String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "plugins");
        this.script.printProperty(this.PROPERTY_ECLIPSE_FEATURES, String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "features");
        this.script.printProperty("archiveFullPath", String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + Utils.getPropertyFormat("buildLabel") + '/' + Utils.getPropertyFormat("archiveName"));
        this.printLauncherJarProperty();
        this.script.printProperty("p2.build.repo", "file:" + Utils.getPropertyFormat("buildDirectory") + "/buildRepo");
        this.script.printProperty("genericTargets", String.valueOf(Utils.getPropertyFormat("eclipse.pdebuild.scripts")) + '/' + "/genericTargets.xml");
        this.script.printAvailableTask("customAssembly", "${builder}/customAssembly.xml", "${builder}/customAssembly.xml");
        if (this.productQualifier != null) {
            this.script.printProperty("p2.product.qualifier", this.productQualifier);
        }
        if (this.productFile != null && this.productFile.getLauncherName() != null) {
            this.script.printProperty("launcherName", this.productFile.getLauncherName());
        }
        this.script.printProperty("tarargs", "");
        this.script.println();
        this.generateCustomGatherMacro();
        this.generatePackagingTargets();
    }

    protected void printLauncherJarProperty() {
        Bundle launcherBundle = Platform.getBundle((String)"org.eclipse.equinox.launcher");
        try {
            File bundleFile = FileLocator.getBundleFile((Bundle)launcherBundle);
            this.script.printProperty("equinoxLauncherJar", bundleFile.getAbsolutePath());
        }
        catch (IOException iOException) {}
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
        this.script.printAntTask("build.xml", "@{dir}", "gather.bin.parts", null, null, params);
        params.put("projectLocation", "${basedir}/@{dir}");
        params.put("projectName", "@{projectName}");
        params.put("target.folder", "@{propertyValue}@{subFolder}");
        this.printCustomAssemblyAntCall("gather.bin.parts", params);
        this.script.printEndMacroDef();
        this.script.println();
    }

    protected void printCustomGatherCall(String fullName, String dir, String propertyName, String propertyValue, String subFolder) {
        this.script.println("<customGather dir=\"" + dir + "\" projectName=\"" + fullName + "\" propertyName=\"" + propertyName + "\" propertyValue=\"" + propertyValue + "\" subFolder=\"" + (subFolder != null ? subFolder : "") + "\" />");
    }

    private void generateInitializationSteps() {
        if (BundleHelper.getDefault().isDebugging()) {
            this.script.printEchoTask("basedir : " + Utils.getPropertyFormat("basedir"));
            this.script.printEchoTask("assemblyTempDir : " + Utils.getPropertyFormat("assemblyTempDir"));
            this.script.printEchoTask("eclipse.base : " + Utils.getPropertyFormat("eclipse.base"));
            this.script.printEchoTask("collectingFolder : " + Utils.getPropertyFormat("collectingFolder"));
            this.script.printEchoTask("archivePrefix : " + Utils.getPropertyFormat("archivePrefix"));
        }
        this.script.println("<condition property=\"pluginArchivePrefix\" value=\"plugins\">");
        this.script.println("\t<equals arg1=\"" + Utils.getPropertyFormat("archivePrefix") + "\"  arg2=\"\" trim=\"true\"/>");
        this.script.println("</condition>");
        this.script.printProperty("pluginArchivePrefix", String.valueOf(Utils.getPropertyFormat("archivePrefix")) + '/' + "plugins");
        this.script.println();
        this.script.println("<condition property=\"featureArchivePrefix\" value=\"features\">");
        this.script.println("\t<equals arg1=\"" + Utils.getPropertyFormat("archivePrefix") + "\"  arg2=\"\" trim=\"true\"/>");
        this.script.println("</condition>");
        this.script.printProperty("featureArchivePrefix", String.valueOf(Utils.getPropertyFormat("archivePrefix")) + '/' + "features");
        this.script.println();
        this.script.printDirName("archiveParentFolder", Utils.getPropertyFormat("archiveFullPath"));
        this.script.printMkdirTask(Utils.getPropertyFormat("archiveParentFolder"));
        this.script.printMkdirTask(Utils.getPropertyFormat("assemblyTempDir"));
        this.script.printMkdirTask(Utils.getPropertyFormat("buildLabel"));
        this.script.println();
    }

    protected void generatePostProcessingTarget() {
        this.script.printTargetDeclaration("jar.processing", null, null, null, null);
        int i = 0;
        while (i < this.plugins.length) {
            BundleDescription plugin = this.plugins[i];
            this.generatePostProcessingSteps(plugin.getSymbolicName(), plugin.getVersion().toString(), (String)this.shapeAdvisor.getFinalShape(plugin)[1], (byte)0);
            ++i;
        }
        i = 0;
        while (i < this.features.length) {
            BuildTimeFeature feature = this.features[i];
            this.generatePostProcessingSteps(feature.getId(), feature.getVersion(), (String)this.shapeAdvisor.getFinalShape(feature)[1], (byte)1);
            ++i;
        }
        this.printCustomAssemblyAntCall("post.jarUp", null);
        this.script.printTargetEnd();
        this.script.println();
    }

    protected void generateGatherBinPartsTarget() {
        String featureFullName;
        String placeToGather;
        BuildTimeFeature feature;
        this.script.printTargetDeclaration("gather.bin.parts", null, null, null, null);
        int i = 0;
        while (i < this.plugins.length) {
            BundleDescription plugin = this.plugins[i];
            String placeToGather2 = this.getLocation(plugin);
            this.printCustomGatherCall(ModelBuildScriptGenerator.getNormalizedName(plugin), Utils.makeRelative((IPath)new Path(placeToGather2), (IPath)new Path(workingDirectory)).toOSString(), "destination.temp.folder", Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS), null);
            ++i;
        }
        HashSet<BuildTimeFeature> featureSet = new HashSet<BuildTimeFeature>();
        int i2 = 0;
        while (i2 < this.features.length) {
            feature = this.features[i2];
            placeToGather = feature.getRootLocation();
            featureFullName = String.valueOf(feature.getId()) + "_" + feature.getVersion();
            this.printCustomGatherCall(featureFullName, Utils.makeRelative((IPath)new Path(placeToGather), (IPath)new Path(workingDirectory)).toOSString(), "feature.base", Utils.getPropertyFormat("eclipse.base"), "/features");
            featureSet.add(feature);
            ++i2;
        }
        Iterator iter = this.rootFileProviders.iterator();
        while (iter.hasNext()) {
            feature = (BuildTimeFeature)((Object)iter.next());
            if (featureSet.contains((Object)feature)) continue;
            placeToGather = feature.getRootLocation();
            featureFullName = String.valueOf(feature.getId()) + "_" + feature.getVersion();
            this.printCustomGatherCall(featureFullName, Utils.makeRelative((IPath)new Path(placeToGather), (IPath)new Path(workingDirectory)).toOSString(), "feature.base", Utils.getPropertyFormat("eclipse.base"), "/features");
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    private void generateSignJarCall(String name, String version, byte type) {
        if (!this.signJars) {
            return;
        }
        HashMap<String, String> properties = new HashMap<String, String>(2);
        properties.put(PROPERTY_SOURCE, type == 0 ? Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS) : Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_FEATURES));
        properties.put(PROPERTY_ELEMENT_NAME, String.valueOf(name) + '_' + version);
        this.script.printAntCallTask("jarSigning", true, properties);
    }

    private void generatePostProcessingSteps(String name, String version, String style, byte type) {
        if ("folder".equalsIgnoreCase(style)) {
            return;
        }
        if ("file".equalsIgnoreCase(style)) {
            this.generateJarUpCall(name, version, type);
            this.generateSignJarCall(name, version, type);
            this.generateJNLPCall(name, version, type);
            return;
        }
    }

    private void generateJNLPCall(String name, String version, byte type) {
        if (!this.generateJnlp) {
            return;
        }
        if (type != 1) {
            return;
        }
        String dir = type == 0 ? Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS) : Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_FEATURES);
        String location = String.valueOf(dir) + '/' + name + '_' + version + ".jar";
        this.script.println("<eclipse.jnlpGenerator feature=\"" + AntScript.getEscaped(location) + "\"  codebase=\"" + Utils.getPropertyFormat("jnlp.codebase") + "\" j2se=\"" + Utils.getPropertyFormat("jnlp.j2se") + "\" locale=\"" + Utils.getPropertyFormat("jnlp.locale") + "\" generateOfflineAllowed=\"" + Utils.getPropertyFormat("jnlp.generateOfflineAllowed") + "\" configInfo=\"" + Utils.getPropertyFormat("jnlp.configs") + "\"/>");
    }

    private void generateJarUpCall(String name, String version, byte type) {
        HashMap<String, String> properties = new HashMap<String, String>(2);
        properties.put(PROPERTY_SOURCE, type == 0 ? Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS) : Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_FEATURES));
        properties.put(PROPERTY_ELEMENT_NAME, String.valueOf(name) + '_' + version);
        this.script.printAntCallTask("jarUp", true, properties);
    }

    private void generateEpilogue() {
        this.generateGatherBinPartsTarget();
        if (embeddedSource) {
            this.generateGatherSourceTarget();
        }
        this.generatePostProcessingTarget();
        this.generateArchivingTarget(true);
        this.generateCleanupAssembly(true);
        if ("tar".equalsIgnoreCase(this.archiveFormat)) {
            this.generateGZipTarget(true);
        }
        this.generateCustomAssemblyTarget();
        this.generateMetadataTarget();
        this.generateDirectorTarget(true);
        if (BuildDirector.p2Gathering) {
            this.generateMirrorTask(true);
            this.generateMirrorProductTask();
        }
        this.script.printProjectEnd();
        this.script.close();
        this.script = null;
    }

    public String getTargetName() {
        String config = this.getTargetConfig();
        return "assemble." + this.getTargetElement() + (config.length() > 0 ? "." : "") + config;
    }

    public String getTargetConfig() {
        return this.configInfo.equals(Config.genericConfig()) ? "" : this.configInfo.toStringReplacingAny(".", "ANY");
    }

    public String getTargetElement() {
        return this.featureId.equals("") ? "" : this.featureId;
    }

    protected void printCustomAssemblyAntCall(String customTarget, Map properties) {
        HashMap<String, String> params = properties != null ? new HashMap<String, String>(properties) : new HashMap(1);
        params.put("customTarget", customTarget);
        this.script.printAntCallTask("customAssembly", true, params);
    }

    protected void generateCustomAssemblyTarget() {
        this.script.printTargetDeclaration("customAssembly", null, "customAssembly", null, null);
        this.script.printAntTask(Utils.getPropertyFormat("customAssembly"), null, Utils.getPropertyFormat("customTarget"), null, "true", null);
        this.script.printTargetEnd();
        this.script.println();
    }

    private void generateMetadataTarget() {
        if (this.haveP2Bundles()) {
            this.script.printTargetDeclaration("generate.p2.metadata", null, "generate.p2.metadata", null, null);
            this.script.printProperty("p2.append", "true");
            this.script.printProperty("p2.compress", "false");
            this.script.printProperty("p2.metadata.repo.name", "");
            this.script.printProperty("p2.artifact.repo.name", "");
            if (this.havePDEUIState()) {
                this.printP2GenerationModeCondition();
            }
            if (!BuildDirector.p2Gathering) {
                this.script.printTab();
                this.script.print("<p2.generator ");
                this.script.printAttribute(PROPERTY_SOURCE, Utils.getPropertyFormat("eclipse.base"), true);
                this.script.printAttribute("append", Utils.getPropertyFormat("p2.append"), true);
                this.script.printAttribute("flavor", Utils.getPropertyFormat("p2.flavor"), true);
                this.script.printAttribute("compress", Utils.getPropertyFormat("p2.compress"), true);
                this.script.printAttribute("metadataRepository", Utils.getPropertyFormat("p2.metadata.repo"), true);
                this.script.printAttribute("artifactRepository", Utils.getPropertyFormat("p2.artifact.repo"), true);
                this.script.printAttribute("metadataRepositoryName", Utils.getPropertyFormat("p2.metadata.repo.name"), true);
                this.script.printAttribute("artifactRepositoryName", Utils.getPropertyFormat("p2.artifact.repo.name"), true);
                this.script.printAttribute("publishArtifacts", Utils.getPropertyFormat("p2.publish.artifacts"), true);
                this.script.printAttribute("site", Utils.getPropertyFormat("p2.category.site"), true);
                this.script.printAttribute("siteVersion", Utils.getPropertyFormat("p2.category.version"), true);
                this.script.printAttribute("p2OS", this.configInfo.getOs(), true);
                if (!this.havePDEUIState() || this.rootFileProviders.size() > 0) {
                    this.script.printAttribute("mode", "incremental", true);
                } else {
                    this.script.printAttribute("mode", Utils.getPropertyFormat("p2.generation.mode"), true);
                }
                this.script.println("/>");
            }
            if (this.rootFileProviders.size() > 0) {
                if (this.productFile != null) {
                    this.script.println();
                    File modFile = new File(this.productFile.getLocation());
                    String modLocation = String.valueOf(Utils.getPropertyFormat("buildDirectory")) + '/' + "features" + '/' + "org.eclipse.pde.build.container.feature" + "/product/" + modFile.getName();
                    this.script.printAvailableTask("p2.generation.product.mod", modLocation, modLocation);
                    this.script.printProperty("p2.generation.product.mod", this.productFile.getLocation());
                }
                this.script.printTab();
                this.script.print("<p2.generator ");
                this.script.printAttribute("config", this.rootFolder, true);
                this.script.printAttribute("append", Utils.getPropertyFormat("p2.append"), true);
                this.script.printAttribute("flavor", Utils.getPropertyFormat("p2.flavor"), true);
                this.script.printAttribute("compress", Utils.getPropertyFormat("p2.compress"), true);
                this.script.printAttribute("metadataRepository", Utils.getPropertyFormat("p2.metadata.repo"), true);
                this.script.printAttribute("artifactRepository", Utils.getPropertyFormat("p2.artifact.repo"), true);
                this.script.printAttribute("metadataRepositoryName", Utils.getPropertyFormat("p2.metadata.repo.name"), true);
                this.script.printAttribute("artifactRepositoryName", Utils.getPropertyFormat("p2.artifact.repo.name"), true);
                this.script.printAttribute("launcherConfig", this.configInfo.toString(), true);
                this.script.printAttribute("p2OS", this.configInfo.getOs(), true);
                this.script.printAttribute("publishArtifacts", Utils.getPropertyFormat("p2.publish.artifacts"), true);
                if (!this.havePDEUIState()) {
                    this.script.printAttribute("mode", "incremental", true);
                } else {
                    this.script.printAttribute("mode", Utils.getPropertyFormat("p2.generation.mode"), true);
                }
                if (this.productFile != null) {
                    this.script.printAttribute("exe", String.valueOf(this.rootFolder) + '/' + Utils.getPropertyFormat("launcherName"), true);
                    this.script.printAttribute("productFile", Utils.getPropertyFormat("p2.generation.product.mod"), true);
                } else {
                    this.script.printAttribute("root", Utils.getPropertyFormat("p2.root.name"), true);
                    this.script.printAttribute("rootVersion", Utils.getPropertyFormat("p2.root.version"), true);
                }
                this.script.println("/>");
            }
            this.script.printTargetEnd();
            this.script.println();
        }
    }

    protected void printP2GenerationModeCondition() {
        this.script.print("<condition");
        this.script.printAttribute("property", "p2.generation.mode", true);
        this.script.printAttribute("value", "final", true);
        this.script.printAttribute("else", "incremental", false);
        this.script.println(">");
        this.script.println("\t<and>");
        this.script.println("\t\t<not>");
        this.script.println("\t\t\t<isset property=\"runPackager\"/>");
        this.script.println("\t\t</not>");
        this.script.println("\t\t<isset property=\"p2.final.mode.override\"/>");
        this.script.println("\t</and>");
        this.script.printEndTag("condition");
    }

    public boolean haveP2Bundles() {
        if (this.p2Bundles != null) {
            return this.p2Bundles;
        }
        this.p2Bundles = AssembleConfigScriptGenerator.loadP2Class();
        return this.p2Bundles;
    }

    private void generateZipTarget() {
        ArrayList<String> parameters = new ArrayList<String>(16);
        if (BuildDirector.p2Gathering) {
            parameters.add(Utils.getPropertyFormat("archivePrefix"));
            this.createZipExecCommand(parameters);
            return;
        }
        int i = 0;
        while (i < this.plugins.length) {
            parameters.add(String.valueOf(Utils.getPropertyFormat("pluginArchivePrefix")) + '/' + (String)this.shapeAdvisor.getFinalShape(this.plugins[i])[0]);
            if (i % 15 == 0) {
                this.createZipExecCommand(parameters);
                parameters.clear();
            }
            ++i;
        }
        if (!parameters.isEmpty()) {
            this.createZipExecCommand(parameters);
            parameters.clear();
        }
        if (!parameters.isEmpty()) {
            this.createZipExecCommand(parameters);
            parameters.clear();
        }
        i = 0;
        while (i < this.features.length) {
            parameters.add(String.valueOf(Utils.getPropertyFormat("featureArchivePrefix")) + '/' + (String)this.shapeAdvisor.getFinalShape(this.features[i])[0]);
            if (i % 15 == 0) {
                this.createZipExecCommand(parameters);
                parameters.clear();
            }
            ++i;
        }
        if (!parameters.isEmpty()) {
            this.createZipExecCommand(parameters);
            parameters.clear();
        }
        this.createZipRootFileCommand();
    }

    private void createZipRootFileCommand() {
        if (this.rootFileProviders.size() == 0) {
            return;
        }
        ArrayList<String> parameters = new ArrayList<String>(1);
        parameters.add("-r -q ${zipargs} '" + Utils.getPropertyFormat("archiveFullPath") + "' . ");
        this.script.printExecTask("zip", String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY"), parameters, null);
    }

    private void createZipExecCommand(List parameters) {
        parameters.add(0, "-r -q " + Utils.getPropertyFormat("zipargs") + " '" + Utils.getPropertyFormat("archiveFullPath") + '\'');
        this.script.printExecTask("zip", Utils.getPropertyFormat("assemblyTempDir"), parameters, null);
    }

    protected String computeArchiveName() {
        String extension = "tar".equalsIgnoreCase(this.archiveFormat) || "antTar".equalsIgnoreCase(this.archiveFormat) ? ".tar.gz" : ".zip";
        return String.valueOf(this.featureId) + "-" + Utils.getPropertyFormat("buildId") + (this.configInfo.equals(Config.genericConfig()) ? "" : "-" + this.configInfo.toStringReplacingAny(".", "ANY")) + extension;
    }

    public void generateTarGZTasks(boolean assembling) {
        ArrayList<String> parameters = new ArrayList<String>(2);
        if (this.rootFileProviders.size() > 0) {
            parameters.add("-r '" + Utils.getPropertyFormat("assemblyTempDir") + '/' + Utils.getPropertyFormat("collectingFolder") + '/' + this.configInfo.toStringReplacingAny(".", "ANY") + '/' + Utils.getPropertyFormat("collectingFolder") + "' '" + Utils.getPropertyFormat("assemblyTempDir") + '\'');
            this.script.printExecTask("cp", Utils.getPropertyFormat("basedir"), parameters, null);
            parameters.clear();
            parameters.add("-rf '" + Utils.getPropertyFormat("assemblyTempDir") + '/' + Utils.getPropertyFormat("collectingFolder") + '/' + this.configInfo.toStringReplacingAny(".", "ANY") + '\'');
            this.script.printExecTask("rm", Utils.getPropertyFormat("basedir"), parameters, null);
        }
        parameters.clear();
        String tarArgs = assembling ? "-cvf '" : "-rvf '";
        parameters.add(String.valueOf(Utils.getPropertyFormat("tarargs")) + tarArgs + Utils.getPropertyFormat("archiveFullPath") + "' " + (BuildDirector.p2Gathering && this.productFile == null ? "." : Utils.getPropertyFormat("archivePrefix")) + ' ');
        String folder = BuildDirector.p2Gathering && this.productFile == null ? Utils.getPropertyFormat("eclipse.base") : Utils.getPropertyFormat("assemblyTempDir");
        this.script.printExecTask("tar", folder, parameters, null);
        this.script.printAntCallTask("gzipResults", true, null);
        ArrayList<String> args = new ArrayList<String>(2);
        args.add("-rf");
        args.add(String.valueOf('\'') + Utils.getPropertyFormat("assemblyTempDir") + '\'');
        this.script.printExecTask("rm", null, args, null);
    }

    protected void generateAntZipTarget() {
        FileSet[] permissions;
        ArrayList<FileSet> fileSets = new ArrayList<FileSet>();
        if (BuildDirector.p2Gathering) {
            permissions = this.generatePermissions(Utils.getPropertyFormat("eclipse.base"), true);
            String toExcludeFromArchive = Utils.getStringFromCollection(this.addedByPermissions, ",");
            fileSets.add(new ZipFileSet(Utils.getPropertyFormat("eclipse.base"), false, null, "**/**", null, toExcludeFromArchive, null, this.productFile != null ? Utils.getPropertyFormat("archivePrefix") : null, null, null));
            fileSets.addAll(Arrays.asList(permissions));
        } else {
            Object[] shape;
            int i = 0;
            while (i < this.plugins.length) {
                shape = this.shapeAdvisor.getFinalShape(this.plugins[i]);
                fileSets.add(new ZipFileSet(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "plugins" + '/' + (String)shape[0], shape[1] == "file", null, null, null, null, null, String.valueOf(Utils.getPropertyFormat("pluginArchivePrefix")) + '/' + (String)shape[0], null, null));
                ++i;
            }
            i = 0;
            while (i < this.features.length) {
                shape = this.shapeAdvisor.getFinalShape(this.features[i]);
                fileSets.add(new ZipFileSet(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "features" + '/' + (String)shape[0], shape[1] == "file", null, null, null, null, null, String.valueOf(Utils.getPropertyFormat("featureArchivePrefix")) + '/' + (String)shape[0], null, null));
                ++i;
            }
            if (this.rootFileProviders.size() > 0) {
                if (this.groupConfigs) {
                    List allConfigs = AssembleConfigScriptGenerator.getConfigInfos();
                    Iterator iter = allConfigs.iterator();
                    while (iter.hasNext()) {
                        Config elt = (Config)iter.next();
                        fileSets.add(new ZipFileSet(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + elt.toStringReplacingAny(".", "ANY"), false, null, "**/**", null, null, null, elt.toStringReplacingAny(".", "ANY"), null, null));
                    }
                } else {
                    permissions = this.generatePermissions(this.rootFolder, true);
                    String toExcludeFromArchive = Utils.getStringFromCollection(this.addedByPermissions, ",");
                    fileSets.add(new ZipFileSet(this.rootFolder, false, null, "**/**", null, toExcludeFromArchive, null, Utils.getPropertyFormat("archivePrefix"), null, null));
                    fileSets.addAll(Arrays.asList(permissions));
                }
            }
        }
        if (fileSets.size() > 0) {
            FileSet[] sets = fileSets.toArray(new FileSet[fileSets.size()]);
            this.script.printZipTask(Utils.getPropertyFormat("archiveFullPath"), null, false, true, sets);
        }
    }

    protected Collection getArchiveRootFileProviders() {
        return this.rootFileProviders != null ? this.rootFileProviders : Collections.EMPTY_LIST;
    }

    protected FileSet[] generatePermissions(String root, boolean zip) {
        String configInfix = this.configInfo.toString(".");
        String prefixPermissions = "root." + configInfix + '.' + "permissions" + '.';
        String commonPermissions = "root.permissions.";
        ArrayList<ZipFileSet> fileSets = new ArrayList<ZipFileSet>();
        Iterator iter = this.getArchiveRootFileProviders().iterator();
        while (iter.hasNext()) {
            Properties featureProperties = this.getFeatureBuildProperties((BuildTimeFeature)((Object)iter.next()));
            Iterator iter2 = featureProperties.entrySet().iterator();
            while (iter2.hasNext()) {
                Map.Entry permission = iter2.next();
                String instruction = (String)permission.getKey();
                String parameters = (String)permission.getValue();
                String[] values = Utils.getArrayFromString(parameters);
                int i = 0;
                while (i < values.length) {
                    boolean isFile;
                    boolean bl = isFile = !values[i].endsWith("/");
                    if (instruction.startsWith(prefixPermissions)) {
                        this.addedByPermissions.add(values[i]);
                        if (zip) {
                            fileSets.add(new ZipFileSet(String.valueOf(root) + (isFile ? String.valueOf('/') + values[i] : ""), isFile, null, isFile ? null : String.valueOf(values[i]) + "/**", null, null, null, String.valueOf(Utils.getPropertyFormat("archivePrefix")) + (isFile ? String.valueOf('/') + values[i] : ""), null, instruction.substring(prefixPermissions.length())));
                        } else {
                            fileSets.add(new TarFileSet(String.valueOf(root) + (isFile ? String.valueOf('/') + values[i] : ""), isFile, null, isFile ? null : String.valueOf(values[i]) + "/**", null, null, null, String.valueOf(Utils.getPropertyFormat("archivePrefix")) + (isFile ? String.valueOf('/') + values[i] : ""), null, instruction.substring(prefixPermissions.length())));
                        }
                    } else if (instruction.startsWith(commonPermissions)) {
                        this.addedByPermissions.add(values[i]);
                        if (zip) {
                            fileSets.add(new ZipFileSet(String.valueOf(root) + (isFile ? String.valueOf('/') + values[i] : ""), isFile, null, isFile ? null : String.valueOf(values[i]) + "/**", null, null, null, String.valueOf(Utils.getPropertyFormat("archivePrefix")) + (isFile ? String.valueOf('/') + values[i] : ""), null, instruction.substring(commonPermissions.length())));
                        } else {
                            fileSets.add(new TarFileSet(String.valueOf(root) + (isFile ? String.valueOf('/') + values[i] : ""), isFile, null, isFile ? null : String.valueOf(values[i]) + "/**", null, null, null, String.valueOf(Utils.getPropertyFormat("archivePrefix")) + (isFile ? String.valueOf('/') + values[i] : ""), null, instruction.substring(commonPermissions.length())));
                        }
                    }
                    ++i;
                }
            }
        }
        return fileSets.toArray(new FileSet[fileSets.size()]);
    }

    private void generateAntTarTarget() {
        ArrayList<Object> fileSets = new ArrayList<Object>();
        if (BuildDirector.p2Gathering) {
            FileSet[] permissions = this.generatePermissions(Utils.getPropertyFormat("eclipse.base"), false);
            String toExcludeFromArchive = Utils.getStringFromCollection(this.addedByPermissions, ",");
            fileSets.add(new TarFileSet(Utils.getPropertyFormat("eclipse.base"), false, null, "**/**", null, toExcludeFromArchive, null, this.productFile != null ? Utils.getPropertyFormat("archivePrefix") : null, null, null));
            fileSets.addAll(Arrays.asList(permissions));
        } else {
            Object[] shape;
            int i = 0;
            while (i < this.plugins.length) {
                shape = this.shapeAdvisor.getFinalShape(this.plugins[i]);
                fileSets.add(new TarFileSet(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "plugins" + '/' + (String)shape[0], shape[1] == "file", null, null, null, null, null, String.valueOf(Utils.getPropertyFormat("pluginArchivePrefix")) + '/' + (String)shape[0], null, null));
                ++i;
            }
            i = 0;
            while (i < this.features.length) {
                shape = this.shapeAdvisor.getFinalShape(this.features[i]);
                fileSets.add(new TarFileSet(String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + "features" + '/' + (String)shape[0], shape[1] == "file", null, null, null, null, null, String.valueOf(Utils.getPropertyFormat("featureArchivePrefix")) + '/' + (String)shape[0], null, null));
                ++i;
            }
            if (this.rootFileProviders.size() > 0) {
                FileSet[] permissionSets = this.generatePermissions(this.rootFolder, false);
                fileSets.add(new TarFileSet(this.rootFolder, false, null, "**/**", null, null, null, Utils.getPropertyFormat("archivePrefix"), null, null));
                fileSets.add(Arrays.asList(permissionSets));
            }
        }
        if (fileSets.size() > 0) {
            FileSet[] sets = fileSets.toArray(new FileSet[fileSets.size()]);
            this.script.printTarTask(Utils.getPropertyFormat("archiveFullPath"), null, false, true, sets);
        }
    }

    public void setGenerateJnlp(boolean value) {
        this.generateJnlp = value;
    }

    public void setSignJars(boolean value) {
        this.signJars = value;
    }

    public boolean isSigning() {
        return this.signJars;
    }

    public void setProduct(String value) {
        this.product = value;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }

    public ProductFile getProductFile() {
        if (this.productFile == null && this.product != null) {
            try {
                this.productFile = this.loadProduct(this.product, this.configInfo != null ? this.configInfo.getOs() : null);
            }
            catch (CoreException coreException) {}
        }
        return this.productFile;
    }

    public void setArchiveFormat(String archiveFormat) {
        this.archiveFormat = archiveFormat;
    }

    public void setGroupConfigs(boolean group) {
        this.groupConfigs = group;
    }
}

