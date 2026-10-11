/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ant.core.AntCorePlugin
 *  org.eclipse.ant.core.AntCorePreferences
 *  org.eclipse.ant.core.AntRunner
 *  org.eclipse.ant.core.IAntClasspathEntry
 *  org.eclipse.ant.core.Property
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BuildScriptGenerator
 *  org.eclipse.pde.internal.build.site.QualifierReplacer
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.eclipse.pde.internal.core.exports;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.AntCorePreferences;
import org.eclipse.ant.core.AntRunner;
import org.eclipse.ant.core.IAntClasspathEntry;
import org.eclipse.ant.core.Property;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BuildScriptGenerator;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.eclipse.pde.internal.core.ClasspathHelper;
import org.eclipse.pde.internal.core.FeatureModelManager;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.XMLPrintHandler;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.exports.BuildUtilities;
import org.eclipse.pde.internal.core.exports.ExecutionEnvironmentProfileManager;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.exports.WorkspaceExportHelper;
import org.eclipse.pde.internal.core.feature.ExternalFeatureModel;
import org.eclipse.pde.internal.core.feature.FeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.target.TargetMetadataCollector;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.osgi.framework.InvalidSyntaxException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class FeatureExportOperation
extends Job {
    protected String fBuildTempLocation;
    protected String fBuildTempMetadataLocation;
    private String fDevProperties;
    private static boolean fHasErrors;
    protected HashMap fAntBuildProperties;
    protected WorkspaceExportHelper fWorkspaceExportHelper;
    protected State fStateCopy;
    protected static String FEATURE_POST_PROCESSING;
    protected static String PLUGIN_POST_PROCESSING;
    private static final String[] GENERIC_CONFIG;
    protected FeatureExportInfo fInfo;

    static {
        FEATURE_POST_PROCESSING = "features.postProcessingSteps.properties";
        PLUGIN_POST_PROCESSING = "plugins.postProcessingSteps.properties";
        GENERIC_CONFIG = new String[]{"*", "*", "*", ""};
    }

    public FeatureExportOperation(FeatureExportInfo info, String name) {
        super(name);
        this.fInfo = info;
        String qualifier = info.qualifier;
        if (qualifier == null) {
            qualifier = QualifierReplacer.getDateQualifier();
        }
        QualifierReplacer.setGlobalQualifier((String)qualifier);
        this.fBuildTempLocation = PDECore.getDefault().getStateLocation().append("temp").toString();
        this.fBuildTempMetadataLocation = PDECore.getDefault().getStateLocation().append("tempp2metadata").toString();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected IStatus run(IProgressMonitor monitor) {
        try {
            this.createDestination();
            String[][] configurations = this.fInfo.targets;
            if (configurations == null) {
                configurations = new String[1][];
            }
            monitor.beginTask("Exporting...", this.fInfo.items.length * 23 + 5 + 10);
            IStatus status = this.testBuildWorkspaceBeforeExport((IProgressMonitor)new SubProgressMonitor(monitor, 10));
            if (this.fInfo.exportSource && this.fInfo.exportSourceBundle) {
                String featureID = "org.eclipse.pde.container.feature";
                String fFeatureLocation = String.valueOf(this.fBuildTempLocation) + File.separator + featureID;
                this.createFeature(featureID, fFeatureLocation, this.fInfo.items, null, null, null);
                ExternalFeatureModel model = new ExternalFeatureModel();
                model.setInstallLocation(fFeatureLocation);
                BufferedInputStream stream = null;
                stream = new BufferedInputStream(new FileInputStream(new File(String.valueOf(fFeatureLocation) + File.separator + "feature.xml")));
                model.load(stream, true);
                if (stream != null) {
                    ((InputStream)stream).close();
                }
                this.doExport(model, null, (IProgressMonitor)new SubProgressMonitor(monitor, 20));
            } else {
                int j = 0;
                while (j < this.fInfo.items.length) {
                    if (monitor.isCanceled()) {
                        IStatus iStatus = Status.CANCEL_STATUS;
                        return iStatus;
                    }
                    try {
                        this.doExport((IFeatureModel)this.fInfo.items[j], configurations, (IProgressMonitor)new SubProgressMonitor(monitor, 20));
                    }
                    catch (CoreException e) {
                        IStatus iStatus = e.getStatus();
                        this.cleanup(null, (IProgressMonitor)new SubProgressMonitor(monitor, 3));
                        monitor.done();
                        return iStatus;
                    }
                    ++j;
                }
            }
            IStatus iStatus = status;
            return iStatus;
            finally {
                this.cleanup(null, (IProgressMonitor)new SubProgressMonitor(monitor, 3));
            }
        }
        catch (InvocationTargetException e) {
            Status status = new Status(4, "org.eclipse.pde.core", PDECoreMessages.FeatureBasedExportOperation_ProblemDuringExport, e.getCause() != null ? e.getCause() : e);
            return status;
        }
        catch (CoreException e) {
            Status status = new Status(4, "org.eclipse.pde.core", PDECoreMessages.FeatureBasedExportOperation_ProblemDuringExport, e.getCause() != null ? e.getCause() : e);
            return status;
        }
        catch (IOException e) {
            Status status = new Status(4, "org.eclipse.pde.core", PDECoreMessages.FeatureBasedExportOperation_ProblemDuringExport, (Throwable)e);
            return status;
        }
        finally {
            monitor.done();
        }
    }

    protected void save(File file, Properties properties, String header) {
        try {
            FileOutputStream stream = new FileOutputStream(file);
            properties.store(stream, header);
            stream.flush();
            stream.close();
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
    }

    /*
     * Exception decompiling
     */
    protected void appendMetadataToArchive(String[] configuration, IProgressMonitor monitor) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void createDestination(String os, String ws, String arch) throws InvocationTargetException {
        if (!this.fInfo.toDirectory || this.groupedConfigurations()) {
            return;
        }
        File file = new File(this.fInfo.destinationDirectory, String.valueOf(os) + '.' + ws + '.' + arch);
        if (!(file.exists() && file.isDirectory() || file.mkdirs())) {
            throw new InvocationTargetException(new Exception(PDECoreMessages.ExportWizard_badDirectory));
        }
    }

    private void doExport(IFeatureModel model, String[][] configs, IProgressMonitor monitor) throws CoreException, InvocationTargetException {
        IFeature feature = model.getFeature();
        if (configs == null || configs.length == 0 || configs[0] == null) {
            configs = new String[][]{{this.getOS(feature), this.getWS(feature), this.getOSArch(feature)}};
        } else {
            int i = 0;
            while (i < configs.length) {
                this.createDestination(configs[i][0], configs[i][1], configs[i][2]);
                ++i;
            }
        }
        try {
            String location = model.getInstallLocation();
            if (this.fInfo.useJarFormat) {
                this.createPostProcessingFile(new File(location, FEATURE_POST_PROCESSING));
                this.createPostProcessingFile(new File(location, PLUGIN_POST_PROCESSING));
            }
            this.doExport(feature.getId(), feature.getVersion(), location, configs, monitor);
        }
        finally {
            this.deleteBuildFiles(model);
        }
    }

    protected void createPostProcessingFile(File file) {
        block14: {
            FileOutputStream stream = null;
            try {
                try {
                    stream = new FileOutputStream(file);
                    Properties prop = new Properties();
                    prop.put("*", "updateJar");
                    prop.store(stream, "");
                    stream.flush();
                }
                catch (IOException iOException) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                        break block14;
                    }
                    catch (IOException iOException2) {}
                    break block14;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    protected void doExport(String featureID, String version, String featureLocation, String[][] configs, IProgressMonitor monitor) throws CoreException, InvocationTargetException {
        fHasErrors = false;
        try {
            monitor.beginTask("", 6 + configs.length * 4 + (this.publishingP2Metadata() ? 2 : 0));
            monitor.setTaskName(PDECoreMessages.FeatureExportJob_taskName);
            HashMap properties = this.createAntBuildProperties(configs);
            BuildScriptGenerator generator = new BuildScriptGenerator();
            this.setupGenerator(generator, featureID, version, configs, featureLocation);
            generator.generate();
            monitor.worked(1);
            monitor.setTaskName(PDECoreMessages.FeatureExportOperation_runningBuildScript);
            this.runScript(String.valueOf(featureLocation) + '/' + "compile." + featureID + ".xml", new String[]{"main"}, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
            if (this.fInfo.exportSource && !this.fInfo.exportSourceBundle) {
                this.runScript(this.getBuildScriptName(featureLocation), new String[]{"build.sources"}, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
            }
            if (this.publishingP2Metadata()) {
                monitor.setTaskName(PDECoreMessages.FeatureExportOperation_publishingMetadata);
                this.runScript(this.getAssembleP2ScriptName(featureID, featureLocation), new String[]{"main"}, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 2));
                if (this.groupedConfigurations()) {
                    configs = new String[][]{{"group", "group", "group"}};
                }
            }
            monitor.setTaskName(PDECoreMessages.FeatureExportOperation_runningAssemblyScript);
            int i = 0;
            while (i < configs.length) {
                this.setArchiveLocation(properties, configs[i][0], configs[i][1], configs[i][2]);
                this.runScript(this.getAssemblyScriptName(featureID, configs[i][0], configs[i][1], configs[i][2], featureLocation), new String[]{"main"}, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 2));
                ++i;
            }
            monitor.setTaskName(PDECoreMessages.FeatureExportOperation_runningPackagerScript);
            i = 0;
            while (i < configs.length) {
                this.setArchiveLocation(properties, configs[i][0], configs[i][1], configs[i][2]);
                this.runScript(this.getPackagerScriptName(featureID, configs[i][0], configs[i][1], configs[i][2], featureLocation), null, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 2));
                ++i;
            }
            properties.put("destination.temp.folder", String.valueOf(this.fBuildTempLocation) + "/pde.logs");
            this.runScript(this.getBuildScriptName(featureLocation), new String[]{"gather.logs"}, properties, (IProgressMonitor)new SubProgressMonitor(monitor, 2));
        }
        finally {
            monitor.done();
        }
    }

    protected boolean groupedConfigurations() {
        return this.publishingP2Metadata();
    }

    private void setArchiveLocation(Map antProperties, String os, String ws, String arch) {
        if (!this.fInfo.toDirectory) {
            String filename = this.fInfo.zipFileName;
            if (this.fInfo.targets != null && !this.groupedConfigurations()) {
                int i = filename.lastIndexOf(46);
                filename = String.valueOf(filename.substring(0, i)) + '.' + os + '.' + ws + '.' + arch + filename.substring(i);
            }
            antProperties.put("archiveFullPath", String.valueOf(this.fInfo.destinationDirectory) + File.separator + filename);
        } else {
            String dir = this.fInfo.destinationDirectory;
            if (this.fInfo.targets != null && !this.groupedConfigurations()) {
                dir = String.valueOf(dir) + File.separatorChar + os + '.' + ws + '.' + arch;
            }
            antProperties.put("assemblyTempDir", dir);
        }
    }

    public void deleteBuildFiles(Object object) throws CoreException {
        String directory;
        File dir;
        File[] children;
        IModel model = null;
        if (object instanceof BundleDescription) {
            model = PluginRegistry.findModel((BundleDescription)object);
        } else if (object instanceof IModel) {
            model = (IModel)object;
        }
        if (model == null) {
            return;
        }
        if (model.getUnderlyingResource() != null && !this.isCustomBuild(model) && (children = (dir = new File(directory = model instanceof IFeatureModel ? ((IFeatureModel)model).getInstallLocation() : ((IPluginModelBase)model).getInstallLocation())).listFiles()) != null) {
            int i = 0;
            while (i < children.length) {
                if (!children[i].isDirectory()) {
                    String filename = children[i].getName();
                    if (filename.equals("build.xml") || filename.startsWith("javaCompiler.") && filename.endsWith(".args") || filename.startsWith("assemble.") && filename.endsWith(".xml") || filename.startsWith("package.") && filename.endsWith(".xml") || filename.startsWith("compile.") && filename.endsWith(".xml") || filename.equals(FEATURE_POST_PROCESSING) || filename.equals(PLUGIN_POST_PROCESSING)) {
                        children[i].delete();
                    }
                } else if (children[i].getName().equals("temp.folder")) {
                    CoreUtility.deleteContent(children[i]);
                }
                ++i;
            }
        }
        if (model instanceof IFeatureModel) {
            IFeature feature = ((IFeatureModel)model).getFeature();
            IFeatureChild[] children2 = feature.getIncludedFeatures();
            int i = 0;
            while (i < children2.length) {
                IFeature ref = ((FeatureChild)children2[i]).getReferencedFeature();
                if (ref != null) {
                    this.deleteBuildFiles(ref.getModel());
                }
                ++i;
            }
            IFeaturePlugin[] plugins = feature.getPlugins();
            int i2 = 0;
            while (i2 < plugins.length) {
                IPluginModelBase plugin = PluginRegistry.findModel(plugins[i2].getId());
                if (plugin != null) {
                    this.deleteBuildFiles(plugin);
                }
                ++i2;
            }
        }
    }

    private String getBuildScriptName(String featureLocation) {
        return String.valueOf(featureLocation) + '/' + "build.xml";
    }

    protected String getAssemblyScriptName(String featureID, String os, String ws, String arch, String featureLocation) {
        return String.valueOf(featureLocation) + '/' + "assemble." + featureID + "." + os + "." + ws + "." + arch + ".xml";
    }

    protected String getAssembleP2ScriptName(String featureID, String featureLocation) {
        return String.valueOf(featureLocation) + '/' + "assemble." + featureID + ".p2.xml";
    }

    protected void runScript(String location, String[] targets, Map properties, IProgressMonitor monitor) throws InvocationTargetException, CoreException {
        AntCorePreferences preferences;
        IAntClasspathEntry entry;
        AntRunner runner = new AntRunner();
        runner.addUserProperties(properties);
        runner.setAntHome(location);
        runner.setBuildFileLocation(location);
        runner.addBuildListener("org.eclipse.pde.internal.core.ant.ExportBuildListener");
        runner.setExecutionTargets(targets);
        if (this.fInfo.signingInfo != null && (entry = (preferences = AntCorePlugin.getPlugin().getPreferences()).getToolsJarEntry()) != null) {
            URL[] urls;
            block7: {
                IAntClasspathEntry[] classpath = preferences.getAntHomeClasspathEntries();
                urls = new URL[classpath.length + 2];
                int i = 0;
                while (i < classpath.length) {
                    urls[i] = classpath[i].getEntryURL();
                    ++i;
                }
                IPath path = new Path(entry.getEntryURL().toString()).removeLastSegments(2);
                path = path.append("bin");
                try {
                    try {
                        urls[classpath.length] = new URL(path.toString());
                    }
                    catch (MalformedURLException malformedURLException) {
                        urls[classpath.length] = entry.getEntryURL();
                        urls[classpath.length + 1] = entry.getEntryURL();
                        break block7;
                    }
                }
                catch (Throwable throwable) {
                    urls[classpath.length + 1] = entry.getEntryURL();
                    throw throwable;
                }
                urls[classpath.length + 1] = entry.getEntryURL();
            }
            runner.setCustomClasspath(urls);
        }
        runner.run(monitor);
    }

    protected String getPackagerScriptName(String featureID, String os, String ws, String arch, String featureLocation) {
        return String.valueOf(featureLocation) + '/' + "package." + featureID + "." + os + "." + ws + "." + arch + ".xml";
    }

    protected HashMap createAntBuildProperties(String[][] configs) {
        if (this.fAntBuildProperties == null) {
            String target;
            this.fAntBuildProperties = new HashMap(15);
            List defaultProperties = AntCorePlugin.getPlugin().getPreferences().getProperties();
            ListIterator li = defaultProperties.listIterator();
            while (li.hasNext()) {
                Property prop = (Property)li.next();
                this.fAntBuildProperties.put(prop.getName(), prop.getValue());
            }
            if (this.fInfo.signingInfo != null) {
                this.fAntBuildProperties.put("sign.alias", this.fInfo.signingInfo[0]);
                this.fAntBuildProperties.put("sign.keystore", this.fInfo.signingInfo[1]);
                this.fAntBuildProperties.put("sign.storepass", this.fInfo.signingInfo[2]);
                this.fAntBuildProperties.put("sign.keypass", this.fInfo.signingInfo[3]);
            }
            if (this.fInfo.jnlpInfo != null) {
                this.fAntBuildProperties.put("jnlp.codebase", this.fInfo.jnlpInfo[0]);
                this.fAntBuildProperties.put("jnlp.j2se", this.fInfo.jnlpInfo[1]);
            }
            this.fAntBuildProperties.put("buildTempFolder", String.valueOf(this.fBuildTempLocation) + "/destination");
            this.fAntBuildProperties.put("feature.temp.folder", String.valueOf(this.fBuildTempLocation) + "/destination");
            this.fAntBuildProperties.put("include.children", "true");
            this.fAntBuildProperties.put("eclipse.running", "true");
            this.fAntBuildProperties.put("generateAPIDescription", "true");
            this.fAntBuildProperties.put("baseos", TargetPlatform.getOS());
            this.fAntBuildProperties.put("basews", TargetPlatform.getWS());
            this.fAntBuildProperties.put("basearch", TargetPlatform.getOSArch());
            this.fAntBuildProperties.put("basenl", TargetPlatform.getNL());
            this.fAntBuildProperties.put("bootclasspath", BuildUtilities.getBootClasspath());
            IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
            IExecutionEnvironment[] envs = manager.getExecutionEnvironments();
            int i = 0;
            while (i < envs.length) {
                String id = envs[i].getId();
                if (id != null) {
                    this.fAntBuildProperties.put(id, BuildUtilities.getBootClasspath(id));
                }
                ++i;
            }
            this.fAntBuildProperties.put("javacFailOnError", "false");
            this.fAntBuildProperties.put("javacDebugInfo", "on");
            this.fAntBuildProperties.put("javacVerbose", "false");
            IEclipsePreferences prefs = new InstanceScope().getNode("org.eclipse.jdt.core");
            IEclipsePreferences def = new DefaultScope().getNode("org.eclipse.jdt.core");
            String source = prefs.get("org.eclipse.jdt.core.compiler.source", null);
            if (source == null) {
                source = def.get("org.eclipse.jdt.core.compiler.source", null);
            }
            if (source != null) {
                this.fAntBuildProperties.put("javacSource", source);
            }
            if ((target = prefs.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform", null)) == null) {
                target = def.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform", null);
            }
            if (target != null) {
                this.fAntBuildProperties.put("javacTarget", target);
            }
            this.fAntBuildProperties.put("buildDirectory", String.valueOf(this.fBuildTempLocation) + "/assemblyLocation");
            this.fAntBuildProperties.put("buildLabel", ".");
            this.fAntBuildProperties.put("collectingFolder", ".");
            String prefix = Platform.getOS().equals("macosx") ? "." : "";
            this.fAntBuildProperties.put("archivePrefix", prefix);
            this.fAntBuildProperties.put("tarargs", "");
            this.fAntBuildProperties.put("runPackager", "true");
        }
        this.setP2MetaDataProperties(this.fAntBuildProperties);
        return this.fAntBuildProperties;
    }

    protected boolean publishingP2Metadata() {
        return this.fInfo.useJarFormat && this.fInfo.exportMetadata;
    }

    protected URI[] getMetadataContextFromTargetPlatform() {
        try {
            URI[] context = TargetMetadataCollector.getMetadataRepositories(null);
            if (context.length > 0) {
                return context;
            }
        }
        catch (CoreException coreException) {
            return null;
        }
        return null;
    }

    protected String getCategoryDefinition() {
        return this.fInfo.categoryDefinition;
    }

    protected void setP2MetaDataProperties(Map map) {
        if (this.fInfo.useJarFormat && this.fInfo.exportMetadata) {
            map.put("generate.p2.metadata", "true");
            map.put("p2.flavor", "tooling");
            map.put("p2.publish.artifacts", "false");
            map.put("p2.final.mode.override", "true");
            map.put("p2.compress", "true");
            map.put("p2.gathering", Boolean.toString(this.publishingP2Metadata()));
            if (this.getCategoryDefinition() != null) {
                map.put("p2.category.definition", this.getCategoryDefinition());
            }
            try {
                String destination = "";
                if (this.publishingP2Metadata()) {
                    destination = new File(this.fBuildTempMetadataLocation).toURL().toString();
                    map.put("p2.build.repo", destination);
                } else {
                    destination = this.fInfo.toDirectory ? new File(this.fInfo.destinationDirectory).toURL().toString() : new File(this.fBuildTempMetadataLocation).toURL().toString();
                    map.put("p2.metadata.repo", destination);
                    map.put("p2.artifact.repo", destination);
                }
                map.put("p2.metadata.repo.name", PDECoreMessages.FeatureExportOperation_0);
                map.put("p2.artifact.repo.name", PDECoreMessages.FeatureExportOperation_0);
            }
            catch (MalformedURLException e) {
                PDECore.log(e);
            }
        }
    }

    private String getOS(IFeature feature) {
        String os = feature.getOS();
        if (os == null || os.trim().length() == 0 || os.indexOf(44) != -1 || os.equals("*")) {
            return TargetPlatform.getOS();
        }
        return os;
    }

    private String getWS(IFeature feature) {
        String ws = feature.getWS();
        if (ws == null || ws.trim().length() == 0 || ws.indexOf(44) != -1 || ws.equals("*")) {
            return TargetPlatform.getWS();
        }
        return ws;
    }

    private String getOSArch(IFeature feature) {
        String arch = feature.getArch();
        if (arch == null || arch.trim().length() == 0 || arch.indexOf(44) != -1 || arch.equals("*")) {
            return TargetPlatform.getOSArch();
        }
        return arch;
    }

    protected void createDestination() throws InvocationTargetException {
        File file = new File(this.fInfo.destinationDirectory);
        if (!(file.exists() && file.isDirectory() || file.mkdirs())) {
            throw new InvocationTargetException(new Exception(PDECoreMessages.ExportWizard_badDirectory));
        }
        File metadataTemp = new File(this.fBuildTempMetadataLocation);
        if (metadataTemp.exists()) {
            this.deleteDir(metadataTemp);
        }
    }

    protected void deleteDir(File dir) {
        if (dir.exists()) {
            File[] children;
            if (dir.isDirectory() && (children = dir.listFiles()) != null) {
                int i = 0;
                while (i < children.length) {
                    this.deleteDir(children[i]);
                    ++i;
                }
            }
            dir.delete();
        }
    }

    private String getConfigInfo(String[][] configs) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < configs.length) {
            if (i > 0) {
                buffer.append('&');
            }
            buffer.append(configs[i][0]);
            buffer.append(',');
            buffer.append(configs[i][1]);
            buffer.append(',');
            buffer.append(configs[i][2]);
            ++i;
        }
        return buffer.toString();
    }

    private String getArchivesFormat(String[][] configs) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < configs.length) {
            if (i > 0) {
                buffer.append('&');
            }
            buffer.append(configs[i][0]);
            buffer.append(',');
            buffer.append(configs[i][1]);
            buffer.append(',');
            buffer.append(configs[i][2]);
            buffer.append('-');
            buffer.append(this.fInfo.toDirectory ? "folder" : "antZip");
            ++i;
        }
        if (this.groupedConfigurations()) {
            buffer.append('&');
            buffer.append("group,group,group-");
            buffer.append(this.fInfo.toDirectory ? "folder" : "antZip");
        }
        return buffer.toString();
    }

    protected void setupGenerator(BuildScriptGenerator generator, String featureID, String versionId, String[][] configs, String featureLocation) throws CoreException {
        URI[] contexts;
        generator.setBuildingOSGi(true);
        generator.setChildren(true);
        generator.setWorkingDirectory(featureLocation);
        generator.setDevEntries(this.getDevProperties());
        generator.setElements(new String[]{"feature@" + featureID + (versionId == null ? "" : ":" + versionId)});
        generator.setPluginPath(this.getPaths());
        generator.setReportResolutionErrors(false);
        generator.setIgnoreMissingPropertiesFile(true);
        generator.setSignJars(this.fInfo.signingInfo != null);
        generator.setGenerateJnlp(this.fInfo.jnlpInfo != null);
        generator.setFlattenDependencies(true);
        AbstractScriptGenerator.setConfigInfo((String)this.getConfigInfo(configs));
        generator.setArchivesFormat(this.getArchivesFormat(configs));
        generator.setPDEState(this.getBuildState());
        generator.setNextId(TargetPlatformHelper.getPDEState().getNextId());
        if (this.fInfo.useWorkspaceCompiledClasses) {
            generator.setUseWorkspaceBinaries(true);
            generator.setStateExtraData(TargetPlatformHelper.getBundleClasspaths(TargetPlatformHelper.getPDEState()), TargetPlatformHelper.getPatchMap(TargetPlatformHelper.getPDEState()), this.getWorkspaceExportHelper().getWorkspaceOutputFolders(this.fInfo.items));
        } else {
            generator.setStateExtraData(TargetPlatformHelper.getBundleClasspaths(TargetPlatformHelper.getPDEState()), TargetPlatformHelper.getPatchMap(TargetPlatformHelper.getPDEState()));
        }
        AbstractScriptGenerator.setForceUpdateJar((boolean)false);
        AbstractScriptGenerator.setEmbeddedSource((this.fInfo.exportSource && !this.fInfo.exportSourceBundle ? 1 : 0) != 0);
        Properties properties = new Properties();
        properties.put("allowBinaryCycles", Boolean.toString(this.fInfo.allowBinaryCycles));
        properties.put("p2.gathering", Boolean.toString(this.publishingP2Metadata()));
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        IExecutionEnvironment[] envs = manager.getExecutionEnvironments();
        int i = 0;
        while (i < envs.length) {
            String id = envs[i].getId();
            if (id != null) {
                properties.put(id, BuildUtilities.getBootClasspath(id));
            }
            ++i;
        }
        generator.setImmutableAntProperties(properties);
        String[] extraLocations = ExecutionEnvironmentProfileManager.getCustomProfileLocations();
        if (extraLocations != null) {
            generator.setEESources(extraLocations);
        }
        if (this.publishingP2Metadata() && (contexts = this.getMetadataContextFromTargetPlatform()) != null) {
            generator.setContextMetadataRepositories(contexts);
        }
    }

    protected State getState(String os, String ws, String arch) {
        State main = TargetPlatformHelper.getState();
        if (os.equals(TargetPlatform.getOS()) && ws.equals(TargetPlatform.getWS()) && arch.equals(TargetPlatform.getOSArch())) {
            return main;
        }
        if (this.fStateCopy == null) {
            this.copyState(main);
        }
        Dictionary[] dictionaries = this.fStateCopy.getPlatformProperties();
        int i = 0;
        while (i < dictionaries.length) {
            Dictionary properties = dictionaries[i];
            properties.put("osgi.os", os);
            properties.put("osgi.ws", ws);
            properties.put("osgi.arch", arch);
            ++i;
        }
        this.fStateCopy.resolve(false);
        return this.fStateCopy;
    }

    protected State getBuildState() {
        State main = TargetPlatformHelper.getState();
        if (this.fStateCopy == null) {
            this.copyState(main);
        }
        return this.fStateCopy;
    }

    protected void copyState(State state) {
        this.fStateCopy = state.getFactory().createState(state);
        this.fStateCopy.setResolver(Platform.getPlatformAdmin().createResolver());
        this.fStateCopy.setPlatformProperties(state.getPlatformProperties());
    }

    private String getDevProperties() {
        if (this.fDevProperties == null) {
            this.fDevProperties = ClasspathHelper.getDevEntriesProperties(String.valueOf(this.fBuildTempLocation) + "/dev.properties", false);
        }
        return this.fDevProperties;
    }

    protected boolean isCustomBuild(IModel model) throws CoreException {
        IBuildModel buildModel = null;
        IFile buildFile = PDEProject.getBuildProperties(model.getUnderlyingResource().getProject());
        if (buildFile.exists()) {
            buildModel = new WorkspaceBuildModel(buildFile);
            buildModel.load();
        }
        if (buildModel != null) {
            IBuild build = buildModel.getBuild();
            if (build == null) {
                return false;
            }
            IBuildEntry entry = build.getEntry("custom");
            if (entry != null) {
                String[] tokens = entry.getTokens();
                int i = 0;
                while (i < tokens.length) {
                    if (tokens[i].equals("true")) {
                        return true;
                    }
                    ++i;
                }
            }
        }
        return false;
    }

    protected String[] getPaths() {
        HashMap<String, String> map = new HashMap<String, String>();
        FeatureModelManager fmm = PDECore.getDefault().getFeatureModelManager();
        IFeatureModel[] models = fmm.getExternalModels();
        int i = 0;
        while (i < models.length) {
            map.put(models[i].getFeature().getId(), models[i].getInstallLocation());
            ++i;
        }
        models = fmm.getWorkspaceModels();
        String[] locations = new String[models.length];
        int i2 = 0;
        while (i2 < models.length) {
            map.remove(models[i2].getFeature().getId());
            locations[i2] = models[i2].getInstallLocation();
            ++i2;
        }
        String[] paths = new String[map.size() + models.length];
        paths = map.values().toArray(paths);
        System.arraycopy(locations, 0, paths, map.size(), models.length);
        return paths;
    }

    /*
     * Exception decompiling
     */
    protected void cleanup(String[] config, IProgressMonitor monitor) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    protected File createScriptFile(String filename) throws IOException {
        String path = PDECore.getDefault().getStateLocation().toOSString();
        File zip = new File(path, filename);
        if (zip.exists()) {
            zip.delete();
            zip.createNewFile();
        }
        return zip;
    }

    private String logName(String[] config) {
        if (config == null) {
            return "/logs.zip";
        }
        return "/logs." + config[0] + '.' + config[1] + '.' + config[2] + ".zip";
    }

    private void createFeature(String featureID, String featureLocation, Object[] featuresExported, Document doc, Element root, Properties prop) throws IOException {
        try {
            if (doc == null) {
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                doc = factory.newDocumentBuilder().newDocument();
                root = doc.createElement("feature");
                root.setAttribute("id", featureID);
                root.setAttribute("version", "1.0");
                doc.appendChild(root);
                prop = new Properties();
                prop.put("pde", "marker");
                prop.put("individualSourceBundles", "true");
            }
            boolean returnAfterLoop = false;
            int i = 0;
            while (i < featuresExported.length) {
                Element includes;
                IFeature feature;
                if (featuresExported[i] instanceof IFeatureModel) {
                    feature = ((IFeatureModel)featuresExported[i]).getFeature();
                    if (feature.getIncludedFeatures().length > 0) {
                        this.createFeature(featureID, featureLocation, feature.getIncludedFeatures(), doc, root, prop);
                    }
                    includes = doc.createElement("includes");
                    includes.setAttribute("id", String.valueOf(feature.getId()) + ".source");
                    includes.setAttribute("version", feature.getVersion());
                    root.appendChild(includes);
                    prop.put("generate.feature@" + feature.getId() + ".source", feature.getId());
                    includes = doc.createElement("includes");
                    includes.setAttribute("id", feature.getId());
                    includes.setAttribute("version", feature.getVersion());
                    root.appendChild(includes);
                } else if (featuresExported[i] instanceof IFeatureChild) {
                    returnAfterLoop = true;
                    feature = ((FeatureChild)featuresExported[i]).getReferencedFeature();
                    if (feature != null) {
                        if (feature.getIncludedFeatures().length > 0) {
                            this.createFeature(featureID, featureLocation, feature.getIncludedFeatures(), doc, root, prop);
                        }
                        includes = doc.createElement("includes");
                        includes.setAttribute("id", String.valueOf(feature.getId()) + ".source");
                        includes.setAttribute("version", feature.getVersion());
                        root.appendChild(includes);
                        prop.put("generate.feature@" + feature.getId() + ".source", feature.getId());
                    }
                }
                ++i;
            }
            if (returnAfterLoop) {
                return;
            }
            File file = new File(featureLocation);
            if (!file.exists() || !file.isDirectory()) {
                file.mkdirs();
            }
            this.save(new File(file, "build.properties"), prop, "Marker File");
            XMLPrintHandler.writeFile(doc, new File(file, "feature.xml"));
        }
        catch (DOMException dOMException) {
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
        }
        catch (ParserConfigurationException parserConfigurationException) {}
    }

    private Dictionary getEnvironment(String[] config) {
        Hashtable<String, String> environment = new Hashtable<String, String>(4);
        ((Dictionary)environment).put("osgi.os", config[0]);
        ((Dictionary)environment).put("osgi.ws", config[1]);
        ((Dictionary)environment).put("osgi.arch", config[2]);
        ((Dictionary)environment).put("osgi.nl", config[3]);
        return environment;
    }

    private void setFilterAttributes(Element plugin, String[] config) {
        if (config != GENERIC_CONFIG) {
            plugin.setAttribute("os", config[0]);
            plugin.setAttribute("ws", config[1]);
            plugin.setAttribute("arch", config[2]);
        }
    }

    private BundleDescription getMatchingLauncher(String[] configuration, BundleDescription[] fragments) {
        Dictionary environment = this.getEnvironment(configuration);
        int i = 0;
        while (i < fragments.length) {
            if (!this.isNLFragment(fragments[i]) && this.shouldAddPlugin(fragments[i], environment)) {
                return fragments[i];
            }
            ++i;
        }
        return null;
    }

    private boolean isNLFragment(BundleDescription fragment) {
        String symbolicName = fragment.getSymbolicName();
        int idx = symbolicName.lastIndexOf(46);
        return idx > -1 && symbolicName.regionMatches(true, idx + 1, "nl", 0, 2);
    }

    protected void createFeature(String featureID, String featureLocation, String[][] configurations, boolean includeLauncher) throws IOException {
        File file = new File(featureLocation);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        try {
            BundleDescription bundle;
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            Document doc = factory.newDocumentBuilder().newDocument();
            Element root = doc.createElement("feature");
            root.setAttribute("id", featureID);
            root.setAttribute("version", "1.0");
            doc.appendChild(root);
            if (includeLauncher) {
                IFeatureModel model = PDECore.getDefault().getFeatureModelManager().getDeltaPackFeature();
                if (model != null) {
                    IFeature feature = model.getFeature();
                    Element includes = doc.createElement("includes");
                    includes.setAttribute("id", feature.getId());
                    includes.setAttribute("version", feature.getVersion());
                    root.appendChild(includes);
                } else {
                    IPluginModelBase launcherPlugin = PluginRegistry.findModel("org.eclipse.equinox.launcher");
                    if (launcherPlugin != null && (bundle = launcherPlugin.getBundleDescription()) != null) {
                        Element plugin = doc.createElement("plugin");
                        plugin.setAttribute("id", bundle.getSymbolicName());
                        plugin.setAttribute("version", bundle.getVersion().toString());
                        plugin.setAttribute("unpack", "false");
                        root.appendChild(plugin);
                        BundleDescription[] fragments = bundle.getFragments();
                        int i = 0;
                        while (i < configurations.length) {
                            BundleDescription launcherFragment = this.getMatchingLauncher(configurations[i], fragments);
                            if (launcherFragment != null) {
                                Element fragment = doc.createElement("plugin");
                                fragment.setAttribute("id", launcherFragment.getSymbolicName());
                                fragment.setAttribute("version", launcherFragment.getVersion().toString());
                                fragment.setAttribute("fragment", "true");
                                this.setFilterAttributes(fragment, configurations[i]);
                                root.appendChild(fragment);
                            }
                            ++i;
                        }
                    }
                }
            }
            List<IPluginModelBase> workspacePlugins = Arrays.asList(PluginRegistry.getWorkspaceModels());
            int i = 0;
            while (i < this.fInfo.items.length) {
                if (this.fInfo.items[i] instanceof IFeatureModel) {
                    IFeature feature = ((IFeatureModel)this.fInfo.items[i]).getFeature();
                    Element includes = doc.createElement("includes");
                    includes.setAttribute("id", feature.getId());
                    includes.setAttribute("version", feature.getVersion());
                    root.appendChild(includes);
                    if (this.fInfo.exportSource && this.fInfo.exportSourceBundle) {
                        includes = doc.createElement("includes");
                        includes.setAttribute("id", String.valueOf(feature.getId()) + ".source");
                        includes.setAttribute("version", feature.getVersion());
                        root.appendChild(includes);
                    }
                } else {
                    bundle = null;
                    if (this.fInfo.items[i] instanceof IPluginModelBase) {
                        bundle = ((IPluginModelBase)this.fInfo.items[i]).getBundleDescription();
                    }
                    if (bundle == null && this.fInfo.items[i] instanceof BundleDescription) {
                        bundle = (BundleDescription)this.fInfo.items[i];
                    }
                    if (bundle != null) {
                        ArrayList<Object> configs = new ArrayList<Object>();
                        if (configurations.length > 1) {
                            configs.add(GENERIC_CONFIG);
                        }
                        configs.addAll(Arrays.asList(configurations));
                        Iterator iterator = configs.iterator();
                        while (iterator.hasNext()) {
                            String[] currentConfig = (String[])iterator.next();
                            Dictionary environment = this.getEnvironment(currentConfig);
                            if (!this.shouldAddPlugin(bundle, environment)) continue;
                            Element plugin = doc.createElement("plugin");
                            plugin.setAttribute("id", bundle.getSymbolicName());
                            plugin.setAttribute("version", bundle.getVersion().toString());
                            this.setFilterAttributes(plugin, currentConfig);
                            this.setAdditionalAttributes(plugin, bundle);
                            root.appendChild(plugin);
                            if (this.fInfo.exportSource && this.fInfo.exportSourceBundle) {
                                if (workspacePlugins.contains(PluginRegistry.findModel(bundle))) {
                                    plugin = doc.createElement("plugin");
                                    plugin.setAttribute("id", String.valueOf(bundle.getSymbolicName()) + ".source");
                                    plugin.setAttribute("version", bundle.getVersion().toString());
                                    this.setFilterAttributes(plugin, currentConfig);
                                    this.setAdditionalAttributes(plugin, bundle);
                                    root.appendChild(plugin);
                                } else {
                                    IPluginModelBase model = PluginRegistry.findModel(String.valueOf(bundle.getSymbolicName()) + ".source");
                                    if (model != null) {
                                        bundle = model.getBundleDescription();
                                        plugin = doc.createElement("plugin");
                                        plugin.setAttribute("id", bundle.getSymbolicName());
                                        plugin.setAttribute("version", bundle.getVersion().toString());
                                        this.setFilterAttributes(plugin, currentConfig);
                                        this.setAdditionalAttributes(plugin, bundle);
                                        root.appendChild(plugin);
                                    }
                                }
                            }
                            if (currentConfig == GENERIC_CONFIG) break;
                        }
                    }
                }
                ++i;
            }
            XMLPrintHandler.writeFile(doc, new File(file, "feature.xml"));
        }
        catch (DOMException dOMException) {
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
        }
        catch (ParserConfigurationException parserConfigurationException) {}
    }

    protected void setAdditionalAttributes(Element plugin, BundleDescription bundle) {
    }

    public static void errorFound() {
        fHasErrors = true;
    }

    public boolean hasAntErrors() {
        return fHasErrors;
    }

    protected boolean shouldAddPlugin(BundleDescription bundle, Dictionary environment) {
        String filterSpec = bundle.getPlatformFilter();
        try {
            return filterSpec == null || PDECore.getDefault().getBundleContext().createFilter(filterSpec).match(environment);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return false;
        }
    }

    protected IStatus testBuildWorkspaceBeforeExport(IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask("", 50);
            if (this.fInfo.useWorkspaceCompiledClasses) {
                this.getWorkspaceExportHelper().buildBeforeExport(this.fInfo.items, (IProgressMonitor)new SubProgressMonitor(monitor, 45));
                Set errors = this.getWorkspaceExportHelper().checkForErrors(this.fInfo.items);
                if (!errors.isEmpty()) {
                    monitor.worked(5);
                    Status status = new Status(4, "org.eclipse.pde.core", NLS.bind((String)PDECoreMessages.FeatureExportOperation_workspaceBuildErrorsFoundDuringExport, (Object)errors.toString()));
                    return status;
                }
                monitor.worked(5);
            }
            IStatus iStatus = Status.OK_STATUS;
            return iStatus;
        }
        finally {
            monitor.done();
        }
    }

    protected WorkspaceExportHelper getWorkspaceExportHelper() {
        if (this.fWorkspaceExportHelper == null) {
            this.fWorkspaceExportHelper = new WorkspaceExportHelper();
        }
        return this.fWorkspaceExportHelper;
    }
}

