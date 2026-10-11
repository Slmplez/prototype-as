/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JarPackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.PackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.util.HashSetOfArray;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

class JavaProjectElementInfo
extends OpenableElementInfo {
    static final IPackageFragmentRoot[] NO_ROOTS = new IPackageFragmentRoot[0];
    private Object[] nonJavaResources = null;
    ProjectCache projectCache;

    static void addSuperPackageNames(String[] pkgName, HashtableOfArrayToObject packageFragments) {
        int i = pkgName.length - 1;
        while (i > 0) {
            if (packageFragments.getKey(pkgName, i) == null) {
                String[] stringArray = pkgName;
                pkgName = new String[i];
                System.arraycopy(stringArray, 0, pkgName, 0, i);
                packageFragments.put(pkgName, NO_ROOTS);
            }
            --i;
        }
    }

    private Object[] computeNonJavaResources(JavaProject project) {
        IPath projectPath = project.getProject().getFullPath();
        boolean srcIsProject = false;
        boolean binIsProject = false;
        char[][] inclusionPatterns = null;
        char[][] exclusionPatterns = null;
        IPath projectOutput = null;
        boolean isClasspathResolved = true;
        try {
            IClasspathEntry entry = project.getClasspathEntryFor(projectPath);
            if (entry != null) {
                srcIsProject = true;
                inclusionPatterns = ((ClasspathEntry)entry).fullInclusionPatternChars();
                exclusionPatterns = ((ClasspathEntry)entry).fullExclusionPatternChars();
            }
            projectOutput = project.getOutputLocation();
            binIsProject = projectPath.equals((Object)projectOutput);
        }
        catch (JavaModelException javaModelException) {
            isClasspathResolved = false;
        }
        Object[] resources = new IResource[5];
        int resourcesCounter = 0;
        try {
            IResource[] members = ((IContainer)project.getResource()).members();
            int length = members.length;
            if (length > 0) {
                String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                String complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                IClasspathEntry[] classpath = project.getResolvedClasspath();
                int i = 0;
                while (i < length) {
                    IResource res = members[i];
                    switch (res.getType()) {
                        case 1: {
                            IPath resFullPath = res.getFullPath();
                            String resName = res.getName();
                            if (isClasspathResolved && this.isClasspathEntryOrOutputLocation(resFullPath, res.getLocation(), classpath, projectOutput) || srcIsProject && Util.isValidCompilationUnitName(resName, sourceLevel, complianceLevel) && !Util.isExcluded(res, inclusionPatterns, exclusionPatterns) || binIsProject && Util.isValidClassFileName(resName, sourceLevel, complianceLevel)) break;
                            if (resources.length == resourcesCounter) {
                                Object[] objectArray = resources;
                                resources = new IResource[resourcesCounter * 2];
                                System.arraycopy(objectArray, 0, resources, 0, resourcesCounter);
                            }
                            resources[resourcesCounter++] = res;
                            break;
                        }
                        case 2: {
                            IPath resFullPath = res.getFullPath();
                            if (srcIsProject && !Util.isExcluded(res, inclusionPatterns, exclusionPatterns) && Util.isValidFolderNameForPackage(res.getName(), sourceLevel, complianceLevel) || isClasspathResolved && this.isClasspathEntryOrOutputLocation(resFullPath, res.getLocation(), classpath, projectOutput)) break;
                            if (resources.length == resourcesCounter) {
                                Object[] objectArray = resources;
                                resources = new IResource[resourcesCounter * 2];
                                System.arraycopy(objectArray, 0, resources, 0, resourcesCounter);
                            }
                            resources[resourcesCounter++] = res;
                        }
                    }
                    ++i;
                }
            }
            if (resources.length != resourcesCounter) {
                Object[] objectArray = resources;
                resources = new IResource[resourcesCounter];
                System.arraycopy(objectArray, 0, resources, 0, resourcesCounter);
            }
        }
        catch (CoreException coreException) {
            resources = NO_NON_JAVA_RESOURCES;
            resourcesCounter = 0;
        }
        return resources;
    }

    ProjectCache getProjectCache(JavaProject project) {
        ProjectCache cache = this.projectCache;
        if (cache == null) {
            IPackageFragmentRoot[] roots;
            HashMap reverseMap = new HashMap(3);
            try {
                roots = project.getAllPackageFragmentRoots(reverseMap);
            }
            catch (JavaModelException javaModelException) {
                roots = new IPackageFragmentRoot[]{};
                reverseMap.clear();
            }
            HashMap rootInfos = JavaModelManager.getJavaModelManager().deltaState.roots;
            HashMap<IPackageFragmentRoot, HashSetOfArray> pkgFragmentsCaches = new HashMap<IPackageFragmentRoot, HashSetOfArray>();
            int length = roots.length;
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            int i = 0;
            while (i < length) {
                IPackageFragmentRoot root = roots[i];
                DeltaProcessor.RootInfo rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(root.getPath());
                if (rootInfo == null || rootInfo.project.equals(project)) {
                    roots[i] = root = (IPackageFragmentRoot)manager.getExistingElement(root);
                    HashSetOfArray fragmentsCache = new HashSetOfArray();
                    this.initializePackageNames(root, fragmentsCache);
                    pkgFragmentsCaches.put(root, fragmentsCache);
                }
                ++i;
            }
            this.projectCache = cache = new ProjectCache(roots, reverseMap, pkgFragmentsCaches);
        }
        return cache;
    }

    Object[] getNonJavaResources(JavaProject project) {
        if (this.nonJavaResources == null) {
            this.nonJavaResources = this.computeNonJavaResources(project);
        }
        return this.nonJavaResources;
    }

    private void initializePackageNames(IPackageFragmentRoot root, HashSetOfArray fragmentsCache) {
        IJavaElement[] frags = null;
        try {
            if (!root.isOpen()) {
                PackageFragmentRootInfo info = root.isArchive() ? new JarPackageFragmentRootInfo() : new PackageFragmentRootInfo();
                ((PackageFragmentRoot)root).computeChildren(info, ((JavaElement)((Object)root)).resource());
                frags = info.children;
            } else {
                frags = root.getChildren();
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        int j = 0;
        int length = frags.length;
        while (j < length) {
            fragmentsCache.add(((PackageFragment)frags[j]).names);
            ++j;
        }
    }

    private boolean isClasspathEntryOrOutputLocation(IPath path, IPath location, IClasspathEntry[] resolvedClasspath, IPath projectOutput) {
        if (projectOutput.equals((Object)path)) {
            return true;
        }
        int i = 0;
        int length = resolvedClasspath.length;
        while (i < length) {
            IClasspathEntry entry = resolvedClasspath[i];
            IPath entryPath = entry.getPath();
            if (entryPath.equals((Object)path) || entryPath.equals((Object)location)) {
                return true;
            }
            IPath output = entry.getOutputLocation();
            if (output != null && output.equals((Object)path)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    NameLookup newNameLookup(JavaProject project, ICompilationUnit[] workingCopies) {
        ProjectCache cache = this.getProjectCache(project);
        HashtableOfArrayToObject allPkgFragmentsCache = cache.allPkgFragmentsCache;
        if (allPkgFragmentsCache == null) {
            HashMap rootInfos = JavaModelManager.getJavaModelManager().deltaState.roots;
            IPackageFragmentRoot[] allRoots = cache.allPkgFragmentRootsCache;
            int length = allRoots.length;
            allPkgFragmentsCache = new HashtableOfArrayToObject();
            int i = 0;
            while (i < length) {
                block13: {
                    HashSetOfArray fragmentsCache;
                    JavaProject rootProject;
                    IPackageFragmentRoot root = allRoots[i];
                    DeltaProcessor.RootInfo rootInfo = (DeltaProcessor.RootInfo)rootInfos.get(root.getPath());
                    JavaProject javaProject = rootProject = rootInfo == null ? project : rootInfo.project;
                    if (rootProject.equals(project)) {
                        fragmentsCache = (HashSetOfArray)cache.pkgFragmentsCaches.get(root);
                    } else {
                        ProjectCache rootProjectCache;
                        try {
                            rootProjectCache = rootProject.getProjectCache();
                        }
                        catch (JavaModelException javaModelException) {
                            break block13;
                        }
                        fragmentsCache = (HashSetOfArray)rootProjectCache.pkgFragmentsCaches.get(root);
                    }
                    if (fragmentsCache == null) {
                        fragmentsCache = new HashSetOfArray();
                        this.initializePackageNames(root, fragmentsCache);
                    }
                    Object[][] set = fragmentsCache.set;
                    int j = 0;
                    int length2 = set.length;
                    while (j < length2) {
                        Object[] pkgName = (String[])set[j];
                        if (pkgName != null) {
                            Object existing = allPkgFragmentsCache.get(pkgName);
                            if (existing == null || existing == NO_ROOTS) {
                                allPkgFragmentsCache.put(pkgName, root);
                                JavaProjectElementInfo.addSuperPackageNames((String[])pkgName, allPkgFragmentsCache);
                            } else if (existing instanceof PackageFragmentRoot) {
                                allPkgFragmentsCache.put(pkgName, new IPackageFragmentRoot[]{(PackageFragmentRoot)existing, root});
                            } else {
                                IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])existing;
                                int rootLength = roots.length;
                                IPackageFragmentRoot[] iPackageFragmentRootArray = roots;
                                roots = new IPackageFragmentRoot[rootLength + 1];
                                System.arraycopy(iPackageFragmentRootArray, 0, roots, 0, rootLength);
                                roots[rootLength] = root;
                                allPkgFragmentsCache.put(pkgName, roots);
                            }
                        }
                        ++j;
                    }
                }
                ++i;
            }
            cache.allPkgFragmentsCache = allPkgFragmentsCache;
        }
        return new NameLookup(cache.allPkgFragmentRootsCache, cache.allPkgFragmentsCache, workingCopies, cache.rootToResolvedEntries);
    }

    void resetCaches() {
        this.projectCache = null;
    }

    void setNonJavaResources(Object[] resources) {
        this.nonJavaResources = resources;
    }

    static class ProjectCache {
        public IPackageFragmentRoot[] allPkgFragmentRootsCache;
        public HashtableOfArrayToObject allPkgFragmentsCache;
        public Map pkgFragmentsCaches;
        public Map rootToResolvedEntries;

        ProjectCache(IPackageFragmentRoot[] allPkgFragmentRootsCache, Map rootToResolvedEntries, Map pkgFragmentsCaches) {
            this.allPkgFragmentRootsCache = allPkgFragmentRootsCache;
            this.rootToResolvedEntries = rootToResolvedEntries;
            this.pkgFragmentsCaches = pkgFragmentsCaches;
        }
    }
}

