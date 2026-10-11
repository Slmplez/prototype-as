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
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.builder;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.PDEUIStateWrapper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.ant.JavacTask;
import org.eclipse.pde.internal.build.builder.AbstractBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.ClasspathComputer2_1;
import org.eclipse.pde.internal.build.builder.ClasspathComputer3_0;
import org.eclipse.pde.internal.build.builder.IClasspathComputer;
import org.eclipse.pde.internal.build.site.ProfileManager;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class ModelBuildScriptGenerator
extends AbstractBuildScriptGenerator {
    public static final String SRC_ZIP = "src.zip";
    public static final String EXPANDED_DOT = "@dot";
    public static final String DOT = ".";
    protected BundleDescription model;
    private FeatureEntry associatedEntry;
    protected String fullName;
    protected String pluginZipDestination;
    protected String pluginUpdateJarDestination;
    private BuildDirector featureGenerator;
    protected final String PLUGIN_DESTINATION = Utils.getPropertyFormat("plugin.destination");
    private Properties permissionProperties;
    private String propertiesFileName = "build.properties";
    private String buildScriptFileName = "build.xml";
    private String customBuildCallbacks = null;
    private String customCallbacksBuildpath = null;
    private String customCallbacksFailOnError = null;
    private String customCallbacksInheritAll = null;
    private String warningProperties = null;
    private String[] sourceFileExtensions;
    private ArrayList compiledJarNames;
    private boolean dotOnTheClasspath = false;
    private boolean binaryPlugin = false;
    private boolean signJars = false;
    private Map workspaceOutputFolders = null;
    private boolean generateErrorPropertyAttribute = true;
    private boolean sourceReferences = false;

    public void generate() throws CoreException {
        String custom;
        if (this.binaryPlugin) {
            return;
        }
        if (this.model == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 8, Messages.error_missingElement, null));
        }
        if (!AbstractScriptGenerator.isBuildingOSGi()) {
            this.checkBootAndRuntime();
        }
        this.initializeVariables();
        if (BundleHelper.getDefault().isDebugging()) {
            System.out.println("Generating plugin " + this.model.getSymbolicName());
        }
        if ((custom = (String)this.getBuildProperties().get("custom")) != null && custom.equalsIgnoreCase("true")) {
            this.updateExistingScript();
            return;
        }
        this.openScript(this.getLocation(this.model), this.buildScriptFileName);
        try {
            this.generateBuildScript();
        }
        finally {
            this.closeScript();
        }
    }

    private void checkBootAndRuntime() throws CoreException {
        if (this.getSite(false).getRegistry().getResolvedBundle("org.eclipse.core.boot") == null) {
            Status status = new Status(4, "org.eclipse.pde.build", 5, NLS.bind((String)Messages.exception_missingPlugin, (Object)"org.eclipse.core.boot"), null);
            throw new CoreException((IStatus)status);
        }
        if (this.getSite(false).getRegistry().getResolvedBundle("org.eclipse.core.runtime") == null) {
            Status status = new Status(4, "org.eclipse.pde.build", 5, NLS.bind((String)Messages.exception_missingPlugin, (Object)"org.eclipse.core.runtime"), null);
            throw new CoreException((IStatus)status);
        }
    }

    public static String getNormalizedName(BundleDescription bundle) {
        return String.valueOf(bundle.getSymbolicName()) + '_' + bundle.getVersion();
    }

    private void initializeVariables() throws CoreException {
        String projectWarningSettings;
        Map folders;
        PDEUIStateWrapper wrapper;
        this.fullName = ModelBuildScriptGenerator.getNormalizedName(this.model);
        this.pluginZipDestination = String.valueOf(this.PLUGIN_DESTINATION) + '/' + this.fullName + ".zip";
        this.pluginUpdateJarDestination = String.valueOf(this.PLUGIN_DESTINATION) + '/' + this.fullName + ".jar";
        String[] classpathInfo = this.getClasspathEntries(this.model);
        this.dotOnTheClasspath = ModelBuildScriptGenerator.specialDotProcessing(this.getBuildProperties(), classpathInfo);
        this.generateErrorPropertyAttribute = this.shouldGenerateErrorAttribute();
        Properties bundleProperties = (Properties)this.model.getUserObject();
        bundleProperties.put("withDot", this.dotOnTheClasspath);
        Properties properties = this.getBuildProperties();
        this.customBuildCallbacks = properties.getProperty("customBuildCallbacks");
        if ("true".equalsIgnoreCase(this.customBuildCallbacks)) {
            this.customBuildCallbacks = "customBuildCallbacks.xml";
        } else if ("false".equalsIgnoreCase(this.customBuildCallbacks)) {
            this.customBuildCallbacks = null;
        }
        this.customCallbacksBuildpath = properties.getProperty("customBuildCallbacks.buildpath", DOT);
        this.customCallbacksFailOnError = properties.getProperty("customBuildCallbacks.failonerror", "false");
        this.customCallbacksInheritAll = properties.getProperty("customBuildCallbacks.inheritall");
        String sourceFileExtensionsStr = properties.getProperty("sourceFileExtensions");
        if (sourceFileExtensionsStr == null) {
            this.sourceFileExtensions = DEFAULT_SOURCE_FILE_EXTENSIONS;
        } else {
            String[] sourceFileExtensionsArr = sourceFileExtensionsStr.split(",");
            this.sourceFileExtensions = new String[sourceFileExtensionsArr.length];
            int i = 0;
            while (i < sourceFileExtensionsArr.length) {
                this.sourceFileExtensions[i] = sourceFileExtensionsArr[i].trim();
                ++i;
            }
        }
        if (this.featureGenerator != null && this.featureGenerator.useWorkspaceBinaries() && this.havePDEUIState() && (wrapper = this.getSite(false).getSiteContentProvider().getInitialState()) != null && wrapper.getOutputFolders() != null && (folders = wrapper.getOutputFolders()).containsKey(this.model.getSymbolicName())) {
            this.workspaceOutputFolders = (Map)folders.get(this.model.getSymbolicName());
        }
        if (Boolean.valueOf(projectWarningSettings = this.getBuildProperties().getProperty("javacProjectSettings")).booleanValue()) {
            if (new File(this.model.getLocation(), ".settings/org.eclipse.jdt.core.prefs").exists()) {
                this.warningProperties = ".settings/org.eclipse.jdt.core.prefs";
            }
        } else if (projectWarningSettings != null && !"false".equalsIgnoreCase(projectWarningSettings) && new File(this.model.getLocation(), projectWarningSettings).exists()) {
            this.warningProperties = projectWarningSettings;
        }
    }

    protected static boolean findAndReplaceDot(String[] classpathInfo) {
        int i = 0;
        while (i < classpathInfo.length) {
            if (DOT.equals(classpathInfo[i])) {
                classpathInfo[i] = EXPANDED_DOT;
                return true;
            }
            ++i;
        }
        return false;
    }

    public static boolean specialDotProcessing(Properties properties, String[] classpathInfo) {
        String sourceFolder;
        ModelBuildScriptGenerator.findAndReplaceDot(classpathInfo);
        String outputValue = properties.getProperty("output..");
        if (outputValue != null) {
            properties.setProperty("output.@dot", outputValue);
            properties.remove("output..");
        }
        if ((sourceFolder = properties.getProperty("source..")) != null) {
            String includeString;
            String extraEntries;
            String buildOrder;
            properties.setProperty("source.@dot", sourceFolder);
            properties.remove("source..");
            String excludedFromJar = properties.getProperty("exclude..");
            if (excludedFromJar != null) {
                properties.setProperty("exclude.@dot", excludedFromJar);
                properties.remove("exclude..");
            }
            if ((buildOrder = properties.getProperty("jars.compile.order")) != null) {
                String[] order = Utils.getArrayFromString(buildOrder);
                int i = 0;
                while (i < order.length) {
                    if (order[i].equals(DOT)) {
                        order[i] = EXPANDED_DOT;
                    }
                    ++i;
                }
                properties.setProperty("jars.compile.order", Utils.getStringFromArray(order, ","));
            }
            if ((extraEntries = properties.getProperty("extra..")) != null) {
                properties.setProperty("extra.@dot", extraEntries);
            }
            if ((includeString = properties.getProperty("bin.includes")) != null) {
                String[] includes = Utils.getArrayFromString(includeString);
                int i = 0;
                while (i < includes.length) {
                    if (includes[i].equals(DOT)) {
                        includes[i] = "@dot/";
                    }
                    ++i;
                }
                properties.setProperty("bin.includes", Utils.getStringFromArray(includes, ","));
            }
            return true;
        }
        return false;
    }

    private void generateBuildScript() throws CoreException {
        this.generatePrologue();
        this.generateBuildUpdateJarTarget();
        if (this.getBuildProperties().getProperty("sourcePlugin", null) == null) {
            this.generateBuildJarsTarget(this.model);
        } else {
            this.generateBuildJarsTargetForSourceGathering();
            this.generateEmptyBuildSourcesTarget();
        }
        this.generatePublishBinPartsTarget();
        this.generateGatherBinPartsTarget();
        this.generateBuildZipsTarget();
        this.generateGatherSourcesTarget();
        this.generateGatherIndividualSourcesTarget();
        this.generateCopySourcesTarget();
        this.generateGatherLogTarget();
        this.generateCleanTarget();
        this.generateRefreshTarget();
        this.generateZipPluginTarget();
        this.generateAPIToolsTarget();
        this.generateEpilogue();
    }

    private void generateEmptyBuildSourcesTarget() {
        this.script.printTargetDeclaration("build.sources", null, null, null, null);
        this.script.printTargetEnd();
    }

    private void generateBuildJarsTargetForSourceGathering() {
        this.script.printTargetDeclaration("build.jars", null, null, null, null);
        this.compiledJarNames = new ArrayList(0);
        if (Utils.isSourceBundle(this.model)) {
            this.script.printTargetEnd();
            return;
        }
        File previousSrcRoot = Utils.getOldSourceLocation(this.model);
        Set pluginsToGatherSourceFrom = (Set)this.featureGenerator.sourceToGather.getElementEntries().get(this.model.getSymbolicName());
        if (pluginsToGatherSourceFrom != null) {
            Iterator iter = pluginsToGatherSourceFrom.iterator();
            while (iter.hasNext()) {
                BundleDescription plugin = (BundleDescription)iter.next();
                if (plugin.getSymbolicName().equals(this.model.getSymbolicName())) continue;
                if (Utils.isBinary(plugin)) {
                    File previousSrc;
                    if (previousSrcRoot == null || !(previousSrc = new File(previousSrcRoot, ModelBuildScriptGenerator.getNormalizedName(plugin))).exists()) continue;
                    FileSet[] fileSets = new FileSet[]{new FileSet(previousSrc.getAbsolutePath(), null, "**/*", null, null, null, null)};
                    this.script.printCopyTask(null, String.valueOf(Utils.getPropertyFormat("basedir")) + "/src/" + previousSrc.getName(), fileSets, true, false);
                    continue;
                }
                IPath location = Utils.makeRelative((IPath)new Path(this.getLocation(plugin)), (IPath)new Path(this.getLocation(this.model)));
                this.script.printAntTask("build.xml", location.toOSString(), "build.sources", null, null, null);
                HashMap<String, String> params = new HashMap<String, String>(1);
                params.put("destination.temp.folder", String.valueOf(Utils.getPropertyFormat("basedir")) + "/src");
                this.script.printAntTask("build.xml", location.toOSString(), "gather.sources", null, null, params);
            }
        }
        this.script.printTargetEnd();
    }

    private void generateCleanTarget() throws CoreException {
        this.script.println();
        Properties properties = this.getBuildProperties();
        CompiledEntry[] availableJars = this.extractEntriesToCompile(properties);
        this.script.printTargetDeclaration("clean", "init", null, null, NLS.bind((String)Messages.build_plugin_clean, (Object)this.model.getSymbolicName()));
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(3);
            params.put("plugin.destination", this.PLUGIN_DESTINATION);
            params.put("temp.folder", Utils.getPropertyFormat("temp.folder"));
            params.put("build.result.folder", Utils.getPropertyFormat("build.result.folder"));
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.clean", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        int i = 0;
        while (i < availableJars.length) {
            String jarName = availableJars[i].getName(true);
            String jarLocation = this.getJARLocation(jarName);
            if (!(jarLocation.equals("") || jarLocation.startsWith("..") || jarLocation.equals(Utils.getPropertyFormat("build.result.folder")))) {
                if (availableJars[i].type == 0) {
                    this.script.printDeleteTask(null, jarLocation, null);
                } else {
                    this.script.printDeleteTask(jarLocation, null, null);
                }
                this.script.printDeleteTask(null, this.getSRCLocation(jarName), null);
            }
            ++i;
        }
        this.script.printDeleteTask(null, this.pluginUpdateJarDestination, null);
        this.script.printDeleteTask(null, this.pluginZipDestination, null);
        this.script.printDeleteTask(Utils.getPropertyFormat("temp.folder"), null, null);
        this.script.printDeleteTask(null, Utils.getPropertyFormat("compilation.problem.marker"), "true", null);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.clean", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateGatherLogTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("gather.logs", "init", "destination.temp.folder", null, null);
        Path baseDestination = new Path(Utils.getPropertyFormat("destination.temp.folder"));
        baseDestination = baseDestination.append(this.fullName);
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(1);
            params.put("destination.temp.folder", baseDestination.toString());
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.logs", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        ArrayList<IPath> destinations = new ArrayList<IPath>(5);
        Properties properties = this.getBuildProperties();
        CompiledEntry[] availableJars = this.extractEntriesToCompile(properties);
        int i = 0;
        while (i < availableJars.length) {
            String name = availableJars[i].getName(true);
            IPath destination = baseDestination.append(name).removeLastSegments(1);
            if (!destinations.contains(destination)) {
                this.script.printMkdirTask(destination.toString());
                destinations.add(destination);
            }
            String logFolder = availableJars[i].getType() == 1 ? this.getJARLocation(name) : this.getTempJARFolderLocation(name);
            Path logPath = new Path(String.valueOf(logFolder) + Utils.getPropertyFormat("logExtension"));
            FileSet logSet = new FileSet(logPath.removeLastSegments(1).toString(), null, logPath.lastSegment(), null, null, null, null);
            this.script.printCopyTask(null, destination.toString(), new FileSet[]{logSet}, false, false);
            ++i;
        }
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.logs", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateZipIndividualTarget(String zipName, String source) {
        this.script.println();
        this.script.printTargetDeclaration(zipName, "init", null, null, null);
        Path root = new Path(Utils.getPropertyFormat("basedir"));
        this.script.printZipTask(root.append(zipName).toString(), root.append(source).toString(), false, false, null);
        this.script.printTargetEnd();
    }

    private void generateGatherSourcesTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("gather.sources", "init", "destination.temp.folder", null, null);
        Path baseDestination = new Path(Utils.getPropertyFormat("destination.temp.folder"));
        baseDestination = baseDestination.append(this.fullName);
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(1);
            params.put("target.folder", baseDestination.toString());
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        ArrayList<IPath> destinations = new ArrayList<IPath>(5);
        Properties properties = this.getBuildProperties();
        CompiledEntry[] availableJars = this.extractEntriesToCompile(properties);
        int i = 0;
        while (i < availableJars.length) {
            String jar = availableJars[i].getName(true);
            IPath destination = baseDestination.append(jar).removeLastSegments(1);
            if (!destinations.contains(destination)) {
                this.script.printMkdirTask(destination.toString());
                destinations.add(destination);
            }
            this.script.printCopyTask(this.getSRCLocation(jar), destination.toString(), null, false, false);
            ++i;
        }
        Properties copyParams = new Properties();
        copyParams.put("source.destination.folder", baseDestination.toString());
        this.script.printAntCallTask("copy.src.includes", true, copyParams);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateGatherIndividualSourcesTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("gather.individual.sources", "init", null, null, null);
        Path baseDestination = new Path(Utils.getPropertyFormat("destination.temp.folder"));
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(1);
            params.put("target.folder", baseDestination.toString());
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        Properties copyParams = new Properties();
        copyParams.put("source.destination.folder", baseDestination.toString());
        Properties properties = this.getBuildProperties();
        CompiledEntry[] availableJars = this.extractEntriesToCompile(properties);
        int i = 0;
        while (i < availableJars.length) {
            String jar = availableJars[i].getName(true);
            String srcName = ModelBuildScriptGenerator.getSRCName(jar);
            this.script.printAntCallTask("copy." + srcName, true, copyParams);
            ++i;
        }
        this.script.printAntCallTask("copy.src.includes", true, copyParams);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateCopySourcesTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("copy.src.includes", "init", null, null, null);
        Path baseDestination = new Path(Utils.getPropertyFormat("source.destination.folder"));
        String include = (String)this.getBuildProperties().get("src.includes");
        String exclude = (String)this.getBuildProperties().get("src.excludes");
        if (include != null || exclude != null) {
            FileSet fileSet = new FileSet(Utils.getPropertyFormat("basedir"), null, include, null, exclude, null, null);
            this.script.printCopyTask(null, baseDestination.toString(), new FileSet[]{fileSet}, false, false);
        }
        this.script.printTargetEnd();
    }

    private void generateAPIToolsTarget() {
        this.script.println();
        this.script.printTargetDeclaration("apitools.generation", null, "generateAPIDescription", null, null);
        this.script.printTab();
        this.script.print("<apitooling.apigeneration ");
        this.script.printAttribute("projectName", Utils.getPropertyFormat("projectName"), true);
        this.script.printAttribute("project", Utils.getPropertyFormat("projectLocation"), true);
        this.script.printAttribute("binary", Utils.getPropertyFormat("binary.folders"), true);
        this.script.printAttribute("target", Utils.getPropertyFormat("target.folder"), true);
        this.script.printAttribute("extramanifests", Utils.getPropertyFormat("extraManifests"), true);
        this.script.printAttribute("allownonapiproject", Utils.getPropertyFormat("allowNonApiProject"), false);
        this.script.println("/>");
        this.script.printTargetEnd();
    }

    private void generateAPIToolsCall(String[] binaries, boolean dotIncluded, String target) throws CoreException {
        Iterator<Object> iterator;
        HashSet<String> classpathEntries = new HashSet<String>(Arrays.asList(this.getClasspathEntries(this.model)));
        StringBuffer binaryFolders = new StringBuffer();
        if (this.workspaceOutputFolders != null && this.workspaceOutputFolders.size() > 0) {
            iterator = this.workspaceOutputFolders.keySet().iterator();
            while (iterator.hasNext()) {
                String key = (String)iterator.next();
                Set paths = (Set)this.workspaceOutputFolders.get(key);
                Iterator iterator2 = paths.iterator();
                while (iterator2.hasNext()) {
                    IPath path = (IPath)iterator2.next();
                    if (binaryFolders.length() > 0) {
                        binaryFolders.append(File.pathSeparator);
                    }
                    binaryFolders.append(String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + path.toString());
                }
                if (key.equals(DOT)) {
                    classpathEntries.remove(EXPANDED_DOT);
                    continue;
                }
                classpathEntries.remove(key);
            }
        } else {
            int i = 0;
            while (i < binaries.length) {
                if (binaries[i] != null) {
                    if (i > 0) {
                        binaryFolders.append(File.pathSeparator);
                    }
                    binaryFolders.append(String.valueOf(target) + '/' + binaries[i]);
                    classpathEntries.remove(binaries[i]);
                }
                ++i;
            }
            if (dotIncluded) {
                if (binaryFolders.length() > 0) {
                    binaryFolders.append(File.pathSeparator);
                }
                binaryFolders.append(String.valueOf(Utils.getPropertyFormat("build.result.folder")) + '/' + EXPANDED_DOT);
                classpathEntries.remove(EXPANDED_DOT);
            }
        }
        iterator = classpathEntries.iterator();
        while (iterator.hasNext()) {
            String entry = (String)iterator.next();
            if (!entry.equals(EXPANDED_DOT) && !new File(this.model.getLocation(), entry).exists()) continue;
            if (binaryFolders.length() > 0) {
                binaryFolders.append(File.pathSeparator);
            }
            if (entry.equals(EXPANDED_DOT)) {
                binaryFolders.append(this.model.getLocation());
                continue;
            }
            binaryFolders.append(String.valueOf(this.model.getLocation()) + '/' + entry);
        }
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("projectName", String.valueOf(Utils.getPropertyFormat("bundleId")) + "_" + Utils.getPropertyFormat("bundleVersion"));
        params.put("projectLocation", Utils.getPropertyFormat("basedir"));
        params.put("binary.folders", binaryFolders.toString());
        params.put("target.folder", target);
        HostSpecification host = this.model.getHost();
        if (host != null && host.getSupplier() != null) {
            BundleDescription hostBundle = host.getSupplier().getSupplier();
            String hostLocation = hostBundle.getLocation();
            String modelLocation = this.model.getLocation();
            if (hostLocation != null && modelLocation != null) {
                IPath location = null;
                if (new File(hostLocation).isFile()) {
                    location = Utils.makeRelative((IPath)new Path(hostLocation), (IPath)new Path(modelLocation));
                } else {
                    Path hostPath = new Path(hostLocation);
                    location = Utils.makeRelative(hostPath.append("META-INF/MANIFEST.MF"), (IPath)new Path(modelLocation));
                }
                if (location.isAbsolute()) {
                    params.put("extraManifests", location.toString());
                } else {
                    params.put("extraManifests", String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + location.toString());
                }
            }
        }
        this.script.printAntCallTask("apitools.generation", true, params);
    }

    private void generatePublishBinPartsTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("publish.bin.parts", "init", "p2.publish.parts", "compilation.problem.marker.exists", null);
        Path destination = new Path(Utils.getPropertyFormat("build.result.folder"));
        destination = destination.append(this.fullName);
        String root = destination.toString();
        this.script.printMkdirTask(root);
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(3);
            params.put("target.folder", root);
            params.put("build.result.folder", Utils.getPropertyFormat("build.result.folder"));
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
            this.generateGatherBinParts((IPath)destination);
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        } else {
            Set pluginsToGatherSourceFrom;
            String include = (String)this.getBuildProperties().get("bin.includes");
            String exclude = (String)this.getBuildProperties().get("bin.excludes");
            String files = "META-INF/MANIFEST.MF,plugin.xml,fragment.xml";
            FileSet metadata = new FileSet(Utils.getPropertyFormat("basedir"), null, files, null, exclude, null, null);
            this.script.printCopyTask(null, Utils.getPropertyFormat("build.result.folder"), new FileSet[]{metadata}, true, true);
            if (Utils.isSourceBundle(this.model) && (pluginsToGatherSourceFrom = this.getPluginSourceProviders()) != null) {
                Iterator iter = pluginsToGatherSourceFrom.iterator();
                while (iter.hasNext()) {
                    BundleDescription plugin = (BundleDescription)iter.next();
                    IPath location = Utils.makeRelative((IPath)new Path(this.getLocation(plugin)), (IPath)new Path(this.getLocation(this.model)));
                    HashMap<String, String> taskParams = new HashMap<String, String>(1);
                    taskParams.put("destination.temp.folder", String.valueOf(Utils.getPropertyFormat("build.result.folder")) + "/sources");
                    this.script.printAntTask("build.xml", location.toOSString(), "gather.individual.sources", null, null, taskParams);
                }
            }
            String[] splitIncludes = Utils.getArrayFromString(include);
            this.genarateIdReplacementCall(Utils.getPropertyFormat("build.result.folder"));
            this.generateAPIToolsCall(this.getCompiledLocations(), Utils.isStringIn(splitIncludes, "@dot/") != -1, Utils.getPropertyFormat("build.result.folder"));
        }
        this.script.println("<eclipse.gatherBundle ");
        this.script.println("   metadataRepository=\"" + Utils.getPropertyFormat("p2.build.repo") + "\"");
        this.script.println("   artifactRepository=\"" + Utils.getPropertyFormat("p2.build.repo") + "\"");
        this.script.println("   buildResultFolder=\"" + Utils.getPropertyFormat("build.result.folder") + "\"");
        if (this.associatedEntry != null && (this.associatedEntry.unpackSet() || !Utils.hasBundleShapeHeader(this.model))) {
            this.script.println("   unpack=\"" + String.valueOf(this.associatedEntry.isUnpack()) + "\"");
        }
        if (this.customBuildCallbacks != null) {
            this.script.println("   targetFolder=\"" + root + "\"");
            this.script.println("/>");
        } else {
            this.script.println("   baseDirectory=\"${basedir}\"");
            if (Utils.isSourceBundle(this.model)) {
                this.script.println("   gatheredSource=\"" + Utils.getPropertyFormat("build.result.folder") + "/sources\"");
            }
            if (this.workspaceOutputFolders == null || this.workspaceOutputFolders.size() == 0 || this.customBuildCallbacks != null) {
                this.script.println("/>");
            } else {
                this.script.println(">");
                Iterator iterator = this.workspaceOutputFolders.keySet().iterator();
                while (iterator.hasNext()) {
                    String key = (String)iterator.next();
                    Set paths = (Set)this.workspaceOutputFolders.get(key);
                    Iterator pathIterator = paths.iterator();
                    while (pathIterator.hasNext()) {
                        IPath path = (IPath)pathIterator.next();
                        this.script.printTabs();
                        this.script.print("   <outputFolder ");
                        this.script.printAttribute("library", key, true);
                        this.script.printAttribute("dir", Utils.getPropertyFormat("basedir"), true);
                        this.script.printAttribute("includes", String.valueOf(path.toString()) + "/**", true);
                        this.script.println("/>");
                    }
                }
                this.script.printEndTag("eclipse.gatherBundle");
            }
        }
        this.script.printTargetEnd();
    }

    private String[] getCompiledLocations() {
        int count = 0;
        String[] fileSetValues = new String[this.compiledJarNames.size()];
        Iterator iter = this.compiledJarNames.iterator();
        while (iter.hasNext()) {
            CompiledEntry entry = (CompiledEntry)iter.next();
            String formatedName = String.valueOf(entry.getName(false)) + (entry.getType() == 1 ? "/" : "");
            if (this.dotOnTheClasspath && formatedName.startsWith(EXPANDED_DOT)) continue;
            fileSetValues[count++] = formatedName;
        }
        return fileSetValues;
    }

    private void generateGatherBinPartsTarget() throws CoreException {
        this.script.println();
        this.script.printTargetDeclaration("gather.bin.parts", "init", "destination.temp.folder", null, null);
        Path destination = new Path(Utils.getPropertyFormat("destination.temp.folder"));
        destination = destination.append(this.fullName);
        String root = destination.toString();
        this.script.printMkdirTask(root);
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(3);
            params.put("target.folder", root);
            params.put("build.result.folder", Utils.getPropertyFormat("build.result.folder"));
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.generateGatherBinParts((IPath)destination);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.gather.bin.parts", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateGatherBinParts(IPath destination) throws CoreException {
        Set pluginsToGatherSourceFrom;
        String includeSet;
        FileSet fileSet;
        String root = destination.toString();
        ArrayList<IPath> destinations = new ArrayList<IPath>(5);
        destinations.add(destination);
        String include = (String)this.getBuildProperties().get("bin.includes");
        String exclude = (String)this.getBuildProperties().get("bin.excludes");
        String[] splitIncludes = Utils.getArrayFromString(include);
        String[] fileSetValues = this.getCompiledLocations();
        boolean dotIncluded = false;
        int pos = Utils.isStringIn(splitIncludes, "@dot/");
        if (pos != -1) {
            splitIncludes[pos] = null;
            dotIncluded = true;
        }
        if (fileSetValues.length > 0 && fileSetValues[0] != null) {
            fileSet = new FileSet(Utils.getPropertyFormat("build.result.folder"), null, Utils.getStringFromArray(fileSetValues, ","), null, ModelBuildScriptGenerator.replaceVariables(exclude, true), null, null);
            this.script.printCopyTask(null, root, new FileSet[]{fileSet}, true, false);
        }
        if (dotIncluded) {
            fileSet = new FileSet(String.valueOf(Utils.getPropertyFormat("build.result.folder")) + '/' + EXPANDED_DOT, null, "**", null, ModelBuildScriptGenerator.replaceVariables(exclude, true), null, null);
            this.script.printCopyTask(null, root, new FileSet[]{fileSet}, true, false);
        }
        if ((include != null || exclude != null) && (includeSet = ModelBuildScriptGenerator.replaceVariables(Utils.getStringFromArray(splitIncludes, ","), true)) != null && includeSet.length() > 0) {
            FileSet fileSet2 = new FileSet(Utils.getPropertyFormat("basedir"), null, includeSet, null, ModelBuildScriptGenerator.replaceVariables(exclude, true), null, null);
            this.script.printCopyTask(null, root, new FileSet[]{fileSet2}, true, true);
        }
        if (Utils.isSourceBundle(this.model) && (pluginsToGatherSourceFrom = this.getPluginSourceProviders()) != null) {
            Iterator iter = pluginsToGatherSourceFrom.iterator();
            while (iter.hasNext()) {
                BundleDescription plugin = (BundleDescription)iter.next();
                IPath location = Utils.makeRelative((IPath)new Path(this.getLocation(plugin)), (IPath)new Path(this.getLocation(this.model)));
                HashMap<String, String> taskParams = new HashMap<String, String>(1);
                taskParams.put("destination.temp.folder", root);
                this.script.printAntTask("build.xml", location.toOSString(), "gather.individual.sources", null, null, taskParams);
            }
        }
        this.generatePermissionProperties(root);
        this.genarateIdReplacementCall(destination.toString());
        this.generateAPIToolsCall(fileSetValues, dotIncluded, root);
    }

    private Set getPluginSourceProviders() throws CoreException {
        HashSet<BundleDescription> pluginSet = (HashSet<BundleDescription>)this.featureGenerator.sourceToGather.getElementEntries().get(this.model.getSymbolicName());
        if (pluginSet != null && pluginSet.size() > 0) {
            return pluginSet;
        }
        String sourceAttribute = this.getBuildProperties().getProperty("sourcePlugin");
        if (Boolean.valueOf(sourceAttribute).booleanValue()) {
            return null;
        }
        String[] tokens = Utils.getArrayFromString(sourceAttribute, ";");
        pluginSet = new HashSet<BundleDescription>();
        int i = 0;
        while (i + 1 < tokens.length) {
            BundleDescription fromPlugin = this.getSite(false).getRegistry().getBundle(tokens[i], tokens[i + 1], true);
            if (fromPlugin != null && !Utils.isBinary(fromPlugin)) {
                pluginSet.add(fromPlugin);
            }
            i += 2;
        }
        return pluginSet;
    }

    private void genarateIdReplacementCall(String location) {
        Properties bundleProperties = (Properties)this.model.getUserObject();
        if (bundleProperties == null) {
            return;
        }
        String qualifier = bundleProperties.getProperty("qualifier");
        String sourceReference = this.getSourceReference(bundleProperties);
        if (qualifier == null && sourceReference == null) {
            return;
        }
        HashMap<String, String> arguments = new HashMap<String, String>();
        arguments.put("path", AntScript.getEscaped(location));
        if (qualifier != null) {
            arguments.put("version", this.model.getVersion().toString());
        }
        if (sourceReference != null) {
            arguments.put("attributes", "Eclipse-SourceReferences|" + sourceReference);
        }
        this.script.printElement("eclipse.versionReplacer", arguments);
    }

    private String getSourceReference(Properties bundleProperties) {
        String reference = (String)bundleProperties.get("sourceReference");
        if (!this.sourceReferences || reference == null) {
            return null;
        }
        String originalEntry = (String)bundleProperties.get("Eclipse-SourceReferences");
        if (originalEntry != null) {
            try {
                ManifestElement[] elements = ManifestElement.parseHeader((String)"Eclipse-SourceReferences", (String)originalEntry);
                StringBuffer newEntry = new StringBuffer();
                boolean changed = false;
                int i = 0;
                while (i < elements.length) {
                    if (i > 0) {
                        newEntry.append(',');
                    }
                    if (elements[i].getValue().equals("${PDE_SOURCE_REF}")) {
                        newEntry.append(reference);
                        changed = true;
                    } else {
                        newEntry.append(elements[i].toString());
                    }
                    ++i;
                }
                return changed ? newEntry.toString() : null;
            }
            catch (BundleException bundleException) {}
        } else {
            return reference;
        }
        return null;
    }

    private void generatePermissionProperties(String directory) throws CoreException {
        this.getPermissionProperties();
        Iterator iter = this.permissionProperties.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry permission = iter.next();
            String instruction = (String)permission.getKey();
            String parameters = (String)permission.getValue();
            int index = instruction.indexOf("permissions");
            if (index != -1) {
                this.generateChmodInstruction(directory, instruction.substring(index + "permissions".length() + 1), parameters);
                continue;
            }
            if (!instruction.startsWith("link")) continue;
            this.generateLinkInstruction(directory, parameters);
        }
    }

    private void generateChmodInstruction(String dir, String rights, String files) {
        if (rights.equals("executable")) {
            rights = "755";
        }
        this.script.printChmod(dir, rights, files);
    }

    private void generateLinkInstruction(String dir, String files) {
        String[] links = Utils.getArrayFromString(files, ",");
        ArrayList<String> arguments = new ArrayList<String>(2);
        int i = 0;
        while (i < links.length) {
            arguments.add(links[i]);
            arguments.add(links[i + 1]);
            this.script.printExecTask("ln -s", dir, arguments, "Linux");
            arguments.clear();
            i += 2;
        }
    }

    protected Properties getPermissionProperties() throws CoreException {
        if (this.permissionProperties == null) {
            this.permissionProperties = ModelBuildScriptGenerator.readProperties(this.getLocation(this.model), "permissions.properties", 1);
        }
        return this.permissionProperties;
    }

    private void generateZipPluginTarget() {
        this.script.println();
        this.script.printTargetDeclaration("zip.plugin", "init", null, null, NLS.bind((String)Messages.build_plugin_zipPlugin, (Object)this.model.getSymbolicName()));
        this.script.printDeleteTask(Utils.getPropertyFormat("temp.folder"), null, null);
        this.script.printMkdirTask(Utils.getPropertyFormat("temp.folder"));
        this.script.printAntCallTask("build.jars", true, null);
        this.script.printAntCallTask("build.sources", true, null);
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("destination.temp.folder", String.valueOf(Utils.getPropertyFormat("temp.folder")) + '/');
        this.script.printAntCallTask("gather.bin.parts", true, params);
        this.script.printAntCallTask("gather.sources", true, params);
        FileSet fileSet = new FileSet(Utils.getPropertyFormat("temp.folder"), null, "**/*.bin" + Utils.getPropertyFormat("logExtension"), null, null, null, null);
        this.script.printDeleteTask(null, null, new FileSet[]{fileSet});
        this.script.printZipTask(this.pluginZipDestination, Utils.getPropertyFormat("temp.folder"), true, false, null);
        this.script.printDeleteTask(Utils.getPropertyFormat("temp.folder"), null, null);
        this.script.printTargetEnd();
    }

    private void generateBuildUpdateJarTarget() {
        this.script.println();
        this.script.printTargetDeclaration("build.update.jar", "init", null, null, NLS.bind((String)Messages.build_plugin_buildUpdateJar, (Object)this.model.getSymbolicName()));
        this.script.printDeleteTask(Utils.getPropertyFormat("temp.folder"), null, null);
        this.script.printMkdirTask(Utils.getPropertyFormat("temp.folder"));
        this.script.printAntCallTask("build.jars", true, null);
        HashMap<String, String> params = new HashMap<String, String>(1);
        params.put("destination.temp.folder", String.valueOf(Utils.getPropertyFormat("temp.folder")) + '/');
        this.script.printAntCallTask("gather.bin.parts", true, params);
        this.script.printJarTask(this.pluginUpdateJarDestination, String.valueOf(Utils.getPropertyFormat("temp.folder")) + '/' + this.fullName, null, "merge");
        this.script.printDeleteTask(Utils.getPropertyFormat("temp.folder"), null, null);
        if (this.signJars) {
            this.script.println("<eclipse.jarProcessor sign=\"" + Utils.getPropertyFormat("jarProcessor.sign") + "\" pack=\"" + Utils.getPropertyFormat("jarProcessor.pack200") + "\" unsign=\"" + Utils.getPropertyFormat("jarProcessor.unsign") + "\" jar=\"" + AntScript.getEscaped(this.pluginUpdateJarDestination) + "\" alias=\"" + Utils.getPropertyFormat("sign.alias") + "\" keystore=\"" + Utils.getPropertyFormat("sign.keystore") + "\" storepass=\"" + Utils.getPropertyFormat("sign.storepass") + "\"/>");
        }
        this.script.printTargetEnd();
    }

    private void generateRefreshTarget() {
        this.script.println();
        this.script.printTargetDeclaration("refresh", "init", "eclipse.running", null, Messages.build_plugin_refresh);
        this.script.printConvertPathTask(new Path(this.getLocation(this.model)).removeLastSegments(0).toOSString().replace('\\', '/'), "resourcePath", false);
        this.script.printRefreshLocalTask(Utils.getPropertyFormat("resourcePath"), "infinite");
        this.script.printTargetEnd();
    }

    private void generateEpilogue() {
        this.script.println();
        this.script.printProjectEnd();
    }

    private void generatePrologue() throws CoreException {
        this.script.printProjectDeclaration(this.model.getSymbolicName(), "build.jars", DOT);
        this.script.println();
        this.script.printProperty("p2.build.repo", "file:" + Utils.getPropertyFormat("buildDirectory") + "/buildRepo");
        this.script.printProperty("basews", Utils.getPropertyFormat("ws"));
        this.script.printProperty("baseos", Utils.getPropertyFormat("os"));
        this.script.printProperty("basearch", Utils.getPropertyFormat("arch"));
        this.script.printProperty("basenl", Utils.getPropertyFormat("nl"));
        this.script.printProperty("bundleId", this.model.getSymbolicName());
        this.script.printProperty("bundleVersion", this.model.getVersion().toString());
        this.script.printProperty("p2.publishonerror", "false");
        this.script.println();
        if (this.customBuildCallbacks != null && !this.customBuildCallbacks.equals("false")) {
            this.script.printAvailableTask("customBuildCallbacks", String.valueOf(this.customCallbacksBuildpath) + '/' + this.customBuildCallbacks, this.customBuildCallbacks);
            this.script.println();
        }
        this.generateCompilerSettings();
        this.script.printTargetDeclaration("init", "properties", null, null, null);
        this.script.printConditionIsSet("pluginTemp", String.valueOf(Utils.getPropertyFormat("buildTempFolder")) + '/' + "plugins", "buildTempFolder");
        this.script.printProperty("pluginTemp", Utils.getPropertyFormat("basedir"));
        this.script.printConditionIsSet("build.result.folder", String.valueOf(Utils.getPropertyFormat("pluginTemp")) + '/' + ModelBuildScriptGenerator.getNormalizedName(this.model), "buildTempFolder");
        this.script.printProperty("build.result.folder", Utils.getPropertyFormat("basedir"));
        this.script.printProperty("temp.folder", String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + "temp.folder");
        this.script.printProperty("plugin.destination", Utils.getPropertyFormat("basedir"));
        this.script.printConditionIsTrue("p2.publish.parts", "true", Utils.getPropertyFormat("p2.gathering"));
        this.script.printProperty("compilation.problem.marker", String.valueOf(Utils.getPropertyFormat("build.result.folder")) + '/' + "compilation.problem");
        this.script.printConditionStart("compilation.problem.marker.exists", "true", null);
        this.script.printStartTag("and");
        this.script.printAvailableTask(null, Utils.getPropertyFormat("compilation.problem.marker"));
        this.script.printIsFalse(Utils.getPropertyFormat("p2.publishonerror"));
        this.script.printEndTag("and");
        this.script.printEndCondition();
        this.script.printTargetEnd();
        this.script.println();
        this.script.printTargetDeclaration("properties", null, "eclipse.running", null, null);
        this.script.printProperty("build.compiler", "org.eclipse.jdt.core.JDTCompilerAdapter");
        this.script.println();
        this.script.printTargetEnd();
    }

    private void generateCompilerSettings() throws CoreException {
        String javacSource = null;
        String javacTarget = null;
        String bootClasspath = null;
        String jreProfile = null;
        try {
            Properties properties = this.getBuildProperties();
            javacSource = properties.getProperty("javacSource");
            javacTarget = properties.getProperty("javacTarget");
            bootClasspath = properties.getProperty("bootClasspath");
            jreProfile = properties.getProperty("jre.compilation.profile");
        }
        catch (CoreException coreException) {}
        this.script.printComment(Messages.build_compilerSetting);
        this.script.printProperty("javacFailOnError", "false");
        this.script.printProperty("javacDebugInfo", "on");
        this.script.printProperty("javacVerbose", "false");
        this.script.printProperty("logExtension", ".log");
        this.script.printProperty("compilerArg", "");
        this.script.printProperty("compilation.prereq.log", String.valueOf(Utils.getPropertyFormat("buildDirectory")) + "/prereqErrors.log");
        if (javacSource == null) {
            this.script.printProperty("javacSource", "1.3");
        }
        if (javacTarget == null) {
            this.script.printProperty("javacTarget", "1.2");
        }
        if (bootClasspath == null) {
            this.script.println("<condition property=\"dir_bootclasspath\" value=\"${java.home}/../Classes\">");
            this.script.println("\t<os family=\"mac\"/>");
            this.script.println("</condition>");
            this.script.println("<property name=\"dir_bootclasspath\" value=\"${java.home}/lib\"/>");
            this.script.println("<path id=\"path_bootclasspath\">");
            this.script.println("\t<fileset dir=\"${dir_bootclasspath}\">");
            this.script.println("\t\t<include name=\"*.jar\"/>");
            this.script.println("\t</fileset>");
            this.script.println("</path>");
            this.script.printPropertyRefid("bootclasspath", "path_bootclasspath");
        }
        Properties environmentMappings = ModelBuildScriptGenerator.getExecutionEnvironmentMappings();
        if (jreProfile != null && !environmentMappings.containsKey(String.valueOf(jreProfile) + '.' + "javacSource")) {
            if (this.reportResolutionErrors) {
                Status status = new Status(4, this.model.getSymbolicName(), 4, NLS.bind((String)Messages.build_plugin_unrecognizedJRE, (Object)jreProfile), null);
                BundleHelper.getDefault().getLog().log((IStatus)status);
            }
            jreProfile = null;
        }
        if (javacSource != null) {
            this.script.printProperty("bundleJavacSource", javacSource);
        }
        if (javacTarget != null) {
            this.script.printProperty("bundleJavacTarget", javacTarget);
        }
        if (bootClasspath != null) {
            this.script.printProperty("bundleBootClasspath", bootClasspath);
        }
        String target = null;
        String[] modelEnvironments = this.model.getExecutionEnvironments();
        String[] environments = null;
        if (jreProfile != null) {
            environments = new String[modelEnvironments.length + 1];
            environments[0] = jreProfile;
            System.arraycopy(modelEnvironments, 0, environments, 1, modelEnvironments.length);
        } else {
            environments = modelEnvironments;
        }
        ProfileManager profileManager = this.getSite(false).getRegistry().getProfileManager();
        int i = 0;
        while (i < environments.length) {
            String source;
            if (bootClasspath == null) {
                this.script.printConditionIsSet("bundleBootClasspath", Utils.getPropertyFormat(environments[i]), environments[i]);
            }
            if ((source = profileManager.getJavacSource(environments[i])) == null) {
                source = (String)environmentMappings.get(String.valueOf(environments[i]) + '.' + "javacSource");
            }
            if ((target = profileManager.getJavacTarget(environments[i])) == null) {
                target = (String)environmentMappings.get(String.valueOf(environments[i]) + '.' + "javacTarget");
            }
            if (javacSource == null && source != null) {
                this.script.printConditionIsSet("bundleJavacSource", source, environments[i]);
            }
            if (javacTarget == null && target != null) {
                this.script.printConditionIsSet("bundleJavacTarget", target, environments[i]);
            }
            ++i;
        }
        if (javacSource == null) {
            this.script.printProperty("bundleJavacSource", Utils.getPropertyFormat("javacSource"));
        }
        if (javacTarget == null) {
            this.script.printProperty("bundleJavacTarget", Utils.getPropertyFormat("javacTarget"));
        }
        if (bootClasspath == null) {
            this.script.printProperty("bundleBootClasspath", Utils.getPropertyFormat("bootclasspath"));
        }
        this.script.println();
    }

    public void setModel(BundleDescription model) throws CoreException {
        if (model == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 8, Messages.error_missingElement, null));
        }
        this.model = model = this.getSite(false).getRegistry().getVersionReplacement(model);
        if (this.getBuildProperties() == AbstractScriptGenerator.MissingProperties.getInstance()) {
            this.binaryPlugin = true;
        } else {
            this.getCompiledElements().add(ModelBuildScriptGenerator.getNormalizedName(model));
        }
        Properties bundleProperties = (Properties)model.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            model.setUserObject((Object)bundleProperties);
        }
        bundleProperties.put("isCompiler", this.binaryPlugin ? Boolean.FALSE : Boolean.TRUE);
    }

    public void setModelId(String modelId, String modelVersion) throws CoreException {
        BundleDescription newModel = this.getModel(modelId, modelVersion);
        if (newModel == null) {
            String message = NLS.bind((String)Messages.exception_missingElement, (Object)modelId);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 8, message, null));
        }
        this.setModel(newModel);
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
        this.script.printTargetEnd();
    }

    public void setFeatureGenerator(BuildDirector featureGenerator) {
        this.featureGenerator = featureGenerator;
    }

    private void generateBuildJarsTarget(BundleDescription pluginModel) throws CoreException {
        Properties properties = this.getBuildProperties();
        CompiledEntry[] availableJars = this.extractEntriesToCompile(properties);
        this.compiledJarNames = new ArrayList(availableJars.length);
        HashMap<String, CompiledEntry> jars = new HashMap<String, CompiledEntry>(availableJars.length);
        int i = 0;
        while (i < availableJars.length) {
            jars.put(availableJars[i].getName(false), availableJars[i]);
            ++i;
        }
        String jarOrder = (String)this.getBuildProperties().get("jars.compile.order");
        IClasspathComputer classpath = AbstractScriptGenerator.isBuildingOSGi() ? new ClasspathComputer3_0(this) : new ClasspathComputer2_1(this);
        if (jarOrder != null) {
            String[] order = Utils.getArrayFromString(jarOrder);
            int i2 = 0;
            while (i2 < order.length) {
                CompiledEntry jar = (CompiledEntry)jars.get(order[i2]);
                if (jar != null) {
                    this.compiledJarNames.add(jar);
                    this.generateCompilationTarget(classpath.getClasspath(pluginModel, jar), jar);
                    this.generateSRCTarget(jar);
                    jars.remove(order[i2]);
                }
                ++i2;
            }
        }
        Iterator iterator = jars.values().iterator();
        while (iterator.hasNext()) {
            CompiledEntry jar = (CompiledEntry)iterator.next();
            this.compiledJarNames.add(jar);
            this.generateCompilationTarget(classpath.getClasspath(pluginModel, jar), jar);
            this.generateSRCTarget(jar);
        }
        this.script.println();
        this.script.printTargetDeclaration("build.jars", "init", null, null, NLS.bind((String)Messages.build_plugin_buildJars, (Object)pluginModel.getSymbolicName()));
        this.script.printDeleteTask(null, Utils.getPropertyFormat("compilation.problem.marker"), "true", null);
        HashMap<String, String> params = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(1);
            params.put("build.result.folder", Utils.getPropertyFormat("build.result.folder"));
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.build.jars", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        Iterator iter = this.compiledJarNames.iterator();
        while (iter.hasNext()) {
            String name = ((CompiledEntry)iter.next()).getName(false);
            this.script.printAvailableTask(name, ModelBuildScriptGenerator.replaceVariables(this.getJARLocation(name), true));
            this.script.printAntCallTask(name, true, null);
        }
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.build.jars", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
        this.script.println();
        this.generateCheckCompilationTask(pluginModel);
        this.script.printTargetDeclaration("build.sources", "init", null, null, null);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre.build.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        iter = this.compiledJarNames.iterator();
        while (iter.hasNext()) {
            String jarName = ((CompiledEntry)iter.next()).getName(false);
            String srcName = ModelBuildScriptGenerator.getSRCName(jarName);
            this.script.printAvailableTask(srcName, this.getSRCLocation(jarName));
            this.script.printAntCallTask(srcName, true, null);
        }
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.build.sources", this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, null);
        }
        this.script.printTargetEnd();
    }

    private void generateCheckCompilationTask(BundleDescription pluginModel) throws CoreException {
        this.script.printTargetDeclaration("checkCompilationResults", null, "compilation.error.occured", null, null);
        this.script.printEchoTask(Utils.getPropertyFormat("compilation.problem.marker"), String.valueOf(ModelBuildScriptGenerator.getNormalizedName(pluginModel)) + "${line.separator}" + "compilation.error.occured" + "=" + Utils.getPropertyFormat("compilation.error.occured"));
        HashMap<String, String> arguments = new HashMap<String, String>();
        arguments.put("bundle", ModelBuildScriptGenerator.getNormalizedName(pluginModel));
        arguments.put("log", Utils.getPropertyFormat("compilation.prereq.log"));
        this.script.printStartTag("eclipse.logCompileError", arguments);
        this.script.incrementIdent();
        arguments.clear();
        Iterator iter = this.getPrequisitePaths().iterator();
        while (iter.hasNext()) {
            arguments.put("name", iter.next().toString());
            this.script.printElement("include", arguments);
        }
        this.script.decrementIdent();
        this.script.printEndTag("eclipse.logCompileError");
        this.script.printTargetEnd();
        this.script.println();
    }

    private List getPrequisitePaths() throws CoreException {
        String required;
        Properties properties = (Properties)this.model.getUserObject();
        ArrayList<Object> results = new ArrayList<Object>();
        if (properties != null && (required = properties.getProperty("requiredBundleIds")) != null) {
            State state = this.getSite(false).getRegistry().getState();
            String[] ids = Utils.getArrayFromString(required, ":");
            int i = 0;
            while (i < ids.length) {
                try {
                    BundleDescription bundle = state.getBundle(new Long(ids[i]).longValue());
                    if (bundle != null && !Utils.isBinary(bundle)) {
                        Path bundleLocation = new Path(bundle.getLocation());
                        results.add(bundleLocation.append("compilation.problem"));
                        results.add(String.valueOf(Utils.getPropertyFormat("pluginTemp")) + '/' + ModelBuildScriptGenerator.getNormalizedName(bundle) + "/compilation.problem");
                    }
                }
                catch (NumberFormatException numberFormatException) {}
                ++i;
            }
        }
        return results;
    }

    private void generateCompilerSettings(JavacTask javac, CompiledEntry entry, List classpath) {
        String defaultEncodingVal;
        String compilerArg;
        String compilerAdapter;
        Properties properties = null;
        try {
            properties = this.getBuildProperties();
        }
        catch (CoreException coreException) {
            return;
        }
        if (properties == null && classpath.size() == 0) {
            return;
        }
        String name = entry.getName(false);
        String excludes = properties.getProperty("exclude." + name);
        if (excludes != null) {
            javac.setExcludes(Utils.getArrayFromString(excludes, ","));
        }
        if (name.equals(EXPANDED_DOT)) {
            name = DOT;
        }
        if ((compilerAdapter = properties.getProperty("compilerAdapter")) != null) {
            javac.setCompilerAdapter(compilerAdapter);
            javac.setAdapterUseLog(Boolean.valueOf(properties.getProperty("compilerAdapter.useLog", "true")));
            javac.setAdapterArgFile(Boolean.valueOf(properties.getProperty("compilerAdapter.useArgFile", "true")));
        }
        if ((compilerArg = properties.getProperty("compilerArg")) != null) {
            javac.setSpecificCompileArgs(compilerArg);
        }
        if ((defaultEncodingVal = properties.getProperty("javacDefaultEncoding." + name)) != null) {
            javac.setEncoding(defaultEncodingVal);
        }
        String customEncodingsVal = properties.getProperty("javacCustomEncodings." + name);
        String warningLevels = properties.getProperty("javacWarnings." + name);
        String errorLevels = properties.getProperty("javacErrors." + name);
        if (customEncodingsVal == null && warningLevels == null && errorLevels == null && classpath.size() == 0) {
            return;
        }
        String root = this.getLocation(this.model);
        File file = new File(root, "javaCompiler." + name.replaceAll("[\\\\/]", "_") + ".args");
        if (file.exists()) {
            file.delete();
        }
        Writer writer = null;
        try {
            try {
                Properties data;
                String[] encodings;
                if (warningLevels != null || customEncodingsVal != null || errorLevels != null) {
                    writer = new BufferedWriter(new FileWriter(file));
                }
                if (warningLevels != null) {
                    writer.write("-warn:" + warningLevels + "\n");
                }
                if (errorLevels != null) {
                    writer.write("-err:" + errorLevels + "\n");
                }
                if (customEncodingsVal != null && (encodings = customEncodingsVal.split(",")).length > 0) {
                    int i = 0;
                    while (i < encodings.length) {
                        writer.write("#ADAPTER#ENCODING#" + encodings[i] + "\n");
                        ++i;
                    }
                }
                if (((data = (Properties)this.model.getUserObject()) == null || !data.containsKey("convertedManifest")) && classpath.size() > 0 && classpath.get(0) instanceof ClasspathComputer3_0.ClasspathElement) {
                    Iterator iterator = classpath.iterator();
                    while (iterator.hasNext()) {
                        ClasspathComputer3_0.ClasspathElement element = (ClasspathComputer3_0.ClasspathElement)iterator.next();
                        if (element.getPath() == null || element.getAccessRules().length() <= 0) continue;
                        String path = null;
                        path = element.getSubPath() == null ? element.getPath() : String.valueOf(this.featureGenerator.getExtractedRoot(element)) + '/' + element.getSubPath();
                        if (path.startsWith(Utils.getPropertyFormat("build.result.folder"))) {
                            path = path.substring(Utils.getPropertyFormat("build.result.folder").length() + 1);
                        }
                        path = path.replaceFirst("^(\\.\\.[\\\\/])*", "");
                        if (writer == null) {
                            writer = new BufferedWriter(new FileWriter(file));
                        }
                        writer.write("#ADAPTER#ACCESS#" + path + element.getAccessRules() + "\n");
                    }
                }
                if (writer != null) {
                    javac.setCompileArgsFile(String.valueOf(Utils.getPropertyFormat("basedir")) + "/" + file.getName());
                }
            }
            finally {
                if (writer != null) {
                    writer.close();
                }
            }
        }
        catch (IOException iOException) {}
    }

    private List generateExtractNestedJars(List classpath, CompiledEntry entry) {
        this.script.printTargetDeclaration(String.valueOf(entry.getName(false)) + ".nestedJars", null, null, null, null);
        if (classpath == null || classpath.size() == 0 || !(classpath.get(0) instanceof ClasspathComputer3_0.ClasspathElement)) {
            this.script.printTargetEnd();
            return classpath;
        }
        ArrayList<Object> extracted = new ArrayList<Object>(classpath.size());
        Iterator iterator = classpath.iterator();
        while (iterator.hasNext()) {
            ClasspathComputer3_0.ClasspathElement element = (ClasspathComputer3_0.ClasspathElement)iterator.next();
            if (element.getSubPath() == null) {
                extracted.add(element);
                continue;
            }
            String destPath = this.featureGenerator.getExtractedRoot(element);
            String destDir = String.valueOf(Utils.getPropertyFormat("buildDirectory")) + '/' + "nestedJars" + '/' + destPath.toString();
            this.script.printMkdirTask(destDir);
            this.script.printUnzipTask(element.getPath(), destDir, false, element.getSubPath(), null);
            extracted.add(String.valueOf(destDir) + '/' + element.getSubPath());
        }
        this.script.printTargetEnd();
        return extracted;
    }

    private void generateCompilationTarget(List classpath, CompiledEntry entry) {
        String outputKey;
        this.script.println();
        String name = entry.getName(false);
        List extractedPath = this.generateExtractNestedJars(classpath, entry);
        String depends = "init," + name + ".nestedJars";
        this.script.printTargetDeclaration(name, depends, null, entry.getName(true), NLS.bind((String)Messages.build_plugin_jar, (Object)(String.valueOf(this.model.getSymbolicName()) + ' ' + name)));
        String destdir = entry.getType() == 1 ? this.getJARLocation(entry.getName(true)) : this.getTempJARFolderLocation(entry.getName(true));
        this.script.printDeleteTask(destdir, null, null);
        this.script.printMkdirTask(destdir);
        this.script.printPathStructure("path", String.valueOf(name) + ".classpath", extractedPath);
        String[] sources = entry.getSource();
        HashMap<String, String> params = null;
        HashMap<String, Object> references = null;
        if (this.customBuildCallbacks != null) {
            params = new HashMap<String, String>(2);
            params.put("target.folder", destdir);
            int i = 1;
            while (i <= sources.length) {
                params.put("source.folder" + i, sources[i - 1]);
                ++i;
            }
            references = new HashMap<String, Object>(1);
            references.put(String.valueOf(name) + ".classpath", null);
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "pre." + name, this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, references);
        }
        FileSet[] workspaceFiles = null;
        String string = outputKey = name.equals(EXPANDED_DOT) ? DOT : name;
        if (this.workspaceOutputFolders != null && this.workspaceOutputFolders.containsKey(outputKey)) {
            boolean isFolder;
            boolean bl = isFolder = entry.getType() == 1;
            if (!BuildDirector.p2Gathering || !isFolder || this.customBuildCallbacks != null) {
                Set paths = (Set)this.workspaceOutputFolders.get(outputKey);
                workspaceFiles = new FileSet[paths.size()];
                int i = 0;
                Iterator iterator = paths.iterator();
                while (iterator.hasNext()) {
                    IPath path = (IPath)iterator.next();
                    workspaceFiles[i++] = new FileSet(String.valueOf(Utils.getPropertyFormat("basedir")) + "/" + path.toOSString(), null, null, null, "**/package.htm*", null, null);
                }
                if (isFolder) {
                    this.script.printCopyTask(null, destdir, workspaceFiles, true, false);
                }
            }
        } else {
            this.script.printComment("compile the source code");
            JavacTask javac = new JavacTask();
            javac.setClasspathId(String.valueOf(name) + ".classpath");
            javac.setBootClasspath(Utils.getPropertyFormat("bundleBootClasspath"));
            javac.setDestdir(destdir);
            javac.setFailOnError(Utils.getPropertyFormat("javacFailOnError"));
            javac.setDebug(Utils.getPropertyFormat("javacDebugInfo"));
            javac.setVerbose(Utils.getPropertyFormat("javacVerbose"));
            javac.setIncludeAntRuntime("no");
            javac.setSource(Utils.getPropertyFormat("bundleJavacSource"));
            javac.setTarget(Utils.getPropertyFormat("bundleJavacTarget"));
            javac.setCompileArgs(Utils.getPropertyFormat("compilerArg"));
            javac.setSrcdir(sources);
            javac.setLogExtension(Utils.getPropertyFormat("logExtension"));
            if (this.warningProperties != null) {
                javac.setWarningProperties(String.valueOf(Utils.getPropertyFormat("basedir")) + '/' + this.warningProperties);
            }
            if (this.generateErrorPropertyAttribute) {
                javac.setErrorProperty("compilation.error.occured");
            }
            this.generateCompilerSettings(javac, entry, classpath);
            this.script.print(javac);
        }
        this.script.printAntCallTask("checkCompilationResults", true, null);
        this.script.printComment("Copy necessary resources");
        FileSet[] fileSets = new FileSet[sources.length];
        int i = 0;
        while (i < sources.length) {
            String excludes = this.getFormattedSourceFileExtensions();
            excludes = excludes.length() > 0 ? String.valueOf(excludes) + ", **/package.htm*" : "**/package.htm*";
            String excludedFromJar = entry.getExcludedFromJar();
            if (excludedFromJar != null) {
                excludes = String.valueOf(excludes) + ',' + excludedFromJar;
            }
            fileSets[i] = new FileSet(sources[i], null, null, null, excludes, null, null);
            ++i;
        }
        this.script.printCopyTask(null, destdir, fileSets, true, false);
        if (this.customBuildCallbacks != null) {
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post.compile." + name, this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, references);
        }
        String jarLocation = this.getJARLocation(entry.getName(true));
        if (entry.getType() != 1) {
            this.script.printMkdirTask(new Path(jarLocation).removeLastSegments(1).toString());
            if (workspaceFiles != null) {
                this.script.printJarTask(jarLocation, destdir, workspaceFiles, this.getEmbeddedManifestFile(entry, destdir), null, "preserve");
            } else {
                this.script.printJarTask(jarLocation, destdir, this.getEmbeddedManifestFile(entry, destdir));
            }
            this.script.printDeleteTask(destdir, null, null);
        }
        if (this.customBuildCallbacks != null) {
            params.clear();
            params.put("jar.Location", jarLocation);
            this.script.printSubantTask(Utils.getPropertyFormat("customBuildCallbacks"), "post." + name, this.customCallbacksBuildpath, this.customCallbacksFailOnError, this.customCallbacksInheritAll, params, references);
        }
        this.script.printTargetEnd();
    }

    private boolean shouldGenerateErrorAttribute() {
        int idx;
        if (this.havePDEUIState()) {
            return false;
        }
        String versionString = ModelBuildScriptGenerator.getImmutableAntProperty("ant.version");
        if (versionString != null && (idx = versionString.indexOf("version")) > 0) {
            versionString = versionString.substring(idx + 7).trim();
            idx = 0;
            int segment = 0;
            char c = versionString.charAt(idx);
            while (idx < versionString.length() && segment < 3) {
                if (c == '.') {
                    ++segment;
                } else if (!Character.isDigit(c)) break;
                c = versionString.charAt(++idx);
            }
            if (idx > 0) {
                block9: {
                    try {
                        Version antVersion = new Version(versionString.substring(0, idx));
                        if (antVersion.compareTo(new Version(1, 7, 1)) < 0) break block9;
                        return true;
                    }
                    catch (IllegalArgumentException illegalArgumentException) {}
                }
                Status status = new Status(2, "org.eclipse.pde.build", 26, NLS.bind((String)Messages.warning_ant171Required, (Object)"p2.publishonerror"), null);
                BundleHelper.getDefault().getLog().log((IStatus)status);
                return false;
            }
        }
        return true;
    }

    private String getEmbeddedManifestFile(CompiledEntry jarEntry, String destdir) {
        String manifestName;
        block3: {
            try {
                manifestName = this.getBuildProperties().getProperty("manifest." + jarEntry.getName(true));
                if (manifestName != null) break block3;
                return null;
            }
            catch (CoreException coreException) {
                return null;
            }
        }
        return String.valueOf(destdir) + '/' + manifestName;
    }

    protected CompiledEntry[] extractEntriesToCompile(Properties properties) throws CoreException {
        return ModelBuildScriptGenerator.extractEntriesToCompile(properties, this.model);
    }

    public static CompiledEntry[] extractEntriesToCompile(Properties properties, BundleDescription model) throws CoreException {
        ArrayList<CompiledEntry> result = new ArrayList<CompiledEntry>(5);
        int prefixLength = "source.".length();
        Iterator iterator = properties.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String key = (String)entry.getKey();
            if (!key.startsWith("source.")) continue;
            key = key.substring(prefixLength);
            String[] source = Utils.getArrayFromString((String)entry.getValue());
            if (source.length == 0) {
                String message = NLS.bind((String)Messages.error_missingSourceFolder, (Object)model.getSymbolicName(), entry.getKey());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 16, message, null));
            }
            String[] output = Utils.getArrayFromString(properties.getProperty("output." + key));
            String[] extraClasspath = Utils.getArrayFromString(properties.getProperty("extra." + key));
            String excludedFromJar = properties.getProperty("exclude." + key);
            CompiledEntry newEntry = new CompiledEntry(key, source, output, extraClasspath, excludedFromJar, key.endsWith(".jar") ? (byte)0 : 1);
            result.add(newEntry);
        }
        return result.toArray(new CompiledEntry[result.size()]);
    }

    private void generateSRCTarget(CompiledEntry jar) {
        this.script.println();
        String name = jar.getName(false);
        String srcName = ModelBuildScriptGenerator.getSRCName(name);
        this.script.printTargetDeclaration(srcName, "init", null, srcName, null);
        String[] sources = jar.getSource();
        this.filterNonExistingSourceFolders(sources);
        FileSet[] fileSets = new FileSet[sources.length];
        int count = 0;
        int i = 0;
        while (i < sources.length) {
            if (sources[i] != null) {
                fileSets[count++] = new FileSet(sources[i], null, this.getFormattedSourceFileExtensions(), null, null, null, null);
            }
            ++i;
        }
        String srcLocation = this.getSRCLocation(name);
        String srcParent = new Path(srcLocation).removeLastSegments(1).toString();
        this.script.printMkdirTask(srcParent);
        this.script.printAntCallTask("zip." + srcName, true, null);
        this.script.printTargetEnd();
        this.script.printTargetDeclaration("zip." + srcName, null, null, null, null);
        if (count != 0) {
            this.script.printZipTask(srcLocation, null, false, false, fileSets);
        }
        this.script.printTargetEnd();
        this.script.printTargetDeclaration("copy." + srcName, null, null, null, null);
        if (count != 0) {
            String dest = null;
            dest = srcName.equals(SRC_ZIP) ? new Path(srcName).removeLastSegments(1).toString() : srcName.substring(0, srcName.length() - 4);
            String toDir = String.valueOf(Utils.getPropertyFormat("source.destination.folder")) + '/' + dest;
            this.script.printCopyTask(null, toDir, fileSets, true, true);
        }
        this.script.printTargetEnd();
    }

    private String getFormattedSourceFileExtensions() {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < this.sourceFileExtensions.length) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append("**/").append(this.sourceFileExtensions[i]);
            ++i;
        }
        return sb.toString();
    }

    private void filterNonExistingSourceFolders(String[] sources) {
        File pluginRoot = new File(this.getLocation(this.model));
        int i = 0;
        while (i < sources.length) {
            File file = new File(pluginRoot, sources[i]);
            if (!file.exists()) {
                sources[i] = null;
                Status status = new Status(2, "org.eclipse.pde.build", 11, NLS.bind((String)Messages.warning_cannotLocateSource, (Object)file.getAbsolutePath()), null);
                BundleHelper.getDefault().getLog().log((IStatus)status);
            }
            ++i;
        }
    }

    protected String getSRCLocation(String jarName) {
        return this.getJARLocation(ModelBuildScriptGenerator.getSRCName(jarName));
    }

    protected String getTempJARFolderLocation(String jarName) {
        Path destination = new Path(Utils.getPropertyFormat("temp.folder"));
        destination = destination.append(String.valueOf(jarName) + ".bin");
        return destination.toString();
    }

    protected String getJARLocation(String jarName) {
        return new Path(Utils.getPropertyFormat("build.result.folder")).append(jarName).toString();
    }

    protected String[] getClasspathEntries(BundleDescription lookedUpModel) throws CoreException {
        return (String[])this.getSite(false).getRegistry().getExtraData().get(new Long(lookedUpModel.getBundleId()));
    }

    protected Properties getBuildProperties() throws CoreException {
        if (this.buildProperties == null) {
            this.buildProperties = ModelBuildScriptGenerator.readProperties(this.model.getLocation(), this.propertiesFileName, this.isIgnoreMissingPropertiesFile() ? 0 : 2);
            return this.buildProperties;
        }
        return this.buildProperties;
    }

    public static String getSRCName(String jarName) {
        if (jarName.endsWith(".jar")) {
            return String.valueOf(jarName.substring(0, jarName.length() - 4)) + SRC_ZIP;
        }
        if (jarName.equals(EXPANDED_DOT) || jarName.equals(DOT)) {
            return SRC_ZIP;
        }
        return String.valueOf(jarName.replace('/', '.')) + SRC_ZIP;
    }

    private void updateExistingScript() throws CoreException {
        String root = this.getLocation(this.model);
        File buildFile = new File(root, this.buildScriptFileName);
        if (!buildFile.exists()) {
            String message = NLS.bind((String)Messages.error_missingCustomBuildFile, (Object)buildFile);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 7, message, null));
        }
        try {
            Utils.updateVersion(buildFile, "version.suffix", this.model.getVersion().toString());
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_writeScript, (Object)buildFile);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 7, message, (Throwable)e));
        }
    }

    protected static String replaceVariables(String sourceString, boolean compiledElement) {
        if (sourceString == null) {
            return null;
        }
        int i = -1;
        String result = sourceString;
        while ((i = result.indexOf("$ws$")) >= 0) {
            result = String.valueOf(result.substring(0, i)) + "ws/" + Utils.getPropertyFormat(compiledElement ? "ws" : "basews") + result.substring(i + "$ws$".length());
        }
        while ((i = result.indexOf("$os$")) >= 0) {
            result = String.valueOf(result.substring(0, i)) + "os/" + Utils.getPropertyFormat(compiledElement ? "os" : "baseos") + result.substring(i + "$os$".length());
        }
        while ((i = result.indexOf("$arch$")) >= 0) {
            result = String.valueOf(result.substring(0, i)) + "arch/" + Utils.getPropertyFormat(compiledElement ? "arch" : "basearch") + result.substring(i + "$os$".length());
        }
        while ((i = result.indexOf("$nl$")) >= 0) {
            result = String.valueOf(result.substring(0, i)) + "nl/" + Utils.getPropertyFormat(compiledElement ? "nl" : "basenl") + result.substring(i + "$nl$".length());
        }
        return result;
    }

    public BundleDescription getModel() {
        return this.model;
    }

    public String getPropertiesFileName() {
        return this.propertiesFileName;
    }

    public void setPropertiesFileName(String propertyFileName) {
        this.propertiesFileName = propertyFileName;
    }

    public String getBuildScriptFileName() {
        return this.buildScriptFileName;
    }

    public void setBuildScriptFileName(String buildScriptFileName) {
        this.buildScriptFileName = buildScriptFileName;
    }

    public void setSignJars(boolean value) {
        this.signJars = value;
    }

    protected BundleDescription getModel(String modelId, String modelVersion) throws CoreException {
        if (modelVersion == null) {
            return this.getSite(false).getRegistry().getResolvedBundle(modelId);
        }
        return this.getSite(false).getRegistry().getResolvedBundle(modelId, modelVersion);
    }

    public FeatureEntry getAssociatedEntry() {
        return this.associatedEntry;
    }

    public void setAssociatedEntry(FeatureEntry associatedEntry) {
        this.associatedEntry = associatedEntry;
    }

    protected void setWorkspaceOutputFolders(Map folders) {
        this.workspaceOutputFolders = folders;
    }

    public void setGenerateSourceReferences(boolean sourceReferences) {
        this.sourceReferences = sourceReferences;
    }

    public static class CompiledEntry {
        public static final byte JAR = 0;
        public static final byte FOLDER = 1;
        private final String name;
        private String resolvedName;
        private final String[] source;
        private final String[] output;
        private final String[] extraClasspath;
        private final String excludedFromJar;
        byte type;

        protected CompiledEntry(String entryName, String[] entrySource, String[] entryOutput, String[] entryExtraClasspath, String excludedFromJar, byte entryType) {
            this.name = entryName;
            this.source = entrySource;
            this.output = entryOutput;
            this.extraClasspath = entryExtraClasspath;
            this.type = entryType;
            this.excludedFromJar = excludedFromJar;
        }

        public String getName(boolean resolved) {
            if (!resolved) {
                return this.name;
            }
            if (this.resolvedName == null) {
                this.resolvedName = ModelBuildScriptGenerator.replaceVariables(this.name, true);
            }
            return this.resolvedName;
        }

        protected String[] getSource() {
            return this.source;
        }

        public String[] getOutput() {
            return this.output;
        }

        public String[] getExtraClasspath() {
            return this.extraClasspath;
        }

        public byte getType() {
            return this.type;
        }

        public String getExcludedFromJar() {
            return this.excludedFromJar;
        }
    }
}

