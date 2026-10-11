/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.search.AbstractJavaSearchScope;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchScope
extends AbstractJavaSearchScope {
    private ArrayList elements;
    private ArrayList projectPaths = new ArrayList();
    private int[] projectIndexes;
    private String[] containerPaths;
    private String[] relativePaths;
    private boolean[] isPkgPath;
    protected AccessRuleSet[] pathRestrictions;
    private int pathsCount;
    private int threshold;
    private IPath[] enclosingProjectsAndJars;
    public static final AccessRuleSet NOT_ENCLOSED = new AccessRuleSet(null, 0, null);

    public JavaSearchScope() {
        this(5);
    }

    private JavaSearchScope(int size) {
        this.initialize(size);
    }

    private void addEnclosingProjectOrJar(IPath path) {
        int length = this.enclosingProjectsAndJars.length;
        int i = 0;
        while (i < length) {
            if (this.enclosingProjectsAndJars[i].equals((Object)path)) {
                return;
            }
            ++i;
        }
        this.enclosingProjectsAndJars = new IPath[length + 1];
        System.arraycopy(this.enclosingProjectsAndJars, 0, this.enclosingProjectsAndJars, 0, length);
        this.enclosingProjectsAndJars[length] = path;
    }

    public void add(JavaProject project, int includeMask, HashSet projectsToBeAdded) throws JavaModelException {
        this.add(project, null, includeMask, projectsToBeAdded, new HashSet(2), null);
    }

    void add(JavaProject javaProject, IPath pathToAdd, int includeMask, HashSet projectsToBeAdded, HashSet visitedProjects, IClasspathEntry referringEntry) throws JavaModelException {
        IProject project = javaProject.getProject();
        if (!project.isAccessible() || !visitedProjects.add(project)) {
            return;
        }
        IPath projectPath = project.getFullPath();
        String projectPathString = projectPath.toString();
        this.addEnclosingProjectOrJar(projectPath);
        IClasspathEntry[] entries = javaProject.getResolvedClasspath();
        IJavaModel model = javaProject.getJavaModel();
        JavaModelManager.PerProjectInfo perProjectInfo = javaProject.getPerProjectInfo();
        int i = 0;
        int length = entries.length;
        while (i < length) {
            block22: {
                ClasspathEntry cpEntry;
                AccessRuleSet access;
                IClasspathEntry entry;
                block21: {
                    entry = entries[i];
                    access = null;
                    cpEntry = (ClasspathEntry)entry;
                    if (referringEntry == null) break block21;
                    if (!entry.isExported() && entry.getEntryKind() != 3) break block22;
                    cpEntry = cpEntry.combineWith((ClasspathEntry)referringEntry);
                }
                access = cpEntry.getAccessRuleSet();
                block0 : switch (entry.getEntryKind()) {
                    case 1: {
                        IPath path;
                        IClasspathEntry rawEntry = null;
                        Map rootPathToRawEntries = perProjectInfo.rootPathToRawEntries;
                        if (rootPathToRawEntries != null) {
                            rawEntry = (IClasspathEntry)rootPathToRawEntries.get(entry.getPath());
                        }
                        if (rawEntry == null) break;
                        block5 : switch (rawEntry.getEntryKind()) {
                            case 1: 
                            case 4: {
                                if ((includeMask & 2) == 0) break;
                                path = entry.getPath();
                                if (pathToAdd != null && !pathToAdd.equals((Object)path)) break block0;
                                Object target = JavaModel.getTarget(path, false);
                                if (target instanceof IFolder) {
                                    path = ((IFolder)target).getFullPath();
                                }
                                String pathToString = path.getDevice() == null ? path.toString() : path.toOSString();
                                this.add(projectPath.toString(), "", pathToString, false, access);
                                this.addEnclosingProjectOrJar(entry.getPath());
                                break;
                            }
                            case 5: {
                                IClasspathContainer container = JavaCore.getClasspathContainer(rawEntry.getPath(), javaProject);
                                if (container == null) break block0;
                                switch (container.getKind()) {
                                    case 1: {
                                        if ((includeMask & 2) != 0) break;
                                        break block5;
                                    }
                                    case 2: 
                                    case 3: {
                                        if ((includeMask & 4) != 0) break;
                                        break block5;
                                    }
                                    default: {
                                        break block5;
                                    }
                                }
                                IPath path2 = entry.getPath();
                                if (pathToAdd != null && !pathToAdd.equals((Object)path2)) break block0;
                                Object target = JavaModel.getTarget(path2, false);
                                if (target instanceof IFolder) {
                                    path2 = ((IFolder)target).getFullPath();
                                }
                                String pathToString = path2.getDevice() == null ? path2.toString() : path2.toOSString();
                                this.add(projectPath.toString(), "", pathToString, false, access);
                                this.addEnclosingProjectOrJar(entry.getPath());
                            }
                        }
                        break;
                    }
                    case 2: {
                        JavaProject referencedProject;
                        if ((includeMask & 8) == 0) break;
                        IPath path = entry.getPath();
                        if (pathToAdd != null && !pathToAdd.equals((Object)path) || projectsToBeAdded.contains(referencedProject = (JavaProject)model.getJavaProject(path.lastSegment()))) break;
                        this.add(referencedProject, null, includeMask, projectsToBeAdded, visitedProjects, cpEntry);
                        break;
                    }
                    case 3: {
                        if ((includeMask & 1) == 0) break;
                        IPath path = entry.getPath();
                        if (pathToAdd != null && !pathToAdd.equals((Object)path)) break;
                        this.add(projectPath.toString(), Util.relativePath(path, 1), projectPathString, false, access);
                    }
                }
            }
            ++i;
        }
    }

    public void add(IJavaElement element) throws JavaModelException {
        IPath containerPath = null;
        String containerPathToString = null;
        PackageFragmentRoot root = null;
        int includeMask = 7;
        switch (element.getElementType()) {
            case 1: {
                break;
            }
            case 2: {
                this.add((JavaProject)element, null, includeMask, new HashSet(2), new HashSet(2), null);
                break;
            }
            case 3: {
                root = (PackageFragmentRoot)element;
                IPath rootPath = root.internalPath();
                containerPath = root.getKind() == 1 ? root.getParent().getPath() : rootPath;
                containerPathToString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
                IResource rootResource = root.resource();
                String projectPath = root.getJavaProject().getPath().toString();
                if (rootResource != null && rootResource.isAccessible()) {
                    String relativePath = Util.relativePath(rootResource.getFullPath(), containerPath.segmentCount());
                    this.add(projectPath, relativePath, containerPathToString, false, null);
                    break;
                }
                this.add(projectPath, "", containerPathToString, false, null);
                break;
            }
            case 4: {
                root = (PackageFragmentRoot)element.getParent();
                String projectPath = root.getJavaProject().getPath().toString();
                if (root.isArchive()) {
                    String relativePath = Util.concatWith(((PackageFragment)element).names, '/');
                    containerPath = root.getPath();
                    containerPathToString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
                    this.add(projectPath, relativePath, containerPathToString, true, null);
                    break;
                }
                IResource resource = ((JavaElement)element).resource();
                if (resource == null) break;
                containerPath = resource.isAccessible() ? (root.getKind() == 1 ? root.getParent().getPath() : root.internalPath()) : resource.getParent().getFullPath();
                containerPathToString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
                String relativePath = Util.relativePath(resource.getFullPath(), containerPath.segmentCount());
                this.add(projectPath, relativePath, containerPathToString, true, null);
                break;
            }
            default: {
                String relativePath;
                if (element instanceof IMember) {
                    if (this.elements == null) {
                        this.elements = new ArrayList();
                    }
                    this.elements.add(element);
                }
                root = (PackageFragmentRoot)element.getAncestor(3);
                String projectPath = root.getJavaProject().getPath().toString();
                if (root.getKind() == 1) {
                    containerPath = root.getParent().getPath();
                    relativePath = Util.relativePath(this.getPath(element, false), 1);
                } else {
                    containerPath = root.internalPath();
                    relativePath = this.getPath(element, true).toString();
                }
                containerPathToString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
                this.add(projectPath, relativePath, containerPathToString, false, null);
            }
        }
        if (root != null) {
            this.addEnclosingProjectOrJar(root.getKind() == 1 ? root.getParent().getPath() : root.getPath());
        }
    }

    private void add(String projectPath, String relativePath, String containerPath, boolean isPackage, AccessRuleSet access) {
        String currentContainerPath;
        String currentRelativePath;
        containerPath = this.normalize(containerPath);
        relativePath = this.normalize(relativePath);
        int length = this.containerPaths.length;
        int index = (containerPath.hashCode() & Integer.MAX_VALUE) % length;
        while ((currentRelativePath = this.relativePaths[index]) != null && (currentContainerPath = this.containerPaths[index]) != null) {
            if (currentRelativePath.equals(relativePath) && currentContainerPath.equals(containerPath)) {
                return;
            }
            if (++index != length) continue;
            index = 0;
        }
        int idx = this.projectPaths.indexOf(projectPath);
        if (idx == -1) {
            this.projectPaths.add(projectPath);
            idx = this.projectPaths.indexOf(projectPath);
        }
        this.projectIndexes[index] = idx;
        this.relativePaths[index] = relativePath;
        this.containerPaths[index] = containerPath;
        this.isPkgPath[index] = isPackage;
        if (this.pathRestrictions != null) {
            this.pathRestrictions[index] = access;
        } else if (access != null) {
            this.pathRestrictions = new AccessRuleSet[this.relativePaths.length];
            this.pathRestrictions[index] = access;
        }
        if (++this.pathsCount > this.threshold) {
            this.rehash();
        }
    }

    public boolean encloses(String resourcePathString) {
        int separatorIndex = resourcePathString.indexOf("|");
        if (separatorIndex != -1) {
            String relativePath;
            String jarPath = resourcePathString.substring(0, separatorIndex);
            return this.indexOf(jarPath, relativePath = resourcePathString.substring(separatorIndex + 1)) >= 0;
        }
        return this.indexOf(resourcePathString) >= 0;
    }

    private int indexOf(String fullPath) {
        int i = 0;
        int length = this.relativePaths.length;
        while (i < length) {
            String currentRelativePath = this.relativePaths[i];
            if (currentRelativePath != null) {
                String currentFullPath;
                String currentContainerPath = this.containerPaths[i];
                String string = currentFullPath = currentRelativePath.length() == 0 ? currentContainerPath : String.valueOf(currentContainerPath) + '/' + currentRelativePath;
                if (this.encloses(currentFullPath, fullPath, i)) {
                    return i;
                }
            }
            ++i;
        }
        return -1;
    }

    private int indexOf(String containerPath, String relativePath) {
        String currentContainerPath;
        int length = this.containerPaths.length;
        int index = (containerPath.hashCode() & Integer.MAX_VALUE) % length;
        while ((currentContainerPath = this.containerPaths[index]) != null) {
            String currentRelativePath;
            if (currentContainerPath.equals(containerPath) && this.encloses(currentRelativePath = this.relativePaths[index], relativePath, index)) {
                return index;
            }
            if (++index != length) continue;
            index = 0;
        }
        return -1;
    }

    private boolean encloses(String enclosingPath, String path, int index) {
        int enclosingLength;
        int pathLength = (path = this.normalize(path)).length();
        if (pathLength < (enclosingLength = enclosingPath.length())) {
            return false;
        }
        if (enclosingLength == 0) {
            return true;
        }
        if (pathLength == enclosingLength) {
            return path.equals(enclosingPath);
        }
        if (!this.isPkgPath[index]) {
            return path.startsWith(enclosingPath) && path.charAt(enclosingLength) == '/';
        }
        return path.startsWith(enclosingPath) && (enclosingPath.length() == path.lastIndexOf(47) || enclosingPath.length() == path.length());
    }

    public boolean encloses(IJavaElement element) {
        if (this.elements != null) {
            int i = 0;
            int length = this.elements.size();
            while (i < length) {
                IJavaElement scopeElement = (IJavaElement)this.elements.get(i);
                IJavaElement searchedElement = element;
                while (searchedElement != null) {
                    if (searchedElement.equals(scopeElement)) {
                        return true;
                    }
                    searchedElement = searchedElement.getParent();
                }
                ++i;
            }
            return false;
        }
        IPackageFragmentRoot root = (IPackageFragmentRoot)element.getAncestor(3);
        if (root != null && root.isArchive()) {
            IPath relativePath;
            IPath rootPath = root.getPath();
            String rootPathToString = rootPath.getDevice() == null ? rootPath.toString() : rootPath.toOSString();
            return this.indexOf(rootPathToString, (relativePath = this.getPath(element, true)).toString()) >= 0;
        }
        String fullResourcePathString = this.getPath(element, false).toString();
        return this.indexOf(fullResourcePathString) >= 0;
    }

    public IPath[] enclosingProjectsAndJars() {
        return this.enclosingProjectsAndJars;
    }

    private IPath getPath(IJavaElement element, boolean relativeToRoot) {
        switch (element.getElementType()) {
            case 1: {
                return Path.EMPTY;
            }
            case 2: {
                return element.getPath();
            }
            case 3: {
                if (relativeToRoot) {
                    return Path.EMPTY;
                }
                return element.getPath();
            }
            case 4: {
                String relativePath = Util.concatWith(((PackageFragment)element).names, '/');
                return this.getPath(element.getParent(), relativeToRoot).append((IPath)new Path(relativePath));
            }
            case 5: 
            case 6: {
                return this.getPath(element.getParent(), relativeToRoot).append((IPath)new Path(element.getElementName()));
            }
        }
        return this.getPath(element.getParent(), relativeToRoot);
    }

    public AccessRuleSet getAccessRuleSet(String relativePath, String containerPath) {
        int index = this.indexOf(containerPath, relativePath);
        if (index == -1) {
            return NOT_ENCLOSED;
        }
        if (this.pathRestrictions == null) {
            return null;
        }
        return this.pathRestrictions[index];
    }

    protected void initialize(int size) {
        this.pathsCount = 0;
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.relativePaths = new String[extraRoom];
        this.containerPaths = new String[extraRoom];
        this.projectPaths = new ArrayList();
        this.projectIndexes = new int[extraRoom];
        this.isPkgPath = new boolean[extraRoom];
        this.pathRestrictions = null;
        this.enclosingProjectsAndJars = new IPath[0];
    }

    private String normalize(String path) {
        int pathLength = path.length();
        int index = pathLength - 1;
        while (index >= 0 && path.charAt(index) == '/') {
            --index;
        }
        if (index != pathLength - 1) {
            return path.substring(0, index + 1);
        }
        return path;
    }

    public void processDelta(IJavaElementDelta delta, int eventType) {
        block0 : switch (delta.getKind()) {
            case 4: {
                IJavaElementDelta[] children = delta.getAffectedChildren();
                int i = 0;
                int length = children.length;
                while (i < length) {
                    IJavaElementDelta child = children[i];
                    this.processDelta(child, eventType);
                    ++i;
                }
                break;
            }
            case 2: {
                IJavaElement element = delta.getElement();
                if (!this.encloses(element)) break;
                if (this.elements != null) {
                    this.elements.remove(element);
                }
                String path = null;
                switch (element.getElementType()) {
                    case 2: {
                        path = ((IJavaProject)element).getProject().getFullPath().toString();
                        break;
                    }
                    case 3: {
                        path = ((IPackageFragmentRoot)element).getPath().toString();
                        break;
                    }
                    default: {
                        return;
                    }
                }
                int i = 0;
                while (i < this.pathsCount) {
                    if (this.relativePaths[i].equals(path)) {
                        this.relativePaths[i] = null;
                        this.rehash();
                        break block0;
                    }
                    ++i;
                }
                break;
            }
        }
    }

    public IPackageFragmentRoot packageFragmentRoot(String resourcePathString, int jarSeparatorIndex, String jarPath) {
        boolean isJarFile;
        int index = -1;
        boolean bl = isJarFile = jarSeparatorIndex != -1;
        if (isJarFile) {
            String relativePath = resourcePathString.substring(jarSeparatorIndex + 1);
            index = this.indexOf(jarPath, relativePath);
        } else {
            index = this.indexOf(resourcePathString);
        }
        if (index >= 0) {
            String projectPath;
            int idx = this.projectIndexes[index];
            String string = projectPath = idx == -1 ? null : (String)this.projectPaths.get(idx);
            if (projectPath != null) {
                IJavaProject project = JavaCore.create(ResourcesPlugin.getWorkspace().getRoot().getProject(projectPath));
                if (isJarFile) {
                    IResource resource = JavaModel.getWorkspaceTarget((IPath)new Path(jarPath));
                    if (resource != null) {
                        return project.getPackageFragmentRoot(resource);
                    }
                    return project.getPackageFragmentRoot(jarPath);
                }
                IResource target = JavaModel.getWorkspaceTarget((IPath)new Path(String.valueOf(this.containerPaths[index]) + '/' + this.relativePaths[index]));
                if (target != null) {
                    if (target instanceof IProject) {
                        return project.getPackageFragmentRoot((IResource)((IProject)target));
                    }
                    IJavaElement element = JavaModelManager.create(target, project);
                    return (IPackageFragmentRoot)element.getAncestor(3);
                }
            }
        }
        return null;
    }

    private void rehash() {
        JavaSearchScope newScope = new JavaSearchScope(this.pathsCount * 2);
        newScope.projectPaths.ensureCapacity(this.projectPaths.size());
        int i = 0;
        int length = this.relativePaths.length;
        while (i < length) {
            String currentPath = this.relativePaths[i];
            if (currentPath != null) {
                int idx = this.projectIndexes[i];
                String projectPath = idx == -1 ? null : (String)this.projectPaths.get(idx);
                newScope.add(projectPath, currentPath, this.containerPaths[i], this.isPkgPath[i], this.pathRestrictions == null ? null : this.pathRestrictions[i]);
            }
            ++i;
        }
        this.relativePaths = newScope.relativePaths;
        this.containerPaths = newScope.containerPaths;
        this.projectPaths = newScope.projectPaths;
        this.projectIndexes = newScope.projectIndexes;
        this.isPkgPath = newScope.isPkgPath;
        this.pathRestrictions = newScope.pathRestrictions;
        this.threshold = newScope.threshold;
    }

    public String toString() {
        StringBuffer result = new StringBuffer("JavaSearchScope on ");
        if (this.elements != null) {
            result.append("[");
            int i = 0;
            int length = this.elements.size();
            while (i < length) {
                JavaElement element = (JavaElement)this.elements.get(i);
                result.append("\n\t");
                result.append(element.toStringWithAncestors());
                ++i;
            }
            result.append("\n]");
        } else if (this.pathsCount == 0) {
            result.append("[empty scope]");
        } else {
            result.append("[");
            String[] paths = new String[this.relativePaths.length];
            int index = 0;
            int i = 0;
            while (i < this.relativePaths.length) {
                String path = this.relativePaths[i];
                if (path != null) {
                    String containerPath;
                    if (ExternalFoldersManager.isInternalPathForExternalFolder((IPath)new Path(this.containerPaths[i]))) {
                        IResource target = JavaModel.getWorkspaceTarget((IPath)new Path(this.containerPaths[i]));
                        containerPath = ((IFolder)target).getLocation().toOSString();
                    } else {
                        containerPath = this.containerPaths[i];
                    }
                    paths[index++] = path.length() > 0 ? String.valueOf(containerPath) + '/' + path : containerPath;
                }
                ++i;
            }
            String[] stringArray = paths;
            paths = new String[index];
            System.arraycopy(stringArray, 0, paths, 0, index);
            Util.sort(paths);
            i = 0;
            while (i < index) {
                result.append("\n\t");
                result.append(paths[i]);
                ++i;
            }
            result.append("\n]");
        }
        return result.toString();
    }
}

