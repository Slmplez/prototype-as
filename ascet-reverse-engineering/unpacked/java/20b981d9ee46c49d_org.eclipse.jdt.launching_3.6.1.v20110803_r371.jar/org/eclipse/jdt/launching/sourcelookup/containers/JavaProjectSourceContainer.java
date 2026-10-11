/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.ISourceContainerType
 *  org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.launching.sourcelookup.containers;

import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;

public class JavaProjectSourceContainer
extends CompositeSourceContainer {
    private IJavaProject fProject;
    private ISourceContainer[] fSourceFolders;
    private ISourceContainer[] fOthers;
    private static String[] fgJavaExtensions = null;
    public static final String TYPE_ID;

    static {
        String[] extensions = JavaCore.getJavaLikeExtensions();
        fgJavaExtensions = new String[extensions.length];
        int i = 0;
        while (i < extensions.length) {
            String ext = extensions[i];
            JavaProjectSourceContainer.fgJavaExtensions[i] = String.valueOf('.') + ext;
            ++i;
        }
        TYPE_ID = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".sourceContainer.javaProject";
    }

    public JavaProjectSourceContainer(IJavaProject project) {
        this.fProject = project;
    }

    public String getName() {
        return this.fProject.getElementName();
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public IJavaProject getJavaProject() {
        return this.fProject;
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        ArrayList<Object> containers = new ArrayList<Object>();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        if (this.fProject.getProject().isOpen()) {
            IClasspathEntry[] entries = this.fProject.getRawClasspath();
            int i = 0;
            while (i < entries.length) {
                IClasspathEntry entry = entries[i];
                switch (entry.getEntryKind()) {
                    case 3: {
                        IPath path = entry.getPath();
                        IResource resource = root.findMember(path);
                        if (!(resource instanceof IContainer)) break;
                        containers.add(new FolderSourceContainer((IContainer)resource, false));
                    }
                }
                ++i;
            }
        }
        this.fSourceFolders = containers.toArray(new ISourceContainer[containers.size()]);
        ProjectSourceContainer theProject = new ProjectSourceContainer(this.fProject.getProject(), false);
        this.fOthers = new ISourceContainer[]{theProject};
        containers.add(theProject);
        return containers.toArray(new ISourceContainer[containers.size()]);
    }

    public boolean equals(Object obj) {
        if (obj instanceof JavaProjectSourceContainer) {
            return this.getJavaProject().equals(((JavaProjectSourceContainer)((Object)obj)).getJavaProject());
        }
        return super.equals(obj);
    }

    public int hashCode() {
        return this.getJavaProject().hashCode();
    }

    public Object[] findSourceElements(String name) throws CoreException {
        this.getSourceContainers();
        if (this.isJavaLikeFileName(name)) {
            Object[] objects = this.findSourceElements(name, this.fSourceFolders);
            ArrayList<Object> filtered = null;
            int i = 0;
            while (i < objects.length) {
                Object object = objects[i];
                if (object instanceof IResource && !this.getJavaProject().isOnClasspath((IResource)object)) {
                    if (filtered == null) {
                        filtered = new ArrayList<Object>(objects.length);
                        int j = 0;
                        while (j < objects.length) {
                            filtered.add(objects[j]);
                            ++j;
                        }
                    }
                    filtered.remove(object);
                }
                ++i;
            }
            if (filtered == null) {
                return objects;
            }
            return filtered.toArray();
        }
        return this.findSourceElements(name, this.fOthers);
    }

    public void dispose() {
        this.fSourceFolders = null;
        this.fOthers = null;
        super.dispose();
    }

    private boolean isJavaLikeFileName(String name) {
        int i = 0;
        while (i < fgJavaExtensions.length) {
            String ext = fgJavaExtensions[i];
            if (name.endsWith(ext)) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

