/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ICommand
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IncrementalProjectBuilder
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.BatchImageBuilder;
import org.eclipse.jdt.internal.core.builder.BuildNotifier;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.IncrementalImageBuilder;
import org.eclipse.jdt.internal.core.builder.NameEnvironment;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaBuilder
extends IncrementalProjectBuilder {
    IProject currentProject;
    JavaProject javaProject;
    IWorkspaceRoot workspaceRoot;
    CompilationParticipant[] participants;
    NameEnvironment nameEnvironment;
    SimpleLookupTable binaryLocationsPerProject;
    public State lastState;
    BuildNotifier notifier;
    char[][] extraResourceFileFilters;
    String[] extraResourceFolderFilters;
    public static final String SOURCE_ID = "JDT";
    public static boolean DEBUG = false;
    public static boolean SHOW_STATS = false;
    static ArrayList builtProjects = null;

    public static IMarker[] getProblemsFor(IResource resource) {
        try {
            if (resource != null && resource.exists()) {
                IMarker[] markers = resource.findMarkers("org.eclipse.jdt.core.problem", false, 2);
                HashSet markerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                if (markerTypes.isEmpty()) {
                    return markers;
                }
                ArrayList<IMarker> markerList = new ArrayList<IMarker>(5);
                int i = 0;
                int length = markers.length;
                while (i < length) {
                    markerList.add(markers[i]);
                    ++i;
                }
                Iterator iterator = markerTypes.iterator();
                while (iterator.hasNext()) {
                    markers = resource.findMarkers((String)iterator.next(), false, 2);
                    int i2 = 0;
                    int length2 = markers.length;
                    while (i2 < length2) {
                        markerList.add(markers[i2]);
                        ++i2;
                    }
                }
                IMarker[] result = new IMarker[markerList.size()];
                markerList.toArray(result);
                return result;
            }
        }
        catch (CoreException coreException) {}
        return new IMarker[0];
    }

    public static IMarker[] getTasksFor(IResource resource) {
        try {
            if (resource != null && resource.exists()) {
                return resource.findMarkers("org.eclipse.jdt.core.task", false, 2);
            }
        }
        catch (CoreException coreException) {}
        return new IMarker[0];
    }

    public static void buildStarting() {
    }

    public static void buildFinished() {
        BuildNotifier.resetProblemCounters();
    }

    public static void removeProblemsFor(IResource resource) {
        try {
            if (resource != null && resource.exists()) {
                resource.deleteMarkers("org.eclipse.jdt.core.problem", false, 2);
                HashSet markerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                if (markerTypes.size() == 0) {
                    return;
                }
                Iterator iterator = markerTypes.iterator();
                while (iterator.hasNext()) {
                    resource.deleteMarkers((String)iterator.next(), false, 2);
                }
            }
        }
        catch (CoreException coreException) {}
    }

    public static void removeTasksFor(IResource resource) {
        try {
            if (resource != null && resource.exists()) {
                resource.deleteMarkers("org.eclipse.jdt.core.task", false, 2);
            }
        }
        catch (CoreException coreException) {}
    }

    public static void removeProblemsAndTasksFor(IResource resource) {
        try {
            if (resource != null && resource.exists()) {
                resource.deleteMarkers("org.eclipse.jdt.core.problem", false, 2);
                resource.deleteMarkers("org.eclipse.jdt.core.task", false, 2);
                HashSet markerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                if (markerTypes.size() == 0) {
                    return;
                }
                Iterator iterator = markerTypes.iterator();
                while (iterator.hasNext()) {
                    resource.deleteMarkers((String)iterator.next(), false, 2);
                }
            }
        }
        catch (CoreException coreException) {}
    }

    public static State readState(IProject project, DataInputStream in) throws IOException {
        return State.read(project, in);
    }

    public static void writeState(Object state, DataOutputStream out) throws IOException {
        ((State)state).write(out);
    }

    /*
     * Exception decompiling
     */
    protected IProject[] build(int kind, Map ignored, IProgressMonitor monitor) throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 3 blocks at once
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

    private void buildAll() {
        this.notifier.checkCancel();
        this.notifier.subTask(Messages.bind(Messages.build_preparingBuild, this.currentProject.getName()));
        if (DEBUG && this.lastState != null) {
            System.out.println("Clearing last state : " + this.lastState);
        }
        this.clearLastState();
        BatchImageBuilder imageBuilder = new BatchImageBuilder(this, true);
        imageBuilder.build();
        this.recordNewState(imageBuilder.newState);
    }

    private void buildDeltas(SimpleLookupTable deltas) {
        this.notifier.checkCancel();
        this.notifier.subTask(Messages.bind(Messages.build_preparingBuild, this.currentProject.getName()));
        if (DEBUG && this.lastState != null) {
            System.out.println("Clearing last state : " + this.lastState);
        }
        this.clearLastState();
        IncrementalImageBuilder imageBuilder = new IncrementalImageBuilder(this);
        if (imageBuilder.build(deltas)) {
            this.recordNewState(imageBuilder.newState);
        } else {
            if (DEBUG) {
                System.out.println("Performing full build since incremental build failed");
            }
            this.buildAll();
        }
    }

    protected void clean(IProgressMonitor monitor) throws CoreException {
        block9: {
            this.currentProject = this.getProject();
            if (this.currentProject == null || !this.currentProject.isAccessible()) {
                return;
            }
            if (DEBUG) {
                System.out.println("\nCleaning " + this.currentProject.getName() + " @ " + new Date(System.currentTimeMillis()));
            }
            this.notifier = new BuildNotifier(monitor, this.currentProject);
            this.notifier.begin();
            try {
                try {
                    this.notifier.checkCancel();
                    this.initializeBuilder(15, true);
                    if (DEBUG) {
                        System.out.println("Clearing last state as part of clean : " + this.lastState);
                    }
                    this.clearLastState();
                    JavaBuilder.removeProblemsAndTasksFor((IResource)this.currentProject);
                    new BatchImageBuilder(this, false).cleanOutputFolders(false);
                }
                catch (CoreException e) {
                    Util.log(e, "JavaBuilder handling CoreException while cleaning: " + this.currentProject.getName());
                    this.createInconsistentBuildMarker(e);
                    this.notifier.done();
                    this.cleanup();
                    break block9;
                }
            }
            catch (Throwable throwable) {
                this.notifier.done();
                this.cleanup();
                throw throwable;
            }
            this.notifier.done();
            this.cleanup();
        }
        if (DEBUG) {
            System.out.println("Finished cleaning " + this.currentProject.getName() + " @ " + new Date(System.currentTimeMillis()));
        }
    }

    private void createInconsistentBuildMarker(CoreException coreException) throws CoreException {
        IStatus[] children;
        String message = null;
        IStatus status = coreException.getStatus();
        if (status.isMultiStatus() && (children = status.getChildren()) != null && children.length > 0) {
            message = children[0].getMessage();
        }
        if (message == null) {
            message = coreException.getMessage();
        }
        IMarker marker = this.currentProject.createMarker("org.eclipse.jdt.core.problem");
        marker.setAttributes(new String[]{"message", "severity", "categoryId", "sourceId"}, new Object[]{Messages.bind(Messages.build_inconsistentProject, message), new Integer(2), new Integer(10), SOURCE_ID});
    }

    private void cleanup() {
        this.participants = null;
        this.nameEnvironment = null;
        this.binaryLocationsPerProject = null;
        this.lastState = null;
        this.notifier = null;
        this.extraResourceFileFilters = null;
        this.extraResourceFolderFilters = null;
    }

    private void clearLastState() {
        JavaModelManager.getJavaModelManager().setLastBuiltState(this.currentProject, null);
    }

    boolean filterExtraResource(IResource resource) {
        if (this.extraResourceFileFilters != null) {
            char[] name = resource.getName().toCharArray();
            int i = 0;
            int l = this.extraResourceFileFilters.length;
            while (i < l) {
                if (CharOperation.match(this.extraResourceFileFilters[i], name, true)) {
                    return true;
                }
                ++i;
            }
        }
        if (this.extraResourceFolderFilters != null) {
            IPath path = resource.getProjectRelativePath();
            String pathName = path.toString();
            int count = path.segmentCount();
            if (resource.getType() == 1) {
                --count;
            }
            int i = 0;
            int l = this.extraResourceFolderFilters.length;
            while (i < l) {
                if (pathName.indexOf(this.extraResourceFolderFilters[i]) != -1) {
                    int j = 0;
                    while (j < count) {
                        if (this.extraResourceFolderFilters[i].equals(path.segment(j))) {
                            return true;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        return false;
    }

    private SimpleLookupTable findDeltas() {
        this.notifier.subTask(Messages.bind(Messages.build_readingDelta, this.currentProject.getName()));
        IResourceDelta delta = this.getDelta(this.currentProject);
        SimpleLookupTable deltas = new SimpleLookupTable(3);
        if (delta != null) {
            if (delta.getKind() != 0) {
                if (DEBUG) {
                    System.out.println("Found source delta for: " + this.currentProject.getName());
                }
                deltas.put(this.currentProject, delta);
            }
        } else {
            if (DEBUG) {
                System.out.println("Missing delta for: " + this.currentProject.getName());
            }
            this.notifier.subTask("");
            return null;
        }
        Object[] keyTable = this.binaryLocationsPerProject.keyTable;
        Object[] valueTable = this.binaryLocationsPerProject.valueTable;
        int i = 0;
        int l = keyTable.length;
        while (i < l) {
            block17: {
                IProject p;
                block18: {
                    p = (IProject)keyTable[i];
                    if (p == null || p == this.currentProject) break block17;
                    State s = this.getLastState(p);
                    if (this.lastState.wasStructurallyChanged(p, s)) break block18;
                    if (s.wasNoopBuild()) break block17;
                    ClasspathLocation[] classFoldersAndJars = (ClasspathLocation[])valueTable[i];
                    boolean canSkip = true;
                    int j = 0;
                    int m = classFoldersAndJars.length;
                    while (j < m) {
                        if (classFoldersAndJars[j].isOutputFolder()) {
                            classFoldersAndJars[j] = null;
                        } else {
                            canSkip = false;
                        }
                        ++j;
                    }
                    if (canSkip) break block17;
                }
                this.notifier.subTask(Messages.bind(Messages.build_readingDelta, p.getName()));
                delta = this.getDelta(p);
                if (delta != null) {
                    if (delta.getKind() != 0) {
                        if (DEBUG) {
                            System.out.println("Found binary delta for: " + p.getName());
                        }
                        deltas.put(p, delta);
                    }
                } else {
                    if (DEBUG) {
                        System.out.println("Missing delta for: " + p.getName());
                    }
                    this.notifier.subTask("");
                    return null;
                }
            }
            ++i;
        }
        this.notifier.subTask("");
        return deltas;
    }

    public State getLastState(IProject project) {
        return (State)JavaModelManager.getJavaModelManager().getLastBuiltState(project, this.notifier.monitor);
    }

    private IProject[] getRequiredProjects(boolean includeBinaryPrerequisites) {
        if (this.javaProject == null || this.workspaceRoot == null) {
            return new IProject[0];
        }
        ArrayList<IProject> projects = new ArrayList<IProject>();
        ExternalFoldersManager externalFoldersManager = JavaModelManager.getExternalManager();
        try {
            IClasspathEntry[] entries = this.javaProject.getExpandedClasspath();
            int i = 0;
            int l = entries.length;
            while (i < l) {
                IClasspathEntry entry = entries[i];
                IPath path = entry.getPath();
                IProject p = null;
                switch (entry.getEntryKind()) {
                    case 2: {
                        p = this.workspaceRoot.getProject(path.lastSegment());
                        if (!((ClasspathEntry)entry).isOptional() || JavaProject.hasJavaNature(p)) break;
                        p = null;
                        break;
                    }
                    case 1: {
                        if (!includeBinaryPrerequisites || path.segmentCount() <= 0) break;
                        IResource resource = this.workspaceRoot.findMember(path.segment(0));
                        if (resource instanceof IProject) {
                            p = (IProject)resource;
                            break;
                        }
                        resource = externalFoldersManager.getFolder(path);
                        if (resource == null) break;
                        p = resource.getProject();
                    }
                }
                if (p != null && !projects.contains(p)) {
                    projects.add(p);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return new IProject[0];
        }
        IProject[] result = new IProject[projects.size()];
        projects.toArray(result);
        return result;
    }

    boolean hasBuildpathErrors() throws CoreException {
        IMarker[] markers = this.currentProject.findMarkers("org.eclipse.jdt.core.problem", false, 0);
        int i = 0;
        int l = markers.length;
        while (i < l) {
            if (markers[i].getAttribute("categoryId", -1) == 10) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean hasClasspathChanged() {
        ClasspathLocation[] newSourceLocations = this.nameEnvironment.sourceLocations;
        ClasspathLocation[] oldSourceLocations = this.lastState.sourceLocations;
        int newLength = newSourceLocations.length;
        int oldLength = oldSourceLocations.length;
        int o = 0;
        int n = 0;
        while (n < newLength && o < oldLength) {
            block19: {
                if (!newSourceLocations[n].equals(oldSourceLocations[o])) {
                    block20: {
                        try {
                            if (newSourceLocations[n].sourceFolder.members().length == 0) {
                                --o;
                                break block19;
                            }
                            if (!this.lastState.isSourceFolderEmpty(((ClasspathMultiDirectory)oldSourceLocations[o]).sourceFolder)) break block20;
                            --n;
                            break block19;
                        }
                        catch (CoreException coreException) {}
                    }
                    if (DEBUG) {
                        System.out.println("New location: " + newSourceLocations[n] + "\n!= old location: " + oldSourceLocations[o]);
                        this.printLocations(newSourceLocations, oldSourceLocations);
                    }
                    return true;
                }
            }
            ++n;
            ++o;
        }
        while (n < newLength) {
            try {
                if (newSourceLocations[n].sourceFolder.members().length == 0) {
                    ++n;
                    continue;
                }
            }
            catch (CoreException coreException) {}
            if (DEBUG) {
                System.out.println("Added non-empty source folder");
                this.printLocations(newSourceLocations, oldSourceLocations);
            }
            return true;
        }
        while (o < oldLength) {
            if (this.lastState.isSourceFolderEmpty(oldSourceLocations[o].sourceFolder)) {
                ++o;
                continue;
            }
            if (DEBUG) {
                System.out.println("Removed non-empty source folder");
                this.printLocations(newSourceLocations, oldSourceLocations);
            }
            return true;
        }
        ClasspathLocation[] newBinaryLocations = this.nameEnvironment.binaryLocations;
        ClasspathLocation[] oldBinaryLocations = this.lastState.binaryLocations;
        newLength = newBinaryLocations.length;
        oldLength = oldBinaryLocations.length;
        o = 0;
        n = 0;
        while (n < newLength && o < oldLength) {
            if (!newBinaryLocations[n].equals(oldBinaryLocations[o])) {
                if (DEBUG) {
                    System.out.println("New location: " + newBinaryLocations[n] + "\n!= old location: " + oldBinaryLocations[o]);
                    this.printLocations(newBinaryLocations, oldBinaryLocations);
                }
                return true;
            }
            ++n;
            ++o;
        }
        if (n < newLength || o < oldLength) {
            if (DEBUG) {
                System.out.println("Number of binary folders/jar files has changed:");
                this.printLocations(newBinaryLocations, oldBinaryLocations);
            }
            return true;
        }
        return false;
    }

    private boolean hasJavaBuilder(IProject project) throws CoreException {
        ICommand[] buildCommands = project.getDescription().getBuildSpec();
        int i = 0;
        int l = buildCommands.length;
        while (i < l) {
            if (buildCommands[i].getBuilderName().equals("org.eclipse.jdt.core.javabuilder")) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean hasStructuralDelta() {
        ClasspathLocation[] classFoldersAndJars;
        IResourceDelta delta = this.getDelta(this.currentProject);
        if (delta != null && delta.getKind() != 0 && (classFoldersAndJars = (ClasspathLocation[])this.binaryLocationsPerProject.get(this.currentProject)) != null) {
            int i = 0;
            int l = classFoldersAndJars.length;
            while (i < l) {
                IResourceDelta binaryDelta;
                IPath p;
                ClasspathLocation classFolderOrJar = classFoldersAndJars[i];
                if (classFolderOrJar != null && (p = classFolderOrJar.getProjectRelativePath()) != null && (binaryDelta = delta.findMember(p)) != null && binaryDelta.getKind() != 0) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private int initializeBuilder(int kind, boolean forBuild) throws CoreException {
        this.javaProject = (JavaProject)JavaCore.create(this.currentProject);
        this.workspaceRoot = this.currentProject.getWorkspace().getRoot();
        if (forBuild) {
            this.participants = JavaModelManager.getJavaModelManager().compilationParticipants.getCompilationParticipants(this.javaProject);
            if (this.participants != null) {
                int i = 0;
                int l = this.participants.length;
                while (i < l) {
                    if (this.participants[i].aboutToBuild(this.javaProject) == 2) {
                        kind = 6;
                    }
                    ++i;
                }
            }
            String projectName = this.currentProject.getName();
            if (builtProjects == null || builtProjects.contains(projectName)) {
                JavaModel.flushExternalFileCache();
                builtProjects = new ArrayList();
            }
            builtProjects.add(projectName);
        }
        this.binaryLocationsPerProject = new SimpleLookupTable(3);
        this.nameEnvironment = new NameEnvironment(this.workspaceRoot, this.javaProject, this.binaryLocationsPerProject, this.notifier);
        if (forBuild) {
            char[][] filters;
            String filterSequence = this.javaProject.getOption("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter", true);
            char[][] cArray = filters = filterSequence != null && filterSequence.length() > 0 ? CharOperation.splitAndTrimOn(',', filterSequence.toCharArray()) : null;
            if (filters == null) {
                this.extraResourceFileFilters = null;
                this.extraResourceFolderFilters = null;
            } else {
                char[] f;
                int fileCount = 0;
                int folderCount = 0;
                int i = 0;
                int l = filters.length;
                while (i < l) {
                    f = filters[i];
                    if (f.length != 0) {
                        if (f[f.length - 1] == '/') {
                            ++folderCount;
                        } else {
                            ++fileCount;
                        }
                    }
                    ++i;
                }
                this.extraResourceFileFilters = new char[fileCount][];
                this.extraResourceFolderFilters = new String[folderCount];
                i = 0;
                l = filters.length;
                while (i < l) {
                    f = filters[i];
                    if (f.length != 0) {
                        if (f[f.length - 1] == '/') {
                            this.extraResourceFolderFilters[--folderCount] = new String(f, 0, f.length - 1);
                        } else {
                            this.extraResourceFileFilters[--fileCount] = f;
                        }
                    }
                    ++i;
                }
            }
        }
        return kind;
    }

    private boolean isClasspathBroken(IClasspathEntry[] classpath, IProject p) throws CoreException {
        IMarker[] markers = p.findMarkers("org.eclipse.jdt.core.buildpath_problem", false, 0);
        int i = 0;
        int l = markers.length;
        while (i < l) {
            if (markers[i].getAttribute("severity", -1) == 2) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isWorthBuilding() throws CoreException {
        boolean abortBuilds = "abort".equals(this.javaProject.getOption("org.eclipse.jdt.core.builder.invalidClasspath", true));
        if (!abortBuilds) {
            return true;
        }
        if (this.isClasspathBroken(this.javaProject.getRawClasspath(), this.currentProject)) {
            if (DEBUG) {
                System.out.println("Aborted build because project has classpath errors (incomplete or involved in cycle)");
            }
            JavaBuilder.removeProblemsAndTasksFor((IResource)this.currentProject);
            IMarker marker = this.currentProject.createMarker("org.eclipse.jdt.core.problem");
            marker.setAttributes(new String[]{"message", "severity", "categoryId", "sourceId"}, new Object[]{Messages.build_abortDueToClasspathProblems, new Integer(2), new Integer(10), SOURCE_ID});
            return false;
        }
        if ("warning".equals(this.javaProject.getOption("org.eclipse.jdt.core.incompleteClasspath", true))) {
            return true;
        }
        IProject[] requiredProjects = this.getRequiredProjects(false);
        int i = 0;
        int l = requiredProjects.length;
        while (i < l) {
            IProject p = requiredProjects[i];
            if (this.getLastState(p) == null) {
                JavaProject prereq = (JavaProject)JavaCore.create(p);
                if (prereq.hasCycleMarker() && "warning".equals(this.javaProject.getOption("org.eclipse.jdt.core.circularClasspath", true))) {
                    if (DEBUG) {
                        System.out.println("Continued to build even though prereq project " + p.getName() + " was not built since its part of a cycle");
                    }
                } else if (!this.hasJavaBuilder(p)) {
                    if (DEBUG) {
                        System.out.println("Continued to build even though prereq project " + p.getName() + " is not built by JavaBuilder");
                    }
                } else {
                    if (DEBUG) {
                        System.out.println("Aborted build because prereq project " + p.getName() + " was not built");
                    }
                    JavaBuilder.removeProblemsAndTasksFor((IResource)this.currentProject);
                    IMarker marker = this.currentProject.createMarker("org.eclipse.jdt.core.problem");
                    marker.setAttributes(new String[]{"message", "severity", "categoryId", "sourceId"}, new Object[]{this.isClasspathBroken(prereq.getRawClasspath(), p) ? Messages.bind(Messages.build_prereqProjectHasClasspathProblems, p.getName()) : Messages.bind(Messages.build_prereqProjectMustBeRebuilt, p.getName()), new Integer(2), new Integer(10), SOURCE_ID});
                    return false;
                }
            }
            ++i;
        }
        return true;
    }

    void mustPropagateStructuralChanges() {
        LinkedHashSet cycleParticipants = new LinkedHashSet(3);
        this.javaProject.updateCycleParticipants(new ArrayList(), cycleParticipants, this.workspaceRoot, new HashSet(3), null);
        IPath currentPath = this.javaProject.getPath();
        Iterator i = cycleParticipants.iterator();
        while (i.hasNext()) {
            IProject project;
            IPath participantPath = (IPath)i.next();
            if (participantPath == currentPath || !this.hasBeenBuilt(project = this.workspaceRoot.getProject(participantPath.segment(0)))) continue;
            if (DEBUG) {
                System.out.println("Requesting another build iteration since cycle participant " + project.getName() + " has not yet seen some structural changes");
            }
            this.needRebuild();
            return;
        }
    }

    private void printLocations(ClasspathLocation[] newLocations, ClasspathLocation[] oldLocations) {
        System.out.println("New locations:");
        int i = 0;
        int length = newLocations.length;
        while (i < length) {
            System.out.println("    " + newLocations[i].debugPathString());
            ++i;
        }
        System.out.println("Old locations:");
        i = 0;
        length = oldLocations.length;
        while (i < length) {
            System.out.println("    " + oldLocations[i].debugPathString());
            ++i;
        }
    }

    private void recordNewState(State state) {
        Object[] keyTable = this.binaryLocationsPerProject.keyTable;
        int i = 0;
        int l = keyTable.length;
        while (i < l) {
            IProject prereqProject = (IProject)keyTable[i];
            if (prereqProject != null && prereqProject != this.currentProject) {
                state.recordStructuralDependency(prereqProject, this.getLastState(prereqProject));
            }
            ++i;
        }
        if (DEBUG) {
            System.out.println("Recording new state : " + state);
        }
        JavaModelManager.getJavaModelManager().setLastBuiltState(this.currentProject, state);
    }

    public String toString() {
        return this.currentProject == null ? "JavaBuilder for unknown project" : "JavaBuilder for " + this.currentProject.getName();
    }
}

