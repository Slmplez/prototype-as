/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ICommand
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IProjectNature
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.jdt.internal.core;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.eval.IEvaluationContext;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CreateTypeHierarchyOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.ExternalPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SetClasspathOperation;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.XMLWriter;
import org.eclipse.jdt.internal.core.eval.EvaluationContextWrapper;
import org.eclipse.jdt.internal.core.util.JavaElementFinder;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class JavaProject
extends Openable
implements IJavaProject,
IProjectNature,
SuffixConstants {
    public static final String CLASSPATH_FILENAME = ".classpath";
    public static final IClasspathEntry[] INVALID_CLASSPATH = new IClasspathEntry[0];
    protected static final boolean IS_CASE_SENSITIVE = !new File("Temp").equals(new File("temp"));
    protected static final String[] NO_PREREQUISITES = CharOperation.NO_STRINGS;
    private static final String PREF_FILENAME = ".jprefs";
    public static final String DEFAULT_PREFERENCES_DIRNAME = ".settings";
    public static final String JAVA_CORE_PREFS_FILE = "org.eclipse.jdt.core.prefs";
    private static final IClasspathEntry[] RESOLUTION_IN_PROGRESS = new IClasspathEntry[0];
    private static ArrayList CP_RESOLUTION_BP_LISTENERS;
    protected IProject project;
    private IEclipsePreferences.INodeChangeListener preferencesNodeListener;
    private IEclipsePreferences.IPreferenceChangeListener preferencesChangeListener;

    public JavaProject() {
        super(null);
    }

    public JavaProject(IProject project, JavaElement parent) {
        super(parent);
        this.project = project;
    }

    public static synchronized void addCPResolutionBPListener(ClasspathResolutionBreakpointListener listener) {
        if (CP_RESOLUTION_BP_LISTENERS == null) {
            CP_RESOLUTION_BP_LISTENERS = new ArrayList();
        }
        CP_RESOLUTION_BP_LISTENERS.add(listener);
    }

    public static synchronized void removeCPResolutionBPListener(ClasspathResolutionBreakpointListener listener) {
        if (CP_RESOLUTION_BP_LISTENERS == null) {
            return;
        }
        CP_RESOLUTION_BP_LISTENERS.remove(listener);
        if (CP_RESOLUTION_BP_LISTENERS.size() == 0) {
            CP_RESOLUTION_BP_LISTENERS = null;
        }
    }

    private static synchronized ClasspathResolutionBreakpointListener[] getBPListeners() {
        if (CP_RESOLUTION_BP_LISTENERS == null) {
            return null;
        }
        return CP_RESOLUTION_BP_LISTENERS.toArray(new ClasspathResolutionBreakpointListener[CP_RESOLUTION_BP_LISTENERS.size()]);
    }

    private static void breakpoint(int bp, JavaProject project) {
        ClasspathResolutionBreakpointListener[] listeners = JavaProject.getBPListeners();
        if (listeners == null) {
            return;
        }
        int j = 0;
        int length = listeners.length;
        while (j < length) {
            listeners[j].breakpoint(bp);
            ++j;
        }
    }

    public static boolean areClasspathsEqual(IClasspathEntry[] firstClasspath, IClasspathEntry[] secondClasspath, IPath firstOutputLocation, IPath secondOutputLocation) {
        int length = firstClasspath.length;
        if (length != secondClasspath.length) {
            return false;
        }
        int i = 0;
        while (i < length) {
            if (!firstClasspath[i].equals(secondClasspath[i])) {
                return false;
            }
            ++i;
        }
        if (firstOutputLocation == null) {
            return secondOutputLocation == null;
        }
        return firstOutputLocation.equals((Object)secondOutputLocation);
    }

    private static boolean areClasspathsEqual(IClasspathEntry[] newClasspath, IPath newOutputLocation, IClasspathEntry[] otherClasspathWithOutput) {
        if (otherClasspathWithOutput == null || otherClasspathWithOutput.length == 0) {
            return false;
        }
        int length = otherClasspathWithOutput.length;
        if (length != newClasspath.length + 1) {
            return false;
        }
        int i = 0;
        while (i < length - 1) {
            if (!otherClasspathWithOutput[i].equals(newClasspath[i])) {
                return false;
            }
            ++i;
        }
        IClasspathEntry output = otherClasspathWithOutput[length - 1];
        return output.getContentKind() == 10 && output.getPath().equals((Object)newOutputLocation);
    }

    private static boolean areClasspathsEqual(IClasspathEntry[] first, IClasspathEntry[] second) {
        if (first != second) {
            if (first == null) {
                return false;
            }
            int length = first.length;
            if (second == null || second.length != length) {
                return false;
            }
            int i = 0;
            while (i < length) {
                if (!first[i].equals(second[i])) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    public static IPath canonicalizedPath(IPath externalPath) {
        Path result;
        if (externalPath == null) {
            return null;
        }
        if (IS_CASE_SENSITIVE) {
            return externalPath;
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        if (workspace == null) {
            return externalPath;
        }
        if (workspace.getRoot().findMember(externalPath) != null) {
            return externalPath;
        }
        Path canonicalPath = null;
        try {
            canonicalPath = new Path(new File(externalPath.toOSString()).getCanonicalPath());
        }
        catch (IOException iOException) {
            return externalPath;
        }
        int canonicalLength = canonicalPath.segmentCount();
        if (canonicalLength == 0) {
            return externalPath;
        }
        if (externalPath.isAbsolute()) {
            result = canonicalPath;
        } else {
            int externalLength = externalPath.segmentCount();
            if (canonicalLength >= externalLength) {
                result = canonicalPath.removeFirstSegments(canonicalLength - externalLength);
            } else {
                return externalPath;
            }
        }
        if (externalPath.getDevice() == null) {
            result = result.setDevice(null);
        }
        if (externalPath.hasTrailingSeparator()) {
            result = result.addTrailingSeparator();
        }
        return result;
    }

    public static boolean hasJavaNature(IProject project) {
        try {
            return project.hasNature("org.eclipse.jdt.core.javanature");
        }
        catch (CoreException coreException) {
            return " ".equals(project.getName());
        }
    }

    /*
     * Unable to fully structure code
     */
    public static void validateCycles(Map preferredClasspaths) throws JavaModelException {
        workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        rscProjects = workspaceRoot.getProjects();
        length = rscProjects.length;
        projects = new JavaProject[length];
        cycleParticipants = new LinkedHashSet<E>();
        traversed = new HashSet<E>();
        prereqChain = new ArrayList<E>();
        i = 0;
        while (i < length) {
            if (JavaProject.hasJavaNature(rscProjects[i]) && !traversed.contains((project = (projects[i] = (JavaProject)JavaCore.create(rscProjects[i]))).getPath())) {
                prereqChain.clear();
                project.updateCycleParticipants(prereqChain, cycleParticipants, workspaceRoot, traversed, preferredClasspaths);
            }
            ++i;
        }
        i = 0;
        while (i < length) {
            project = projects[i];
            if (project != null) {
                if (cycleParticipants.contains(project.getPath())) {
                    cycleMarker = project.getCycleMarker();
                    circularCPOption = project.getOption("org.eclipse.jdt.core.circularClasspath", true);
                    v0 = circularCPSeverity = "error".equals(circularCPOption) != false ? 2 : 1;
                    if (cycleMarker != null) {
                        try {
                            existingSeverity = (Integer)cycleMarker.getAttribute("severity");
                            if (existingSeverity == circularCPSeverity) ** GOTO lbl50
                            cycleMarker.setAttribute("severity", circularCPSeverity);
                        }
                        catch (CoreException e) {
                            throw new JavaModelException(e);
                        }
                    } else {
                        cycleString = "";
                        if (cycleParticipants.isEmpty()) {
                            projectsInCycle = null;
                        } else {
                            projectsInCycle = new IJavaProject[cycleParticipants.size()];
                            it = cycleParticipants.iterator();
                            k = 0;
                            while (it.hasNext()) {
                                member = workspaceRoot.findMember((IPath)it.next());
                                if (member == null || member.getType() != 4) continue;
                                projectsInCycle[k] = JavaCore.create((IProject)member);
                                if (projectsInCycle[k] == null) continue;
                                if (k != 0) {
                                    cycleString = String.valueOf(cycleString) + ", ";
                                }
                                cycleString = String.valueOf(cycleString) + projectsInCycle[k++].getElementName();
                            }
                        }
                        project.createClasspathProblemMarker(new JavaModelStatus(1001, (IJavaElement)project, cycleString));
                    }
                } else {
                    project.flushClasspathProblemMarkers(true, false);
                }
            }
lbl50:
            // 6 sources

            ++i;
        }
    }

    protected void addToBuildSpec(String builderID) throws CoreException {
        IProjectDescription description = this.project.getDescription();
        int javaCommandIndex = this.getJavaCommandIndex(description.getBuildSpec());
        if (javaCommandIndex == -1) {
            ICommand command = description.newCommand();
            command.setBuilderName(builderID);
            this.setJavaCommand(description, command);
        }
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        IClasspathEntry[] resolvedClasspath = this.getResolvedClasspath();
        info.setChildren(this.computePackageFragmentRoots(resolvedClasspath, false, null));
        return true;
    }

    public void close() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo;
        if (JavaProject.hasJavaNature(this.project) && (perProjectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfo(this.project, false)) != null && perProjectInfo.preferences != null) {
            IEclipsePreferences eclipseParentPreferences = (IEclipsePreferences)perProjectInfo.preferences.parent();
            if (this.preferencesNodeListener != null) {
                eclipseParentPreferences.removeNodeChangeListener(this.preferencesNodeListener);
                this.preferencesNodeListener = null;
            }
            if (this.preferencesChangeListener != null) {
                perProjectInfo.preferences.removePreferenceChangeListener(this.preferencesChangeListener);
                this.preferencesChangeListener = null;
            }
        }
        super.close();
    }

    private void computeExpandedClasspath(ClasspathEntry referringEntry, HashSet rootIDs, ObjectVector accumulatedEntries) throws JavaModelException {
        String projectRootId = this.rootID();
        if (rootIDs.contains(projectRootId)) {
            return;
        }
        rootIDs.add(projectRootId);
        IClasspathEntry[] resolvedClasspath = this.getResolvedClasspath();
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        boolean isInitialProject = referringEntry == null;
        int i = 0;
        int length = resolvedClasspath.length;
        while (i < length) {
            String rootID;
            ClasspathEntry entry = (ClasspathEntry)resolvedClasspath[i];
            if ((isInitialProject || entry.isExported()) && !rootIDs.contains(rootID = entry.rootID())) {
                ClasspathEntry combinedEntry = entry.combineWith(referringEntry);
                accumulatedEntries.add(combinedEntry);
                if (entry.getEntryKind() == 2) {
                    IProject projRsc;
                    IResource member = workspaceRoot.findMember(entry.getPath());
                    if (member != null && member.getType() == 4 && JavaProject.hasJavaNature(projRsc = (IProject)member)) {
                        JavaProject javaProject = (JavaProject)JavaCore.create(projRsc);
                        javaProject.computeExpandedClasspath(combinedEntry, rootIDs, accumulatedEntries);
                    }
                } else {
                    rootIDs.add(rootID);
                }
            }
            ++i;
        }
    }

    public IPackageFragmentRoot[] computePackageFragmentRoots(IClasspathEntry resolvedEntry) {
        try {
            return this.computePackageFragmentRoots(new IClasspathEntry[]{resolvedEntry}, false, null);
        }
        catch (JavaModelException javaModelException) {
            return new IPackageFragmentRoot[0];
        }
    }

    public void computePackageFragmentRoots(IClasspathEntry resolvedEntry, ObjectVector accumulatedRoots, HashSet rootIDs, IClasspathEntry referringEntry, boolean retrieveExportedRoots, Map rootToResolvedEntries) throws JavaModelException {
        String rootID = ((ClasspathEntry)resolvedEntry).rootID();
        if (rootIDs.contains(rootID)) {
            return;
        }
        IPath projectPath = this.project.getFullPath();
        IPath entryPath = resolvedEntry.getPath();
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        IPackageFragmentRoot root = null;
        switch (resolvedEntry.getEntryKind()) {
            case 3: {
                if (!projectPath.isPrefixOf(entryPath)) break;
                Object target = JavaModel.getTarget(entryPath, true);
                if (target == null) {
                    return;
                }
                if (!(target instanceof IFolder) && !(target instanceof IProject)) break;
                root = this.getPackageFragmentRoot((IResource)target);
                break;
            }
            case 1: {
                if (referringEntry != null && !resolvedEntry.isExported()) {
                    return;
                }
                Object target = JavaModel.getTarget(entryPath, true);
                if (target == null) {
                    return;
                }
                if (target instanceof IResource) {
                    root = this.getPackageFragmentRoot((IResource)target, entryPath);
                    break;
                }
                if (!(target instanceof File)) break;
                if (JavaModel.isFile(target)) {
                    root = new JarPackageFragmentRoot(entryPath, this);
                    break;
                }
                if (!((File)target).isDirectory()) break;
                root = new ExternalPackageFragmentRoot(entryPath, this);
                break;
            }
            case 2: {
                IProject requiredProjectRsc;
                if (!retrieveExportedRoots) {
                    return;
                }
                if (referringEntry != null && !resolvedEntry.isExported()) {
                    return;
                }
                IResource member = workspaceRoot.findMember(entryPath);
                if (member == null || member.getType() != 4 || !JavaProject.hasJavaNature(requiredProjectRsc = (IProject)member)) break;
                rootIDs.add(rootID);
                JavaProject requiredProject = (JavaProject)JavaCore.create(requiredProjectRsc);
                requiredProject.computePackageFragmentRoots(requiredProject.getResolvedClasspath(), accumulatedRoots, rootIDs, rootToResolvedEntries == null ? resolvedEntry : ((ClasspathEntry)resolvedEntry).combineWith((ClasspathEntry)referringEntry), retrieveExportedRoots, rootToResolvedEntries);
            }
        }
        if (root != null) {
            accumulatedRoots.add(root);
            rootIDs.add(rootID);
            if (rootToResolvedEntries != null) {
                rootToResolvedEntries.put(root, ((ClasspathEntry)resolvedEntry).combineWith((ClasspathEntry)referringEntry));
            }
        }
    }

    public IPackageFragmentRoot[] computePackageFragmentRoots(IClasspathEntry[] resolvedClasspath, boolean retrieveExportedRoots, Map rootToResolvedEntries) throws JavaModelException {
        ObjectVector accumulatedRoots = new ObjectVector();
        this.computePackageFragmentRoots(resolvedClasspath, accumulatedRoots, new HashSet(5), null, retrieveExportedRoots, rootToResolvedEntries);
        Object[] rootArray = new IPackageFragmentRoot[accumulatedRoots.size()];
        accumulatedRoots.copyInto(rootArray);
        return rootArray;
    }

    public void computePackageFragmentRoots(IClasspathEntry[] resolvedClasspath, ObjectVector accumulatedRoots, HashSet rootIDs, IClasspathEntry referringEntry, boolean retrieveExportedRoots, Map rootToResolvedEntries) throws JavaModelException {
        if (referringEntry == null) {
            rootIDs.add(this.rootID());
        }
        int i = 0;
        int length = resolvedClasspath.length;
        while (i < length) {
            this.computePackageFragmentRoots(resolvedClasspath[i], accumulatedRoots, rootIDs, referringEntry, retrieveExportedRoots, rootToResolvedEntries);
            ++i;
        }
    }

    public String computeSharedPropertyFileName(QualifiedName qName) {
        return String.valueOf('.') + qName.getLocalName();
    }

    public void configure() throws CoreException {
        this.addToBuildSpec("org.eclipse.jdt.core.javabuilder");
    }

    public boolean contains(IResource resource) {
        IPath output;
        IClasspathEntry[] classpath;
        try {
            classpath = this.getResolvedClasspath();
            output = this.getOutputLocation();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        IPath fullPath = resource.getFullPath();
        IPath innerMostOutput = output.isPrefixOf(fullPath) ? output : null;
        IClasspathEntry innerMostEntry = null;
        ExternalFoldersManager foldersManager = JavaModelManager.getExternalManager();
        int j = 0;
        int cpLength = classpath.length;
        while (j < cpLength) {
            IPath entryOutput;
            IFolder linkedFolder;
            IClasspathEntry entry = classpath[j];
            IPath entryPath = entry.getPath();
            if (entry.getEntryKind() == 1 && (linkedFolder = foldersManager.getFolder(entryPath)) != null) {
                entryPath = linkedFolder.getFullPath();
            }
            if ((innerMostEntry == null || innerMostEntry.getPath().isPrefixOf(entryPath)) && entryPath.isPrefixOf(fullPath)) {
                innerMostEntry = entry;
            }
            if ((entryOutput = classpath[j].getOutputLocation()) != null && entryOutput.isPrefixOf(fullPath)) {
                innerMostOutput = entryOutput;
            }
            ++j;
        }
        if (innerMostEntry != null) {
            if (innerMostOutput != null && innerMostOutput.segmentCount() > 1 && innerMostEntry.getPath().segmentCount() == 1) {
                return false;
            }
            if (resource instanceof IFolder) {
                return true;
            }
            switch (innerMostEntry.getEntryKind()) {
                case 3: {
                    return !org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fullPath.lastSegment());
                }
                case 1: {
                    return !Util.isJavaLikeFileName(fullPath.lastSegment());
                }
            }
        }
        return innerMostOutput == null;
    }

    public void createClasspathProblemMarker(IJavaModelStatus status) {
        block11: {
            int severity;
            IMarker marker = null;
            String[] arguments = CharOperation.NO_STRINGS;
            boolean isCycleProblem = false;
            boolean isClasspathFileFormatProblem = false;
            switch (status.getCode()) {
                case 1001: {
                    isCycleProblem = true;
                    if ("error".equals(this.getOption("org.eclipse.jdt.core.circularClasspath", true))) {
                        severity = 2;
                        break;
                    }
                    severity = 1;
                    break;
                }
                case 1000: {
                    isClasspathFileFormatProblem = true;
                    severity = 2;
                    break;
                }
                case 1004: {
                    String setting = this.getOption("org.eclipse.jdt.core.incompatibleJDKLevel", true);
                    if ("error".equals(setting)) {
                        severity = 2;
                        break;
                    }
                    if ("warning".equals(setting)) {
                        severity = 1;
                        break;
                    }
                    return;
                }
                default: {
                    IPath path = status.getPath();
                    if (path != null) {
                        arguments = new String[]{path.toString()};
                    }
                    severity = "error".equals(this.getOption("org.eclipse.jdt.core.incompleteClasspath", true)) && status.getSeverity() != 2 ? 2 : 1;
                }
            }
            try {
                marker = this.project.createMarker("org.eclipse.jdt.core.buildpath_problem");
                marker.setAttributes(new String[]{"message", "severity", "location", "cycleDetected", "classpathFileFormat", "id", "arguments", "categoryId", "sourceId"}, new Object[]{status.getMessage(), new Integer(severity), Messages.classpath_buildPath, isCycleProblem ? "true" : "false", isClasspathFileFormatProblem ? "true" : "false", new Integer(status.getCode()), Util.getProblemArgumentsForMarker(arguments), new Integer(10), "JDT"});
            }
            catch (CoreException e) {
                if (!JavaModelManager.VERBOSE) break block11;
                e.printStackTrace();
            }
        }
    }

    protected Object createElementInfo() {
        return new JavaProjectElementInfo();
    }

    public IClasspathEntry[][] decodeClasspath(String xmlClasspath, Map unknownElements) throws IOException, ClasspathEntry.AssertionFailedException {
        Element cpElement;
        ArrayList<IClasspathEntry> paths = new ArrayList<IClasspathEntry>();
        IClasspathEntry defaultOutput = null;
        StringReader reader = new StringReader(xmlClasspath);
        try {
            try {
                DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                cpElement = parser.parse(new InputSource(reader)).getDocumentElement();
            }
            catch (SAXException sAXException) {
                throw new IOException(Messages.file_badFormat);
            }
            catch (ParserConfigurationException parserConfigurationException) {
                throw new IOException(Messages.file_badFormat);
            }
        }
        finally {
            reader.close();
        }
        if (!cpElement.getNodeName().equalsIgnoreCase("classpath")) {
            throw new IOException(Messages.file_badFormat);
        }
        NodeList list = cpElement.getElementsByTagName("classpathentry");
        int length = list.getLength();
        int i = 0;
        while (i < length) {
            IClasspathEntry entry;
            Node node = list.item(i);
            if (node.getNodeType() == 1 && (entry = ClasspathEntry.elementDecode((Element)node, this, unknownElements)) != null) {
                if (entry.getContentKind() == 10) {
                    defaultOutput = entry;
                } else {
                    paths.add(entry);
                }
            }
            ++i;
        }
        int pathSize = paths.size();
        IClasspathEntry[][] entries = new IClasspathEntry[2][];
        entries[0] = new IClasspathEntry[pathSize + (defaultOutput == null ? 0 : 1)];
        paths.toArray(entries[0]);
        if (defaultOutput != null) {
            entries[0][pathSize] = defaultOutput;
        }
        paths.clear();
        list = cpElement.getElementsByTagName("referencedentry");
        length = list.getLength();
        int i2 = 0;
        while (i2 < length) {
            IClasspathEntry entry;
            Node node = list.item(i2);
            if (node.getNodeType() == 1 && (entry = ClasspathEntry.elementDecode((Element)node, this, unknownElements)) != null) {
                paths.add(entry);
            }
            ++i2;
        }
        entries[1] = new IClasspathEntry[paths.size()];
        paths.toArray(entries[1]);
        return entries;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    public IClasspathEntry decodeClasspathEntry(String encodedEntry) {
        try {
            Element node;
            if (encodedEntry == null) {
                return null;
            }
            StringReader reader = new StringReader(encodedEntry);
            try {
                try {
                    DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                    node = parser.parse(new InputSource(reader)).getDocumentElement();
                }
                catch (SAXException sAXException) {
                    reader.close();
                    return null;
                }
                catch (ParserConfigurationException parserConfigurationException) {
                    reader.close();
                    return null;
                }
            }
            finally {
                reader.close();
            }
            if (!node.getNodeName().equalsIgnoreCase("classpathentry") || node.getNodeType() != 1) {
                return null;
            }
            return ClasspathEntry.elementDecode(node, this, null);
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public void deconfigure() throws CoreException {
        this.removeFromBuildSpec("org.eclipse.jdt.core.javabuilder");
    }

    protected IClasspathEntry[] defaultClasspath() {
        return new IClasspathEntry[]{JavaCore.newSourceEntry(this.project.getFullPath())};
    }

    protected IPath defaultOutputLocation() {
        return this.project.getFullPath().append("bin");
    }

    protected String encodeClasspath(IClasspathEntry[] classpath, IClasspathEntry[] referencedEntries, IPath outputLocation, boolean indent, Map unknownElements) throws JavaModelException {
        try {
            ByteArrayOutputStream s = new ByteArrayOutputStream();
            OutputStreamWriter writer = new OutputStreamWriter((OutputStream)s, "UTF8");
            XMLWriter xmlWriter = new XMLWriter((Writer)writer, this, true);
            xmlWriter.startTag("classpath", indent);
            int i = 0;
            while (i < classpath.length) {
                ((ClasspathEntry)classpath[i]).elementEncode(xmlWriter, this.project.getFullPath(), indent, true, unknownElements, false);
                ++i;
            }
            if (outputLocation != null) {
                outputLocation = outputLocation.removeFirstSegments(1);
                outputLocation = outputLocation.makeRelative();
                HashMap<String, String> parameters = new HashMap<String, String>();
                parameters.put("kind", ClasspathEntry.kindToString(10));
                parameters.put("path", String.valueOf(outputLocation));
                xmlWriter.printTag("classpathentry", parameters, indent, true, true);
            }
            if (referencedEntries != null) {
                i = 0;
                while (i < referencedEntries.length) {
                    ((ClasspathEntry)referencedEntries[i]).elementEncode(xmlWriter, this.project.getFullPath(), indent, true, unknownElements, true);
                    ++i;
                }
            }
            xmlWriter.endTag("classpath", indent, true);
            writer.flush();
            writer.close();
            return s.toString("UTF8");
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
    }

    public String encodeClasspathEntry(IClasspathEntry classpathEntry) {
        try {
            ByteArrayOutputStream s = new ByteArrayOutputStream();
            OutputStreamWriter writer = new OutputStreamWriter((OutputStream)s, "UTF8");
            XMLWriter xmlWriter = new XMLWriter((Writer)writer, this, false);
            ((ClasspathEntry)classpathEntry).elementEncode(xmlWriter, this.project.getFullPath(), true, true, null, classpathEntry.getReferencingEntry() != null);
            writer.flush();
            writer.close();
            return s.toString("UTF8");
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof JavaProject)) {
            return false;
        }
        JavaProject other = (JavaProject)o;
        return this.project.equals((Object)other.getProject());
    }

    public IJavaElement findElement(IPath path) throws JavaModelException {
        return this.findElement(path, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public IJavaElement findElement(IPath path, WorkingCopyOwner owner) throws JavaModelException {
        if (path == null || path.isAbsolute()) {
            throw new JavaModelException(new JavaModelStatus(979, path));
        }
        try {
            String extension = path.getFileExtension();
            if (extension == null) {
                String packageName = path.toString().replace('/', '.');
                return this.findPackageFragment(packageName);
            }
            if (Util.isJavaLikeFileName(path.lastSegment()) || extension.equalsIgnoreCase("class")) {
                IPath packagePath = path.removeLastSegments(1);
                String packageName = packagePath.toString().replace('/', '.');
                String typeName = path.lastSegment();
                typeName = typeName.substring(0, typeName.length() - extension.length() - 1);
                String qualifiedName = null;
                qualifiedName = packageName.length() > 0 ? String.valueOf(packageName) + "." + typeName : typeName;
                NameLookup lookup = this.newNameLookup(owner);
                NameLookup.Answer answer = lookup.findType(qualifiedName, false, 30, true, false, false, null);
                if (answer != null) {
                    return answer.type.getParent();
                }
                return null;
            }
            return null;
        }
        catch (JavaModelException e) {
            if (e.getStatus().getCode() == 969) {
                return null;
            }
            throw e;
        }
    }

    public IJavaElement findPackageFragment(String packageName) throws JavaModelException {
        NameLookup lookup = this.newNameLookup((WorkingCopyOwner)null);
        IPackageFragment[] pkgFragments = lookup.findPackageFragments(packageName, false);
        if (pkgFragments == null) {
            return null;
        }
        int i = 0;
        int length = pkgFragments.length;
        while (i < length) {
            IPackageFragment pkgFragment = pkgFragments[i];
            if (this.equals(pkgFragment.getParent().getParent())) {
                return pkgFragment;
            }
            ++i;
        }
        return pkgFragments[0];
    }

    public IJavaElement findElement(String bindingKey, WorkingCopyOwner owner) throws JavaModelException {
        JavaElementFinder elementFinder = new JavaElementFinder(bindingKey, this, owner);
        elementFinder.parse();
        if (elementFinder.exception != null) {
            throw elementFinder.exception;
        }
        return elementFinder.element;
    }

    public IPackageFragment findPackageFragment(IPath path) throws JavaModelException {
        return this.findPackageFragment0(JavaProject.canonicalizedPath(path));
    }

    private IPackageFragment findPackageFragment0(IPath path) throws JavaModelException {
        NameLookup lookup = this.newNameLookup((WorkingCopyOwner)null);
        return lookup.findPackageFragment(path);
    }

    public IPackageFragmentRoot findPackageFragmentRoot(IPath path) throws JavaModelException {
        return this.findPackageFragmentRoot0(JavaProject.canonicalizedPath(path));
    }

    public IPackageFragmentRoot findPackageFragmentRoot0(IPath path) throws JavaModelException {
        IPackageFragmentRoot[] allRoots = this.getAllPackageFragmentRoots();
        if (!path.isAbsolute()) {
            throw new IllegalArgumentException(Messages.path_mustBeAbsolute);
        }
        int i = 0;
        while (i < allRoots.length) {
            IPackageFragmentRoot classpathRoot = allRoots[i];
            if (classpathRoot.getPath().equals((Object)path)) {
                return classpathRoot;
            }
            ++i;
        }
        return null;
    }

    public IPackageFragmentRoot[] findPackageFragmentRoots(IClasspathEntry entry) {
        try {
            IClasspathEntry[] classpath = this.getRawClasspath();
            int i = 0;
            int length = classpath.length;
            while (i < length) {
                if (classpath[i].equals(entry)) {
                    return this.computePackageFragmentRoots(this.resolveClasspath(new IClasspathEntry[]{entry}), false, null);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return new IPackageFragmentRoot[0];
    }

    public IType findType(String fullyQualifiedName) throws JavaModelException {
        return this.findType(fullyQualifiedName, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IType findType(String fullyQualifiedName, IProgressMonitor progressMonitor) throws JavaModelException {
        return this.findType(fullyQualifiedName, DefaultWorkingCopyOwner.PRIMARY, progressMonitor);
    }

    IType findType(String fullyQualifiedName, NameLookup lookup, boolean considerSecondaryTypes, IProgressMonitor progressMonitor) throws JavaModelException {
        NameLookup.Answer answer = lookup.findType(fullyQualifiedName, false, 30, considerSecondaryTypes, true, false, progressMonitor);
        if (answer == null) {
            int lastDot = fullyQualifiedName.lastIndexOf(46);
            if (lastDot == -1) {
                return null;
            }
            IType type = this.findType(fullyQualifiedName.substring(0, lastDot), lookup, considerSecondaryTypes, progressMonitor);
            if (type != null && !(type = type.getType(fullyQualifiedName.substring(lastDot + 1))).exists()) {
                return null;
            }
            return type;
        }
        return answer.type;
    }

    public IType findType(String packageName, String typeQualifiedName) throws JavaModelException {
        return this.findType(packageName, typeQualifiedName, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IType findType(String packageName, String typeQualifiedName, IProgressMonitor progressMonitor) throws JavaModelException {
        return this.findType(packageName, typeQualifiedName, DefaultWorkingCopyOwner.PRIMARY, progressMonitor);
    }

    IType findType(String packageName, String typeQualifiedName, NameLookup lookup, boolean considerSecondaryTypes, IProgressMonitor progressMonitor) throws JavaModelException {
        NameLookup.Answer answer = lookup.findType(typeQualifiedName, packageName, false, 30, considerSecondaryTypes, true, false, progressMonitor);
        return answer == null ? null : answer.type;
    }

    public IType findType(String packageName, String typeQualifiedName, WorkingCopyOwner owner) throws JavaModelException {
        NameLookup lookup = this.newNameLookup(owner);
        return this.findType(packageName, typeQualifiedName, lookup, false, null);
    }

    public IType findType(String packageName, String typeQualifiedName, WorkingCopyOwner owner, IProgressMonitor progressMonitor) throws JavaModelException {
        NameLookup lookup = this.newNameLookup(owner);
        return this.findType(packageName, typeQualifiedName, lookup, true, progressMonitor);
    }

    public IType findType(String fullyQualifiedName, WorkingCopyOwner owner) throws JavaModelException {
        NameLookup lookup = this.newNameLookup(owner);
        return this.findType(fullyQualifiedName, lookup, false, null);
    }

    public IType findType(String fullyQualifiedName, WorkingCopyOwner owner, IProgressMonitor progressMonitor) throws JavaModelException {
        NameLookup lookup = this.newNameLookup(owner);
        return this.findType(fullyQualifiedName, lookup, true, progressMonitor);
    }

    protected void flushClasspathProblemMarkers(boolean flushCycleMarkers, boolean flushClasspathFormatMarkers) {
        block7: {
            try {
                if (this.project.isAccessible()) {
                    IMarker[] markers = this.project.findMarkers("org.eclipse.jdt.core.buildpath_problem", false, 0);
                    int i = 0;
                    int length = markers.length;
                    while (i < length) {
                        IMarker marker = markers[i];
                        if (flushCycleMarkers && flushClasspathFormatMarkers) {
                            marker.delete();
                        } else {
                            String cycleAttr = (String)marker.getAttribute("cycleDetected");
                            String classpathFileFormatAttr = (String)marker.getAttribute("classpathFileFormat");
                            if (flushCycleMarkers == (cycleAttr != null && cycleAttr.equals("true")) && flushClasspathFormatMarkers == (classpathFileFormatAttr != null && classpathFileFormatAttr.equals("true"))) {
                                marker.delete();
                            }
                        }
                        ++i;
                    }
                }
            }
            catch (CoreException e) {
                if (!JavaModelManager.VERBOSE) break block7;
                e.printStackTrace();
            }
        }
    }

    public IPath[] getAccessRestrictions(String optionName) {
        String sequence = this.getOption(optionName, true);
        if (sequence == null || sequence.length() == 0) {
            return null;
        }
        IPath[] rules = null;
        char[][] patterns = CharOperation.splitOn('|', sequence.toCharArray());
        int patternCount = patterns.length;
        if (patternCount > 0) {
            rules = new IPath[patternCount];
            int j = 0;
            while (j < patterns.length) {
                rules[j] = new Path(new String(patterns[j]));
                ++j;
            }
        }
        return rules;
    }

    public IPackageFragmentRoot[] getAllPackageFragmentRoots() throws JavaModelException {
        return this.getAllPackageFragmentRoots(null);
    }

    public IPackageFragmentRoot[] getAllPackageFragmentRoots(Map rootToResolvedEntries) throws JavaModelException {
        return this.computePackageFragmentRoots(this.getResolvedClasspath(), true, rootToResolvedEntries);
    }

    public IClasspathEntry getClasspathEntryFor(IPath path) throws JavaModelException {
        this.getResolvedClasspath();
        JavaModelManager.PerProjectInfo perProjectInfo = this.getPerProjectInfo();
        if (perProjectInfo == null) {
            return null;
        }
        Map rootPathToResolvedEntries = perProjectInfo.rootPathToResolvedEntries;
        if (rootPathToResolvedEntries == null) {
            return null;
        }
        IClasspathEntry classpathEntry = (IClasspathEntry)rootPathToResolvedEntries.get(path);
        if (classpathEntry == null) {
            path = this.getProject().getWorkspace().getRoot().getLocation().append(path);
            classpathEntry = (IClasspathEntry)rootPathToResolvedEntries.get(path);
        }
        return classpathEntry;
    }

    public IMarker getCycleMarker() {
        try {
            if (this.project.isAccessible()) {
                IMarker[] markers = this.project.findMarkers("org.eclipse.jdt.core.buildpath_problem", false, 0);
                int i = 0;
                int length = markers.length;
                while (i < length) {
                    IMarker marker = markers[i];
                    String cycleAttr = (String)marker.getAttribute("cycleDetected");
                    if (cycleAttr != null && cycleAttr.equals("true")) {
                        return marker;
                    }
                    ++i;
                }
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public IEclipsePreferences getEclipsePreferences() {
        if (!JavaProject.hasJavaNature(this.project)) {
            return null;
        }
        JavaModelManager.PerProjectInfo perProjectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfo(this.project, true);
        if (perProjectInfo.preferences != null) {
            return perProjectInfo.preferences;
        }
        ProjectScope context = new ProjectScope(this.getProject());
        final IEclipsePreferences eclipsePreferences = context.getNode("org.eclipse.jdt.core");
        this.updatePreferences(eclipsePreferences);
        perProjectInfo.preferences = eclipsePreferences;
        IEclipsePreferences eclipseParentPreferences = (IEclipsePreferences)eclipsePreferences.parent();
        if (eclipseParentPreferences != null) {
            if (this.preferencesNodeListener != null) {
                eclipseParentPreferences.removeNodeChangeListener(this.preferencesNodeListener);
            }
            this.preferencesNodeListener = new IEclipsePreferences.INodeChangeListener(){

                public void added(IEclipsePreferences.NodeChangeEvent event) {
                }

                public void removed(IEclipsePreferences.NodeChangeEvent event) {
                    if (event.getChild() == eclipsePreferences) {
                        JavaModelManager.getJavaModelManager().resetProjectPreferences(JavaProject.this);
                    }
                }
            };
            eclipseParentPreferences.addNodeChangeListener(this.preferencesNodeListener);
        }
        if (this.preferencesChangeListener != null) {
            eclipsePreferences.removePreferenceChangeListener(this.preferencesChangeListener);
        }
        this.preferencesChangeListener = new IEclipsePreferences.IPreferenceChangeListener(){

            public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
                String propertyName = event.getKey();
                JavaModelManager manager = JavaModelManager.getJavaModelManager();
                if (propertyName.startsWith("org.eclipse.jdt.core")) {
                    if (propertyName.equals("org.eclipse.jdt.core.builder.cleanOutputFolder") || propertyName.equals("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter") || propertyName.equals("org.eclipse.jdt.core.builder.duplicateResourceTask") || propertyName.equals("org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder") || propertyName.equals("org.eclipse.jdt.core.builder.invalidClasspath") || propertyName.equals("org.eclipse.jdt.core.classpath.exclusionPatterns") || propertyName.equals("org.eclipse.jdt.core.classpath.multipleOutputLocations") || propertyName.equals("org.eclipse.jdt.core.incompleteClasspath") || propertyName.equals("org.eclipse.jdt.core.circularClasspath") || propertyName.equals("org.eclipse.jdt.core.incompatibleJDKLevel")) {
                        manager.deltaState.addClasspathValidation(JavaProject.this);
                    }
                    manager.resetProjectOptions(JavaProject.this);
                    JavaProject.this.resetCaches();
                }
            }
        };
        eclipsePreferences.addPreferenceChangeListener(this.preferencesChangeListener);
        return eclipsePreferences;
    }

    public String getElementName() {
        return this.project.getName();
    }

    public int getElementType() {
        return 2;
    }

    public IClasspathEntry[] getExpandedClasspath() throws JavaModelException {
        ObjectVector accumulatedEntries = new ObjectVector();
        this.computeExpandedClasspath(null, new HashSet(5), accumulatedEntries);
        Object[] expandedPath = new IClasspathEntry[accumulatedEntries.size()];
        accumulatedEntries.copyInto(expandedPath);
        return expandedPath;
    }

    public IPackageFragmentRoot getFolderPackageFragmentRoot(IPath path) {
        if (path.segmentCount() == 1) {
            return this.getPackageFragmentRoot((IResource)this.project);
        }
        return this.getPackageFragmentRoot((IResource)this.project.getWorkspace().getRoot().getFolder(path));
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '/': {
                String rootPath = "";
                token = null;
                while (memento.hasMoreTokens()) {
                    token = memento.nextToken();
                    if (token == MementoTokenizer.PACKAGEFRAGMENT || token == MementoTokenizer.COUNT) break;
                    rootPath = String.valueOf(rootPath) + token;
                }
                JavaElement root = (JavaElement)((Object)this.getPackageFragmentRoot((IPath)new Path(rootPath)));
                if (token != null && token.charAt(0) == '<') {
                    return root.getHandleFromMemento(token, memento, owner);
                }
                return root.getHandleFromMemento(memento, owner);
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '=';
    }

    private int getJavaCommandIndex(ICommand[] buildSpec) {
        int i = 0;
        while (i < buildSpec.length) {
            if (buildSpec[i].getBuilderName().equals("org.eclipse.jdt.core.javabuilder")) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected JavaProjectElementInfo getJavaProjectElementInfo() throws JavaModelException {
        return (JavaProjectElementInfo)this.getElementInfo();
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        return ((JavaProjectElementInfo)this.getElementInfo()).getNonJavaResources(this);
    }

    public String getOption(String optionName, boolean inheritJavaCoreOptions) {
        return JavaModelManager.getJavaModelManager().getOption(optionName, inheritJavaCoreOptions, this.getEclipsePreferences());
    }

    public Map getOptions(boolean inheritJavaCoreOptions) {
        Hashtable options = inheritJavaCoreOptions ? JavaCore.getOptions() : new Hashtable(5);
        JavaModelManager.PerProjectInfo perProjectInfo = null;
        Hashtable<String, String> projectOptions = null;
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        HashSet optionNames = javaModelManager.optionNames;
        try {
            perProjectInfo = this.getPerProjectInfo();
            projectOptions = perProjectInfo.options;
            if (projectOptions == null) {
                IEclipsePreferences projectPreferences = this.getEclipsePreferences();
                if (projectPreferences == null) {
                    return options;
                }
                String[] propertyNames = projectPreferences.keys();
                projectOptions = new Hashtable(propertyNames.length);
                int i = 0;
                while (i < propertyNames.length) {
                    String propertyName = propertyNames[i];
                    String value = projectPreferences.get(propertyName, null);
                    if (value != null) {
                        String[] compatibleOptions;
                        value = value.trim();
                        projectOptions.put(propertyName, value);
                        if (!optionNames.contains(propertyName) && (compatibleOptions = (String[])javaModelManager.deprecatedOptions.get(propertyName)) != null) {
                            int co = 0;
                            int length = compatibleOptions.length;
                            while (co < length) {
                                String compatibleOption = compatibleOptions[co];
                                if (!projectOptions.containsKey(compatibleOption)) {
                                    projectOptions.put(compatibleOption, value);
                                }
                                ++co;
                            }
                        }
                    }
                    ++i;
                }
                perProjectInfo.options = projectOptions;
            }
        }
        catch (JavaModelException javaModelException) {
            projectOptions = new Hashtable<String, String>();
        }
        catch (BackingStoreException backingStoreException) {
            projectOptions = new Hashtable();
        }
        if (inheritJavaCoreOptions) {
            Iterator propertyNames = projectOptions.entrySet().iterator();
            while (propertyNames.hasNext()) {
                Map.Entry entry = propertyNames.next();
                String propertyName = (String)entry.getKey();
                String propertyValue = (String)entry.getValue();
                if (propertyValue == null || !javaModelManager.knowsOption(propertyName)) continue;
                options.put(propertyName, propertyValue.trim());
            }
            Util.fixTaskTags(options);
            return options;
        }
        Util.fixTaskTags(projectOptions);
        return projectOptions;
    }

    public IPath getOutputLocation() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = this.getPerProjectInfo();
        IPath outputLocation = perProjectInfo.outputLocation;
        if (outputLocation != null) {
            return outputLocation;
        }
        this.getRawClasspath();
        outputLocation = perProjectInfo.outputLocation;
        if (outputLocation == null) {
            return this.defaultOutputLocation();
        }
        return outputLocation;
    }

    public IPackageFragmentRoot getPackageFragmentRoot(IPath path) {
        int segmentCount;
        if (!path.isAbsolute()) {
            path = this.getPath().append(path);
        }
        if ((segmentCount = path.segmentCount()) == 0) {
            return null;
        }
        if (path.getDevice() != null || JavaModel.getExternalTarget(path, true) != null) {
            return this.getPackageFragmentRoot0(path);
        }
        IWorkspaceRoot workspaceRoot = this.project.getWorkspace().getRoot();
        IResource resource = workspaceRoot.findMember(path);
        if (resource == null) {
            if (path.getFileExtension() != null) {
                if (!workspaceRoot.getProject(path.segment(0)).exists()) {
                    return this.getPackageFragmentRoot0(path);
                }
                resource = workspaceRoot.getFile(path);
            } else if (segmentCount == 1) {
                String projectName = path.segment(0);
                resource = this.getElementName().equals(projectName) ? this.project : workspaceRoot.getProject(projectName);
            } else {
                resource = workspaceRoot.getFolder(path);
            }
        }
        return this.getPackageFragmentRoot(resource);
    }

    public IPackageFragmentRoot getPackageFragmentRoot(IResource resource) {
        return this.getPackageFragmentRoot(resource, null);
    }

    private IPackageFragmentRoot getPackageFragmentRoot(IResource resource, IPath entryPath) {
        switch (resource.getType()) {
            case 1: {
                return new JarPackageFragmentRoot(resource, this);
            }
            case 2: {
                if (ExternalFoldersManager.isInternalPathForExternalFolder(resource.getFullPath())) {
                    return new ExternalPackageFragmentRoot(resource, entryPath, this);
                }
                return new PackageFragmentRoot(resource, this);
            }
            case 4: {
                return new PackageFragmentRoot(resource, this);
            }
        }
        return null;
    }

    public IPackageFragmentRoot getPackageFragmentRoot(String externalLibraryPath) {
        return this.getPackageFragmentRoot0(JavaProject.canonicalizedPath((IPath)new Path(externalLibraryPath)));
    }

    public IPackageFragmentRoot getPackageFragmentRoot0(IPath externalLibraryPath) {
        IFolder linkedFolder = JavaModelManager.getExternalManager().getFolder(externalLibraryPath);
        if (linkedFolder != null) {
            return new ExternalPackageFragmentRoot((IResource)linkedFolder, externalLibraryPath, this);
        }
        return new JarPackageFragmentRoot(externalLibraryPath, this);
    }

    public IPackageFragmentRoot[] getPackageFragmentRoots() throws JavaModelException {
        IJavaElement[] children = this.getChildren();
        int length = children.length;
        IPackageFragmentRoot[] roots = new IPackageFragmentRoot[length];
        System.arraycopy(children, 0, roots, 0, length);
        return roots;
    }

    public IPackageFragmentRoot[] getPackageFragmentRoots(IClasspathEntry entry) {
        return this.findPackageFragmentRoots(entry);
    }

    public IPackageFragment[] getPackageFragments() throws JavaModelException {
        IPackageFragmentRoot[] roots = this.getPackageFragmentRoots();
        return this.getPackageFragmentsInRoots(roots);
    }

    public IPackageFragment[] getPackageFragmentsInRoots(IPackageFragmentRoot[] roots) {
        ArrayList<IJavaElement> frags = new ArrayList<IJavaElement>();
        int i = 0;
        while (i < roots.length) {
            IPackageFragmentRoot root = roots[i];
            try {
                IJavaElement[] rootFragments = root.getChildren();
                int j = 0;
                while (j < rootFragments.length) {
                    frags.add(rootFragments[j]);
                    ++j;
                }
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        IPackageFragment[] fragments = new IPackageFragment[frags.size()];
        frags.toArray(fragments);
        return fragments;
    }

    public IPath getPath() {
        return this.project.getFullPath();
    }

    public JavaModelManager.PerProjectInfo getPerProjectInfo() throws JavaModelException {
        return JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(this.project);
    }

    private IPath getPluginWorkingLocation() {
        return this.project.getWorkingLocation("org.eclipse.jdt.core");
    }

    public IProject getProject() {
        return this.project;
    }

    public JavaProjectElementInfo.ProjectCache getProjectCache() throws JavaModelException {
        return ((JavaProjectElementInfo)this.getElementInfo()).getProjectCache(this);
    }

    public IClasspathEntry[] getRawClasspath() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = this.getPerProjectInfo();
        IClasspathEntry[] classpath = perProjectInfo.rawClasspath;
        if (classpath != null) {
            return classpath;
        }
        classpath = perProjectInfo.readAndCacheClasspath(this)[0];
        if (classpath == INVALID_CLASSPATH) {
            return this.defaultClasspath();
        }
        return classpath;
    }

    public IClasspathEntry[] getReferencedClasspathEntries() throws JavaModelException {
        return this.getPerProjectInfo().referencedEntries;
    }

    public String[] getRequiredProjectNames() throws JavaModelException {
        return this.projectPrerequisites(this.getResolvedClasspath());
    }

    public IClasspathEntry[] getResolvedClasspath() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = this.getPerProjectInfo();
        IClasspathEntry[] resolvedClasspath = perProjectInfo.getResolvedClasspath();
        if (resolvedClasspath == null) {
            this.resolveClasspath(perProjectInfo, false, true);
            resolvedClasspath = perProjectInfo.getResolvedClasspath();
            if (resolvedClasspath == null) {
                JavaModelManager.PerProjectInfo temporaryInfo = this.newTemporaryInfo();
                this.resolveClasspath(temporaryInfo, false, true);
                resolvedClasspath = temporaryInfo.getResolvedClasspath();
            }
        }
        return resolvedClasspath;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IClasspathEntry[] getResolvedClasspath(boolean ignoreUnresolvedEntry) throws JavaModelException {
        IJavaModelStatus unresolvedEntryStatus;
        IClasspathEntry[] resolvedClasspath;
        JavaModelManager.PerProjectInfo perProjectInfo;
        if (JavaModelManager.getJavaModelManager().isClasspathBeingResolved(this)) {
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                this.verbose_reentering_classpath_resolution();
            }
            return RESOLUTION_IN_PROGRESS;
        }
        JavaModelManager.PerProjectInfo perProjectInfo2 = perProjectInfo = this.getPerProjectInfo();
        synchronized (perProjectInfo2) {
            resolvedClasspath = perProjectInfo.getResolvedClasspath();
            unresolvedEntryStatus = perProjectInfo.unresolvedEntryStatus;
        }
        if (resolvedClasspath == null || unresolvedEntryStatus != null && !unresolvedEntryStatus.isOK()) {
            this.resolveClasspath(perProjectInfo, false, true);
            perProjectInfo2 = perProjectInfo;
            synchronized (perProjectInfo2) {
                resolvedClasspath = perProjectInfo.getResolvedClasspath();
                unresolvedEntryStatus = perProjectInfo.unresolvedEntryStatus;
            }
            if (resolvedClasspath == null) {
                JavaModelManager.PerProjectInfo temporaryInfo = this.newTemporaryInfo();
                this.resolveClasspath(temporaryInfo, false, true);
                resolvedClasspath = temporaryInfo.getResolvedClasspath();
                unresolvedEntryStatus = temporaryInfo.unresolvedEntryStatus;
            }
        }
        if (!ignoreUnresolvedEntry && unresolvedEntryStatus != null && !unresolvedEntryStatus.isOK()) {
            throw new JavaModelException(unresolvedEntryStatus);
        }
        return resolvedClasspath;
    }

    private void verbose_reentering_classpath_resolution() {
        Util.verbose("CPResolution: reentering raw classpath resolution, will use empty classpath instead\tproject: " + this.getElementName() + '\n' + "\tinvocation stack trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public IResource resource(PackageFragmentRoot root) {
        return this.project;
    }

    public String getSharedProperty(String key) throws CoreException {
        String property = null;
        IFile rscFile = this.project.getFile(key);
        if (rscFile.exists()) {
            byte[] bytes = Util.getResourceContentsAsByteArray(rscFile);
            try {
                property = new String(bytes, "UTF-8");
            }
            catch (UnsupportedEncodingException e) {
                Util.log(e, "Could not read .classpath with UTF-8 encoding");
                property = new String(bytes);
            }
        } else {
            File file;
            URI location = rscFile.getLocationURI();
            if (location != null && (file = Util.toLocalFile(location, null)) != null && file.exists()) {
                byte[] bytes;
                try {
                    bytes = org.eclipse.jdt.internal.compiler.util.Util.getFileByteContent(file);
                }
                catch (IOException iOException) {
                    return null;
                }
                try {
                    property = new String(bytes, "UTF-8");
                }
                catch (UnsupportedEncodingException e) {
                    Util.log(e, "Could not read .classpath with UTF-8 encoding");
                    property = new String(bytes);
                }
            }
        }
        return property;
    }

    public SourceMapper getSourceMapper() {
        return null;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (!this.exists()) {
            throw this.newNotPresentException();
        }
        return this.project;
    }

    public boolean hasBuildState() {
        return JavaModelManager.getJavaModelManager().getLastBuiltState(this.project, null) != null;
    }

    public boolean hasClasspathCycle(IClasspathEntry[] preferredClasspath) {
        LinkedHashSet cycleParticipants = new LinkedHashSet();
        HashMap<JavaProject, IClasspathEntry[]> preferredClasspaths = new HashMap<JavaProject, IClasspathEntry[]>(1);
        preferredClasspaths.put(this, preferredClasspath);
        this.updateCycleParticipants(new ArrayList(2), cycleParticipants, ResourcesPlugin.getWorkspace().getRoot(), new HashSet(2), preferredClasspaths);
        return !cycleParticipants.isEmpty();
    }

    public boolean hasCycleMarker() {
        return this.getCycleMarker() != null;
    }

    public int hashCode() {
        return this.project.hashCode();
    }

    private boolean hasUTF8BOM(byte[] bytes) {
        if (bytes.length > IContentDescription.BOM_UTF_8.length) {
            int i = 0;
            int length = IContentDescription.BOM_UTF_8.length;
            while (i < length) {
                if (IContentDescription.BOM_UTF_8[i] != bytes[i]) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    public boolean hasSource() {
        IClasspathEntry[] entries;
        try {
            entries = this.getRawClasspath();
        }
        catch (JavaModelException javaModelException) {
            return true;
        }
        int i = 0;
        int max = entries.length;
        while (i < max) {
            if (entries[i].getEntryKind() == 3) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isOnClasspath(IJavaElement element) {
        IClasspathEntry[] rawClasspath;
        try {
            rawClasspath = this.getRawClasspath();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        int elementType = element.getElementType();
        boolean isPackageFragmentRoot = false;
        boolean isFolderPath = false;
        boolean isSource = false;
        switch (elementType) {
            case 1: {
                return false;
            }
            case 2: {
                break;
            }
            case 3: {
                isPackageFragmentRoot = true;
                break;
            }
            case 4: {
                isFolderPath = !((IPackageFragmentRoot)element.getParent()).isArchive();
                break;
            }
            case 5: {
                isSource = true;
                break;
            }
            default: {
                isSource = element.getAncestor(5) != null;
            }
        }
        IPath elementPath = element.getPath();
        int length = rawClasspath.length;
        int i = 0;
        while (i < length) {
            IClasspathEntry entry = rawClasspath[i];
            switch (entry.getEntryKind()) {
                case 1: 
                case 2: 
                case 3: {
                    if (!this.isOnClasspathEntry(elementPath, isFolderPath, isPackageFragmentRoot, entry)) break;
                    return true;
                }
            }
            ++i;
        }
        if (isSource) {
            return false;
        }
        IClasspathEntry[] resolvedClasspath = null;
        try {
            resolvedClasspath = this.getResolvedClasspath();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        int index = 0;
        while (index < resolvedClasspath.length) {
            if (this.isOnClasspathEntry(elementPath, isFolderPath, isPackageFragmentRoot, resolvedClasspath[index])) {
                return true;
            }
            ++index;
        }
        return false;
    }

    public boolean isOnClasspath(IResource resource) {
        IClasspathEntry[] classpath;
        IPath exactPath;
        IPath path = exactPath = resource.getFullPath();
        int resourceType = resource.getType();
        boolean isFolderPath = resourceType == 2 || resourceType == 4;
        try {
            classpath = this.getResolvedClasspath();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        int i = 0;
        while (i < classpath.length) {
            IClasspathEntry entry = classpath[i];
            IPath entryPath = entry.getPath();
            if (entryPath.equals((Object)exactPath)) {
                return true;
            }
            if (entryPath.isAbsolute() && entryPath.equals((Object)ResourcesPlugin.getWorkspace().getRoot().getLocation().append(exactPath))) {
                return true;
            }
            if (entryPath.isPrefixOf(path) && !Util.isExcluded(path, ((ClasspathEntry)entry).fullInclusionPatternChars(), ((ClasspathEntry)entry).fullExclusionPatternChars(), isFolderPath)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isOnClasspathEntry(IPath elementPath, boolean isFolderPath, boolean isPackageFragmentRoot, IClasspathEntry entry) {
        IPath entryPath = entry.getPath();
        if (isPackageFragmentRoot ? entryPath.equals((Object)elementPath) : entryPath.isPrefixOf(elementPath) && !Util.isExcluded(elementPath, ((ClasspathEntry)entry).fullInclusionPatternChars(), ((ClasspathEntry)entry).fullExclusionPatternChars(), isFolderPath)) {
            return true;
        }
        return entryPath.isAbsolute() && entryPath.equals((Object)ResourcesPlugin.getWorkspace().getRoot().getLocation().append(elementPath));
    }

    /*
     * Unable to fully structure code
     */
    private IEclipsePreferences loadPreferences() {
        preferences = null;
        projectMetaLocation = this.getPluginWorkingLocation();
        if (projectMetaLocation != null && (prefFile = projectMetaLocation.append(".jprefs").toFile()).exists()) {
            block18: {
                in = null;
                try {
                    in = new BufferedInputStream(new FileInputStream(prefFile));
                    preferences = Platform.getPreferencesService().readPreferences(in);
                }
                catch (CoreException v0) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException v1) {}
                    }
                    break block18;
                }
                catch (IOException v2) {
                    try {
                        ** if (in == null) goto lbl-1000
                    }
                    catch (Throwable var5_5) {
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException v4) {}
                        }
                        throw var5_5;
                    }
lbl-1000:
                    // 1 sources

                    {
                        try {
                            in.close();
                        }
                        catch (IOException v3) {}
                    }
lbl-1000:
                    // 2 sources

                    {
                        break block18;
                    }
                }
                if (in == null) break block18;
                try {
                    in.close();
                }
                catch (IOException v5) {}
            }
            prefFile.delete();
            return preferences;
        }
        return null;
    }

    public IEvaluationContext newEvaluationContext() {
        EvaluationContext context = new EvaluationContext();
        context.setLineSeparator(Util.getLineSeparator(null, this));
        return new EvaluationContextWrapper(context, this);
    }

    public NameLookup newNameLookup(ICompilationUnit[] workingCopies) throws JavaModelException {
        return this.getJavaProjectElementInfo().newNameLookup(this, workingCopies);
    }

    public NameLookup newNameLookup(WorkingCopyOwner owner) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        ICompilationUnit[] workingCopies = owner == null ? null : manager.getWorkingCopies(owner, true);
        return this.newNameLookup(workingCopies);
    }

    public SearchableEnvironment newSearchableNameEnvironment(ICompilationUnit[] workingCopies) throws JavaModelException {
        return new SearchableEnvironment(this, workingCopies);
    }

    public SearchableEnvironment newSearchableNameEnvironment(WorkingCopyOwner owner) throws JavaModelException {
        return new SearchableEnvironment(this, owner);
    }

    public JavaModelManager.PerProjectInfo newTemporaryInfo() {
        return new JavaModelManager.PerProjectInfo(this.project.getProject()){

            protected ClasspathChange addClasspathChange() {
                return null;
            }
        };
    }

    public ITypeHierarchy newTypeHierarchy(IRegion region, IProgressMonitor monitor) throws JavaModelException {
        return this.newTypeHierarchy(region, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy newTypeHierarchy(IRegion region, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        if (region == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
        }
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation(region, workingCopies, null, true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public ITypeHierarchy newTypeHierarchy(IType type, IRegion region, IProgressMonitor monitor) throws JavaModelException {
        return this.newTypeHierarchy(type, region, DefaultWorkingCopyOwner.PRIMARY, monitor);
    }

    public ITypeHierarchy newTypeHierarchy(IType type, IRegion region, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        if (type == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullFocusType);
        }
        if (region == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
        }
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation(region, workingCopies, type, true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public String[] projectPrerequisites(IClasspathEntry[] resolvedClasspath) throws JavaModelException {
        ArrayList<String> prerequisites = new ArrayList<String>();
        int i = 0;
        int length = resolvedClasspath.length;
        while (i < length) {
            IClasspathEntry entry = resolvedClasspath[i];
            if (entry.getEntryKind() == 2) {
                prerequisites.add(entry.getPath().lastSegment());
            }
            ++i;
        }
        int size = prerequisites.size();
        if (size == 0) {
            return NO_PREREQUISITES;
        }
        String[] result = new String[size];
        prerequisites.toArray(result);
        return result;
    }

    public IClasspathEntry[][] readFileEntriesWithException(Map unknownElements) throws CoreException, IOException, ClasspathEntry.AssertionFailedException {
        String xmlClasspath;
        byte[] bytes;
        IFile rscFile = this.project.getFile(CLASSPATH_FILENAME);
        if (rscFile.exists()) {
            bytes = Util.getResourceContentsAsByteArray(rscFile);
        } else {
            URI location = rscFile.getLocationURI();
            if (location == null) {
                throw new IOException("Cannot obtain a location URI for " + rscFile);
            }
            File file = Util.toLocalFile(location, null);
            if (file == null) {
                throw new IOException("Unable to fetch file from " + location);
            }
            try {
                bytes = org.eclipse.jdt.internal.compiler.util.Util.getFileByteContent(file);
            }
            catch (IOException e) {
                if (!file.exists()) {
                    return new IClasspathEntry[][]{this.defaultClasspath(), ClasspathEntry.NO_ENTRIES};
                }
                throw e;
            }
        }
        if (this.hasUTF8BOM(bytes)) {
            int length = bytes.length - IContentDescription.BOM_UTF_8.length;
            byte[] byArray = bytes;
            bytes = new byte[length];
            System.arraycopy(byArray, IContentDescription.BOM_UTF_8.length, bytes, 0, length);
        }
        try {
            xmlClasspath = new String(bytes, "UTF-8");
        }
        catch (UnsupportedEncodingException e) {
            Util.log(e, "Could not read .classpath with UTF-8 encoding");
            xmlClasspath = new String(bytes);
        }
        return this.decodeClasspath(xmlClasspath, unknownElements);
    }

    private IClasspathEntry[][] readFileEntries(Map unkwownElements) {
        try {
            return this.readFileEntriesWithException(unkwownElements);
        }
        catch (CoreException e) {
            Util.log(e, "Exception while reading " + this.getPath().append(CLASSPATH_FILENAME));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        }
        catch (IOException e) {
            Util.log(e, "Exception while reading " + this.getPath().append(CLASSPATH_FILENAME));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        }
        catch (ClasspathEntry.AssertionFailedException e) {
            Util.log(e, "Exception while reading " + this.getPath().append(CLASSPATH_FILENAME));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        }
    }

    public IPath readOutputLocation() {
        IClasspathEntry entry;
        IClasspathEntry[][] classpath = this.readFileEntries(null);
        if (classpath[0] == INVALID_CLASSPATH) {
            return this.defaultOutputLocation();
        }
        IPath outputLocation = null;
        if (classpath[0].length > 0 && (entry = classpath[0][classpath[0].length - 1]).getContentKind() == 10) {
            outputLocation = entry.getPath();
        }
        return outputLocation;
    }

    public IClasspathEntry[] readRawClasspath() {
        IClasspathEntry entry;
        IClasspathEntry[][] classpath = this.readFileEntries(null);
        if (classpath[0] == INVALID_CLASSPATH) {
            return this.defaultClasspath();
        }
        if (classpath[0].length > 0 && (entry = classpath[0][classpath[0].length - 1]).getContentKind() == 10) {
            IClasspathEntry[] copy = new IClasspathEntry[classpath[0].length - 1];
            System.arraycopy(classpath[0], 0, copy, 0, copy.length);
            classpath[0] = copy;
        }
        return classpath[0];
    }

    protected void removeFromBuildSpec(String builderID) throws CoreException {
        IProjectDescription description = this.project.getDescription();
        ICommand[] commands = description.getBuildSpec();
        int i = 0;
        while (i < commands.length) {
            if (commands[i].getBuilderName().equals(builderID)) {
                ICommand[] newCommands = new ICommand[commands.length - 1];
                System.arraycopy(commands, 0, newCommands, 0, i);
                System.arraycopy(commands, i + 1, newCommands, i, commands.length - i - 1);
                description.setBuildSpec(newCommands);
                this.project.setDescription(description, null);
                return;
            }
            ++i;
        }
    }

    public void resetCaches() {
        JavaProjectElementInfo info = (JavaProjectElementInfo)JavaModelManager.getJavaModelManager().peekAtInfo(this);
        if (info != null) {
            info.resetCaches();
        }
    }

    public ClasspathChange resetResolvedClasspath() {
        try {
            return this.getPerProjectInfo().resetResolvedClasspath();
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public IClasspathEntry[] resolveClasspath(IClasspathEntry[] rawClasspath) throws JavaModelException {
        return this.resolveClasspath((IClasspathEntry[])rawClasspath, (boolean)false, (boolean)true).resolvedClasspath;
    }

    public ResolvedClasspath resolveClasspath(IClasspathEntry[] rawClasspath, boolean usePreviousSession, boolean resolveChainedLibraries) throws JavaModelException {
        return this.resolveClasspath(rawClasspath, null, usePreviousSession, resolveChainedLibraries);
    }

    public ResolvedClasspath resolveClasspath(IClasspathEntry[] rawClasspath, IClasspathEntry[] referencedEntries, boolean usePreviousSession, boolean resolveChainedLibraries) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        ExternalFoldersManager externalFoldersManager = JavaModelManager.getExternalManager();
        ResolvedClasspath result = new ResolvedClasspath();
        HashMap knownDrives = new HashMap();
        HashMap<IPath, IClasspathEntry> referencedEntriesMap = new HashMap<IPath, IClasspathEntry>();
        ArrayList<IPath> rawLibrariesPath = new ArrayList<IPath>();
        LinkedHashSet resolvedEntries = new LinkedHashSet();
        if (resolveChainedLibraries) {
            int index = 0;
            while (index < rawClasspath.length) {
                IClasspathEntry currentEntry = rawClasspath[index];
                if (currentEntry.getEntryKind() == 1) {
                    rawLibrariesPath.add(ClasspathEntry.resolveDotDot(this.getProject().getLocation(), currentEntry.getPath()));
                }
                ++index;
            }
            if (referencedEntries != null) {
                LinkedHashSet<IClasspathEntry> referencedEntriesSet = new LinkedHashSet<IClasspathEntry>();
                int index2 = 0;
                while (index2 < referencedEntries.length) {
                    IPath path = referencedEntries[index2].getPath();
                    if (!rawLibrariesPath.contains(path) && referencedEntriesMap.get(path) == null) {
                        referencedEntriesMap.put(path, referencedEntries[index2]);
                        referencedEntriesSet.add(referencedEntries[index2]);
                    }
                    ++index2;
                }
                if (referencedEntriesSet.size() > 0) {
                    result.referencedEntries = new IClasspathEntry[referencedEntriesSet.size()];
                    referencedEntriesSet.toArray(result.referencedEntries);
                }
            }
        }
        int length = rawClasspath.length;
        int i = 0;
        while (i < length) {
            IClasspathEntry rawEntry;
            IClasspathEntry resolvedEntry = rawEntry = rawClasspath[i];
            block1 : switch (rawEntry.getEntryKind()) {
                case 4: {
                    try {
                        resolvedEntry = manager.resolveVariableEntry(rawEntry, usePreviousSession);
                    }
                    catch (ClasspathEntry.AssertionFailedException e) {
                        result.unresolvedEntryStatus = new JavaModelStatus(979, e.getMessage());
                        break;
                    }
                    if (resolvedEntry == null) {
                        result.unresolvedEntryStatus = new JavaModelStatus(965, (IJavaElement)this, rawEntry.getPath());
                        break;
                    }
                    if (resolveChainedLibraries && resolvedEntry.getEntryKind() == 1 && result.rawReverseMap.get(resolvedEntry.getPath()) == null) {
                        ClasspathEntry[] extraEntries = ((ClasspathEntry)resolvedEntry).resolvedChainedLibraries();
                        int j = 0;
                        int length2 = extraEntries.length;
                        while (j < length2) {
                            if (!rawLibrariesPath.contains(extraEntries[j].getPath())) {
                                this.addToResult(rawEntry, extraEntries[j], result, resolvedEntries, externalFoldersManager, referencedEntriesMap, true, knownDrives);
                            }
                            ++j;
                        }
                    }
                    this.addToResult(rawEntry, resolvedEntry, result, resolvedEntries, externalFoldersManager, referencedEntriesMap, false, knownDrives);
                    break;
                }
                case 5: {
                    IClasspathContainer container;
                    IClasspathContainer iClasspathContainer = container = usePreviousSession ? manager.getPreviousSessionContainer(rawEntry.getPath(), this) : JavaCore.getClasspathContainer(rawEntry.getPath(), this);
                    if (container == null) {
                        result.unresolvedEntryStatus = new JavaModelStatus(963, (IJavaElement)this, rawEntry.getPath());
                        break;
                    }
                    IClasspathEntry[] containerEntries = container.getClasspathEntries();
                    if (containerEntries == null) {
                        if (!JavaModelManager.CP_RESOLVE_VERBOSE && !JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) break;
                        JavaModelManager.getJavaModelManager().verbose_missbehaving_container_null_entries(this, rawEntry.getPath());
                        break;
                    }
                    int j = 0;
                    int containerLength = containerEntries.length;
                    while (j < containerLength) {
                        ClasspathEntry cEntry = (ClasspathEntry)containerEntries[j];
                        if (cEntry == null) {
                            if (!JavaModelManager.CP_RESOLVE_VERBOSE && !JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) break block1;
                            JavaModelManager.getJavaModelManager().verbose_missbehaving_container(this, rawEntry.getPath(), containerEntries);
                            break block1;
                        }
                        if ((cEntry = cEntry.combineWith((ClasspathEntry)rawEntry)).getEntryKind() == 1) {
                            cEntry = cEntry.resolvedDotDot(this.getProject().getLocation());
                            if (resolveChainedLibraries && JavaModelManager.getJavaModelManager().resolveReferencedLibrariesForContainers && result.rawReverseMap.get(cEntry.getPath()) == null) {
                                ClasspathEntry[] extraEntries = cEntry.resolvedChainedLibraries();
                                int k = 0;
                                int length2 = extraEntries.length;
                                while (k < length2) {
                                    if (!rawLibrariesPath.contains(extraEntries[k].getPath())) {
                                        this.addToResult(rawEntry, extraEntries[k], result, resolvedEntries, externalFoldersManager, referencedEntriesMap, false, knownDrives);
                                    }
                                    ++k;
                                }
                            }
                        }
                        this.addToResult(rawEntry, cEntry, result, resolvedEntries, externalFoldersManager, referencedEntriesMap, false, knownDrives);
                        ++j;
                    }
                    break;
                }
                case 1: {
                    resolvedEntry = ((ClasspathEntry)rawEntry).resolvedDotDot(this.getProject().getLocation());
                    if (resolveChainedLibraries && result.rawReverseMap.get(resolvedEntry.getPath()) == null) {
                        ClasspathEntry[] extraEntries = ((ClasspathEntry)resolvedEntry).resolvedChainedLibraries();
                        int k = 0;
                        int length2 = extraEntries.length;
                        while (k < length2) {
                            if (!rawLibrariesPath.contains(extraEntries[k].getPath())) {
                                this.addToResult(rawEntry, extraEntries[k], result, resolvedEntries, externalFoldersManager, referencedEntriesMap, true, knownDrives);
                            }
                            ++k;
                        }
                    }
                    this.addToResult(rawEntry, resolvedEntry, result, resolvedEntries, externalFoldersManager, referencedEntriesMap, false, knownDrives);
                    break;
                }
                default: {
                    this.addToResult(rawEntry, resolvedEntry, result, resolvedEntries, externalFoldersManager, referencedEntriesMap, false, knownDrives);
                }
            }
            ++i;
        }
        result.resolvedClasspath = new IClasspathEntry[resolvedEntries.size()];
        resolvedEntries.toArray(result.resolvedClasspath);
        return result;
    }

    private void addToResult(IClasspathEntry rawEntry, IClasspathEntry resolvedEntry, ResolvedClasspath result, LinkedHashSet resolvedEntries, ExternalFoldersManager externalFoldersManager, Map oldChainedEntriesMap, boolean addAsChainedEntry, Map knownDrives) {
        IPath sourcePath;
        IPath resolvedPath = resolvedEntry.getPath();
        if (result.rawReverseMap.get(resolvedPath) == null) {
            result.rawReverseMap.put(resolvedPath, rawEntry);
            result.rootPathToResolvedEntries.put(resolvedPath, resolvedEntry);
            resolvedEntries.add(resolvedEntry);
            if (addAsChainedEntry) {
                ClasspathEntry chainedEntry = null;
                chainedEntry = (ClasspathEntry)oldChainedEntriesMap.get(resolvedPath);
                if (chainedEntry != null) {
                    this.copyFromOldChainedEntry((ClasspathEntry)resolvedEntry, chainedEntry);
                }
            }
        }
        if (resolvedEntry.getEntryKind() == 1 && ExternalFoldersManager.isExternalFolderPath(resolvedPath)) {
            externalFoldersManager.addFolder(resolvedPath, true);
        }
        if ((sourcePath = resolvedEntry.getSourceAttachmentPath()) != null && this.driveExists(sourcePath, knownDrives) && ExternalFoldersManager.isExternalFolderPath(sourcePath)) {
            externalFoldersManager.addFolder(sourcePath, true);
        }
    }

    private void copyFromOldChainedEntry(ClasspathEntry resolvedEntry, ClasspathEntry chainedEntry) {
        IClasspathAttribute[] attributes;
        IPath path = chainedEntry.getSourceAttachmentPath();
        if (path != null) {
            resolvedEntry.sourceAttachmentPath = path;
        }
        if ((path = chainedEntry.getSourceAttachmentRootPath()) != null) {
            resolvedEntry.sourceAttachmentRootPath = path;
        }
        if ((attributes = chainedEntry.getExtraAttributes()) != null) {
            resolvedEntry.extraAttributes = attributes;
        }
    }

    private boolean driveExists(IPath sourcePath, Map knownDrives) {
        String drive = sourcePath.getDevice();
        if (drive == null) {
            return true;
        }
        Boolean good = (Boolean)knownDrives.get(drive);
        if (good == null) {
            if (new File(drive).exists()) {
                knownDrives.put(drive, Boolean.TRUE);
                return true;
            }
            knownDrives.put(drive, Boolean.FALSE);
            return false;
        }
        return good;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void resolveClasspath(JavaModelManager.PerProjectInfo perProjectInfo, boolean usePreviousSession, boolean addClasspathChange) throws JavaModelException {
        if (CP_RESOLUTION_BP_LISTENERS != null) {
            JavaProject.breakpoint(1, this);
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        boolean isClasspathBeingResolved = manager.isClasspathBeingResolved(this);
        try {
            int timeStamp;
            if (!isClasspathBeingResolved) {
                manager.setClasspathBeingResolved(this, true);
            }
            IClasspathEntry[][] classpath = new IClasspathEntry[2][];
            JavaModelManager.PerProjectInfo perProjectInfo2 = perProjectInfo;
            synchronized (perProjectInfo2) {
                classpath[0] = perProjectInfo.rawClasspath;
                classpath[1] = perProjectInfo.referencedEntries;
                if (classpath[0] == null) {
                    classpath = perProjectInfo.readAndCacheClasspath(this);
                }
                timeStamp = perProjectInfo.rawTimeStamp;
            }
            ResolvedClasspath result = this.resolveClasspath(classpath[0], classpath[1], usePreviousSession, true);
            if (CP_RESOLUTION_BP_LISTENERS != null) {
                JavaProject.breakpoint(2, this);
            }
            perProjectInfo.setResolvedClasspath(result.resolvedClasspath, result.referencedEntries, result.rawReverseMap, result.rootPathToResolvedEntries, usePreviousSession ? JavaModelManager.PerProjectInfo.NEED_RESOLUTION : result.unresolvedEntryStatus, timeStamp, addClasspathChange);
        }
        finally {
            if (!isClasspathBeingResolved) {
                manager.setClasspathBeingResolved(this, false);
            }
            if (CP_RESOLUTION_BP_LISTENERS != null) {
                JavaProject.breakpoint(3, this);
            }
        }
    }

    public String rootID() {
        return "[PRJ]" + this.project.getFullPath();
    }

    public boolean writeFileEntries(IClasspathEntry[] newClasspath, IClasspathEntry[] referencedEntries, IPath newOutputLocation) throws JavaModelException {
        if (!this.project.isAccessible()) {
            return false;
        }
        HashMap unknownElements = new HashMap();
        IClasspathEntry[][] fileEntries = this.readFileEntries(unknownElements);
        if (fileEntries[0] != INVALID_CLASSPATH && JavaProject.areClasspathsEqual(newClasspath, newOutputLocation, fileEntries[0]) && (referencedEntries == null || JavaProject.areClasspathsEqual(referencedEntries, fileEntries[1]))) {
            return false;
        }
        try {
            this.setSharedProperty(CLASSPATH_FILENAME, this.encodeClasspath(newClasspath, referencedEntries, newOutputLocation, true, unknownElements));
            return true;
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    public boolean writeFileEntries(IClasspathEntry[] newClasspath, IPath newOutputLocation) throws JavaModelException {
        return this.writeFileEntries(newClasspath, ClasspathEntry.NO_ENTRIES, newOutputLocation);
    }

    private void setJavaCommand(IProjectDescription description, ICommand newCommand) throws CoreException {
        ICommand[] newCommands;
        ICommand[] oldBuildSpec = description.getBuildSpec();
        int oldJavaCommandIndex = this.getJavaCommandIndex(oldBuildSpec);
        if (oldJavaCommandIndex == -1) {
            newCommands = new ICommand[oldBuildSpec.length + 1];
            System.arraycopy(oldBuildSpec, 0, newCommands, 1, oldBuildSpec.length);
            newCommands[0] = newCommand;
        } else {
            oldBuildSpec[oldJavaCommandIndex] = newCommand;
            newCommands = oldBuildSpec;
        }
        description.setBuildSpec(newCommands);
        this.project.setDescription(description, null);
    }

    public void setOption(String optionName, String optionValue) {
        IEclipsePreferences projectPreferences = this.getEclipsePreferences();
        boolean modified = JavaModelManager.getJavaModelManager().storePreference(optionName, optionValue, projectPreferences);
        if (modified) {
            try {
                projectPreferences.flush();
            }
            catch (BackingStoreException backingStoreException) {}
        }
    }

    public void setOptions(Map newOptions) {
        IEclipsePreferences projectPreferences = this.getEclipsePreferences();
        if (projectPreferences == null) {
            return;
        }
        try {
            if (newOptions == null) {
                projectPreferences.clear();
            } else {
                Iterator entries = newOptions.entrySet().iterator();
                JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                while (entries.hasNext()) {
                    Map.Entry entry = entries.next();
                    String key = (String)entry.getKey();
                    String value = (String)entry.getValue();
                    javaModelManager.storePreference(key, value, projectPreferences);
                }
                String[] pNames = projectPreferences.keys();
                int ln = pNames.length;
                int i = 0;
                while (i < ln) {
                    String key = pNames[i];
                    if (!newOptions.containsKey(key)) {
                        projectPreferences.remove(key);
                    }
                    ++i;
                }
            }
            projectPreferences.flush();
            try {
                this.getPerProjectInfo().options = null;
            }
            catch (JavaModelException javaModelException) {}
        }
        catch (BackingStoreException backingStoreException) {}
    }

    public void setOutputLocation(IPath path, IProgressMonitor monitor) throws JavaModelException {
        if (path == null) {
            throw new IllegalArgumentException(Messages.path_nullPath);
        }
        if (path.equals((Object)this.getOutputLocation())) {
            return;
        }
        this.setRawClasspath(this.getRawClasspath(), path, monitor);
    }

    public void setProject(IProject project) {
        this.project = project;
        this.parent = JavaModelManager.getJavaModelManager().getJavaModel();
    }

    public void setRawClasspath(IClasspathEntry[] entries, boolean canModifyResources, IProgressMonitor monitor) throws JavaModelException {
        this.setRawClasspath(entries, this.getOutputLocation(), canModifyResources, monitor);
    }

    public void setRawClasspath(IClasspathEntry[] newRawClasspath, IPath newOutputLocation, boolean canModifyResources, IProgressMonitor monitor) throws JavaModelException {
        this.setRawClasspath(newRawClasspath, null, newOutputLocation, canModifyResources, monitor);
    }

    public void setRawClasspath(IClasspathEntry[] entries, IPath outputLocation, IProgressMonitor monitor) throws JavaModelException {
        this.setRawClasspath(entries, outputLocation, true, monitor);
    }

    public void setRawClasspath(IClasspathEntry[] entries, IClasspathEntry[] referencedEntries, IPath outputLocation, IProgressMonitor monitor) throws JavaModelException {
        this.setRawClasspath(entries, referencedEntries, outputLocation, true, monitor);
    }

    protected void setRawClasspath(IClasspathEntry[] newRawClasspath, IClasspathEntry[] referencedEntries, IPath newOutputLocation, boolean canModifyResources, IProgressMonitor monitor) throws JavaModelException {
        try {
            if (newRawClasspath == null) {
                newRawClasspath = this.defaultClasspath();
            }
            SetClasspathOperation op = new SetClasspathOperation(this, newRawClasspath, referencedEntries, newOutputLocation, canModifyResources);
            op.runOperation(monitor);
        }
        catch (JavaModelException e) {
            JavaModelManager.getJavaModelManager().getDeltaProcessor().flush();
            throw e;
        }
    }

    public void setRawClasspath(IClasspathEntry[] entries, IProgressMonitor monitor) throws JavaModelException {
        this.setRawClasspath(entries, this.getOutputLocation(), true, monitor);
    }

    public void setSharedProperty(String key, String value) throws CoreException {
        IFile rscFile = this.project.getFile(key);
        byte[] bytes = null;
        try {
            bytes = value.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException e) {
            Util.log(e, "Could not write .classpath with UTF-8 encoding ");
            bytes = value.getBytes();
        }
        ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
        if (rscFile.exists()) {
            if (rscFile.isReadOnly()) {
                ResourcesPlugin.getWorkspace().validateEdit(new IFile[]{rscFile}, null);
            }
            rscFile.setContents((InputStream)inputStream, 1, null);
        } else {
            rscFile.create((InputStream)inputStream, 1, null);
        }
    }

    public void updateCycleParticipants(ArrayList prereqChain, LinkedHashSet cycleParticipants, IWorkspaceRoot workspaceRoot, HashSet traversed, Map preferredClasspaths) {
        IPath path = this.getPath();
        prereqChain.add(path);
        traversed.add(path);
        try {
            IClasspathEntry[] classpath = null;
            if (preferredClasspaths != null) {
                classpath = (IClasspathEntry[])preferredClasspaths.get(this);
            }
            if (classpath == null) {
                classpath = this.getResolvedClasspath();
            }
            int i = 0;
            int length = classpath.length;
            while (i < length) {
                IClasspathEntry entry = classpath[i];
                if (entry.getEntryKind() == 2) {
                    IResource member;
                    int index;
                    IPath prereqProjectPath = entry.getPath();
                    int n = index = cycleParticipants.contains(prereqProjectPath) ? 0 : prereqChain.indexOf(prereqProjectPath);
                    if (index >= 0) {
                        int size = prereqChain.size();
                        while (index < size) {
                            cycleParticipants.add(prereqChain.get(index));
                            ++index;
                        }
                    } else if (!traversed.contains(prereqProjectPath) && (member = workspaceRoot.findMember(prereqProjectPath)) != null && member.getType() == 4) {
                        JavaProject javaProject = (JavaProject)JavaCore.create((IProject)member);
                        javaProject.updateCycleParticipants(prereqChain, cycleParticipants, workspaceRoot, traversed, preferredClasspaths);
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        prereqChain.remove(path);
    }

    private void updatePreferences(IEclipsePreferences preferences) {
        IEclipsePreferences oldPreferences = this.loadPreferences();
        if (oldPreferences != null) {
            try {
                String[] propertyNames = oldPreferences.childrenNames();
                int i = 0;
                while (i < propertyNames.length) {
                    String propertyName = propertyNames[i];
                    String propertyValue = oldPreferences.get(propertyName, "");
                    if (!"".equals(propertyValue)) {
                        preferences.put(propertyName, propertyValue);
                    }
                    ++i;
                }
                preferences.flush();
            }
            catch (BackingStoreException backingStoreException) {}
        }
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        try {
            if (!((IProject)underlyingResource).hasNature("org.eclipse.jdt.core.javanature")) {
                return this.newDoesNotExistStatus();
            }
        }
        catch (CoreException coreException) {
            return this.newDoesNotExistStatus();
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static class ClasspathResolutionBreakpointListener {
        public void breakpoint(int bp) {
        }
    }

    static class ResolvedClasspath {
        IClasspathEntry[] resolvedClasspath;
        IJavaModelStatus unresolvedEntryStatus = JavaModelStatus.VERIFIED_OK;
        HashMap rawReverseMap = new HashMap();
        Map rootPathToResolvedEntries = new HashMap();
        IClasspathEntry[] referencedEntries = null;

        ResolvedClasspath() {
        }
    }
}

