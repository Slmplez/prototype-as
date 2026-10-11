/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.WorkspaceJob
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.PerformanceStats
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.ModelUpdater;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.PackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;
import org.eclipse.jdt.internal.core.search.JavaWorkspaceScope;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class DeltaProcessor {
    private static final int IGNORE = 0;
    private static final int SOURCE = 1;
    private static final int BINARY = 2;
    private static final String EXTERNAL_JAR_ADDED = "external jar added";
    private static final String EXTERNAL_JAR_CHANGED = "external jar changed";
    private static final String EXTERNAL_JAR_REMOVED = "external jar removed";
    private static final String EXTERNAL_JAR_UNCHANGED = "external jar unchanged";
    private static final String INTERNAL_JAR_IGNORE = "internal jar ignore";
    private static final int NON_JAVA_RESOURCE = -1;
    public static boolean DEBUG = false;
    public static boolean VERBOSE = false;
    public static boolean PERF = false;
    public static final int DEFAULT_CHANGE_EVENT = 0;
    private DeltaProcessingState state;
    JavaModelManager manager;
    private JavaElementDelta currentDelta;
    private Openable currentElement;
    public ArrayList javaModelDeltas = new ArrayList();
    public HashMap reconcileDeltas = new HashMap();
    private boolean isFiring = true;
    private final ModelUpdater modelUpdater = new ModelUpdater();
    public HashSet projectCachesToReset = new HashSet();
    public Map oldRoots;
    public int overridenEventType = -1;
    private SourceElementParser sourceElementParserCache;

    public static long getTimeStamp(File file) {
        return file.lastModified() + file.length();
    }

    public DeltaProcessor(DeltaProcessingState state, JavaModelManager manager) {
        this.state = state;
        this.manager = manager;
    }

    private void addDependentProjects(IJavaProject project, HashMap projectDependencies, HashSet result) {
        IJavaProject[] dependents = (IJavaProject[])projectDependencies.get(project);
        if (dependents == null) {
            return;
        }
        int i = 0;
        int length = dependents.length;
        while (i < length) {
            IJavaProject dependent = dependents[i];
            if (!result.contains(dependent)) {
                result.add(dependent);
                this.addDependentProjects(dependent, projectDependencies, result);
            }
            ++i;
        }
    }

    private void addToParentInfo(Openable child) {
        Openable parent = (Openable)child.getParent();
        if (parent != null && parent.isOpen()) {
            try {
                OpenableElementInfo info = (OpenableElementInfo)parent.getElementInfo();
                if (child instanceof IPackageFragmentRoot) {
                    this.addPackageFragmentRoot(info, (IPackageFragmentRoot)((Object)child));
                } else {
                    info.addChild(child);
                }
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    private void addPackageFragmentRoot(OpenableElementInfo parent, IPackageFragmentRoot child) throws JavaModelException {
        IJavaElement[] roots = parent.getChildren();
        if (roots.length > 0) {
            IClasspathEntry[] resolvedClasspath = ((JavaProject)child.getJavaProject()).getResolvedClasspath();
            IPath currentEntryPath = child.getResolvedClasspathEntry().getPath();
            int indexToInsert = -1;
            int lastComparedIndex = -1;
            int i = 0;
            int j = 0;
            while (i < roots.length && j < resolvedClasspath.length) {
                IClasspathEntry classpathEntry = resolvedClasspath[j];
                if (lastComparedIndex != j && currentEntryPath.equals((Object)classpathEntry.getPath())) {
                    indexToInsert = i;
                    break;
                }
                lastComparedIndex = j++;
                IClasspathEntry rootEntry = ((IPackageFragmentRoot)roots[i]).getResolvedClasspathEntry();
                if (!rootEntry.getPath().equals((Object)classpathEntry.getPath())) continue;
                ++i;
            }
            while (i < roots.length) {
                if (roots[i].equals(child)) {
                    return;
                }
                if (!((IPackageFragmentRoot)roots[i]).getResolvedClasspathEntry().getPath().equals((Object)currentEntryPath)) break;
                ++i;
            }
            if (indexToInsert >= 0) {
                int newSize = roots.length + 1;
                IJavaElement[] newChildren = new IPackageFragmentRoot[newSize];
                if (indexToInsert > 0) {
                    System.arraycopy(roots, 0, newChildren, 0, indexToInsert);
                }
                newChildren[indexToInsert] = child;
                System.arraycopy(roots, indexToInsert, newChildren, indexToInsert + 1, newSize - indexToInsert - 1);
                parent.setChildren(newChildren);
                return;
            }
        }
        parent.addChild(child);
    }

    private void checkProjectsAndClasspathChanges(IResourceDelta delta) {
        IResource resource = delta.getResource();
        IResourceDelta[] children = null;
        switch (resource.getType()) {
            case 8: {
                this.state.getOldJavaProjecNames();
                children = delta.getAffectedChildren();
                break;
            }
            case 4: {
                IProject project = (IProject)resource;
                JavaProject javaProject = (JavaProject)JavaCore.create(project);
                switch (delta.getKind()) {
                    case 1: {
                        this.manager.forceBatchInitializations(false);
                        this.projectCachesToReset.add(javaProject);
                        if (JavaProject.hasJavaNature(project)) {
                            this.addToParentInfo(javaProject);
                            this.readRawClasspath(javaProject);
                            this.checkProjectReferenceChange(project, javaProject);
                            this.checkExternalFolderChange(project, javaProject);
                        }
                        this.state.rootsAreStale = true;
                        break;
                    }
                    case 4: {
                        if ((delta.getFlags() & 0x4000) != 0) {
                            this.manager.forceBatchInitializations(false);
                            this.projectCachesToReset.add(javaProject);
                            if (project.isOpen()) {
                                if (JavaProject.hasJavaNature(project)) {
                                    this.addToParentInfo(javaProject);
                                    this.readRawClasspath(javaProject);
                                    this.checkProjectReferenceChange(project, javaProject);
                                    this.checkExternalFolderChange(project, javaProject);
                                }
                            } else {
                                try {
                                    javaProject.close();
                                }
                                catch (JavaModelException javaModelException) {}
                                this.removeFromParentInfo(javaProject);
                                this.manager.removePerProjectInfo(javaProject, false);
                                this.manager.containerRemove(javaProject);
                            }
                            this.state.rootsAreStale = true;
                            break;
                        }
                        if ((delta.getFlags() & 0x80000) != 0) {
                            boolean isJavaProject;
                            boolean wasJavaProject = this.state.findJavaProject(project.getName()) != null;
                            if (wasJavaProject != (isJavaProject = JavaProject.hasJavaNature(project))) {
                                this.manager.forceBatchInitializations(false);
                                this.projectCachesToReset.add(javaProject);
                                if (isJavaProject) {
                                    this.addToParentInfo(javaProject);
                                    this.readRawClasspath(javaProject);
                                    this.checkProjectReferenceChange(project, javaProject);
                                    this.checkExternalFolderChange(project, javaProject);
                                } else {
                                    this.manager.removePerProjectInfo(javaProject, true);
                                    this.manager.containerRemove(javaProject);
                                    try {
                                        javaProject.close();
                                    }
                                    catch (JavaModelException javaModelException) {}
                                    this.removeFromParentInfo(javaProject);
                                }
                                this.state.rootsAreStale = true;
                                break;
                            }
                            if (!isJavaProject) break;
                            this.addToParentInfo(javaProject);
                            children = delta.getAffectedChildren();
                            break;
                        }
                        if (!JavaProject.hasJavaNature(project)) break;
                        this.addToParentInfo(javaProject);
                        children = delta.getAffectedChildren();
                        break;
                    }
                    case 2: {
                        this.manager.forceBatchInitializations(false);
                        this.manager.removePerProjectInfo(javaProject, true);
                        this.manager.containerRemove(javaProject);
                        this.state.rootsAreStale = true;
                    }
                }
                break;
            }
            case 2: {
                if (delta.getKind() != 4) break;
                children = delta.getAffectedChildren();
                break;
            }
            case 1: {
                JavaProject javaProject;
                IFile file = (IFile)resource;
                int kind = delta.getKind();
                if (file.getName().equals(".classpath")) {
                    this.manager.forceBatchInitializations(false);
                    switch (kind) {
                        case 4: {
                            int flags = delta.getFlags();
                            if ((flags & 0x100) == 0 && (flags & 0x100000) == 0 && (flags & 0x1000) == 0) break;
                        }
                        case 1: 
                        case 2: {
                            javaProject = (JavaProject)JavaCore.create(file.getProject());
                            this.readRawClasspath(javaProject);
                        }
                    }
                    this.state.rootsAreStale = true;
                    break;
                }
                RootInfo rootInfo = this.rootInfo(file.getFullPath(), kind);
                if (rootInfo == null || rootInfo.entryKind != 1) break;
                javaProject = (JavaProject)JavaCore.create(file.getProject());
                javaProject.resetResolvedClasspath();
                this.state.rootsAreStale = true;
            }
        }
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                this.checkProjectsAndClasspathChanges(children[i]);
                ++i;
            }
        }
    }

    private void checkExternalFolderChange(IProject project, JavaProject javaProject) {
        ClasspathChange change = this.state.getClasspathChange(project);
        this.state.addExternalFolderChange(javaProject, change == null ? null : change.oldResolvedClasspath);
    }

    private void checkProjectReferenceChange(IProject project, JavaProject javaProject) {
        ClasspathChange change = this.state.getClasspathChange(project);
        this.state.addProjectReferenceChange(javaProject, change == null ? null : change.oldResolvedClasspath);
    }

    private void readRawClasspath(JavaProject javaProject) {
        block3: {
            try {
                JavaModelManager.PerProjectInfo perProjectInfo = javaProject.getPerProjectInfo();
                if (!perProjectInfo.writtingRawClasspath) {
                    perProjectInfo.readAndCacheClasspath(javaProject);
                }
            }
            catch (JavaModelException e) {
                if (!VERBOSE) break block3;
                e.printStackTrace();
            }
        }
    }

    private void checkSourceAttachmentChange(IResourceDelta delta, IResource res) {
        RootInfo rootInfo;
        IPath rootPath = (IPath)this.state.sourceAttachments.get(this.externalPath(res));
        if (rootPath != null && (rootInfo = this.rootInfo(rootPath, delta.getKind())) != null) {
            JavaProject projectOfRoot = rootInfo.project;
            IPackageFragmentRoot root = null;
            try {
                root = projectOfRoot.findPackageFragmentRoot(rootPath);
                if (root != null) {
                    root.close();
                }
            }
            catch (JavaModelException javaModelException) {}
            if (root == null) {
                return;
            }
            switch (delta.getKind()) {
                case 1: {
                    this.currentDelta().sourceAttached(root);
                    break;
                }
                case 4: {
                    this.currentDelta().sourceDetached(root);
                    this.currentDelta().sourceAttached(root);
                    break;
                }
                case 2: {
                    this.currentDelta().sourceDetached(root);
                }
            }
        }
    }

    private void close(Openable element) {
        try {
            element.close();
        }
        catch (JavaModelException javaModelException) {}
    }

    private void contentChanged(Openable element) {
        boolean isPrimary = false;
        boolean isPrimaryWorkingCopy = false;
        if (element.getElementType() == 5) {
            CompilationUnit cu = (CompilationUnit)element;
            isPrimary = cu.isPrimary();
            boolean bl = isPrimaryWorkingCopy = isPrimary && cu.isWorkingCopy();
        }
        if (isPrimaryWorkingCopy) {
            this.currentDelta().changed(element, 262144);
        } else {
            this.close(element);
            int flags = 1;
            if (element instanceof JarPackageFragmentRoot) {
                flags |= 0x8000;
                this.projectCachesToReset.add(element.getJavaProject());
            }
            if (isPrimary) {
                flags |= 0x40000;
            }
            this.currentDelta().changed(element, flags);
        }
    }

    private Openable createElement(IResource resource, int elementType, RootInfo rootInfo) {
        if (resource == null) {
            return null;
        }
        IPath path = resource.getFullPath();
        IJavaElement element = null;
        switch (elementType) {
            case 2: {
                if (!(resource instanceof IProject)) break;
                this.popUntilPrefixOf(path);
                if (this.currentElement != null && this.currentElement.getElementType() == 2 && ((IJavaProject)((Object)this.currentElement)).getProject().equals((Object)resource)) {
                    return this.currentElement;
                }
                if (rootInfo != null && rootInfo.project.getProject().equals((Object)resource)) {
                    element = rootInfo.project;
                    break;
                }
                IProject proj = (IProject)resource;
                if (JavaProject.hasJavaNature(proj)) {
                    element = JavaCore.create(proj);
                    break;
                }
                element = this.state.findJavaProject(proj.getName());
                break;
            }
            case 3: {
                element = rootInfo == null ? JavaCore.create(resource) : rootInfo.getPackageFragmentRoot(resource);
                break;
            }
            case 4: {
                if (rootInfo != null) {
                    if (!rootInfo.project.contains(resource)) break;
                    PackageFragmentRoot root = (PackageFragmentRoot)rootInfo.getPackageFragmentRoot(null);
                    IPath pkgPath = path.removeFirstSegments(root.resource().getFullPath().segmentCount());
                    String[] pkgName = pkgPath.segments();
                    element = root.getPackageFragment(pkgName);
                    break;
                }
                this.popUntilPrefixOf(path);
                if (this.currentElement == null) {
                    element = JavaCore.create(resource);
                    break;
                }
                PackageFragmentRoot root = this.currentElement.getPackageFragmentRoot();
                if (root == null) {
                    element = JavaCore.create(resource);
                    break;
                }
                if (!((JavaProject)root.getJavaProject()).contains(resource)) break;
                IPath pkgPath = path.removeFirstSegments(root.getPath().segmentCount());
                String[] pkgName = pkgPath.segments();
                element = root.getPackageFragment(pkgName);
                break;
            }
            case 5: 
            case 6: {
                String fileName;
                this.popUntilPrefixOf(path);
                if (this.currentElement == null) {
                    element = rootInfo == null ? JavaCore.create(resource) : JavaModelManager.create(resource, (IJavaProject)rootInfo.project);
                    break;
                }
                IPackageFragment pkgFragment = null;
                switch (this.currentElement.getElementType()) {
                    case 3: {
                        PackageFragmentRoot root = (PackageFragmentRoot)this.currentElement;
                        IPath rootPath = root.getPath();
                        IPath pkgPath = path.removeLastSegments(1);
                        String[] pkgName = pkgPath.removeFirstSegments(rootPath.segmentCount()).segments();
                        pkgFragment = root.getPackageFragment(pkgName);
                        break;
                    }
                    case 4: {
                        Openable pkg = this.currentElement;
                        if (!pkg.getPath().equals((Object)path.removeLastSegments(1))) break;
                        pkgFragment = (IPackageFragment)((Object)pkg);
                        break;
                    }
                    case 5: 
                    case 6: {
                        pkgFragment = (IPackageFragment)this.currentElement.getParent();
                    }
                }
                if (pkgFragment == null) {
                    element = rootInfo == null ? JavaCore.create(resource) : JavaModelManager.create(resource, (IJavaProject)rootInfo.project);
                    break;
                }
                if (elementType == 5) {
                    fileName = path.lastSegment();
                    element = pkgFragment.getCompilationUnit(fileName);
                    break;
                }
                fileName = path.lastSegment();
                element = pkgFragment.getClassFile(fileName);
            }
        }
        if (element == null) {
            return null;
        }
        this.currentElement = (Openable)element;
        return this.currentElement;
    }

    public void checkExternalArchiveChanges(IJavaElement[] elementsScope, IProgressMonitor monitor) throws JavaModelException {
        this.checkExternalArchiveChanges(elementsScope, false, monitor);
    }

    private void checkExternalArchiveChanges(IJavaElement[] elementsScope, boolean asynchronous, IProgressMonitor monitor) throws JavaModelException {
        block18: {
            if (monitor != null && monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            try {
                boolean hasDelta;
                if (monitor != null) {
                    monitor.beginTask("", 1);
                }
                boolean hasExternalWorkingCopyProject = false;
                int i = 0;
                int length = elementsScope.length;
                while (i < length) {
                    HashSet projects;
                    IJavaElement element = elementsScope[i];
                    this.state.addForRefresh(elementsScope[i]);
                    if (element.getElementType() == 1 && (projects = JavaModelManager.getJavaModelManager().getExternalWorkingCopyProjects()) != null) {
                        hasExternalWorkingCopyProject = true;
                        Iterator iterator = projects.iterator();
                        while (iterator.hasNext()) {
                            JavaProject project = (JavaProject)iterator.next();
                            project.resetCaches();
                        }
                    }
                    ++i;
                }
                HashSet elementsToRefresh = this.state.removeExternalElementsToRefresh();
                boolean bl = hasDelta = elementsToRefresh != null && this.createExternalArchiveDelta(elementsToRefresh, monitor);
                if (hasDelta) {
                    IJavaElementDelta[] projectDeltas = this.currentDelta.getAffectedChildren();
                    int length2 = projectDeltas.length;
                    final IProject[] projectsToTouch = new IProject[length2];
                    int i2 = 0;
                    while (i2 < length2) {
                        IJavaElementDelta delta = projectDeltas[i2];
                        JavaProject javaProject = (JavaProject)delta.getElement();
                        projectsToTouch[i2] = javaProject.getProject();
                        ++i2;
                    }
                    if (projectsToTouch.length > 0) {
                        if (asynchronous) {
                            WorkspaceJob touchJob = new WorkspaceJob(Messages.updating_external_archives_jobName){

                                public IStatus runInWorkspace(IProgressMonitor progressMonitor) throws CoreException {
                                    try {
                                        if (progressMonitor != null) {
                                            progressMonitor.beginTask("", projectsToTouch.length);
                                        }
                                        DeltaProcessor.this.touchProjects(projectsToTouch, progressMonitor);
                                    }
                                    finally {
                                        if (progressMonitor != null) {
                                            progressMonitor.done();
                                        }
                                    }
                                    return Status.OK_STATUS;
                                }

                                public boolean belongsTo(Object family) {
                                    return ResourcesPlugin.FAMILY_MANUAL_REFRESH == family;
                                }
                            };
                            touchJob.schedule();
                        } else {
                            IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                                public void run(IProgressMonitor progressMonitor) throws CoreException {
                                    int i = 0;
                                    while (i < projectsToTouch.length) {
                                        IProject project = projectsToTouch[i];
                                        if (JavaBuilder.DEBUG) {
                                            System.out.println("Touching project " + project.getName() + " due to external jar file change");
                                        }
                                        project.touch(progressMonitor);
                                        ++i;
                                    }
                                }
                            };
                            try {
                                ResourcesPlugin.getWorkspace().run(runnable, monitor);
                            }
                            catch (CoreException e) {
                                throw new JavaModelException(e);
                            }
                        }
                    }
                    if (this.currentDelta != null) {
                        this.fire(this.currentDelta, 0);
                    }
                    break block18;
                }
                if (hasExternalWorkingCopyProject) {
                    JavaModelManager.getJavaModelManager().resetJarTypeCache();
                }
            }
            finally {
                this.currentDelta = null;
                if (monitor != null) {
                    monitor.done();
                }
            }
        }
    }

    protected void touchProjects(IProject[] projectsToTouch, IProgressMonitor progressMonitor) throws CoreException {
        int i = 0;
        while (i < projectsToTouch.length) {
            SubProgressMonitor monitor = progressMonitor == null ? null : new SubProgressMonitor(progressMonitor, 1);
            IProject project = projectsToTouch[i];
            if (JavaBuilder.DEBUG) {
                System.out.println("Touching project " + project.getName() + " due to external jar file change");
            }
            project.touch((IProgressMonitor)monitor);
            ++i;
        }
    }

    private boolean createExternalArchiveDelta(HashSet refreshedElements, IProgressMonitor monitor) {
        HashMap<IPath, String> externalArchivesStatus = new HashMap<IPath, String>();
        boolean hasDelta = false;
        HashSet<IPath> archivePathsToRefresh = new HashSet<IPath>();
        Iterator iterator = refreshedElements.iterator();
        block11: while (iterator.hasNext()) {
            IJavaElement element = (IJavaElement)iterator.next();
            switch (element.getElementType()) {
                case 3: {
                    archivePathsToRefresh.add(element.getPath());
                    break;
                }
                case 2: {
                    IClasspathEntry[] classpath;
                    JavaProject javaProject = (JavaProject)element;
                    if (!JavaProject.hasJavaNature(javaProject.getProject())) continue block11;
                    try {
                        classpath = javaProject.getResolvedClasspath();
                        int j = 0;
                        int cpLength = classpath.length;
                        while (j < cpLength) {
                            if (classpath[j].getEntryKind() == 1) {
                                archivePathsToRefresh.add(classpath[j].getPath());
                            }
                            ++j;
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                    continue block11;
                }
                case 1: {
                    IClasspathEntry[] classpath;
                    JavaProject javaProject;
                    Iterator projectNames = this.state.getOldJavaProjecNames().iterator();
                    while (projectNames.hasNext()) {
                        String projectName = (String)projectNames.next();
                        IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
                        if (!JavaProject.hasJavaNature(project)) continue;
                        javaProject = (JavaProject)JavaCore.create(project);
                        try {
                            classpath = javaProject.getResolvedClasspath();
                            int k = 0;
                            int cpLength = classpath.length;
                            while (k < cpLength) {
                                if (classpath[k].getEntryKind() == 1) {
                                    archivePathsToRefresh.add(classpath[k].getPath());
                                }
                                ++k;
                            }
                        }
                        catch (JavaModelException javaModelException) {}
                    }
                    continue block11;
                }
            }
        }
        Iterator projectNames = this.state.getOldJavaProjecNames().iterator();
        IWorkspaceRoot wksRoot = ResourcesPlugin.getWorkspace().getRoot();
        while (projectNames.hasNext()) {
            IClasspathEntry[] entries;
            if (monitor != null && monitor.isCanceled()) break;
            String projectName = (String)projectNames.next();
            IProject project = wksRoot.getProject(projectName);
            if (!JavaProject.hasJavaNature(project)) continue;
            JavaProject javaProject = (JavaProject)JavaCore.create(project);
            try {
                entries = javaProject.getResolvedClasspath();
            }
            catch (JavaModelException javaModelException) {
                continue;
            }
            int j = 0;
            while (j < entries.length) {
                IPath entryPath;
                if (entries[j].getEntryKind() == 1 && archivePathsToRefresh.contains(entryPath = entries[j].getPath())) {
                    String status = (String)externalArchivesStatus.get(entryPath);
                    if (status == null) {
                        Object targetLibrary = JavaModel.getTarget(entryPath, true);
                        if (targetLibrary == null) {
                            if (this.state.getExternalLibTimeStamps().remove(entryPath) != null && this.state.roots.get(entryPath) != null) {
                                externalArchivesStatus.put(entryPath, EXTERNAL_JAR_REMOVED);
                                this.manager.indexManager.removeIndex(entryPath);
                            }
                        } else if (targetLibrary instanceof File) {
                            File externalFile = (File)targetLibrary;
                            Long oldTimestamp = (Long)this.state.getExternalLibTimeStamps().get(entryPath);
                            long newTimeStamp = DeltaProcessor.getTimeStamp(externalFile);
                            if (oldTimestamp != null) {
                                if (newTimeStamp == 0L) {
                                    externalArchivesStatus.put(entryPath, EXTERNAL_JAR_REMOVED);
                                    this.state.getExternalLibTimeStamps().remove(entryPath);
                                    this.manager.indexManager.removeIndex(entryPath);
                                } else if (oldTimestamp != newTimeStamp) {
                                    externalArchivesStatus.put(entryPath, EXTERNAL_JAR_CHANGED);
                                    this.state.getExternalLibTimeStamps().put(entryPath, new Long(newTimeStamp));
                                    this.manager.indexManager.removeIndex(entryPath);
                                    this.manager.indexManager.indexLibrary(entryPath, project.getProject());
                                } else {
                                    externalArchivesStatus.put(entryPath, EXTERNAL_JAR_UNCHANGED);
                                }
                            } else if (newTimeStamp == 0L) {
                                externalArchivesStatus.put(entryPath, EXTERNAL_JAR_UNCHANGED);
                            } else {
                                externalArchivesStatus.put(entryPath, EXTERNAL_JAR_ADDED);
                                this.state.getExternalLibTimeStamps().put(entryPath, new Long(newTimeStamp));
                                this.manager.indexManager.removeIndex(entryPath);
                                this.manager.indexManager.indexLibrary(entryPath, project.getProject());
                            }
                        } else {
                            externalArchivesStatus.put(entryPath, INTERNAL_JAR_IGNORE);
                        }
                    }
                    if ((status = (String)externalArchivesStatus.get(entryPath)) != null) {
                        PackageFragmentRoot root;
                        if (status == EXTERNAL_JAR_ADDED) {
                            root = (PackageFragmentRoot)javaProject.getPackageFragmentRoot(entryPath.toString());
                            if (VERBOSE) {
                                System.out.println("- External JAR ADDED, affecting root: " + root.getElementName());
                            }
                            this.elementAdded(root, null, null);
                            javaProject.resetResolvedClasspath();
                            this.state.addClasspathValidation(javaProject);
                            hasDelta = true;
                        } else if (status == EXTERNAL_JAR_CHANGED) {
                            root = (PackageFragmentRoot)javaProject.getPackageFragmentRoot(entryPath.toString());
                            if (VERBOSE) {
                                System.out.println("- External JAR CHANGED, affecting root: " + root.getElementName());
                            }
                            this.contentChanged(root);
                            javaProject.resetResolvedClasspath();
                            hasDelta = true;
                        } else if (status == EXTERNAL_JAR_REMOVED) {
                            root = (PackageFragmentRoot)javaProject.getPackageFragmentRoot(entryPath.toString());
                            if (VERBOSE) {
                                System.out.println("- External JAR REMOVED, affecting root: " + root.getElementName());
                            }
                            this.elementRemoved(root, null, null);
                            javaProject.resetResolvedClasspath();
                            this.state.addClasspathValidation(javaProject);
                            hasDelta = true;
                        }
                    }
                }
                ++j;
            }
        }
        JavaModel.flushExternalFileCache();
        if (hasDelta) {
            JavaModelManager.getJavaModelManager().resetJarTypeCache();
        }
        return hasDelta;
    }

    private JavaElementDelta currentDelta() {
        if (this.currentDelta == null) {
            this.currentDelta = new JavaElementDelta(this.manager.getJavaModel());
        }
        return this.currentDelta;
    }

    private void deleting(IProject project) {
        try {
            this.manager.indexManager.discardJobs(project.getName());
            JavaProject javaProject = (JavaProject)JavaCore.create(project);
            if (this.oldRoots == null) {
                this.oldRoots = new HashMap();
            }
            if (javaProject.isOpen()) {
                this.oldRoots.put(javaProject, javaProject.getPackageFragmentRoots());
            } else {
                this.oldRoots.put(javaProject, javaProject.computePackageFragmentRoots(javaProject.getResolvedClasspath(), false, null));
            }
            javaProject.close();
            this.state.getOldJavaProjecNames();
            this.removeFromParentInfo(javaProject);
            this.manager.resetProjectPreferences(javaProject);
        }
        catch (JavaModelException javaModelException) {}
    }

    private void elementAdded(Openable element, IResourceDelta delta, RootInfo rootInfo) {
        int elementType = element.getElementType();
        if (elementType == 2) {
            IProject project;
            if (delta != null && JavaProject.hasJavaNature(project = (IProject)delta.getResource())) {
                this.addToParentInfo(element);
                this.manager.getPerProjectInfo(project, true).rememberExternalLibTimestamps();
                if ((delta.getFlags() & 0x1000) != 0) {
                    Openable movedFromElement = (Openable)((Object)element.getJavaModel().getJavaProject(delta.getMovedFromPath().lastSegment()));
                    this.currentDelta().movedTo(element, movedFromElement);
                } else {
                    this.close(element);
                    this.currentDelta().added(element);
                }
                this.state.updateRoots(element.getPath(), delta, this);
                this.projectCachesToReset.add(element);
            }
        } else {
            if (delta == null || (delta.getFlags() & 0x1000) == 0) {
                if (this.isPrimaryWorkingCopy(element, elementType)) {
                    this.currentDelta().changed(element, 262144);
                } else {
                    this.addToParentInfo(element);
                    this.close(element);
                    this.currentDelta().added(element);
                }
            } else {
                Openable movedFromElement;
                this.addToParentInfo(element);
                this.close(element);
                IPath movedFromPath = delta.getMovedFromPath();
                IResource res = delta.getResource();
                Object movedFromRes = res instanceof IFile ? res.getWorkspace().getRoot().getFile(movedFromPath) : res.getWorkspace().getRoot().getFolder(movedFromPath);
                IPath rootPath = this.externalPath((IResource)movedFromRes);
                RootInfo movedFromInfo = this.enclosingRootInfo(rootPath, 2);
                int movedFromType = this.elementType((IResource)movedFromRes, 2, element.getParent().getElementType(), movedFromInfo);
                this.currentElement = null;
                Openable openable = movedFromElement = elementType != 2 && movedFromType == 2 ? null : this.createElement((IResource)movedFromRes, movedFromType, movedFromInfo);
                if (movedFromElement == null) {
                    this.currentDelta().added(element);
                } else {
                    this.currentDelta().movedTo(element, movedFromElement);
                }
            }
            switch (elementType) {
                case 3: {
                    JavaProject project = (JavaProject)element.getJavaProject();
                    this.projectCachesToReset.add(project);
                    break;
                }
                case 4: {
                    JavaProject project = (JavaProject)element.getJavaProject();
                    this.projectCachesToReset.add(project);
                }
            }
        }
    }

    private void elementRemoved(Openable element, IResourceDelta delta, RootInfo rootInfo) {
        int elementType = element.getElementType();
        if (delta == null || (delta.getFlags() & 0x2000) == 0) {
            if (this.isPrimaryWorkingCopy(element, elementType)) {
                this.currentDelta().changed(element, 262144);
            } else {
                this.close(element);
                this.removeFromParentInfo(element);
                this.currentDelta().removed(element);
            }
        } else {
            Openable movedToElement;
            IFolder movedToRes;
            this.close(element);
            this.removeFromParentInfo(element);
            IPath movedToPath = delta.getMovedToPath();
            IResource res = delta.getResource();
            switch (res.getType()) {
                case 4: {
                    movedToRes = res.getWorkspace().getRoot().getProject(movedToPath.lastSegment());
                    break;
                }
                case 2: {
                    movedToRes = res.getWorkspace().getRoot().getFolder(movedToPath);
                    break;
                }
                case 1: {
                    movedToRes = res.getWorkspace().getRoot().getFile(movedToPath);
                    break;
                }
                default: {
                    return;
                }
            }
            IPath rootPath = this.externalPath((IResource)movedToRes);
            RootInfo movedToInfo = this.enclosingRootInfo(rootPath, 1);
            int movedToType = this.elementType((IResource)movedToRes, 1, element.getParent().getElementType(), movedToInfo);
            this.currentElement = null;
            Openable openable = movedToElement = elementType != 2 && movedToType == 2 ? null : this.createElement((IResource)movedToRes, movedToType, movedToInfo);
            if (movedToElement == null) {
                this.currentDelta().removed(element);
            } else {
                this.currentDelta().movedFrom(element, movedToElement);
            }
        }
        switch (elementType) {
            case 1: {
                this.manager.indexManager.reset();
                break;
            }
            case 2: {
                this.state.updateRoots(element.getPath(), delta, this);
                this.projectCachesToReset.add(element);
                break;
            }
            case 3: {
                JavaProject project = (JavaProject)element.getJavaProject();
                this.projectCachesToReset.add(project);
                break;
            }
            case 4: {
                JavaProject project = (JavaProject)element.getJavaProject();
                this.projectCachesToReset.add(project);
            }
        }
    }

    private int elementType(IResource res, int kind, int parentType, RootInfo rootInfo) {
        switch (parentType) {
            case 1: {
                return 2;
            }
            case -1: 
            case 2: {
                if (rootInfo == null) {
                    rootInfo = this.enclosingRootInfo(res.getFullPath(), kind);
                }
                if (rootInfo != null && rootInfo.isRootOfProject(res.getFullPath())) {
                    return 3;
                }
            }
            case 3: 
            case 4: {
                String complianceLevel;
                if (rootInfo == null) {
                    IPath rootPath = this.externalPath(res);
                    rootInfo = this.enclosingRootInfo(rootPath, kind);
                }
                if (rootInfo == null) {
                    return -1;
                }
                if (Util.isExcluded(res, rootInfo.inclusionPatterns, rootInfo.exclusionPatterns)) {
                    return -1;
                }
                if (res.getType() == 2) {
                    String complianceLevel2;
                    if (parentType == -1 && !Util.isExcluded((IResource)res.getParent(), rootInfo.inclusionPatterns, rootInfo.exclusionPatterns)) {
                        return -1;
                    }
                    String sourceLevel = rootInfo.project == null ? null : rootInfo.project.getOption("org.eclipse.jdt.core.compiler.source", true);
                    String string = complianceLevel2 = rootInfo.project == null ? null : rootInfo.project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                    if (Util.isValidFolderNameForPackage(res.getName(), sourceLevel, complianceLevel2)) {
                        return 4;
                    }
                    return -1;
                }
                String fileName = res.getName();
                String sourceLevel = rootInfo.project == null ? null : rootInfo.project.getOption("org.eclipse.jdt.core.compiler.source", true);
                String string = complianceLevel = rootInfo.project == null ? null : rootInfo.project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                if (Util.isValidCompilationUnitName(fileName, sourceLevel, complianceLevel)) {
                    return 5;
                }
                if (Util.isValidClassFileName(fileName, sourceLevel, complianceLevel)) {
                    return 6;
                }
                IPath rootPath = this.externalPath(res);
                rootInfo = this.rootInfo(rootPath, kind);
                if (rootInfo != null && rootInfo.project.getProject().getFullPath().isPrefixOf(rootPath)) {
                    return 3;
                }
                return -1;
            }
        }
        return -1;
    }

    public void flush() {
        this.javaModelDeltas = new ArrayList();
    }

    private SourceElementParser getSourceElementParser(Openable element) {
        if (this.sourceElementParserCache == null) {
            this.sourceElementParserCache = this.manager.indexManager.getSourceElementParser(element.getJavaProject(), null);
        }
        return this.sourceElementParserCache;
    }

    private RootInfo enclosingRootInfo(IPath path, int kind) {
        while (path != null && path.segmentCount() > 0) {
            RootInfo rootInfo = this.rootInfo(path, kind);
            if (rootInfo != null) {
                return rootInfo;
            }
            path = path.removeLastSegments(1);
        }
        return null;
    }

    private IPath externalPath(IResource res) {
        IPath resourcePath = res.getFullPath();
        if (ExternalFoldersManager.isInternalPathForExternalFolder(resourcePath)) {
            return res.getLocation();
        }
        return resourcePath;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void fire(IJavaElementDelta customDelta, int eventType) {
        int listenerCount;
        int[] listenerMask;
        IElementChangedListener[] listeners;
        IJavaElementDelta deltaToNotify;
        if (!this.isFiring) {
            return;
        }
        if (DEBUG) {
            System.out.println("-----------------------------------------------------------------------------------------------------------------------");
        }
        if ((deltaToNotify = customDelta == null ? this.mergeDeltas(this.javaModelDeltas) : customDelta) != null) {
            Iterator scopes = this.manager.searchScopes.keySet().iterator();
            while (scopes.hasNext()) {
                AbstractSearchScope scope = (AbstractSearchScope)scopes.next();
                scope.processDelta(deltaToNotify, eventType);
            }
            JavaWorkspaceScope workspaceScope = this.manager.workspaceScope;
            if (workspaceScope != null) {
                workspaceScope.processDelta(deltaToNotify, eventType);
            }
        }
        DeltaProcessingState deltaProcessingState = this.state;
        synchronized (deltaProcessingState) {
            listeners = this.state.elementChangedListeners;
            listenerMask = this.state.elementChangedListenerMasks;
            listenerCount = this.state.elementChangedListenerCount;
        }
        switch (eventType) {
            case 0: 
            case 1: {
                this.firePostChangeDelta(deltaToNotify, listeners, listenerMask, listenerCount);
                this.fireReconcileDelta(listeners, listenerMask, listenerCount);
            }
        }
    }

    private void firePostChangeDelta(IJavaElementDelta deltaToNotify, IElementChangedListener[] listeners, int[] listenerMask, int listenerCount) {
        if (DEBUG) {
            System.out.println("FIRING POST_CHANGE Delta [" + Thread.currentThread() + "]:");
            System.out.println(deltaToNotify == null ? "<NONE>" : deltaToNotify.toString());
        }
        if (deltaToNotify != null) {
            this.flush();
            JavaModelOperation.setAttribute("hasModifiedResource", null);
            this.notifyListeners(deltaToNotify, 1, listeners, listenerMask, listenerCount);
        }
    }

    private void fireReconcileDelta(IElementChangedListener[] listeners, int[] listenerMask, int listenerCount) {
        IJavaElementDelta deltaToNotify = this.mergeDeltas(this.reconcileDeltas.values());
        if (DEBUG) {
            System.out.println("FIRING POST_RECONCILE Delta [" + Thread.currentThread() + "]:");
            System.out.println(deltaToNotify == null ? "<NONE>" : deltaToNotify.toString());
        }
        if (deltaToNotify != null) {
            this.reconcileDeltas = new HashMap();
            this.notifyListeners(deltaToNotify, 4, listeners, listenerMask, listenerCount);
        }
    }

    private boolean isAffectedBy(IResourceDelta rootDelta) {
        if (rootDelta != null) {
            class FoundRelevantDeltaException
            extends RuntimeException {
                private static final long serialVersionUID = 7137113252936111022L;
                final /* synthetic */ DeltaProcessor this$0;

                FoundRelevantDeltaException(DeltaProcessor deltaProcessor) {
                    this.this$0 = deltaProcessor;
                }
            }
            try {
                rootDelta.accept(new IResourceDeltaVisitor(){

                    public boolean visit(IResourceDelta delta) {
                        switch (delta.getKind()) {
                            case 1: 
                            case 2: {
                                throw new FoundRelevantDeltaException(DeltaProcessor.this);
                            }
                            case 4: {
                                if (delta.getAffectedChildren().length != 0 || (delta.getFlags() & 0xFFFCFFFF) == 0) break;
                                throw new FoundRelevantDeltaException(DeltaProcessor.this);
                            }
                        }
                        return true;
                    }
                }, 8);
            }
            catch (FoundRelevantDeltaException foundRelevantDeltaException) {
                return true;
            }
            catch (CoreException coreException) {}
        }
        return false;
    }

    private boolean isPrimaryWorkingCopy(IJavaElement element, int elementType) {
        if (elementType == 5) {
            CompilationUnit cu = (CompilationUnit)element;
            return cu.isPrimary() && cu.isWorkingCopy();
        }
        return false;
    }

    private boolean isResFilteredFromOutput(RootInfo rootInfo, OutputsInfo info, IResource res, int elementType) {
        if (info != null) {
            JavaProject javaProject = null;
            String sourceLevel = null;
            String complianceLevel = null;
            IPath resPath = res.getFullPath();
            int i = 0;
            while (i < info.outputCount) {
                if (info.paths[i].isPrefixOf(resPath)) {
                    if (info.traverseModes[i] != 0) {
                        if (info.traverseModes[i] == 1 && elementType == 6) {
                            return true;
                        }
                        if (elementType == 2 && res instanceof IFile) {
                            if (sourceLevel == null) {
                                JavaProject javaProject2 = javaProject = rootInfo == null ? (JavaProject)this.createElement((IResource)res.getProject(), 2, null) : rootInfo.project;
                                if (javaProject != null) {
                                    sourceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                                    complianceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                                }
                            }
                            if (Util.isValidClassFileName(res.getName(), sourceLevel, complianceLevel)) {
                                return true;
                            }
                        }
                    } else {
                        return true;
                    }
                }
                ++i;
            }
        }
        return false;
    }

    private IJavaElementDelta mergeDeltas(Collection deltas) {
        if (deltas.size() == 0) {
            return null;
        }
        if (deltas.size() == 1) {
            return (IJavaElementDelta)deltas.iterator().next();
        }
        if (VERBOSE) {
            System.out.println("MERGING " + deltas.size() + " DELTAS [" + Thread.currentThread() + "]");
        }
        Iterator iterator = deltas.iterator();
        JavaElementDelta rootDelta = new JavaElementDelta(this.manager.javaModel);
        boolean insertedTree = false;
        while (iterator.hasNext()) {
            IJavaElement element;
            JavaElementDelta delta = (JavaElementDelta)iterator.next();
            if (VERBOSE) {
                System.out.println(delta.toString());
            }
            if (this.manager.javaModel.equals(element = delta.getElement())) {
                IJavaElementDelta[] children = delta.getAffectedChildren();
                int j = 0;
                while (j < children.length) {
                    JavaElementDelta projectDelta = (JavaElementDelta)children[j];
                    rootDelta.insertDeltaTree(projectDelta.getElement(), projectDelta);
                    insertedTree = true;
                    ++j;
                }
                IResourceDelta[] resourceDeltas = delta.getResourceDeltas();
                if (resourceDeltas == null) continue;
                int i = 0;
                int length = resourceDeltas.length;
                while (i < length) {
                    rootDelta.addResourceDelta(resourceDeltas[i]);
                    insertedTree = true;
                    ++i;
                }
                continue;
            }
            rootDelta.insertDeltaTree(element, delta);
            insertedTree = true;
        }
        if (insertedTree) {
            return rootDelta;
        }
        return null;
    }

    private void notifyListeners(IJavaElementDelta deltaToNotify, int eventType, IElementChangedListener[] listeners, int[] listenerMask, int listenerCount) {
        final ElementChangedEvent extraEvent = new ElementChangedEvent(deltaToNotify, eventType);
        int i = 0;
        while (i < listenerCount) {
            if ((listenerMask[i] & eventType) != 0) {
                final IElementChangedListener listener = listeners[i];
                long start = -1L;
                if (VERBOSE) {
                    System.out.print("Listener #" + (i + 1) + "=" + listener.toString());
                    start = System.currentTimeMillis();
                }
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                        Util.log(exception, "Exception occurred in listener of Java element change notification");
                    }

                    public void run() throws Exception {
                        PerformanceStats stats = null;
                        if (PERF) {
                            stats = PerformanceStats.getStats((String)"org.eclipse.jdt.core/perf/javadeltalistener", (Object)listener);
                            stats.startRun();
                        }
                        listener.elementChanged(extraEvent);
                        if (PERF) {
                            stats.endRun();
                        }
                    }
                });
                if (VERBOSE) {
                    System.out.println(" -> " + (System.currentTimeMillis() - start) + "ms");
                }
            }
            ++i;
        }
    }

    private void notifyTypeHierarchies(IElementChangedListener[] listeners, int listenerCount) {
        int i = 0;
        while (i < listenerCount) {
            final IElementChangedListener listener = listeners[i];
            if (listener instanceof TypeHierarchy) {
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                        Util.log(exception, "Exception occurred in listener of Java element change notification");
                    }

                    public void run() throws Exception {
                        TypeHierarchy typeHierarchy = (TypeHierarchy)listener;
                        if (typeHierarchy.hasFineGrainChanges()) {
                            typeHierarchy.needsRefresh = true;
                            typeHierarchy.fireChange();
                        }
                    }
                });
            }
            ++i;
        }
    }

    private void nonJavaResourcesChanged(Openable element, IResourceDelta delta) throws JavaModelException {
        JavaElementDelta current;
        JavaElementDelta elementDelta;
        if (element.isOpen()) {
            JavaElementInfo info = (JavaElementInfo)element.getElementInfo();
            switch (element.getElementType()) {
                case 1: {
                    ((JavaModelInfo)info).nonJavaResources = null;
                    if (!ExternalFoldersManager.isInternalPathForExternalFolder(delta.getFullPath())) {
                        this.currentDelta().addResourceDelta(delta);
                    }
                    return;
                }
                case 2: {
                    ((JavaProjectElementInfo)info).setNonJavaResources(null);
                    JavaProject project = (JavaProject)element;
                    PackageFragmentRoot projectRoot = (PackageFragmentRoot)project.getPackageFragmentRoot((IResource)project.getProject());
                    if (!projectRoot.isOpen()) break;
                    ((PackageFragmentRootInfo)projectRoot.getElementInfo()).setNonJavaResources(null);
                    break;
                }
                case 4: {
                    ((PackageFragmentInfo)info).setNonJavaResources(null);
                    break;
                }
                case 3: {
                    ((PackageFragmentRootInfo)info).setNonJavaResources(null);
                }
            }
        }
        if ((elementDelta = (current = this.currentDelta()).find(element)) == null) {
            elementDelta = current.changed(element, 1);
        }
        if (!ExternalFoldersManager.isInternalPathForExternalFolder(delta.getFullPath())) {
            elementDelta.addResourceDelta(delta);
        }
    }

    private RootInfo oldRootInfo(IPath path, JavaProject project) {
        RootInfo oldInfo = (RootInfo)this.state.oldRoots.get(path);
        if (oldInfo == null) {
            return null;
        }
        if (oldInfo.project.equals(project)) {
            return oldInfo;
        }
        ArrayList oldInfos = (ArrayList)this.state.oldOtherRoots.get(path);
        if (oldInfos == null) {
            return null;
        }
        int i = 0;
        int length = oldInfos.size();
        while (i < length) {
            oldInfo = (RootInfo)oldInfos.get(i);
            if (oldInfo.project.equals(project)) {
                return oldInfo;
            }
            ++i;
        }
        return null;
    }

    private ArrayList otherRootsInfo(IPath path, int kind) {
        if (kind == 2) {
            return (ArrayList)this.state.oldOtherRoots.get(path);
        }
        return (ArrayList)this.state.otherRoots.get(path);
    }

    private OutputsInfo outputsInfo(RootInfo rootInfo, IResource res) {
        try {
            JavaProject proj;
            JavaProject javaProject = proj = rootInfo == null ? (JavaProject)this.createElement((IResource)res.getProject(), 2, null) : rootInfo.project;
            if (proj != null) {
                IPath projectOutput = proj.getOutputLocation();
                int traverseMode = 0;
                if (proj.getProject().getFullPath().equals((Object)projectOutput)) {
                    return new OutputsInfo(new IPath[]{projectOutput}, new int[]{1}, 1);
                }
                IClasspathEntry[] classpath = proj.getResolvedClasspath();
                IPath[] outputs = new IPath[classpath.length + 1];
                int[] traverseModes = new int[classpath.length + 1];
                int outputCount = 1;
                outputs[0] = projectOutput;
                traverseModes[0] = traverseMode;
                int i = 0;
                int length = classpath.length;
                while (i < length) {
                    IClasspathEntry entry = classpath[i];
                    IPath entryPath = entry.getPath();
                    IPath output = entry.getOutputLocation();
                    if (output != null) {
                        outputs[outputCount] = output;
                        if (entryPath.equals((Object)output)) {
                            traverseModes[outputCount++] = entry.getEntryKind() == 3 ? 1 : 2;
                        } else {
                            traverseModes[outputCount++] = 0;
                        }
                    }
                    if (entryPath.equals((Object)projectOutput)) {
                        traverseModes[0] = entry.getEntryKind() == 3 ? 1 : 2;
                    }
                    ++i;
                }
                return new OutputsInfo(outputs, traverseModes, outputCount);
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    private void popUntilPrefixOf(IPath path) {
        while (this.currentElement != null) {
            IPath currentElementPath = null;
            if (this.currentElement instanceof IPackageFragmentRoot) {
                currentElementPath = ((IPackageFragmentRoot)((Object)this.currentElement)).getPath();
            } else {
                IResource currentElementResource = this.currentElement.resource();
                if (currentElementResource != null) {
                    currentElementPath = currentElementResource.getFullPath();
                }
            }
            if (currentElementPath != null) {
                if (this.currentElement instanceof IPackageFragment && ((IPackageFragment)((Object)this.currentElement)).isDefaultPackage() && currentElementPath.segmentCount() != path.segmentCount() - 1) {
                    this.currentElement = (Openable)this.currentElement.getParent();
                }
                if (currentElementPath.isPrefixOf(path)) {
                    return;
                }
            }
            this.currentElement = (Openable)this.currentElement.getParent();
        }
    }

    private IJavaElementDelta processResourceDelta(IResourceDelta changes) {
        try {
            JavaModel model = this.manager.getJavaModel();
            if (!model.isOpen()) {
                try {
                    model.open(null);
                }
                catch (JavaModelException e) {
                    if (VERBOSE) {
                        e.printStackTrace();
                    }
                    this.currentDelta = null;
                    return null;
                }
            }
            this.state.initializeRoots(false);
            this.currentElement = null;
            IResourceDelta[] deltas = changes.getAffectedChildren(7, 8);
            int i = 0;
            while (i < deltas.length) {
                IPath rootPath;
                IResourceDelta delta = deltas[i];
                IResource res = delta.getResource();
                RootInfo rootInfo = null;
                IProject proj = (IProject)res;
                boolean wasJavaProject = this.state.findJavaProject(proj.getName()) != null;
                boolean isJavaProject = JavaProject.hasJavaNature(proj);
                int elementType = !wasJavaProject && !isJavaProject ? -1 : ((rootInfo = this.enclosingRootInfo(rootPath = this.externalPath(res), delta.getKind())) != null && rootInfo.isRootOfProject(rootPath) ? 3 : 2);
                this.traverseDelta(delta, elementType, rootInfo, null);
                if (elementType == -1 || wasJavaProject != isJavaProject && delta.getKind() == 4) {
                    try {
                        this.nonJavaResourcesChanged(model, delta);
                    }
                    catch (JavaModelException javaModelException) {}
                }
                ++i;
            }
            this.resetProjectCaches();
            JavaElementDelta javaElementDelta = this.currentDelta;
            return javaElementDelta;
        }
        finally {
            this.currentDelta = null;
        }
    }

    public void resetProjectCaches() {
        JavaProject project;
        if (this.projectCachesToReset.size() == 0) {
            return;
        }
        JavaModelManager.getJavaModelManager().resetJarTypeCache();
        Iterator iterator = this.projectCachesToReset.iterator();
        HashMap projectDepencies = this.state.projectDependencies;
        HashSet affectedDependents = new HashSet();
        while (iterator.hasNext()) {
            project = (JavaProject)iterator.next();
            project.resetCaches();
            this.addDependentProjects(project, projectDepencies, affectedDependents);
        }
        iterator = affectedDependents.iterator();
        while (iterator.hasNext()) {
            project = (JavaProject)iterator.next();
            project.resetCaches();
        }
        this.projectCachesToReset.clear();
    }

    public void registerJavaModelDelta(IJavaElementDelta delta) {
        this.javaModelDeltas.add(delta);
    }

    private void removeFromParentInfo(Openable child) {
        Openable parent = (Openable)child.getParent();
        if (parent != null && parent.isOpen()) {
            try {
                OpenableElementInfo info = (OpenableElementInfo)parent.getElementInfo();
                info.removeChild(child);
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    public void resourceChanged(IResourceChangeEvent event) {
        eventType = this.overridenEventType == -1 ? event.getType() : this.overridenEventType;
        resource = event.getResource();
        delta = event.getDelta();
        switch (eventType) {
            case 4: {
                try {
                    if (resource.getType() == 4 && ((IProject)resource).hasNature("org.eclipse.jdt.core.javanature")) {
                        this.deleting((IProject)resource);
                    }
                }
                catch (CoreException v0) {}
                return;
            }
            case 32: {
                projects = null;
                o = event.getSource();
                if (o instanceof IProject) {
                    projects = new IProject[]{(IProject)o};
                } else if (o instanceof IWorkspace) {
                    projects = ((IWorkspace)o).getRoot().getProjects(8);
                }
                JavaModelManager.getExternalManager().refreshReferences(projects, null);
                javaElements = new IJavaProject[projects.length];
                index = 0;
                while (index < projects.length) {
                    javaElements[index] = JavaCore.create(projects[index]);
                    ++index;
                }
                try {
                    this.checkExternalArchiveChanges(javaElements, true, null);
                }
                catch (JavaModelException e) {
                    if (e.isDoesNotExist()) ** GOTO lbl33
                    Util.log((Throwable)e, "Exception while updating external archives");
                }
lbl33:
                // 3 sources

                return;
            }
            case 1: {
                elementsToRefresh = this.state.removeExternalElementsToRefresh();
                if (!this.isAffectedBy(delta) && elementsToRefresh == null) ** GOTO lbl89
                try {
                    try {
                        this.stopDeltas();
                        this.checkProjectsAndClasspathChanges(delta);
                        if (elementsToRefresh != null) {
                            this.createExternalArchiveDelta(elementsToRefresh, null);
                        }
                        if ((classpathChanges = this.state.removeAllClasspathChanges()).size() > 0) {
                            hasDelta = this.currentDelta != null;
                            javaDelta = this.currentDelta();
                            changes = classpathChanges.values().iterator();
                            while (changes.hasNext()) {
                                change = (ClasspathChange)changes.next();
                                result = change.generateDelta((JavaElementDelta)javaDelta, false);
                                if ((result & 1) != 0) {
                                    hasDelta = true;
                                    this.state.rootsAreStale = true;
                                    change.requestIndexing();
                                    this.state.addClasspathValidation(change.project);
                                }
                                if ((result & 2) != 0) {
                                    this.state.addProjectReferenceChange(change.project, change.oldResolvedClasspath);
                                }
                                if ((result & 4) == 0) continue;
                                this.state.addExternalFolderChange(change.project, change.oldResolvedClasspath);
                            }
                            elementsToRefresh = this.state.removeExternalElementsToRefresh();
                            if (elementsToRefresh != null) {
                                hasDelta |= this.createExternalArchiveDelta(elementsToRefresh, null);
                            }
                            if (!hasDelta) {
                                this.currentDelta = null;
                            }
                        }
                        if ((translatedDelta = this.processResourceDelta(delta)) != null) {
                            this.registerJavaModelDelta(translatedDelta);
                        }
                    }
                    finally {
                        this.sourceElementParserCache = null;
                        this.startDeltas();
                    }
                    javaDelta = this.state;
                    synchronized (javaDelta) {
                        listeners = this.state.elementChangedListeners;
                        listenerCount = this.state.elementChangedListenerCount;
                    }
                    this.notifyTypeHierarchies(listeners, listenerCount);
                    this.fire(null, 1);
                }
                finally {
                    this.state.resetOldJavaProjectNames();
                    this.oldRoots = null;
                }
lbl89:
                // 2 sources

                return;
            }
            case 8: {
                this.state.initializeRoots(false);
                isAffected = this.isAffectedBy(delta);
                needCycleValidation = isAffected != false && this.validateClasspaths(delta) != false;
                folderChanges = this.state.removeExternalFolderChanges();
                if (folderChanges == null) ** GOTO lbl107
                i = 0;
                length = folderChanges.length;
                while (i < length) {
                    try {
                        folderChanges[i].updateExternalFoldersIfNecessary(false, null);
                    }
                    catch (JavaModelException e) {
                        if (e.isDoesNotExist()) ** GOTO lbl105
                        Util.log((Throwable)e, "Exception while updating external folders");
                    }
lbl105:
                    // 3 sources

                    ++i;
                }
lbl107:
                // 2 sources

                if ((validations = this.state.removeClasspathValidations()) != null) {
                    i = 0;
                    length = validations.length;
                    while (i < length) {
                        validation = validations[i];
                        validation.validate();
                        ++i;
                    }
                }
                if ((projectRefChanges = this.state.removeProjectReferenceChanges()) == null) ** GOTO lbl127
                i = 0;
                length = projectRefChanges.length;
                while (i < length) {
                    try {
                        projectRefChanges[i].updateProjectReferencesIfNecessary();
                    }
                    catch (JavaModelException e) {
                        if (e.isDoesNotExist()) ** GOTO lbl125
                        Util.log((Throwable)e, "Exception while updating project references");
                    }
lbl125:
                    // 3 sources

                    ++i;
                }
lbl127:
                // 2 sources

                if (needCycleValidation || projectRefChanges != null) {
                    try {
                        JavaProject.validateCycles(null);
                    }
                    catch (JavaModelException v2) {}
                }
                if (isAffected) {
                    JavaModel.flushExternalFileCache();
                    JavaBuilder.buildStarting();
                }
                return;
            }
            case 16: {
                JavaBuilder.buildFinished();
                return;
            }
        }
    }

    private RootInfo rootInfo(IPath path, int kind) {
        if (kind == 2) {
            return (RootInfo)this.state.oldRoots.get(path);
        }
        return (RootInfo)this.state.roots.get(path);
    }

    private void startDeltas() {
        this.isFiring = true;
    }

    private void stopDeltas() {
        this.isFiring = false;
    }

    private void traverseDelta(IResourceDelta delta, int elementType, RootInfo rootInfo, OutputsInfo outputsInfo) {
        block20: {
            IProject rscProject;
            JavaProject adoptiveProject;
            IResource res = delta.getResource();
            if (this.currentElement == null && rootInfo != null) {
                this.currentElement = rootInfo.project;
            }
            boolean processChildren = true;
            if (res instanceof IProject) {
                this.sourceElementParserCache = null;
                processChildren = this.updateCurrentDeltaAndIndex(delta, elementType == 3 ? 2 : elementType, rootInfo);
            } else {
                processChildren = rootInfo != null ? this.updateCurrentDeltaAndIndex(delta, elementType, rootInfo) : true;
            }
            if (outputsInfo == null) {
                outputsInfo = this.outputsInfo(rootInfo, res);
            }
            if (!processChildren) break block20;
            IResourceDelta[] children = delta.getAffectedChildren();
            boolean oneChildOnClasspath = false;
            int length = children.length;
            IResourceDelta[] orphanChildren = null;
            Openable parent = null;
            boolean isValidParent = true;
            int i = 0;
            while (i < length) {
                block24: {
                    ArrayList rootList;
                    boolean isNestedRoot;
                    RootInfo originalChildRootInfo;
                    RootInfo childRootInfo;
                    int childKind;
                    IPath childPath;
                    IResourceDelta child;
                    block26: {
                        block21: {
                            block22: {
                                block23: {
                                    block25: {
                                        child = children[i];
                                        IResource childRes = child.getResource();
                                        this.checkSourceAttachmentChange(child, childRes);
                                        childPath = this.externalPath(childRes);
                                        childKind = child.getKind();
                                        originalChildRootInfo = childRootInfo = this.rootInfo(childPath, childKind);
                                        if (childRootInfo != null && !childRootInfo.isRootOfProject(childPath)) {
                                            childRootInfo = null;
                                        }
                                        int childType = this.elementType(childRes, childKind, elementType, rootInfo == null ? childRootInfo : rootInfo);
                                        boolean isResFilteredFromOutput = this.isResFilteredFromOutput(rootInfo, outputsInfo, childRes, childType);
                                        boolean bl = isNestedRoot = rootInfo != null && childRootInfo != null;
                                        if (isResFilteredFromOutput || isNestedRoot) break block21;
                                        this.traverseDelta(child, childType, rootInfo == null ? childRootInfo : rootInfo, outputsInfo);
                                        if (childType != -1) break block22;
                                        if (rootInfo == null) break block23;
                                        if (!isValidParent) break block24;
                                        if (parent != null) break block25;
                                        if (this.currentElement == null || !rootInfo.project.equals(this.currentElement.getJavaProject())) {
                                            this.currentElement = rootInfo.project;
                                        }
                                        if ((parent = elementType == 2 || elementType == 3 && res instanceof IProject ? rootInfo.project : this.createElement(res, elementType, rootInfo)) != null) break block25;
                                        isValidParent = false;
                                        break block24;
                                    }
                                    try {
                                        this.nonJavaResourcesChanged(parent, child);
                                    }
                                    catch (JavaModelException javaModelException) {}
                                    break block26;
                                }
                                if (orphanChildren == null) {
                                    orphanChildren = new IResourceDelta[length];
                                }
                                orphanChildren[i] = child;
                                break block26;
                            }
                            if (rootInfo == null && childRootInfo == null) {
                                if (orphanChildren == null) {
                                    orphanChildren = new IResourceDelta[length];
                                }
                                orphanChildren[i] = child;
                            }
                            break block26;
                        }
                        oneChildOnClasspath = true;
                    }
                    if (isNestedRoot || childRootInfo == null && originalChildRootInfo != null) {
                        this.traverseDelta(child, 3, originalChildRootInfo, null);
                    }
                    if ((rootList = this.otherRootsInfo(childPath, childKind)) != null) {
                        Iterator iterator = rootList.iterator();
                        while (iterator.hasNext()) {
                            originalChildRootInfo = (RootInfo)iterator.next();
                            this.currentElement = null;
                            this.traverseDelta(child, 3, originalChildRootInfo, null);
                        }
                    }
                }
                ++i;
            }
            if (orphanChildren != null && (oneChildOnClasspath || res instanceof IProject) && (adoptiveProject = (JavaProject)JavaCore.create(rscProject = res.getProject())) != null && JavaProject.hasJavaNature(rscProject)) {
                int i2 = 0;
                while (i2 < length) {
                    if (orphanChildren[i2] != null) {
                        try {
                            this.nonJavaResourcesChanged(adoptiveProject, orphanChildren[i2]);
                        }
                        catch (JavaModelException javaModelException) {}
                    }
                    ++i2;
                }
            }
        }
    }

    private void validateClasspaths(IResourceDelta delta, HashSet affectedProjects) {
        IResource resource = delta.getResource();
        boolean processChildren = false;
        switch (resource.getType()) {
            case 8: {
                if (delta.getKind() != 4) break;
                processChildren = true;
                break;
            }
            case 4: {
                IProject project = (IProject)resource;
                int kind = delta.getKind();
                boolean isJavaProject = JavaProject.hasJavaNature(project);
                switch (kind) {
                    case 1: {
                        processChildren = isJavaProject;
                        affectedProjects.add(project.getFullPath());
                        break;
                    }
                    case 4: {
                        boolean wasJavaProject;
                        processChildren = isJavaProject;
                        if ((delta.getFlags() & 0x4000) != 0) {
                            if (isJavaProject) {
                                JavaProject javaProject = (JavaProject)JavaCore.create(project);
                                this.state.addClasspathValidation(javaProject);
                            }
                            affectedProjects.add(project.getFullPath());
                            break;
                        }
                        if ((delta.getFlags() & 0x80000) == 0) break;
                        boolean bl = wasJavaProject = this.state.findJavaProject(project.getName()) != null;
                        if (wasJavaProject == isJavaProject) break;
                        JavaProject javaProject = (JavaProject)JavaCore.create(project);
                        this.state.addClasspathValidation(javaProject);
                        affectedProjects.add(project.getFullPath());
                        break;
                    }
                    case 2: {
                        affectedProjects.add(project.getFullPath());
                    }
                }
                break;
            }
            case 1: {
                IFile file = (IFile)resource;
                String fileName = file.getName();
                RootInfo rootInfo = null;
                if (!fileName.equals(".classpath") && ((rootInfo = this.rootInfo(file.getFullPath(), delta.getKind())) == null || rootInfo.entryKind != 1)) break;
                JavaProject javaProject = (JavaProject)JavaCore.create(file.getProject());
                this.state.addClasspathValidation(javaProject);
                affectedProjects.add(file.getProject().getFullPath());
            }
        }
        if (processChildren) {
            IResourceDelta[] children = delta.getAffectedChildren();
            int i = 0;
            while (i < children.length) {
                this.validateClasspaths(children[i], affectedProjects);
                ++i;
            }
        }
    }

    private boolean validateClasspaths(IResourceDelta delta) {
        HashSet affectedProjects = new HashSet(5);
        this.validateClasspaths(delta, affectedProjects);
        boolean needCycleValidation = false;
        if (!affectedProjects.isEmpty()) {
            IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
            IProject[] projects = workspaceRoot.getProjects();
            int length = projects.length;
            int i = 0;
            while (i < length) {
                IProject project = projects[i];
                JavaProject javaProject = (JavaProject)JavaCore.create(project);
                try {
                    IPath projectPath = project.getFullPath();
                    IClasspathEntry[] classpath = javaProject.getResolvedClasspath();
                    int j = 0;
                    int cpLength = classpath.length;
                    while (j < cpLength) {
                        IClasspathEntry entry = classpath[j];
                        switch (entry.getEntryKind()) {
                            case 2: {
                                if (!affectedProjects.contains(entry.getPath())) break;
                                this.state.addClasspathValidation(javaProject);
                                needCycleValidation = true;
                                break;
                            }
                            case 1: {
                                IPath entryPath = entry.getPath();
                                IPath libProjectPath = entryPath.removeLastSegments(entryPath.segmentCount() - 1);
                                if (libProjectPath.equals((Object)projectPath) || !affectedProjects.contains(libProjectPath)) break;
                                this.state.addClasspathValidation(javaProject);
                            }
                        }
                        ++j;
                    }
                }
                catch (JavaModelException javaModelException) {}
                ++i;
            }
        }
        return needCycleValidation;
    }

    public boolean updateCurrentDeltaAndIndex(IResourceDelta delta, int elementType, RootInfo rootInfo) {
        switch (delta.getKind()) {
            case 1: {
                IResource deltaRes = delta.getResource();
                Openable element = this.createElement(deltaRes, elementType, rootInfo);
                if (element == null) {
                    this.state.updateRoots(deltaRes.getFullPath(), delta, this);
                    return rootInfo != null && rootInfo.inclusionPatterns != null;
                }
                this.updateIndex(element, delta);
                this.elementAdded(element, delta, rootInfo);
                if (elementType == 3) {
                    this.state.addClasspathValidation(rootInfo.project);
                }
                return elementType == 4;
            }
            case 2: {
                IResource deltaRes = delta.getResource();
                Openable element = this.createElement(deltaRes, elementType, rootInfo);
                if (element == null) {
                    this.state.updateRoots(deltaRes.getFullPath(), delta, this);
                    return rootInfo != null && rootInfo.inclusionPatterns != null;
                }
                this.updateIndex(element, delta);
                this.elementRemoved(element, delta, rootInfo);
                if (elementType == 3) {
                    this.state.addClasspathValidation(rootInfo.project);
                }
                if (deltaRes.getType() == 4) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Clearing last state for removed project : " + deltaRes);
                    }
                    this.manager.setLastBuiltState((IProject)deltaRes, null);
                    this.manager.previousSessionContainers.remove(element);
                }
                return elementType == 4;
            }
            case 4: {
                int flags = delta.getFlags();
                if (elementType == 3 && (flags & 0x200000) != 0) {
                    if (this.oldRootInfo(rootInfo.rootPath, rootInfo.project) == null) break;
                    IResource deltaRes = delta.getResource();
                    Object target = JavaModel.getExternalTarget(deltaRes.getLocation(), true);
                    Openable element = this.createElement(deltaRes, elementType, rootInfo);
                    this.updateIndex(element, delta);
                    if (target != null) {
                        this.elementAdded(element, delta, rootInfo);
                    } else {
                        this.elementRemoved(element, delta, rootInfo);
                    }
                    this.state.addClasspathValidation(rootInfo.project);
                } else if ((flags & 0x100) != 0 || (flags & 0x100000) != 0) {
                    Openable element = this.createElement(delta.getResource(), elementType, rootInfo);
                    if (element == null) {
                        return false;
                    }
                    this.updateIndex(element, delta);
                    this.contentChanged(element);
                } else if (elementType == 2) {
                    boolean isJavaProject;
                    IProject res;
                    boolean wasJavaProject;
                    if ((flags & 0x4000) != 0) {
                        IProject res2 = (IProject)delta.getResource();
                        Openable element = this.createElement((IResource)res2, elementType, rootInfo);
                        if (element == null) {
                            this.state.updateRoots(res2.getFullPath(), delta, this);
                            return false;
                        }
                        if (res2.isOpen()) {
                            if (JavaProject.hasJavaNature(res2)) {
                                this.addToParentInfo(element);
                                this.currentDelta().opened(element);
                                this.state.updateRoots(element.getPath(), delta, this);
                                this.projectCachesToReset.add(element);
                                this.manager.indexManager.indexAll(res2);
                            }
                        } else {
                            boolean wasJavaProject2;
                            boolean bl = wasJavaProject2 = this.state.findJavaProject(res2.getName()) != null;
                            if (wasJavaProject2) {
                                this.close(element);
                                this.removeFromParentInfo(element);
                                this.currentDelta().closed(element);
                                this.manager.indexManager.discardJobs(element.getElementName());
                                this.manager.indexManager.removeIndexFamily(res2.getFullPath());
                            }
                        }
                        return false;
                    }
                    if ((flags & 0x80000) != 0 && (wasJavaProject = this.state.findJavaProject((res = (IProject)delta.getResource()).getName()) != null) != (isJavaProject = JavaProject.hasJavaNature(res))) {
                        Openable element = this.createElement((IResource)res, elementType, rootInfo);
                        if (element == null) {
                            return false;
                        }
                        if (isJavaProject) {
                            this.elementAdded(element, delta, rootInfo);
                            this.manager.indexManager.indexAll(res);
                        } else {
                            this.elementRemoved(element, delta, rootInfo);
                            this.manager.indexManager.discardJobs(element.getElementName());
                            this.manager.indexManager.removeIndexFamily(res.getFullPath());
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Clearing last state for project loosing Java nature: " + res);
                            }
                            this.manager.setLastBuiltState(res, null);
                        }
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }

    private void updateIndex(Openable element, IResourceDelta delta) {
        block47: {
            IndexManager indexManager = this.manager.indexManager;
            if (indexManager == null) {
                return;
            }
            block1 : switch (element.getElementType()) {
                case 2: {
                    switch (delta.getKind()) {
                        case 1: {
                            indexManager.indexAll(element.getJavaProject().getProject());
                            break;
                        }
                        case 2: {
                            indexManager.removeIndexFamily(element.getJavaProject().getProject().getFullPath());
                        }
                    }
                    break;
                }
                case 3: {
                    if (element instanceof JarPackageFragmentRoot) {
                        JarPackageFragmentRoot root = (JarPackageFragmentRoot)element;
                        IPath jarPath = root.getPath();
                        switch (delta.getKind()) {
                            case 1: {
                                indexManager.indexLibrary(jarPath, root.getJavaProject().getProject());
                                break;
                            }
                            case 4: {
                                indexManager.removeIndex(jarPath);
                                indexManager.indexLibrary(jarPath, root.getJavaProject().getProject());
                                break;
                            }
                            case 2: {
                                indexManager.discardJobs(jarPath.toString());
                                indexManager.removeIndex(jarPath);
                            }
                        }
                        break;
                    }
                    int kind = delta.getKind();
                    if (kind == 1 || kind == 2 || kind == 4 && (delta.getFlags() & 0x200000) != 0) {
                        PackageFragmentRoot root = (PackageFragmentRoot)element;
                        this.updateRootIndex(root, CharOperation.NO_STRINGS, delta);
                        break;
                    }
                }
                case 4: {
                    switch (delta.getKind()) {
                        case 4: {
                            if ((delta.getFlags() & 0x200000) == 0) break block1;
                        }
                        case 1: 
                        case 2: {
                            IPackageFragment pkg = null;
                            if (element instanceof IPackageFragmentRoot) {
                                PackageFragmentRoot root = (PackageFragmentRoot)element;
                                pkg = root.getPackageFragment(CharOperation.NO_STRINGS);
                            } else {
                                pkg = (IPackageFragment)((Object)element);
                            }
                            RootInfo rootInfo = this.rootInfo(pkg.getParent().getPath(), delta.getKind());
                            boolean isSource = rootInfo == null || rootInfo.entryKind == 3;
                            IResourceDelta[] children = delta.getAffectedChildren();
                            int i = 0;
                            int length = children.length;
                            while (i < length) {
                                IResourceDelta child = children[i];
                                IResource resource = child.getResource();
                                if (resource instanceof IFile) {
                                    String name = resource.getName();
                                    if (isSource) {
                                        if (Util.isJavaLikeFileName(name)) {
                                            Openable cu = (Openable)((Object)pkg.getCompilationUnit(name));
                                            this.updateIndex(cu, child);
                                        }
                                    } else if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                                        Openable classFile = (Openable)((Object)pkg.getClassFile(name));
                                        this.updateIndex(classFile, child);
                                    }
                                }
                                ++i;
                            }
                            break block17;
                        }
                    }
                    break;
                }
                case 6: {
                    IFile file = (IFile)delta.getResource();
                    IJavaProject project = element.getJavaProject();
                    PackageFragmentRoot root = element.getPackageFragmentRoot();
                    IPath binaryFolderPath = root.isExternal() && !root.isArchive() ? root.resource().getFullPath() : root.getPath();
                    try {
                        if (binaryFolderPath.equals((Object)project.getOutputLocation())) {
                            break;
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                    switch (delta.getKind()) {
                        case 4: {
                            int flags = delta.getFlags();
                            if ((flags & 0x100) == 0 && (flags & 0x100000) == 0) break block1;
                        }
                        case 1: {
                            indexManager.addBinary(file, binaryFolderPath);
                            break;
                        }
                        case 2: {
                            String containerRelativePath = Util.relativePath(file.getFullPath(), binaryFolderPath.segmentCount());
                            indexManager.remove(containerRelativePath, binaryFolderPath);
                        }
                    }
                    break;
                }
                case 5: {
                    IFile file = (IFile)delta.getResource();
                    switch (delta.getKind()) {
                        case 4: {
                            int flags = delta.getFlags();
                            if ((flags & 0x100) == 0 && (flags & 0x100000) == 0) break block47;
                        }
                        case 1: {
                            indexManager.addSource(file, file.getProject().getFullPath(), this.getSourceElementParser(element));
                            this.manager.secondaryTypesRemoving(file, false);
                            break block1;
                        }
                        {
                        }
                        case 2: {
                            indexManager.remove(Util.relativePath(file.getFullPath(), 1), file.getProject().getFullPath());
                            this.manager.secondaryTypesRemoving(file, true);
                        }
                    }
                }
            }
        }
    }

    public void updateJavaModel(IJavaElementDelta customDelta) {
        if (customDelta == null) {
            int i = 0;
            int length = this.javaModelDeltas.size();
            while (i < length) {
                IJavaElementDelta delta = (IJavaElementDelta)this.javaModelDeltas.get(i);
                this.modelUpdater.processJavaDelta(delta);
                ++i;
            }
        } else {
            this.modelUpdater.processJavaDelta(customDelta);
        }
    }

    private void updateRootIndex(PackageFragmentRoot root, String[] pkgName, IResourceDelta delta) {
        PackageFragment pkg = root.getPackageFragment(pkgName);
        this.updateIndex(pkg, delta);
        IResourceDelta[] children = delta.getAffectedChildren();
        int i = 0;
        int length = children.length;
        while (i < length) {
            IResourceDelta child = children[i];
            IResource resource = child.getResource();
            if (resource instanceof IFolder) {
                String[] subpkgName = Util.arrayConcat(pkgName, resource.getName());
                this.updateRootIndex(root, subpkgName, child);
            }
            ++i;
        }
    }

    static class OutputsInfo {
        int outputCount;
        IPath[] paths;
        int[] traverseModes;

        OutputsInfo(IPath[] paths, int[] traverseModes, int outputCount) {
            this.paths = paths;
            this.traverseModes = traverseModes;
            this.outputCount = outputCount;
        }

        public String toString() {
            if (this.paths == null) {
                return "<none>";
            }
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < this.outputCount) {
                buffer.append("path=");
                buffer.append(this.paths[i].toString());
                buffer.append("\n->traverse=");
                switch (this.traverseModes[i]) {
                    case 2: {
                        buffer.append("BINARY");
                        break;
                    }
                    case 0: {
                        buffer.append("IGNORE");
                        break;
                    }
                    case 1: {
                        buffer.append("SOURCE");
                        break;
                    }
                    default: {
                        buffer.append("<unknown>");
                    }
                }
                if (i + 1 < this.outputCount) {
                    buffer.append('\n');
                }
                ++i;
            }
            return buffer.toString();
        }
    }

    public static class RootInfo {
        char[][] inclusionPatterns;
        char[][] exclusionPatterns;
        public JavaProject project;
        IPath rootPath;
        int entryKind;
        IPackageFragmentRoot root;
        IPackageFragmentRoot cache;

        RootInfo(JavaProject project, IPath rootPath, char[][] inclusionPatterns, char[][] exclusionPatterns, int entryKind) {
            this.project = project;
            this.rootPath = rootPath;
            this.inclusionPatterns = inclusionPatterns;
            this.exclusionPatterns = exclusionPatterns;
            this.entryKind = entryKind;
            this.cache = this.getPackageFragmentRoot();
        }

        public IPackageFragmentRoot getPackageFragmentRoot() {
            IPackageFragmentRoot tRoot = null;
            Object target = JavaModel.getTarget(this.rootPath, false);
            tRoot = target instanceof IResource ? this.project.getPackageFragmentRoot((IResource)target) : this.project.getPackageFragmentRoot(this.rootPath.toOSString());
            return tRoot;
        }

        public IPackageFragmentRoot getPackageFragmentRoot(IResource resource) {
            if (this.root == null) {
                this.root = resource != null ? this.project.getPackageFragmentRoot(resource) : this.getPackageFragmentRoot();
            }
            if (this.root != null) {
                this.cache = this.root;
            }
            return this.root;
        }

        boolean isRootOfProject(IPath path) {
            return this.rootPath.equals((Object)path) && this.project.getProject().getFullPath().isPrefixOf(path);
        }

        public String toString() {
            int length;
            int i;
            StringBuffer buffer = new StringBuffer("project=");
            if (this.project == null) {
                buffer.append("null");
            } else {
                buffer.append(this.project.getElementName());
            }
            buffer.append("\npath=");
            if (this.rootPath == null) {
                buffer.append("null");
            } else {
                buffer.append(this.rootPath.toString());
            }
            buffer.append("\nincluding=");
            if (this.inclusionPatterns == null) {
                buffer.append("null");
            } else {
                i = 0;
                length = this.inclusionPatterns.length;
                while (i < length) {
                    buffer.append(new String(this.inclusionPatterns[i]));
                    if (i < length - 1) {
                        buffer.append("|");
                    }
                    ++i;
                }
            }
            buffer.append("\nexcluding=");
            if (this.exclusionPatterns == null) {
                buffer.append("null");
            } else {
                i = 0;
                length = this.exclusionPatterns.length;
                while (i < length) {
                    buffer.append(new String(this.exclusionPatterns[i]));
                    if (i < length - 1) {
                        buffer.append("|");
                    }
                    ++i;
                }
            }
            return buffer.toString();
        }
    }
}

