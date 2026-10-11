/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public class DeletePackageFragmentRootOperation
extends JavaModelOperation {
    int updateResourceFlags;
    int updateModelFlags;

    public DeletePackageFragmentRootOperation(IPackageFragmentRoot root, int updateResourceFlags, int updateModelFlags) {
        super(root);
        this.updateResourceFlags = updateResourceFlags;
        this.updateModelFlags = updateModelFlags;
    }

    protected void executeOperation() throws JavaModelException {
        IPackageFragmentRoot root = (IPackageFragmentRoot)this.getElementToProcess();
        IClasspathEntry rootEntry = root.getRawClasspathEntry();
        DeltaProcessor deltaProcessor = JavaModelManager.getJavaModelManager().getDeltaProcessor();
        if (deltaProcessor.oldRoots == null) {
            deltaProcessor.oldRoots = new HashMap();
        }
        if ((this.updateModelFlags & 2) != 0) {
            this.updateProjectClasspath(rootEntry.getPath(), root.getJavaProject(), deltaProcessor.oldRoots);
        }
        if ((this.updateModelFlags & 4) != 0) {
            this.updateReferringProjectClasspaths(rootEntry.getPath(), root.getJavaProject(), deltaProcessor.oldRoots);
        }
        if (!root.isExternal() && (this.updateModelFlags & 1) == 0) {
            this.deleteResource(root, rootEntry);
        }
    }

    protected void deleteResource(IPackageFragmentRoot root, IClasspathEntry rootEntry) throws JavaModelException {
        char[][] exclusionPatterns = ((ClasspathEntry)rootEntry).fullExclusionPatternChars();
        IResource rootResource = ((JavaElement)((Object)root)).resource();
        if (rootEntry.getEntryKind() != 3 || exclusionPatterns == null) {
            try {
                rootResource.delete(this.updateResourceFlags, this.progressMonitor);
            }
            catch (CoreException e) {
                throw new JavaModelException(e);
            }
        }
        final IPath[] nestedFolders = this.getNestedFolders(root);
        IResourceProxyVisitor visitor = new IResourceProxyVisitor(){

            public boolean visit(IResourceProxy proxy) throws CoreException {
                if (proxy.getType() == 2) {
                    IPath path = proxy.requestFullPath();
                    if (DeletePackageFragmentRootOperation.this.prefixesOneOf(path, nestedFolders)) {
                        return !DeletePackageFragmentRootOperation.this.equalsOneOf(path, nestedFolders);
                    }
                    proxy.requestResource().delete(DeletePackageFragmentRootOperation.this.updateResourceFlags, DeletePackageFragmentRootOperation.this.progressMonitor);
                    return false;
                }
                proxy.requestResource().delete(DeletePackageFragmentRootOperation.this.updateResourceFlags, DeletePackageFragmentRootOperation.this.progressMonitor);
                return false;
            }
        };
        try {
            rootResource.accept(visitor, 0);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        DeletePackageFragmentRootOperation.setAttribute("hasModifiedResource", "true");
    }

    protected void updateReferringProjectClasspaths(IPath rootPath, IJavaProject projectOfRoot, Map oldRoots) throws JavaModelException {
        IJavaModel model = this.getJavaModel();
        IJavaProject[] projects = model.getJavaProjects();
        int i = 0;
        int length = projects.length;
        while (i < length) {
            IJavaProject project = projects[i];
            if (!project.equals(projectOfRoot)) {
                this.updateProjectClasspath(rootPath, project, oldRoots);
            }
            ++i;
        }
    }

    protected void updateProjectClasspath(IPath rootPath, IJavaProject project, Map oldRoots) throws JavaModelException {
        oldRoots.put(project, project.getPackageFragmentRoots());
        IClasspathEntry[] classpath = project.getRawClasspath();
        IClasspathEntry[] newClasspath = null;
        int cpLength = classpath.length;
        int newCPIndex = -1;
        int j = 0;
        while (j < cpLength) {
            IClasspathEntry entry = classpath[j];
            if (rootPath.equals((Object)entry.getPath())) {
                if (newClasspath == null) {
                    newClasspath = new IClasspathEntry[cpLength - 1];
                    System.arraycopy(classpath, 0, newClasspath, 0, j);
                    newCPIndex = j;
                }
            } else if (newClasspath != null) {
                newClasspath[newCPIndex++] = entry;
            }
            ++j;
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

    protected IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        IJavaElement root = this.getElementToProcess();
        if (root == null || !root.exists()) {
            return new JavaModelStatus(969, root);
        }
        IResource resource = ((JavaElement)root).resource();
        if (resource instanceof IFolder && resource.isLinked()) {
            return new JavaModelStatus(995, root);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

