/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CopyPackageFragmentRootOperation;
import org.eclipse.jdt.internal.core.JavaElement;

public class MovePackageFragmentRootOperation
extends CopyPackageFragmentRootOperation {
    protected void renameEntryInClasspath(IPath rootPath, IJavaProject project) throws JavaModelException {
        IClasspathEntry[] classpath = project.getRawClasspath();
        IClasspathEntry[] newClasspath = null;
        int cpLength = classpath.length;
        int newCPIndex = -1;
        int i = 0;
        while (i < cpLength) {
            IClasspathEntry entry = classpath[i];
            IPath entryPath = entry.getPath();
            if (rootPath.equals((Object)entryPath)) {
                if (newClasspath == null) {
                    newClasspath = new IClasspathEntry[cpLength];
                    System.arraycopy(classpath, 0, newClasspath, 0, i);
                    newCPIndex = i;
                }
                newClasspath[newCPIndex++] = this.copy(entry);
            } else if (this.destination.equals((Object)entryPath)) {
                if (newClasspath == null) {
                    newClasspath = new IClasspathEntry[cpLength];
                    System.arraycopy(classpath, 0, newClasspath, 0, i);
                    newCPIndex = i;
                }
            } else if (entry.getEntryKind() == 3) {
                IPath projectRelativePath = rootPath.removeFirstSegments(1);
                IPath[] newExclusionPatterns = this.renamePatterns(projectRelativePath, entry.getExclusionPatterns());
                IPath[] newInclusionPatterns = this.renamePatterns(projectRelativePath, entry.getInclusionPatterns());
                if (newExclusionPatterns != null || newInclusionPatterns != null) {
                    if (newClasspath == null) {
                        newClasspath = new IClasspathEntry[cpLength];
                        System.arraycopy(classpath, 0, newClasspath, 0, i);
                        newCPIndex = i;
                    }
                    newClasspath[newCPIndex++] = JavaCore.newSourceEntry(entry.getPath(), newInclusionPatterns == null ? entry.getInclusionPatterns() : newInclusionPatterns, newExclusionPatterns == null ? entry.getExclusionPatterns() : newExclusionPatterns, entry.getOutputLocation(), entry.getExtraAttributes());
                } else if (newClasspath != null) {
                    newClasspath[newCPIndex++] = entry;
                }
            } else if (newClasspath != null) {
                newClasspath[newCPIndex++] = entry;
            }
            ++i;
        }
        if (newClasspath != null) {
            IJavaModelStatus status;
            if (newCPIndex < newClasspath.length) {
                IClasspathEntry[] iClasspathEntryArray = newClasspath;
                newClasspath = new IClasspathEntry[newCPIndex];
                System.arraycopy(iClasspathEntryArray, 0, newClasspath, 0, newCPIndex);
            }
            if ((status = JavaConventions.validateClasspath(project, newClasspath, project.getOutputLocation())).isOK()) {
                project.setRawClasspath(newClasspath, this.progressMonitor);
            }
        }
    }

    private IPath[] renamePatterns(IPath rootPath, IPath[] patterns) {
        IPath[] newPatterns = null;
        int newPatternsIndex = -1;
        int i = 0;
        int length = patterns.length;
        while (i < length) {
            IPath pattern = patterns[i];
            if (pattern.equals((Object)rootPath)) {
                if (newPatterns == null) {
                    newPatterns = new IPath[length];
                    System.arraycopy(patterns, 0, newPatterns, 0, i);
                    newPatternsIndex = i;
                }
                IPath newPattern = this.destination.removeFirstSegments(1);
                if (pattern.hasTrailingSeparator()) {
                    newPattern = newPattern.addTrailingSeparator();
                }
                newPatterns[newPatternsIndex++] = newPattern;
            }
            ++i;
        }
        return newPatterns;
    }

    public MovePackageFragmentRootOperation(IPackageFragmentRoot root, IPath destination, int updateResourceFlags, int updateModelFlags, IClasspathEntry sibling) {
        super(root, destination, updateResourceFlags, updateModelFlags, sibling);
    }

    protected void executeOperation() throws JavaModelException {
        boolean updateDestination;
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.getElementToProcess();
        IClasspathEntry rootEntry = root.getRawClasspathEntry();
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        if (!root.isExternal() && (this.updateModelFlags & 1) == 0) {
            this.moveResource(root, rootEntry, workspaceRoot);
        }
        IJavaProject originatingProject = root.getJavaProject();
        if ((this.updateModelFlags & 4) != 0) {
            this.updateReferringProjectClasspaths(rootEntry.getPath(), originatingProject);
        }
        boolean isRename = this.destination.segment(0).equals(originatingProject.getElementName());
        boolean updateOriginating = (this.updateModelFlags & 2) != 0;
        boolean bl = updateDestination = (this.updateModelFlags & 8) != 0;
        if (updateOriginating) {
            if (isRename && updateDestination) {
                this.renameEntryInClasspath(rootEntry.getPath(), originatingProject);
            } else {
                this.removeEntryFromClasspath(rootEntry.getPath(), originatingProject);
            }
        }
        if (!(!updateDestination || isRename && updateOriginating)) {
            this.addEntryToClasspath(rootEntry, workspaceRoot);
        }
    }

    protected void moveResource(IPackageFragmentRoot root, IClasspathEntry rootEntry, final IWorkspaceRoot workspaceRoot) throws JavaModelException {
        char[][] exclusionPatterns = ((ClasspathEntry)rootEntry).fullExclusionPatternChars();
        IResource rootResource = ((JavaElement)((Object)root)).resource();
        if (rootEntry.getEntryKind() != 3 || exclusionPatterns == null) {
            try {
                IResource destRes;
                if ((this.updateModelFlags & 0x10) != 0 && (destRes = workspaceRoot.findMember(this.destination)) != null) {
                    destRes.delete(this.updateResourceFlags, this.progressMonitor);
                }
                rootResource.move(this.destination, this.updateResourceFlags, this.progressMonitor);
            }
            catch (CoreException e) {
                throw new JavaModelException(e);
            }
        }
        final int sourceSegmentCount = rootEntry.getPath().segmentCount();
        final IFolder destFolder = workspaceRoot.getFolder(this.destination);
        final IPath[] nestedFolders = this.getNestedFolders(root);
        IResourceProxyVisitor visitor = new IResourceProxyVisitor(){

            public boolean visit(IResourceProxy proxy) throws CoreException {
                IResource destRes;
                if (proxy.getType() == 2) {
                    IResource destRes2;
                    IPath path = proxy.requestFullPath();
                    if (MovePackageFragmentRootOperation.this.prefixesOneOf(path, nestedFolders)) {
                        if (MovePackageFragmentRootOperation.this.equalsOneOf(path, nestedFolders)) {
                            return false;
                        }
                        IFolder folder = destFolder.getFolder(path.removeFirstSegments(sourceSegmentCount));
                        if ((MovePackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && folder.exists()) {
                            return true;
                        }
                        folder.create(MovePackageFragmentRootOperation.this.updateResourceFlags, true, MovePackageFragmentRootOperation.this.progressMonitor);
                        return true;
                    }
                    IPath destPath = MovePackageFragmentRootOperation.this.destination.append(path.removeFirstSegments(sourceSegmentCount));
                    if ((MovePackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && (destRes2 = workspaceRoot.findMember(destPath)) != null) {
                        destRes2.delete(MovePackageFragmentRootOperation.this.updateResourceFlags, MovePackageFragmentRootOperation.this.progressMonitor);
                    }
                    proxy.requestResource().move(destPath, MovePackageFragmentRootOperation.this.updateResourceFlags, MovePackageFragmentRootOperation.this.progressMonitor);
                    return false;
                }
                IPath path = proxy.requestFullPath();
                IPath destPath = MovePackageFragmentRootOperation.this.destination.append(path.removeFirstSegments(sourceSegmentCount));
                if ((MovePackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && (destRes = workspaceRoot.findMember(destPath)) != null) {
                    destRes.delete(MovePackageFragmentRootOperation.this.updateResourceFlags, MovePackageFragmentRootOperation.this.progressMonitor);
                }
                proxy.requestResource().move(destPath, MovePackageFragmentRootOperation.this.updateResourceFlags, MovePackageFragmentRootOperation.this.progressMonitor);
                return false;
            }
        };
        try {
            rootResource.accept(visitor, 0);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        MovePackageFragmentRootOperation.setAttribute("hasModifiedResource", "true");
    }

    protected void updateReferringProjectClasspaths(IPath rootPath, IJavaProject projectOfRoot) throws JavaModelException {
        IJavaModel model = this.getJavaModel();
        IJavaProject[] projects = model.getJavaProjects();
        int i = 0;
        int length = projects.length;
        while (i < length) {
            IJavaProject project = projects[i];
            if (!project.equals(projectOfRoot)) {
                this.renameEntryInClasspath(rootPath, project);
            }
            ++i;
        }
    }

    protected void removeEntryFromClasspath(IPath rootPath, IJavaProject project) throws JavaModelException {
        IClasspathEntry[] classpath = project.getRawClasspath();
        IClasspathEntry[] newClasspath = null;
        int cpLength = classpath.length;
        int newCPIndex = -1;
        int i = 0;
        while (i < cpLength) {
            IClasspathEntry entry = classpath[i];
            if (rootPath.equals((Object)entry.getPath())) {
                if (newClasspath == null) {
                    newClasspath = new IClasspathEntry[cpLength];
                    System.arraycopy(classpath, 0, newClasspath, 0, i);
                    newCPIndex = i;
                }
            } else if (newClasspath != null) {
                newClasspath[newCPIndex++] = entry;
            }
            ++i;
        }
        if (newClasspath != null) {
            if (newCPIndex < newClasspath.length) {
                IClasspathEntry[] iClasspathEntryArray = newClasspath;
                newClasspath = new IClasspathEntry[newCPIndex];
                System.arraycopy(iClasspathEntryArray, 0, newClasspath, 0, newCPIndex);
            }
            project.setRawClasspath(newClasspath, this.progressMonitor);
        }
    }
}

