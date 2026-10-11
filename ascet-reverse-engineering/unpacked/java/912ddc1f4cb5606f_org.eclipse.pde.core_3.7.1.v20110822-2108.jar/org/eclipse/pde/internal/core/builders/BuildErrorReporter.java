/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.IBuildPropertiesConstants
 */
package org.eclipse.pde.internal.core.builders;

import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.ErrorReporter;
import org.eclipse.pde.internal.core.builders.PDEBuilderHelper;
import org.eclipse.pde.internal.core.builders.SourceEntryErrorReporter;
import org.eclipse.pde.internal.core.ibundle.IBundleFragmentModel;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.text.build.BuildEntry;
import org.eclipse.pde.internal.core.text.build.BuildModel;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.eclipse.pde.internal.core.util.PatternConstructor;

public class BuildErrorReporter
extends ErrorReporter
implements IBuildPropertiesConstants {
    private static final String DEF_SOURCE_ENTRY = "source..";
    private static final String[] RESERVED_NAMES = new String[]{"meta-inf", "osgi-inf", "build.properties", "plugin.xml", "plugin.properties"};
    private static final String ASSERT_IDENTIFIER = "assertIdentifier";
    private static final String ENUM_IDENTIFIER = "enumIdentifier";
    private static final String JRE_1_1 = "JRE-1.1";
    private static final String J2SE_1_2 = "J2SE-1.2";
    private static final String J2SE_1_3 = "J2SE-1.3";
    private static final String J2SE_1_4 = "J2SE-1.4";
    private static final String J2SE_1_5 = "J2SE-1.5";
    private static final String JavaSE_1_6 = "JavaSE-1.6";
    private static final String JavaSE_1_7 = "JavaSE-1.7";
    protected ArrayList fProblemList = new ArrayList();
    protected int fBuildSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build");
    protected int fClasspathSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.unresolved-import");
    protected int fJavaComplianceSeverity;
    protected int fJavaCompilerSeverity;
    protected int fSrcInclSeverity;
    protected int fBinInclSeverity;
    protected int fMissingOutputLibSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.missing.output");
    protected int fSrcLibSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.source.library");
    protected int fOututLibSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.output.library");
    protected int fEncodingSeverity;

    public BuildErrorReporter(IFile buildFile) {
        super(buildFile);
        this.fJavaComplianceSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.java.compliance");
        this.fJavaCompilerSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.java.compiler");
        this.fSrcInclSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.src.includes");
        this.fBinInclSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.bin.includes");
        this.fEncodingSeverity = CompilerFlags.getFlag(this.fFile.getProject(), "compilers.p.build.encodings");
    }

    public void validate(IProgressMonitor monitor) {
        WorkspaceBuildModel wbm = new WorkspaceBuildModel(this.fFile);
        wbm.load();
        if (!wbm.isLoaded()) {
            return;
        }
        this.validateBuild(wbm.getBuild(true));
        if (this.fProblemList.size() > 0) {
            this.reportErrors(this.prepareTextBuildModel(monitor));
        }
    }

    private void validateBuild(IBuild build) {
        IBuildEntry binIncludes = null;
        IBuildEntry binExcludes = null;
        IBuildEntry srcIncludes = null;
        IBuildEntry srcExcludes = null;
        IBuildEntry jarsExtra = null;
        IBuildEntry bundleList = null;
        IBuildEntry javacSource = null;
        IBuildEntry javacTarget = null;
        IBuildEntry jreCompilationProfile = null;
        IBuildEntry javaProjectWarnings = null;
        ArrayList<IBuildEntry> javacWarnings = new ArrayList<IBuildEntry>();
        ArrayList<IBuildEntry> javacErrors = new ArrayList<IBuildEntry>();
        ArrayList<IBuildEntry> sourceEntries = new ArrayList<IBuildEntry>(1);
        ArrayList<String> sourceEntryKeys = new ArrayList<String>(1);
        ArrayList<IBuildEntry> outputEntries = new ArrayList<IBuildEntry>(1);
        HashMap<String, String> encodingEntries = new HashMap<String, String>();
        IBuildEntry[] entries = build.getBuildEntries();
        int i = 0;
        while (i < entries.length) {
            String[] tokens;
            String name = entries[i].getName();
            if (entries[i].getTokens().length == 0) {
                this.prepareError(name, null, PDECoreMessages.BuildErrorReporter_emptyEntry, 8197, "fatal");
            } else if (name.equals("bin.includes")) {
                binIncludes = entries[i];
            } else if (name.equals("bin.excludes")) {
                binExcludes = entries[i];
            } else if (name.equals("src.includes")) {
                srcIncludes = entries[i];
            } else if (name.equals("src.excludes")) {
                srcExcludes = entries[i];
            } else if (name.equals("javacSource")) {
                javacSource = entries[i];
            } else if (name.equals("javacTarget")) {
                javacTarget = entries[i];
            } else if (name.equals("javacProjectSettings")) {
                javaProjectWarnings = entries[i];
            } else if (name.equals("jre.compilation.profile")) {
                jreCompilationProfile = entries[i];
            } else if (name.startsWith("javacWarnings.")) {
                javacWarnings.add(entries[i]);
            } else if (name.startsWith("javacErrors.")) {
                javacErrors.add(entries[i]);
            } else if (name.startsWith("source.")) {
                sourceEntries.add(entries[i]);
            } else if (name.startsWith("output.")) {
                outputEntries.add(entries[i]);
            } else if (name.startsWith("javacDefaultEncoding.")) {
                encodingEntries.put(entries[i].getName(), entries[i].getTokens()[0]);
            } else if (name.equals("jars.extra.classpath")) {
                jarsExtra = entries[i];
            } else if (name.equals("additional.bundles")) {
                bundleList = entries[i];
            } else if (name.equals("custom") && (tokens = entries[i].getTokens()).length == 1 && tokens[0].equalsIgnoreCase("true")) {
                return;
            }
            if (name.startsWith("source.")) {
                sourceEntryKeys.add(entries[i].getName());
            }
            ++i;
        }
        if (this.fClasspathSeverity != 2 && bundleList != null) {
            this.validateDependencyManagement(bundleList);
        }
        if (jarsExtra != null) {
            this.validateJarsExtraClasspath(jarsExtra);
        }
        this.validateIncludes(binIncludes, sourceEntryKeys, this.fBinInclSeverity);
        this.validateIncludes(binExcludes, sourceEntryKeys, this.fBinInclSeverity);
        this.validateIncludes(srcIncludes, sourceEntryKeys, this.fSrcInclSeverity);
        this.validateIncludes(srcExcludes, sourceEntryKeys, this.fSrcInclSeverity);
        this.validateSourceFoldersInSrcIncludes(srcIncludes);
        try {
            IJavaProject jp = JavaCore.create((IProject)this.fProject);
            if (jp.exists()) {
                IClasspathEntry[] cpes = jp.getRawClasspath();
                this.validateMissingLibraries(sourceEntryKeys, cpes);
                this.validateSourceEntries(sourceEntries, srcExcludes, cpes);
                SourceEntryErrorReporter srcEntryErrReporter = new SourceEntryErrorReporter(this.fFile, build);
                srcEntryErrReporter.initialize(sourceEntries, outputEntries, cpes, this.fProject);
                srcEntryErrReporter.validate();
                ArrayList problems = srcEntryErrReporter.getProblemList();
                int i2 = 0;
                while (i2 < problems.size()) {
                    if (!this.fProblemList.contains(problems.get(i2))) {
                        this.fProblemList.add(problems.get(i2));
                    }
                    ++i2;
                }
            }
        }
        catch (JavaModelException javaModelException) {}
        this.validateMissingSourceInBinIncludes(binIncludes, sourceEntryKeys, build);
        this.validateBinIncludes(binIncludes);
        this.validateExecutionEnvironment(javacSource, javacTarget, jreCompilationProfile, javacWarnings, javacErrors, this.getSourceLibraries(sourceEntries));
        this.validateJavaCompilerSettings(javaProjectWarnings);
    }

    private List getSourceLibraries(List sourceEntries) {
        ArrayList<String> libraries = new ArrayList<String>();
        Iterator iterator = sourceEntries.iterator();
        while (iterator.hasNext()) {
            IBuildEntry sourceEntry = (IBuildEntry)iterator.next();
            String libName = sourceEntry.getName().substring("source.".length());
            libraries.add(libName);
        }
        return libraries;
    }

    private void validateExecutionEnvironment(IBuildEntry javacSourceEntry, IBuildEntry javacTargetEntry, IBuildEntry jreCompilationProfileEntry, ArrayList javacWarningsEntries, ArrayList javacErrorsEntries, List libraryNames) {
        IJavaProject project = JavaCore.create((IProject)this.fProject);
        if (project.exists()) {
            IClasspathEntry[] classpath = null;
            try {
                classpath = project.getRawClasspath();
            }
            catch (JavaModelException e) {
                PDECore.log(e);
                return;
            }
            boolean source = false;
            int i = 0;
            while (i < classpath.length) {
                IClasspathEntry cpe = classpath[i];
                if (cpe.getEntryKind() == 3) {
                    source = true;
                }
                ++i;
            }
            if (!source) {
                return;
            }
            String projectComplianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", false);
            if (projectComplianceLevel != null) {
                boolean warnForJavacWarnings;
                String projectClassCompatibility;
                BundleDescription bundleDesc;
                IPluginModelBase model = PluginRegistry.findModel(this.fProject);
                String[] execEnvs = null;
                if (model != null && (bundleDesc = model.getBundleDescription()) != null) {
                    execEnvs = bundleDesc.getExecutionEnvironments();
                }
                if (execEnvs == null || execEnvs.length == 0) {
                    return;
                }
                String execEnv = execEnvs[0];
                String projectSourceCompatibility = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                if (projectComplianceLevel.equals(this.findMatchingEE(projectSourceCompatibility, projectClassCompatibility = project.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true), false)) && execEnv.equals(this.findMatchingEE(projectSourceCompatibility, projectClassCompatibility, true))) {
                    return;
                }
                HashMap defaultComplianceOptions = new HashMap();
                JavaCore.setComplianceOptions((String)projectComplianceLevel, defaultComplianceOptions);
                String projectJavaCompatibility = this.findMatchingEE(projectSourceCompatibility, projectClassCompatibility, true);
                String message = null;
                if (projectJavaCompatibility != null) {
                    if (jreCompilationProfileEntry == null) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceMissingEntry, (Object)"jre.compilation.profile", (Object)PDECoreMessages.BuildErrorReporter_CompilercomplianceLevel);
                        this.prepareError("jre.compilation.profile", projectJavaCompatibility, message, 8199, this.fJavaComplianceSeverity, "ee");
                    } else if (!projectJavaCompatibility.equalsIgnoreCase(jreCompilationProfileEntry.getTokens()[0])) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceDifferentToken, (Object)"jre.compilation.profile", (Object)PDECoreMessages.BuildErrorReporter_CompilercomplianceLevel);
                        this.prepareError("jre.compilation.profile", projectJavaCompatibility, message, 8198, this.fJavaComplianceSeverity, "ee");
                    }
                } else {
                    if (projectSourceCompatibility.equals(defaultComplianceOptions.get("org.eclipse.jdt.core.compiler.source"))) {
                        if (javacSourceEntry != null) {
                            message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_BuildEntryNotRequiredMatchesDefault, (Object)"javacSource", (Object)PDECoreMessages.BuildErrorReporter_SourceCompatibility);
                            this.prepareError("javacSource", null, message, 8197, this.fJavaComplianceSeverity, "ee");
                        }
                    } else if (javacSourceEntry == null) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceMissingEntry, (Object)"javacSource", (Object)PDECoreMessages.BuildErrorReporter_SourceCompatibility);
                        this.prepareError("javacSource", projectSourceCompatibility, message, 8199, this.fJavaComplianceSeverity, "ee");
                    } else if (!projectSourceCompatibility.equalsIgnoreCase(javacSourceEntry.getTokens()[0])) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceDifferentToken, (Object)"javacSource", (Object)PDECoreMessages.BuildErrorReporter_SourceCompatibility);
                        this.prepareError("javacSource", projectSourceCompatibility, message, 8198, this.fJavaComplianceSeverity, "ee");
                    }
                    if (projectClassCompatibility.equals(defaultComplianceOptions.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform"))) {
                        if (javacTargetEntry != null) {
                            message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_BuildEntryNotRequiredMatchesDefault, (Object)"javacTarget", (Object)PDECoreMessages.BuildErrorReporter_GeneratedClassFilesCompatibility);
                            this.prepareError("javacTarget", null, message, 8197, this.fJavaComplianceSeverity, "ee");
                        }
                    } else if (javacTargetEntry == null) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceMissingEntry, (Object)"javacTarget", (Object)PDECoreMessages.BuildErrorReporter_GeneratedClassFilesCompatibility);
                        this.prepareError("javacTarget", projectClassCompatibility, message, 8199, this.fJavaComplianceSeverity, "ee");
                    } else if (!projectClassCompatibility.equalsIgnoreCase(javacTargetEntry.getTokens()[0])) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceDifferentToken, (Object)"javacTarget", (Object)PDECoreMessages.BuildErrorReporter_GeneratedClassFilesCompatibility);
                        this.prepareError("javacTarget", projectClassCompatibility, message, 8198, this.fJavaComplianceSeverity, "ee");
                    }
                }
                boolean bl = warnForJavacWarnings = message != null || javacSourceEntry != null || javacTargetEntry != null || jreCompilationProfileEntry != null;
                if (!warnForJavacWarnings) {
                    return;
                }
                this.checkJavaComplianceSettings(projectComplianceLevel, javacWarningsEntries, javacErrorsEntries, libraryNames);
            }
        }
    }

    private void checkJavaComplianceSettings(String complianceLevel, ArrayList javacWarningsEntries, ArrayList javacErrorsEntries, List libraryNames) {
        ArrayList<String> complianceWarnSettings = new ArrayList<String>(3);
        ArrayList<String> complianceErrorSettings = new ArrayList<String>(3);
        IJavaProject project = JavaCore.create((IProject)this.fProject);
        if (project.exists()) {
            String message;
            String currentIdentifier;
            Iterator iterator2;
            String missingTokens;
            IBuildEntry candidate;
            Iterator iterator22;
            IBuildEntry matchingEntry;
            String libName;
            Iterator iterator;
            HashMap defaultComplianceOptions = new HashMap();
            JavaCore.setComplianceOptions((String)complianceLevel, defaultComplianceOptions);
            String assertIdentifier = project.getOption("org.eclipse.jdt.core.compiler.problem.assertIdentifier", false);
            String defaultAssert = (String)defaultComplianceOptions.get("org.eclipse.jdt.core.compiler.problem.assertIdentifier");
            if (assertIdentifier != null && !assertIdentifier.equalsIgnoreCase(defaultAssert)) {
                if ("error".equalsIgnoreCase(assertIdentifier)) {
                    complianceErrorSettings.add(ASSERT_IDENTIFIER);
                } else if ("warning".equalsIgnoreCase(assertIdentifier)) {
                    complianceWarnSettings.add(ASSERT_IDENTIFIER);
                }
            }
            String enumIdentifier = project.getOption("org.eclipse.jdt.core.compiler.problem.enumIdentifier", false);
            String defaultEnum = (String)defaultComplianceOptions.get("org.eclipse.jdt.core.compiler.problem.enumIdentifier");
            if (enumIdentifier != null && !enumIdentifier.equalsIgnoreCase(defaultEnum)) {
                if ("error".equalsIgnoreCase(enumIdentifier)) {
                    complianceErrorSettings.add(ENUM_IDENTIFIER);
                } else if ("warning".equalsIgnoreCase(enumIdentifier)) {
                    complianceWarnSettings.add(ENUM_IDENTIFIER);
                }
            }
            if (complianceWarnSettings.size() > 0) {
                iterator = libraryNames.iterator();
                while (iterator.hasNext()) {
                    libName = (String)iterator.next();
                    matchingEntry = null;
                    iterator22 = javacWarningsEntries.iterator();
                    while (iterator22.hasNext()) {
                        candidate = (IBuildEntry)iterator22.next();
                        if (!candidate.getName().equals("javacWarnings." + libName)) continue;
                        matchingEntry = candidate;
                        break;
                    }
                    if (matchingEntry == null) {
                        missingTokens = "";
                        iterator2 = complianceWarnSettings.iterator();
                        while (iterator2.hasNext()) {
                            currentIdentifier = (String)iterator2.next();
                            missingTokens = this.join(missingTokens, String.valueOf('-') + currentIdentifier);
                        }
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceMissingEntry, (Object)("javacWarnings." + libName));
                        this.prepareError("javacWarnings." + libName, missingTokens, message, 8199, this.fJavaComplianceSeverity, "ee");
                        continue;
                    }
                    missingTokens = "";
                    iterator2 = complianceWarnSettings.iterator();
                    while (iterator2.hasNext()) {
                        currentIdentifier = (String)iterator2.next();
                        if (matchingEntry.contains(currentIdentifier) || matchingEntry.contains(String.valueOf('+') + currentIdentifier) || matchingEntry.contains(String.valueOf('-') + currentIdentifier)) continue;
                        this.join(missingTokens, String.valueOf('-') + currentIdentifier);
                    }
                    if (missingTokens.length() <= 0) continue;
                    message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceDifferentToken, (Object)("javacWarnings." + libName));
                    this.prepareError("javacWarnings." + libName, missingTokens, message, 8199, this.fJavaComplianceSeverity, "ee");
                }
            }
            if (complianceErrorSettings.size() > 0) {
                iterator = libraryNames.iterator();
                while (iterator.hasNext()) {
                    libName = (String)iterator.next();
                    matchingEntry = null;
                    iterator22 = javacErrorsEntries.iterator();
                    while (iterator22.hasNext()) {
                        candidate = (IBuildEntry)iterator22.next();
                        if (!candidate.getName().equals("javacErrors." + libName)) continue;
                        matchingEntry = candidate;
                        break;
                    }
                    if (matchingEntry == null) {
                        missingTokens = "";
                        iterator2 = complianceErrorSettings.iterator();
                        while (iterator2.hasNext()) {
                            currentIdentifier = (String)iterator2.next();
                            missingTokens = this.join(missingTokens, String.valueOf('-') + currentIdentifier);
                        }
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceMissingEntry, (Object)("javacErrors." + libName));
                        this.prepareError("javacErrors." + libName, missingTokens, message, 8199, this.fJavaComplianceSeverity, "ee");
                        continue;
                    }
                    missingTokens = "";
                    iterator2 = complianceErrorSettings.iterator();
                    while (iterator2.hasNext()) {
                        currentIdentifier = (String)iterator2.next();
                        if (matchingEntry.contains(currentIdentifier) || matchingEntry.contains(String.valueOf('+') + currentIdentifier) || matchingEntry.contains(String.valueOf('-') + currentIdentifier)) continue;
                        missingTokens = this.join(missingTokens, String.valueOf('-') + currentIdentifier);
                    }
                    if (missingTokens.length() <= 0) continue;
                    message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_ProjectSpecificJavaComplianceDifferentToken, (Object)("javacErrors." + libName));
                    this.prepareError("javacErrors." + libName, missingTokens, message, 8199, this.fJavaComplianceSeverity, "ee");
                }
            }
        }
    }

    private String findMatchingEE(String srcCompatibility, String clsCompatibility, boolean ee) {
        String executionEnv = null;
        String complaince = null;
        if ("1.1".equals(srcCompatibility) && "1.1".equals(clsCompatibility)) {
            executionEnv = JRE_1_1;
            complaince = "1.1";
        } else if ("1.2".equals(srcCompatibility) && "1.1".equals(clsCompatibility)) {
            executionEnv = J2SE_1_2;
            complaince = "1.2";
        } else if ("1.3".equals(srcCompatibility) && "1.1".equals(clsCompatibility)) {
            executionEnv = J2SE_1_3;
            complaince = "1.3";
        } else if ("1.3".equals(srcCompatibility) && "1.2".equals(clsCompatibility)) {
            executionEnv = J2SE_1_4;
            complaince = "1.4";
        } else if ("1.5".equals(srcCompatibility) && "1.5".equals(clsCompatibility)) {
            executionEnv = J2SE_1_5;
            complaince = "1.5";
        } else if ("1.6".equals(srcCompatibility) && "1.6".equals(clsCompatibility)) {
            executionEnv = JavaSE_1_6;
            complaince = "1.6";
        } else if ("1.7".equals(srcCompatibility) && "1.7".equals(clsCompatibility)) {
            executionEnv = JavaSE_1_7;
            complaince = "1.7";
        }
        if (ee) {
            return executionEnv;
        }
        return complaince;
    }

    private void validateBinIncludes(IBuildEntry binIncludes) {
        IPluginModelBase model;
        IFolder OSGinf;
        if (PDEProject.getManifest(this.fProject).exists()) {
            this.validateBinIncludes(binIncludes, "META-INF/");
        }
        if ((OSGinf = PDEProject.getOSGiInf(this.fProject)).exists()) {
            try {
                if (OSGinf.members().length > 0) {
                    this.validateBinIncludes(binIncludes, "OSGI-INF/");
                }
            }
            catch (CoreException coreException) {}
        }
        if (PDEProject.getFragmentXml(this.fProject).exists()) {
            this.validateBinIncludes(binIncludes, "fragment.xml");
        }
        if (PDEProject.getPluginXml(this.fProject).exists()) {
            this.validateBinIncludes(binIncludes, "plugin.xml");
        }
        if ((model = PluginRegistry.findModel(this.fProject)) == null) {
            return;
        }
        if (model instanceof IBundlePluginModelBase && !(model instanceof IBundleFragmentModel)) {
            IBundleModel bm = ((IBundlePluginModelBase)model).getBundleModel();
            IManifestHeader mh = bm.getBundle().getManifestHeader("Bundle-Localization");
            Path resourcePath = null;
            String entry = null;
            if (mh == null || mh.getValue() == null) {
                resourcePath = new Path("OSGI-INF/l10n/bundle");
                entry = "OSGI-INF/l10n/bundle";
            } else {
                String localization = mh.getValue();
                int index = localization.lastIndexOf(47);
                if (index != -1) {
                    entry = localization.substring(0, index + 1);
                    resourcePath = new Path(entry);
                } else {
                    entry = mh.getValue().concat(".properties");
                    resourcePath = new Path(entry);
                }
            }
            if (resourcePath != null && entry != null && PDEProject.getBundleRoot(this.fProject).exists((IPath)resourcePath)) {
                this.validateBinIncludes(binIncludes, entry);
            }
        }
    }

    private void validateBinIncludes(IBuildEntry binIncludes, String key) {
        if (binIncludes == null) {
            return;
        }
        String[] tokens = binIncludes.getTokens();
        boolean exists = false;
        int i = 0;
        while (i < tokens.length) {
            if (key.startsWith(tokens[i])) {
                exists = true;
                break;
            }
            IPath project = this.fFile.getProject().getLocation();
            if (project != null && tokens[i] != null) {
                File file = project.toFile();
                File[] files = file.listFiles(new WildcardFilenameFilter(tokens[i]));
                int j = 0;
                while (j < files.length) {
                    if (files[j].toString().endsWith(key)) {
                        exists = true;
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        if (!exists) {
            this.prepareError("bin.includes", key, NLS.bind((String)PDECoreMessages.BuildErrorReporter_binIncludesMissing, (Object)key), 8195, this.fBinInclSeverity, "fatal");
        }
    }

    private void validateJarsExtraClasspath(IBuildEntry javaExtra) {
        String platform = "platform:/plugin/";
        String[] tokens = javaExtra.getTokens();
        IPath projectPath = javaExtra.getModel().getUnderlyingResource().getProject().getLocation();
        int i = 0;
        while (i < tokens.length) {
            boolean exists = true;
            if (tokens[i].startsWith(platform)) {
                String path = tokens[i].substring(platform.length());
                int sep = path.indexOf(47);
                if (sep > -1) {
                    IPluginModelBase model = PluginRegistry.findModel(path.substring(0, sep));
                    if (model == null) {
                        exists = false;
                    } else {
                        IResource resource = model.getUnderlyingResource();
                        path = path.substring(sep + 1);
                        if (resource == null) {
                            String location = model.getInstallLocation();
                            File external = new File(location);
                            if (external.isDirectory()) {
                                IPath p = new Path(location).addTrailingSeparator().append(path);
                                exists = new File(p.toOSString()).exists();
                            } else {
                                exists = false;
                            }
                        } else {
                            exists = resource.getProject().findMember(path) != null;
                        }
                    }
                }
            } else {
                exists = projectPath.append(tokens[i]).toFile().exists();
            }
            if (!exists && !this.startsWithAntVariable(tokens[i])) {
                this.prepareError("jars.extra.classpath", tokens[i], NLS.bind((String)PDECoreMessages.BuildErrorReporter_cannotFindJar, (Object)tokens[i]), -1, this.fBuildSeverity, "");
            }
            ++i;
        }
    }

    private void validateMissingSourceInBinIncludes(IBuildEntry binIncludes, ArrayList sourceEntryKeys, IBuild build) {
        if (binIncludes == null) {
            return;
        }
        ArrayList<String> pluginLibraryNames = new ArrayList<String>(1);
        IPluginModelBase pluginModel = PluginRegistry.findModel(this.fProject);
        if (pluginModel != null) {
            IPluginLibrary[] pluginLibraries = pluginModel.getPluginBase().getLibraries();
            int i = 0;
            while (i < pluginLibraries.length) {
                pluginLibraryNames.add(pluginLibraries[i].getName());
                ++i;
            }
        }
        if (!pluginLibraryNames.contains(".")) {
            pluginLibraryNames.add(".");
        }
        int i = 0;
        while (i < sourceEntryKeys.size()) {
            IBuildEntry entry;
            String[] tokens;
            String key = (String)sourceEntryKeys.get(i);
            if (!pluginLibraryNames.contains(key)) {
                return;
            }
            if (!DEF_SOURCE_ENTRY.equals(key) || (tokens = (entry = build.getEntry(DEF_SOURCE_ENTRY)).getTokens()).length != 1 || !tokens[0].equals(".")) {
                Path path;
                key = key.substring("source.".length());
                boolean found = false;
                String[] binIncludesTokens = binIncludes.getTokens();
                int j = 0;
                while (j < binIncludesTokens.length) {
                    Pattern pattern = PatternConstructor.createPattern(binIncludesTokens[j], false);
                    if (pattern.matcher(key).matches()) {
                        found = true;
                    }
                    ++j;
                }
                if (!found && (path = new Path(key)).getFileExtension() == null && !key.endsWith("/")) {
                    key = String.valueOf(key) + "/";
                    int j2 = 0;
                    while (j2 < binIncludesTokens.length) {
                        Pattern pattern = PatternConstructor.createPattern(binIncludesTokens[j2], false);
                        if (pattern.matcher(key).matches()) {
                            found = true;
                        }
                        ++j2;
                    }
                }
                if (!found) {
                    this.prepareError("bin.includes", key, NLS.bind((String)PDECoreMessages.BuildErrorReporter_binIncludesMissing, (Object)key), 8195, this.fBinInclSeverity, "fatal");
                }
            }
            ++i;
        }
    }

    private void validateMissingLibraries(ArrayList sourceEntryKeys, IClasspathEntry[] cpes) {
        IBundleModel bm;
        IManifestHeader mh;
        boolean srcFolderExists = false;
        int j = 0;
        while (j < cpes.length) {
            if (cpes[j].getEntryKind() == 3) {
                srcFolderExists = true;
                break;
            }
            ++j;
        }
        if (!srcFolderExists) {
            return;
        }
        IPluginModelBase model = PluginRegistry.findModel(this.fProject);
        if (model == null) {
            return;
        }
        if (!(!(model instanceof IBundlePluginModelBase) || model instanceof IBundleFragmentModel || (mh = (bm = ((IBundlePluginModelBase)model).getBundleModel()).getBundle().getManifestHeader("Bundle-ClassPath")) != null && mh.getValue() != null || sourceEntryKeys.contains(DEF_SOURCE_ENTRY))) {
            this.prepareError(DEF_SOURCE_ENTRY, null, PDECoreMessages.BuildErrorReporter_sourceMissing, -1, this.fSrcLibSeverity, "");
        }
        IPluginLibrary[] libraries = model.getPluginBase().getLibraries();
        int i = 0;
        while (i < libraries.length) {
            block12: {
                String sourceEntryKey;
                String libname;
                block11: {
                    block10: {
                        libname = libraries[i].getName();
                        if (!libname.equals(".")) break block10;
                        if (sourceEntryKeys.contains(DEF_SOURCE_ENTRY)) break block11;
                        this.prepareError(DEF_SOURCE_ENTRY, null, PDECoreMessages.BuildErrorReporter_sourceMissing, -1, this.fSrcLibSeverity, "");
                        break block12;
                    }
                    if (this.fProject.findMember(libname) != null) break block12;
                }
                if (!sourceEntryKeys.contains(sourceEntryKey = "source." + libname) && !this.containedInFragment(model.getBundleDescription(), libname)) {
                    this.prepareError(sourceEntryKey, null, NLS.bind((String)PDECoreMessages.BuildErrorReporter_missingEntry, (Object)sourceEntryKey), 8195, "");
                }
            }
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean containedInFragment(BundleDescription description, String libname) {
        if (description == null) {
            return false;
        }
        fragments = description.getFragments();
        if (fragments == null) {
            return false;
        }
        j = 0;
        while (j < fragments.length) {
            fragmentModel = PluginRegistry.findModel(fragments[j]);
            if (fragmentModel != null && fragmentModel.getUnderlyingResource() != null) {
                project = fragmentModel.getUnderlyingResource().getProject();
                if (project.findMember(libname) != null) {
                    return true;
                }
                try {
                    build = ClasspathUtilCore.getBuild(fragmentModel);
                    if (build == null) ** GOTO lbl34
                    entries = build.getBuildEntries();
                    i = 0;
                    while (true) {
                        if (i >= entries.length) {
                            return false;
                        }
                        if (entries[i].getName().equals("source." + libname)) {
                            return true;
                        }
                        ++i;
                    }
                }
                catch (CoreException v0) {}
            } else {
                location = fragments[j].getLocation();
                external = new File(location);
                if (external.exists()) {
                    if (external.isDirectory()) {
                        p = new Path(location).addTrailingSeparator().append(libname);
                        return new File(p.toOSString()).exists();
                    }
                    return CoreUtility.jarContainsResource(external, libname, false);
                }
            }
lbl34:
            // 4 sources

            ++j;
        }
        return false;
    }

    private void validateSourceEntries(ArrayList sourceEntries, IBuildEntry srcExcludes, IClasspathEntry[] cpes) {
        if (sourceEntries == null || sourceEntries.size() == 0) {
            return;
        }
        String[] unlisted = PDEBuilderHelper.getUnlistedClasspaths(sourceEntries, this.fProject, cpes);
        List<Object> excludeList = new ArrayList(0);
        if (srcExcludes != null && srcExcludes.getTokens().length > 0) {
            excludeList = Arrays.asList(srcExcludes.getTokens());
        }
        String name = ((IBuildEntry)sourceEntries.get(0)).getName();
        String message = PDECoreMessages.BuildErrorReporter_classpathEntryMissing1;
        if (sourceEntries.size() > 1) {
            name = DEF_SOURCE_ENTRY;
            message = PDECoreMessages.BuildErrorReporter_classpathEntryMissing;
        }
        int i = 0;
        while (i < unlisted.length) {
            if (unlisted[i] != null && !excludeList.contains(unlisted[i])) {
                BuildProblem error = this.prepareError(name, unlisted[i], NLS.bind((String)message, (Object)unlisted[i], (Object)name), 8195, this.fSrcLibSeverity, "");
                error.addExtraBuildEntryTokenAttribute("src.excludes", unlisted[i]);
            }
            ++i;
        }
    }

    private void validateSourceFoldersInSrcIncludes(IBuildEntry includes) {
        if (includes == null) {
            return;
        }
        ArrayList<IPath> sourceFolderList = new ArrayList<IPath>(0);
        try {
            IJavaProject javaProject = JavaCore.create((IProject)this.fProject);
            if (javaProject.exists()) {
                IClasspathEntry[] classPathEntries = javaProject.getResolvedClasspath(true);
                int index = 0;
                while (index < classPathEntries.length) {
                    if (classPathEntries[index].getEntryKind() == 3) {
                        sourceFolderList.add(classPathEntries[index].getPath());
                    }
                    ++index;
                }
            }
        }
        catch (JavaModelException javaModelException) {}
        List<String> reservedTokens = Arrays.asList(RESERVED_NAMES);
        String[] tokens = includes.getTokens();
        int i = 0;
        while (i < tokens.length) {
            IResource res = this.fProject.findMember(tokens[i]);
            if (res != null) {
                String errorMessage = null;
                if (sourceFolderList.contains(res.getFullPath())) {
                    errorMessage = PDECoreMessages.BuildErrorReporter_srcIncludesSourceFolder;
                } else if (tokens[i].startsWith(".") || reservedTokens.contains(res.getName().toString().toLowerCase())) {
                    errorMessage = NLS.bind((String)PDECoreMessages.BuildErrorReporter_srcIncludesSourceFolder1, (Object)res.getName());
                }
                if (errorMessage != null) {
                    this.prepareError(includes.getName(), tokens[i], errorMessage, 8197, this.fSrcInclSeverity, "");
                }
            }
            ++i;
        }
    }

    private void validateIncludes(IBuildEntry includes, ArrayList sourceIncludes, int severity) {
        if (includes == null) {
            return;
        }
        String[] tokens = includes.getTokens();
        int i = 0;
        while (i < tokens.length) {
            block6: {
                int fixId;
                String message;
                String token;
                block8: {
                    IResource member;
                    block7: {
                        token = tokens[i].trim();
                        if (token.indexOf("*") != -1 || token.equals(".") || this.startsWithAntVariable(token)) break block6;
                        member = PDEProject.getBundleRoot(this.fProject).findMember(token);
                        message = null;
                        fixId = -1;
                        if (member != null) break block7;
                        if (sourceIncludes.contains("source." + token)) break block6;
                        message = token.endsWith("/") ? NLS.bind((String)PDECoreMessages.BuildErrorReporter_missingFolder, (Object)token) : NLS.bind((String)PDECoreMessages.BuildErrorReporter_missingFile, (Object)token);
                        fixId = 8197;
                        break block8;
                    }
                    if (token.endsWith("/") && !(member instanceof IFolder)) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_entiresMustRefDirs, (Object)token);
                        fixId = 8194;
                    } else if (!token.endsWith("/") && !(member instanceof IFile)) {
                        message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_dirsMustEndSlash, (Object)token);
                        fixId = 8193;
                    }
                }
                if (message != null) {
                    this.prepareError(includes.getName(), token, message, fixId, severity, "");
                }
            }
            ++i;
        }
    }

    private boolean startsWithAntVariable(String token) {
        int varStart = token.indexOf("${");
        return varStart != -1 && varStart < token.indexOf("}");
    }

    private void validateDependencyManagement(IBuildEntry bundleList) {
        String[] bundles = bundleList.getTokens();
        int i = 0;
        while (i < bundles.length) {
            if (PluginRegistry.findModel(bundles[i]) == null) {
                this.prepareError("additional.bundles", bundles[i], NLS.bind((String)PDECoreMessages.BuildErrorReporter_cannotFindBundle, (Object)bundles[i]), -1, this.fClasspathSeverity, "");
            }
            ++i;
        }
    }

    private void validateJavaCompilerSettings(IBuildEntry useJavaProjectSettings) {
        IJavaProject project = JavaCore.create((IProject)this.fProject);
        if (project.exists()) {
            Map options = project.getOptions(false);
            if (options.containsKey("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess")) {
                if (useJavaProjectSettings != null) {
                    boolean entryCorrect = false;
                    String[] tokens = useJavaProjectSettings.getTokens();
                    if (tokens != null && tokens.length == 1) {
                        if (Boolean.TRUE.toString().equalsIgnoreCase(tokens[0])) {
                            entryCorrect = this.fProject.equals((Object)PDEProject.getBundleRoot(this.fProject));
                        } else {
                            Path prefFile = null;
                            prefFile = new Path(tokens[0]);
                            if (prefFile.isAbsolute()) {
                                entryCorrect = prefFile.toFile().exists();
                            } else {
                                IContainer root = PDEProject.getBundleRoot(this.fProject);
                                entryCorrect = root.getFile((IPath)prefFile).exists();
                            }
                        }
                    }
                    if (!entryCorrect) {
                        String token = null;
                        String message = null;
                        IContainer root = PDEProject.getBundleRoot(this.fProject);
                        if (this.fProject.equals((Object)root)) {
                            token = Boolean.TRUE.toString();
                            message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_buildEntryMissingValidPath, (Object)"javacProjectSettings");
                        } else {
                            IPath prefFile = this.fProject.getFullPath().append(".settings").append("org.eclipse.jdt.core.prefs");
                            prefFile = prefFile.makeRelativeTo(root.getFullPath());
                            token = prefFile.toString();
                            message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_buildEntryMissingValidRelativePath, (Object)"javacProjectSettings");
                        }
                        this.prepareError("javacProjectSettings", token, message, 8198, this.fJavaCompilerSeverity, "ee");
                    }
                } else {
                    String token = null;
                    IContainer root = PDEProject.getBundleRoot(this.fProject);
                    if (this.fProject.equals((Object)root)) {
                        token = Boolean.TRUE.toString();
                    } else {
                        IPath prefFile = this.fProject.getFullPath().append(".settings").append("org.eclipse.jdt.core.prefs");
                        prefFile = prefFile.makeRelativeTo(root.getFullPath());
                        token = prefFile.toString();
                    }
                    String message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_buildEntryMissingProjectSpecificSettings, (Object)"javacProjectSettings");
                    this.prepareError("javacProjectSettings", token, message, 8199, this.fJavaCompilerSeverity, "ee");
                }
            } else if (useJavaProjectSettings != null) {
                String message = NLS.bind((String)PDECoreMessages.BuildErrorReporter_buildEntryInvalidWhenNoProjectSettings, (Object)"javacProjectSettings");
                this.prepareError("javacProjectSettings", null, message, 8197, this.fJavaCompilerSeverity, "ee");
            }
        }
    }

    private String join(String token1, String token2) {
        StringBuffer result = new StringBuffer();
        if (token1 != null && token1.length() > 0) {
            result.append(token1);
        }
        if (token2 != null && token2.length() > 0) {
            if (result.length() > 0) {
                result.append(',');
            }
            result.append(token2);
        }
        return result.toString();
    }

    private BuildModel prepareTextBuildModel(IProgressMonitor monitor) {
        BuildModel bm;
        block5: {
            IDocument doc;
            block4: {
                try {
                    doc = this.createDocument(this.fFile);
                    if (doc != null) break block4;
                    return null;
                }
                catch (CoreException e) {
                    PDECore.log(e);
                    return null;
                }
            }
            bm = new BuildModel(doc, true);
            bm.load();
            if (bm.isLoaded()) break block5;
            return null;
        }
        return bm;
    }

    private void reportErrors(BuildModel bm) {
        if (bm == null) {
            return;
        }
        int i = 0;
        while (i < this.fProblemList.size()) {
            IMarker marker;
            BuildProblem bp = (BuildProblem)this.fProblemList.get(i);
            IBuildEntry buildEntry = bm.getBuild().getEntry(bp.fEntryName);
            int lineNum = buildEntry == null || bp.fEntryName == null ? 1 : this.getLineNumber(buildEntry, bp.fEntryToken);
            if (lineNum > 0 && (marker = this.report(bp.fMessage, lineNum, bp.fFixId, bp.fEntryName, bp.fEntryToken, bp.fSeverity, bp.fCategory)) != null && bp.attributes != null) {
                Iterator iterator = bp.attributes.keySet().iterator();
                while (iterator.hasNext()) {
                    String attribute = (String)iterator.next();
                    try {
                        marker.setAttribute(attribute, bp.attributes.get(attribute));
                    }
                    catch (CoreException coreException) {}
                }
            }
            ++i;
        }
    }

    private int getLineNumber(IBuildEntry ibe, String tokenString) {
        if (!(ibe instanceof BuildEntry)) {
            return 0;
        }
        BuildEntry be = (BuildEntry)ibe;
        IDocument doc = ((BuildModel)be.getModel()).getDocument();
        try {
            int buildEntryLineNumber = doc.getLineOfOffset(be.getOffset()) + 1;
            if (tokenString == null) {
                return buildEntryLineNumber;
            }
            String entry = doc.get(be.getOffset(), be.getLength());
            int valueIndex = entry.indexOf(61) + 1;
            if (valueIndex == 0 || valueIndex == entry.length()) {
                return buildEntryLineNumber;
            }
            int entryTokenOffset = (entry = entry.substring(valueIndex)).indexOf(tokenString);
            if (entryTokenOffset == -1) {
                return buildEntryLineNumber;
            }
            entry = entry.substring(entryTokenOffset);
            int currOffset = be.getOffset() + valueIndex + entryTokenOffset;
            while (true) {
                int cci;
                if (entry.charAt(0) == '\\') {
                    ++currOffset;
                    entry = entry.substring(1);
                }
                if ((cci = entry.indexOf(44)) == -1) {
                    if (entry.trim().equals(tokenString)) {
                        return doc.getLineOfOffset(currOffset + entry.indexOf(tokenString)) + 1;
                    }
                    return buildEntryLineNumber;
                }
                String ct = entry.substring(0, cci).trim();
                if (ct.equals(tokenString)) {
                    return doc.getLineOfOffset(currOffset) + 1;
                }
                entry = entry.substring(++cci);
                currOffset += cci;
            }
        }
        catch (BadLocationException badLocationException) {
            return 0;
        }
    }

    protected BuildProblem prepareError(String name, String token, String message, int fixId, String category) {
        return this.prepareError(name, token, message, fixId, this.fBuildSeverity, category);
    }

    protected BuildProblem prepareError(String name, String token, String message, int fixId, int severity, String category) {
        BuildProblem bp = new BuildProblem(name, token, message, fixId, severity, category);
        int i = 0;
        while (i < this.fProblemList.size()) {
            BuildProblem listed = (BuildProblem)this.fProblemList.get(i);
            if (listed.equals(bp)) {
                if (bp.attributes != null) {
                    listed.addAttributes(bp.attributes);
                }
                return listed;
            }
            ++i;
        }
        this.fProblemList.add(bp);
        return bp;
    }

    private IMarker report(String message, int line, int problemID, String buildEntry, String buildToken, int severity, String category) {
        IMarker marker = this.report(message, line, severity, problemID, category);
        if (marker != null) {
            try {
                marker.setAttribute("buildEntry.key", (Object)buildEntry);
                marker.setAttribute("buildEntry.tokenValue", (Object)buildToken);
            }
            catch (CoreException coreException) {}
        }
        return marker;
    }

    public boolean isCustomBuild() {
        String[] tokens;
        WorkspaceBuildModel wbm = new WorkspaceBuildModel(this.fFile);
        IBuild build = wbm.getBuild();
        IBuildEntry entry = build.getEntry("custom");
        return entry != null && (tokens = entry.getTokens()).length == 1 && tokens[0].equalsIgnoreCase("true");
    }

    private class BuildProblem {
        String fEntryToken;
        String fEntryName;
        String fMessage;
        String fCategory;
        int fFixId;
        int fSeverity;
        HashMap attributes;
        int fExtraBuntryEntryIndex;

        BuildProblem(String name, String token, String message, int fixId, int severity, String category) {
            this.fEntryName = name;
            this.fEntryToken = token;
            this.fMessage = message;
            this.fFixId = fixId;
            this.fSeverity = severity;
            this.fCategory = category;
            this.fExtraBuntryEntryIndex = 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof BuildProblem)) {
                return false;
            }
            BuildProblem bp = (BuildProblem)obj;
            if (!this.fEntryName.equals(bp.fEntryName)) {
                return false;
            }
            if (this.fEntryToken != null && !this.fEntryToken.equals(bp.fEntryToken)) {
                return false;
            }
            return this.fFixId == bp.fFixId;
        }

        public void addExtraBuildEntryTokenAttribute(String entry, String value) {
            this.addAttribute("buildEntry.key." + this.fExtraBuntryEntryIndex, entry);
            this.addAttribute("buildEntry.tokenValue." + this.fExtraBuntryEntryIndex, value);
            ++this.fExtraBuntryEntryIndex;
        }

        public void addAttribute(String attributeName, String value) {
            if (this.attributes == null) {
                this.attributes = new HashMap(1);
            }
            this.attributes.put(attributeName, value);
        }

        public void addAttributes(HashMap attributes) {
            if (attributes == null) {
                attributes = new HashMap(1);
            }
            attributes.putAll(attributes);
        }
    }

    class WildcardFilenameFilter
    implements FilenameFilter {
        private Pattern pattern;

        public WildcardFilenameFilter(String file) {
            this.pattern = PatternConstructor.createPattern(file, false);
        }

        public boolean accept(File dir, String name) {
            Matcher matcher = this.pattern.matcher(name);
            return matcher.matches();
        }
    }
}

