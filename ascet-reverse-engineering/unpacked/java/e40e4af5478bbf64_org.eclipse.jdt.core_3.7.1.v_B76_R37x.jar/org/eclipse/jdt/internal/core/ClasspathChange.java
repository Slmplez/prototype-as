/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathChange {
    public static final int NO_DELTA = 0;
    public static final int HAS_DELTA = 1;
    public static final int HAS_PROJECT_CHANGE = 2;
    public static final int HAS_LIBRARY_CHANGE = 4;
    JavaProject project;
    IClasspathEntry[] oldRawClasspath;
    IPath oldOutputLocation;
    IClasspathEntry[] oldResolvedClasspath;

    public ClasspathChange(JavaProject project, IClasspathEntry[] oldRawClasspath, IPath oldOutputLocation, IClasspathEntry[] oldResolvedClasspath) {
        this.project = project;
        this.oldRawClasspath = oldRawClasspath;
        this.oldOutputLocation = oldOutputLocation;
        this.oldResolvedClasspath = oldResolvedClasspath;
    }

    private void addClasspathDeltas(JavaElementDelta delta, IPackageFragmentRoot[] roots, int flag) {
        int i = 0;
        while (i < roots.length) {
            IPackageFragmentRoot root = roots[i];
            delta.changed(root, flag);
            if ((flag & 0x80) != 0 || (flag & 0x1000) != 0 || (flag & 0x2000) != 0) {
                try {
                    root.close();
                }
                catch (JavaModelException javaModelException) {}
            }
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    private int classpathContains(IClasspathEntry[] list, IClasspathEntry entry) {
        exclusionPatterns = entry.getExclusionPatterns();
        inclusionPatterns = entry.getInclusionPatterns();
        listLen = list == null ? 0 : list.length;
        i = 0;
        while (i < listLen) {
            block7: {
                block9: {
                    block8: {
                        other = list[i];
                        if (other.getContentKind() != entry.getContentKind() || other.getEntryKind() != entry.getEntryKind() || other.isExported() != entry.isExported() || !other.getPath().equals((Object)entry.getPath())) break block7;
                        entryOutput = entry.getOutputLocation();
                        otherOutput = other.getOutputLocation();
                        if (entryOutput != null ? entryOutput.equals((Object)otherOutput) == false : otherOutput != null) break block7;
                        otherIncludes = other.getInclusionPatterns();
                        if (inclusionPatterns == otherIncludes) break block8;
                        if (inclusionPatterns == null) break block7;
                        includeLength = inclusionPatterns.length;
                        if (otherIncludes != null && otherIncludes.length == includeLength) {
                            j = 0;
                            while (j < includeLength) {
                                if (inclusionPatterns[j].toString().equals(otherIncludes[j].toString())) {
                                    ++j;
                                } else {
                                    ** GOTO lbl-1000
                                }
                            }
                        }
                        break block7;
lbl-1000:
                        // 2 sources

                        {
                            break block7;
                        }
                    }
                    if (exclusionPatterns == (otherExcludes = other.getExclusionPatterns())) break block9;
                    if (exclusionPatterns == null) break block7;
                    excludeLength = exclusionPatterns.length;
                    if (otherExcludes != null && otherExcludes.length == excludeLength) {
                        j = 0;
                        while (j < excludeLength) {
                            if (exclusionPatterns[j].toString().equals(otherExcludes[j].toString())) {
                                ++j;
                            } else {
                                ** GOTO lbl-1000
                            }
                        }
                    }
                    break block7;
lbl-1000:
                    // 2 sources

                    {
                        break block7;
                    }
                }
                return i;
            }
            ++i;
        }
        return -1;
    }

    private void collectAllSubfolders(IFolder folder, ArrayList collection) throws JavaModelException {
        try {
            IResource[] members = folder.members();
            int i = 0;
            int max = members.length;
            while (i < max) {
                IResource r = members[i];
                if (r.getType() == 2) {
                    collection.add(r);
                    this.collectAllSubfolders((IFolder)r, collection);
                }
                ++i;
            }
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    private ArrayList determineAffectedPackageFragments(IPath location) throws JavaModelException {
        ArrayList<PackageFragment> fragments = new ArrayList<PackageFragment>();
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IResource resource = null;
        if (location != null) {
            resource = workspace.getRoot().findMember(location);
        }
        if (resource != null && resource.getType() == 2) {
            IFolder folder = (IFolder)resource;
            IClasspathEntry[] classpath = this.project.getExpandedClasspath();
            int i = 0;
            while (i < classpath.length) {
                IClasspathEntry entry = classpath[i];
                IPath path = classpath[i].getPath();
                if (entry.getEntryKind() != 2 && path.isPrefixOf(location) && !path.equals((Object)location)) {
                    IPackageFragmentRoot[] roots = this.project.computePackageFragmentRoots(classpath[i]);
                    PackageFragmentRoot root = (PackageFragmentRoot)roots[0];
                    ArrayList<IFolder> folders = new ArrayList<IFolder>();
                    folders.add(folder);
                    this.collectAllSubfolders(folder, folders);
                    Iterator elements = folders.iterator();
                    int segments = path.segmentCount();
                    while (elements.hasNext()) {
                        IFolder f = (IFolder)elements.next();
                        IPath relativePath = f.getFullPath().removeFirstSegments(segments);
                        String[] pkgName = relativePath.segments();
                        PackageFragment pkg = root.getPackageFragment(pkgName);
                        if (Util.isExcluded(pkg)) continue;
                        fragments.add(pkg);
                    }
                }
                ++i;
            }
        }
        return fragments;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ClasspathChange)) {
            return false;
        }
        return this.project.equals(((ClasspathChange)obj).project);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int generateDelta(JavaElementDelta delta, boolean addClasspathChange) {
        int result;
        block49: {
            int entryKind;
            int index;
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            DeltaProcessingState state = manager.deltaState;
            if (state.findJavaProject(this.project.getElementName()) == null) {
                return 0;
            }
            DeltaProcessor deltaProcessor = state.getDeltaProcessor();
            IClasspathEntry[] newResolvedClasspath = null;
            IPath newOutputLocation = null;
            result = 0;
            try {
                IClasspathEntry[] newRawClasspath;
                JavaModelManager.PerProjectInfo perProjectInfo = this.project.getPerProjectInfo();
                this.project.resolveClasspath(perProjectInfo, false, addClasspathChange);
                JavaModelManager.PerProjectInfo perProjectInfo2 = perProjectInfo;
                synchronized (perProjectInfo2) {
                    newRawClasspath = perProjectInfo.rawClasspath;
                    newResolvedClasspath = perProjectInfo.getResolvedClasspath();
                    newOutputLocation = perProjectInfo.outputLocation;
                }
                if (newResolvedClasspath == null) {
                    JavaModelManager.PerProjectInfo temporaryInfo = this.project.newTemporaryInfo();
                    this.project.resolveClasspath(temporaryInfo, false, addClasspathChange);
                    newRawClasspath = temporaryInfo.rawClasspath;
                    newResolvedClasspath = temporaryInfo.getResolvedClasspath();
                    newOutputLocation = temporaryInfo.outputLocation;
                }
                if (this.oldRawClasspath != null && !JavaProject.areClasspathsEqual(this.oldRawClasspath, newRawClasspath, this.oldOutputLocation, newOutputLocation)) {
                    delta.changed(this.project, 131072);
                    result |= 1;
                    int i = 0;
                    int length = this.oldRawClasspath.length;
                    while (i < length) {
                        IClasspathEntry entry = this.oldRawClasspath[i];
                        if (entry.getEntryKind() == 5 && this.classpathContains(newRawClasspath, entry) == -1) {
                            manager.containerPut(this.project, entry.getPath(), null);
                        }
                        ++i;
                    }
                }
                if (this.oldResolvedClasspath != null && JavaProject.areClasspathsEqual(this.oldResolvedClasspath, newResolvedClasspath, this.oldOutputLocation, newOutputLocation)) {
                    return result;
                }
                this.project.close();
                deltaProcessor.projectCachesToReset.add(this.project);
            }
            catch (JavaModelException e) {
                if (DeltaProcessor.VERBOSE) {
                    e.printStackTrace();
                }
                return result;
            }
            if (this.oldResolvedClasspath == null) {
                return result;
            }
            delta.changed(this.project, 0x200000);
            result |= 1;
            state.addForRefresh(this.project);
            HashMap<IPath, IPackageFragmentRoot> removedRoots = null;
            IPackageFragmentRoot[] roots = null;
            Map allOldRoots = deltaProcessor.oldRoots;
            if (allOldRoots != null) {
                roots = (IPackageFragmentRoot[])allOldRoots.get(this.project);
            }
            if (roots != null) {
                removedRoots = new HashMap<IPath, IPackageFragmentRoot>();
                int i = 0;
                while (i < roots.length) {
                    IPackageFragmentRoot root = roots[i];
                    removedRoots.put(root.getPath(), root);
                    ++i;
                }
            }
            int newLength = newResolvedClasspath.length;
            int oldLength = this.oldResolvedClasspath.length;
            int i = 0;
            while (i < oldLength) {
                IPackageFragmentRoot root;
                int j;
                index = this.classpathContains(newResolvedClasspath, this.oldResolvedClasspath[i]);
                if (index == -1) {
                    entryKind = this.oldResolvedClasspath[i].getEntryKind();
                    if (entryKind == 2) {
                        result |= 2;
                    } else {
                        PackageFragmentRoot oldRoot;
                        if (entryKind == 1) {
                            result |= 4;
                        }
                        Object[] pkgFragmentRoots = null;
                        if (removedRoots != null && (oldRoot = (PackageFragmentRoot)removedRoots.get(this.oldResolvedClasspath[i].getPath())) != null) {
                            pkgFragmentRoots = new PackageFragmentRoot[]{oldRoot};
                        }
                        if (pkgFragmentRoots == null) {
                            try {
                                ObjectVector accumulatedRoots = new ObjectVector();
                                HashSet<String> rootIDs = new HashSet<String>(5);
                                rootIDs.add(this.project.rootID());
                                this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i], accumulatedRoots, rootIDs, null, false, null);
                                DeltaProcessor.RootInfo rootInfo = (DeltaProcessor.RootInfo)state.oldRoots.get(this.oldResolvedClasspath[i].getPath());
                                if (rootInfo != null && rootInfo.cache != null) {
                                    IPackageFragmentRoot oldRoot2 = rootInfo.cache;
                                    boolean found = false;
                                    j = 0;
                                    while (j < accumulatedRoots.size()) {
                                        root = (IPackageFragmentRoot)accumulatedRoots.elementAt(j);
                                        if (!root.getPath().equals((Object)oldRoot2.getPath())) {
                                            found = true;
                                            break;
                                        }
                                        ++j;
                                    }
                                    if (!found) {
                                        accumulatedRoots.add(oldRoot2);
                                    }
                                }
                                pkgFragmentRoots = new PackageFragmentRoot[accumulatedRoots.size()];
                                accumulatedRoots.copyInto(pkgFragmentRoots);
                            }
                            catch (JavaModelException javaModelException) {
                                pkgFragmentRoots = new PackageFragmentRoot[]{};
                            }
                        }
                        this.addClasspathDeltas(delta, (IPackageFragmentRoot[])pkgFragmentRoots, 128);
                    }
                } else if (this.oldResolvedClasspath[i].getEntryKind() == 2) {
                    result |= 2;
                } else {
                    IPath newRootPath;
                    IPath oldRootPath;
                    int sourceAttachmentRootFlags;
                    if (index != i) {
                        this.addClasspathDeltas(delta, this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i]), 256);
                    }
                    IPath newSourcePath = newResolvedClasspath[index].getSourceAttachmentPath();
                    int sourceAttachmentFlags = this.getSourceAttachmentDeltaFlag(this.oldResolvedClasspath[i].getSourceAttachmentPath(), newSourcePath);
                    int flags = sourceAttachmentFlags | (sourceAttachmentRootFlags = this.getSourceAttachmentDeltaFlag(oldRootPath = this.oldResolvedClasspath[i].getSourceAttachmentRootPath(), newRootPath = newResolvedClasspath[index].getSourceAttachmentRootPath()));
                    if (flags != 0) {
                        this.addClasspathDeltas(delta, this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i]), flags);
                    } else if (oldRootPath == null && newRootPath == null) {
                        IPackageFragmentRoot[] computedRoots = this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i]);
                        j = 0;
                        while (j < computedRoots.length) {
                            root = computedRoots[j];
                            try {
                                root.close();
                            }
                            catch (JavaModelException javaModelException) {}
                            ++j;
                        }
                    }
                }
                ++i;
            }
            i = 0;
            while (i < newLength) {
                index = this.classpathContains(this.oldResolvedClasspath, newResolvedClasspath[i]);
                if (index == -1) {
                    entryKind = newResolvedClasspath[i].getEntryKind();
                    if (entryKind == 2) {
                        result |= 2;
                    } else {
                        if (entryKind == 1) {
                            result |= 4;
                        }
                        this.addClasspathDeltas(delta, this.project.computePackageFragmentRoots(newResolvedClasspath[i]), 64);
                    }
                }
                ++i;
            }
            if (newOutputLocation == null && this.oldOutputLocation != null || newOutputLocation != null && !newOutputLocation.equals((Object)this.oldOutputLocation)) {
                try {
                    ArrayList added = this.determineAffectedPackageFragments(this.oldOutputLocation);
                    Iterator iter = added.iterator();
                    while (iter.hasNext()) {
                        IPackageFragment frag = (IPackageFragment)iter.next();
                        ((IPackageFragmentRoot)frag.getParent()).close();
                        delta.added(frag);
                    }
                    ArrayList removed = this.determineAffectedPackageFragments(newOutputLocation);
                    iter = removed.iterator();
                    while (iter.hasNext()) {
                        IPackageFragment frag = (IPackageFragment)iter.next();
                        ((IPackageFragmentRoot)frag.getParent()).close();
                        delta.removed(frag);
                    }
                }
                catch (JavaModelException e) {
                    if (!DeltaProcessor.VERBOSE) break block49;
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    private int getSourceAttachmentDeltaFlag(IPath oldPath, IPath newPath) {
        if (oldPath == null) {
            if (newPath != null) {
                return 4096;
            }
            return 0;
        }
        if (newPath == null) {
            return 8192;
        }
        if (!oldPath.equals((Object)newPath)) {
            return 12288;
        }
        return 0;
    }

    public int hashCode() {
        return this.project.hashCode();
    }

    public void requestIndexing() {
        int index;
        IClasspathEntry[] newResolvedClasspath = null;
        try {
            newResolvedClasspath = this.project.getResolvedClasspath();
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        IndexManager indexManager = manager.indexManager;
        if (indexManager == null) {
            return;
        }
        DeltaProcessingState state = manager.deltaState;
        int newLength = newResolvedClasspath.length;
        int oldLength = this.oldResolvedClasspath == null ? 0 : this.oldResolvedClasspath.length;
        int i = 0;
        while (i < oldLength) {
            index = this.classpathContains(newResolvedClasspath, this.oldResolvedClasspath[i]);
            if (index == -1 && this.oldResolvedClasspath[i].getEntryKind() != 2) {
                IClasspathEntry oldEntry = this.oldResolvedClasspath[i];
                IPath path = oldEntry.getPath();
                int changeKind = this.oldResolvedClasspath[i].getEntryKind();
                switch (changeKind) {
                    case 3: {
                        char[][] inclusionPatterns = ((ClasspathEntry)oldEntry).fullInclusionPatternChars();
                        char[][] exclusionPatterns = ((ClasspathEntry)oldEntry).fullExclusionPatternChars();
                        indexManager.removeSourceFolderFromIndex(this.project, path, inclusionPatterns, exclusionPatterns);
                        break;
                    }
                    case 1: {
                        if (state.otherRoots.get(path) != null) break;
                        indexManager.discardJobs(path.toString());
                        indexManager.removeIndex(path);
                    }
                }
            }
            ++i;
        }
        i = 0;
        while (i < newLength) {
            index = this.classpathContains(this.oldResolvedClasspath, newResolvedClasspath[i]);
            if (index == -1 && newResolvedClasspath[i].getEntryKind() != 2) {
                int entryKind = newResolvedClasspath[i].getEntryKind();
                switch (entryKind) {
                    case 1: {
                        boolean pathHasChanged = true;
                        IPath newPath = newResolvedClasspath[i].getPath();
                        int j = 0;
                        while (j < oldLength) {
                            IClasspathEntry oldEntry = this.oldResolvedClasspath[j];
                            if (oldEntry.getPath().equals((Object)newPath)) {
                                pathHasChanged = false;
                                break;
                            }
                            ++j;
                        }
                        if (!pathHasChanged) break;
                        indexManager.indexLibrary(newPath, this.project.getProject());
                        break;
                    }
                    case 3: {
                        IClasspathEntry entry = newResolvedClasspath[i];
                        IPath path = entry.getPath();
                        char[][] inclusionPatterns = ((ClasspathEntry)entry).fullInclusionPatternChars();
                        char[][] exclusionPatterns = ((ClasspathEntry)entry).fullExclusionPatternChars();
                        indexManager.indexSourceFolder(this.project, path, inclusionPatterns, exclusionPatterns);
                    }
                }
            }
            ++i;
        }
    }

    public String toString() {
        return "ClasspathChange: " + this.project.getElementName();
    }
}

