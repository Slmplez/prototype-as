/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
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
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Messages;

public class CopyPackageFragmentRootOperation
extends JavaModelOperation {
    IPath destination;
    int updateResourceFlags;
    int updateModelFlags;
    IClasspathEntry sibling;

    public CopyPackageFragmentRootOperation(IPackageFragmentRoot root, IPath destination, int updateResourceFlags, int updateModelFlags, IClasspathEntry sibling) {
        super(root);
        this.destination = destination;
        this.updateResourceFlags = updateResourceFlags;
        this.updateModelFlags = updateModelFlags;
        this.sibling = sibling;
    }

    protected void executeOperation() throws JavaModelException {
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.getElementToProcess();
        IClasspathEntry rootEntry = root.getRawClasspathEntry();
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        if (!root.isExternal() && (this.updateModelFlags & 1) == 0) {
            this.copyResource(root, rootEntry, workspaceRoot);
        }
        if ((this.updateModelFlags & 8) != 0) {
            this.addEntryToClasspath(rootEntry, workspaceRoot);
        }
    }

    protected void copyResource(IPackageFragmentRoot root, IClasspathEntry rootEntry, final IWorkspaceRoot workspaceRoot) throws JavaModelException {
        char[][] exclusionPatterns = ((ClasspathEntry)rootEntry).fullExclusionPatternChars();
        IResource rootResource = ((JavaElement)((Object)root)).resource();
        if (root.getKind() == 2 || exclusionPatterns == null) {
            try {
                if ((this.updateModelFlags & 0x10) != 0) {
                    if (rootEntry.getPath().equals((Object)this.destination)) {
                        return;
                    }
                    IResource destRes = workspaceRoot.findMember(this.destination);
                    if (destRes != null) {
                        destRes.delete(this.updateResourceFlags, this.progressMonitor);
                    }
                }
                rootResource.copy(this.destination, this.updateResourceFlags, this.progressMonitor);
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
                    if (CopyPackageFragmentRootOperation.this.prefixesOneOf(path, nestedFolders)) {
                        if (CopyPackageFragmentRootOperation.this.equalsOneOf(path, nestedFolders)) {
                            return false;
                        }
                        IFolder folder = destFolder.getFolder(path.removeFirstSegments(sourceSegmentCount));
                        if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && folder.exists()) {
                            return true;
                        }
                        folder.create(CopyPackageFragmentRootOperation.this.updateResourceFlags, true, CopyPackageFragmentRootOperation.this.progressMonitor);
                        return true;
                    }
                    IPath destPath = CopyPackageFragmentRootOperation.this.destination.append(path.removeFirstSegments(sourceSegmentCount));
                    if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && (destRes2 = workspaceRoot.findMember(destPath)) != null) {
                        destRes2.delete(CopyPackageFragmentRootOperation.this.updateResourceFlags, CopyPackageFragmentRootOperation.this.progressMonitor);
                    }
                    proxy.requestResource().copy(destPath, CopyPackageFragmentRootOperation.this.updateResourceFlags, CopyPackageFragmentRootOperation.this.progressMonitor);
                    return false;
                }
                IPath path = proxy.requestFullPath();
                IPath destPath = CopyPackageFragmentRootOperation.this.destination.append(path.removeFirstSegments(sourceSegmentCount));
                if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 0x10) != 0 && (destRes = workspaceRoot.findMember(destPath)) != null) {
                    destRes.delete(CopyPackageFragmentRootOperation.this.updateResourceFlags, CopyPackageFragmentRootOperation.this.progressMonitor);
                }
                proxy.requestResource().copy(destPath, CopyPackageFragmentRootOperation.this.updateResourceFlags, CopyPackageFragmentRootOperation.this.progressMonitor);
                return false;
            }
        };
        try {
            rootResource.accept(visitor, 0);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        CopyPackageFragmentRootOperation.setAttribute("hasModifiedResource", "true");
    }

    protected void addEntryToClasspath(IClasspathEntry rootEntry, IWorkspaceRoot workspaceRoot) throws JavaModelException {
        IClasspathEntry newEntry;
        int position;
        IProject destProject = workspaceRoot.getProject(this.destination.segment(0));
        IJavaProject jProject = JavaCore.create(destProject);
        IClasspathEntry[] classpath = jProject.getRawClasspath();
        int length = classpath.length;
        if ((this.updateModelFlags & 0x10) != 0) {
            int i = 0;
            while (i < length) {
                if (this.destination.equals((Object)classpath[i].getPath())) {
                    IClasspathEntry[] newClasspath = new IClasspathEntry[length];
                    System.arraycopy(classpath, 0, newClasspath, 0, length);
                    newClasspath[i] = this.copy(rootEntry);
                    jProject.setRawClasspath(newClasspath, this.progressMonitor);
                    return;
                }
                ++i;
            }
        }
        if (this.sibling == null) {
            position = length;
        } else {
            position = -1;
            int i = 0;
            while (i < length) {
                if (this.sibling.equals(classpath[i])) {
                    position = i;
                    break;
                }
                ++i;
            }
        }
        if (position == -1) {
            throw new JavaModelException(new JavaModelStatus(993, this.sibling.toString()));
        }
        IClasspathEntry[] newClasspath = new IClasspathEntry[length + 1];
        if (position != 0) {
            System.arraycopy(classpath, 0, newClasspath, 0, position);
        }
        if (position != length) {
            System.arraycopy(classpath, position, newClasspath, position + 1, length - position);
        }
        newClasspath[position] = newEntry = this.copy(rootEntry);
        jProject.setRawClasspath(newClasspath, this.progressMonitor);
    }

    protected IClasspathEntry copy(IClasspathEntry entry) throws JavaModelException {
        switch (entry.getEntryKind()) {
            case 5: {
                return JavaCore.newContainerEntry(entry.getPath(), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
            }
            case 1: {
                try {
                    return JavaCore.newLibraryEntry(this.destination, entry.getSourceAttachmentPath(), entry.getSourceAttachmentRootPath(), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
                }
                catch (ClasspathEntry.AssertionFailedException e) {
                    JavaModelStatus status = new JavaModelStatus(979, e.getMessage());
                    throw new JavaModelException(status);
                }
            }
            case 2: {
                return JavaCore.newProjectEntry(entry.getPath(), entry.getAccessRules(), entry.combineAccessRules(), entry.getExtraAttributes(), entry.isExported());
            }
            case 3: {
                return JavaCore.newSourceEntry(this.destination, entry.getInclusionPatterns(), entry.getExclusionPatterns(), entry.getOutputLocation(), entry.getExtraAttributes());
            }
            case 4: {
                try {
                    return JavaCore.newVariableEntry(entry.getPath(), entry.getSourceAttachmentPath(), entry.getSourceAttachmentRootPath(), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
                }
                catch (ClasspathEntry.AssertionFailedException e) {
                    JavaModelStatus status = new JavaModelStatus(979, e.getMessage());
                    throw new JavaModelException(status);
                }
            }
        }
        throw new JavaModelException(new JavaModelStatus(969, this.getElementToProcess()));
    }

    public IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        PackageFragmentRoot root = (PackageFragmentRoot)this.getElementToProcess();
        if (root == null || !root.exists()) {
            return new JavaModelStatus(969, root);
        }
        IResource resource = root.resource();
        if (resource instanceof IFolder && resource.isLinked()) {
            return new JavaModelStatus(995, root);
        }
        if ((this.updateModelFlags & 8) != 0) {
            String destProjectName = this.destination.segment(0);
            IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(destProjectName);
            if (JavaProject.hasJavaNature(project)) {
                try {
                    IJavaProject destProject = JavaCore.create(project);
                    IClasspathEntry[] destClasspath = destProject.getRawClasspath();
                    boolean foundSibling = false;
                    boolean foundExistingEntry = false;
                    int i = 0;
                    int length = destClasspath.length;
                    while (i < length) {
                        IClasspathEntry entry = destClasspath[i];
                        if (entry.equals(this.sibling)) {
                            foundSibling = true;
                            break;
                        }
                        if (entry.getPath().equals((Object)this.destination)) {
                            foundExistingEntry = true;
                        }
                        ++i;
                    }
                    if (this.sibling != null && !foundSibling) {
                        return new JavaModelStatus(993, this.sibling.toString());
                    }
                    if (foundExistingEntry && (this.updateModelFlags & 0x10) == 0) {
                        return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, new String[]{this.destination.toString()}));
                    }
                }
                catch (JavaModelException e) {
                    return e.getJavaModelStatus();
                }
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

