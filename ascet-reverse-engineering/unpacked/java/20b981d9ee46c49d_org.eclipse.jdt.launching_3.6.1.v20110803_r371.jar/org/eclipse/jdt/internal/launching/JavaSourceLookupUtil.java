/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.DirectorySourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.ExternalArchiveSourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.DirectorySourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ExternalArchiveSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.sourcelookup.containers.JavaProjectSourceContainer;
import org.eclipse.jdt.launching.sourcelookup.containers.PackageFragmentRootSourceContainer;

public class JavaSourceLookupUtil {
    public static ISourceContainer[] translate(IRuntimeClasspathEntry[] entries) {
        ArrayList<Object> containers = new ArrayList<Object>(entries.length);
        int i = 0;
        while (i < entries.length) {
            IRuntimeClasspathEntry entry = entries[i];
            switch (entry.getType()) {
                case 2: {
                    IPackageFragmentRoot root = JavaSourceLookupUtil.getPackageFragmentRoot(entry);
                    if (root == null) {
                        IResource resource;
                        String path = entry.getSourceAttachmentLocation();
                        Object container = null;
                        if (path == null) {
                            path = entry.getLocation();
                        }
                        if (path == null) break;
                        File file = new File(path);
                        container = file.isDirectory() ? ((resource = entry.getResource()) instanceof IContainer ? new FolderSourceContainer((IContainer)resource, false) : new DirectorySourceContainer(file, false)) : new ExternalArchiveSourceContainer(path, true);
                        if (containers.contains(container)) break;
                        containers.add(container);
                        break;
                    }
                    PackageFragmentRootSourceContainer container = new PackageFragmentRootSourceContainer(root);
                    if (containers.contains((Object)container)) break;
                    containers.add((Object)container);
                    break;
                }
                case 1: {
                    IResource resource = entry.getResource();
                    if (resource == null || resource.getType() != 4) break;
                    IJavaProject javaProject = JavaCore.create((IProject)((IProject)resource));
                    JavaProjectSourceContainer container = null;
                    if (javaProject.exists()) {
                        container = new JavaProjectSourceContainer(javaProject);
                    } else if (resource.exists()) {
                        container = new ProjectSourceContainer((IProject)resource, false);
                    }
                    if (container == null || containers.contains((Object)container)) break;
                    containers.add((Object)container);
                    break;
                }
            }
            ++i;
        }
        return containers.toArray(new ISourceContainer[containers.size()]);
    }

    private static boolean isSourceAttachmentEqual(IPackageFragmentRoot root, IRuntimeClasspathEntry entry) throws JavaModelException {
        IPath entryPath = entry.getSourceAttachmentPath();
        if (entryPath == null) {
            return true;
        }
        IPath rootPath = root.getSourceAttachmentPath();
        if (rootPath == null) {
            return false;
        }
        return rootPath.equals((Object)entryPath);
    }

    private static IPackageFragmentRoot getPackageFragmentRoot(IRuntimeClasspathEntry entry) {
        IResource resource = entry.getResource();
        if (resource != null) {
            IProject project = resource.getProject();
            IJavaProject jp = JavaCore.create((IProject)project);
            try {
                IPackageFragmentRoot root;
                if (project.isOpen() && jp.exists() && (root = jp.findPackageFragmentRoot(resource.getFullPath())) != null && JavaSourceLookupUtil.isSourceAttachmentEqual(root, entry)) {
                    return root;
                }
            }
            catch (JavaModelException e) {
                LaunchingPlugin.log(e);
            }
        }
        IJavaModel model = JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot());
        IPath entryPath = entry.getPath();
        try {
            IJavaProject[] jps = model.getJavaProjects();
            int i = 0;
            while (i < jps.length) {
                IJavaProject jp = jps[i];
                IProject p = jp.getProject();
                if (p.isOpen()) {
                    IPackageFragmentRoot[] allRoots = jp.getPackageFragmentRoots();
                    int j = 0;
                    while (j < allRoots.length) {
                        IPackageFragmentRoot root = allRoots[j];
                        if (root.getPath().equals((Object)entryPath) && JavaSourceLookupUtil.isSourceAttachmentEqual(root, entry)) {
                            return root;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException e) {
            LaunchingPlugin.log(e);
        }
        return null;
    }
}

