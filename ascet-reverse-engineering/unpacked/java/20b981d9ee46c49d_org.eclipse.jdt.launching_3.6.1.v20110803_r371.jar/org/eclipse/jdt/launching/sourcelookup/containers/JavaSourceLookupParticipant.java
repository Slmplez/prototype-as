/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.sourcelookup.AbstractSourceLookupParticipant
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupDirector
 *  org.eclipse.debug.core.sourcelookup.containers.ArchiveSourceContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.internal.debug.core.JavaDebugUtils
 */
package org.eclipse.jdt.launching.sourcelookup.containers;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.sourcelookup.AbstractSourceLookupParticipant;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.containers.ArchiveSourceContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.debug.core.JavaDebugUtils;
import org.eclipse.jdt.launching.sourcelookup.containers.PackageFragmentRootSourceContainer;

public class JavaSourceLookupParticipant
extends AbstractSourceLookupParticipant {
    private Map fDelegateContainers;

    public String getSourceName(Object object) throws CoreException {
        return JavaDebugUtils.getSourceName((Object)object);
    }

    public void dispose() {
        Iterator iterator = this.fDelegateContainers.values().iterator();
        while (iterator.hasNext()) {
            ISourceContainer container = (ISourceContainer)iterator.next();
            container.dispose();
        }
        this.fDelegateContainers = null;
        super.dispose();
    }

    protected ISourceContainer getDelegateContainer(ISourceContainer container) {
        ISourceContainer delegate = (ISourceContainer)this.fDelegateContainers.get(container);
        if (delegate == null) {
            return container;
        }
        return delegate;
    }

    public void init(ISourceLookupDirector director) {
        super.init(director);
        this.fDelegateContainers = new HashMap();
    }

    public void sourceContainersChanged(ISourceLookupDirector director) {
        this.fDelegateContainers.clear();
        ISourceContainer[] containers = director.getSourceContainers();
        int i = 0;
        while (i < containers.length) {
            IFile file;
            IProject project;
            IJavaProject javaProject;
            ISourceContainer container = containers[i];
            if (container.getType().getId().equals(ArchiveSourceContainer.TYPE_ID) && (javaProject = JavaCore.create((IProject)(project = (file = ((ArchiveSourceContainer)container).getFile()).getProject()))).exists()) {
                try {
                    IPackageFragmentRoot[] roots = javaProject.getPackageFragmentRoots();
                    int j = 0;
                    while (j < roots.length) {
                        IPackageFragmentRoot root = roots[j];
                        if (file.equals((Object)root.getUnderlyingResource())) {
                            this.fDelegateContainers.put(container, new PackageFragmentRootSourceContainer(root));
                        } else {
                            IPath path = root.getSourceAttachmentPath();
                            if (path != null && file.getFullPath().equals((Object)path)) {
                                this.fDelegateContainers.put(container, new PackageFragmentRootSourceContainer(root));
                            }
                        }
                        ++j;
                    }
                }
                catch (JavaModelException javaModelException) {}
            }
            ++i;
        }
    }
}

