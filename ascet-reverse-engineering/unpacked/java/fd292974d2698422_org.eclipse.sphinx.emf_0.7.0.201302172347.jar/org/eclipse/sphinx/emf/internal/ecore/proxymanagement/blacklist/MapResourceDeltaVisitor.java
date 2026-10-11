/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.emf.ecore.resource.Resource$Factory$Registry
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist;

import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.emf.ecore.resource.Resource;

final class MapResourceDeltaVisitor
implements IResourceDeltaVisitor {
    public static final Set<String> REGISTERED_EXTENSIONS = Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().keySet();

    public boolean visit(IResourceDelta delta) throws CoreException {
        IResource resource = delta.getResource();
        if (!resource.isDerived()) {
            int type = resource.getType();
            int kind = delta.getKind();
            switch (type) {
                case 4: {
                    return this.handleProjectChange((IProject)resource, kind);
                }
                case 2: 
                case 8: {
                    return true;
                }
                case 1: {
                    return this.handleFileChange((IFile)resource, kind);
                }
            }
        }
        return false;
    }

    private boolean handleFileChange(IFile file, int kind) {
        String fileExtension = file.getFileExtension();
        IProject project = file.getProject();
        if ((project == null || !"classpath".equals(fileExtension) && !"MANIFEST.MF".equals(file.getName())) && REGISTERED_EXTENSIONS.contains(fileExtension)) {
            if (project != null) {
                return false;
            }
            switch (kind) {
                case 1: 
                case 4: {
                    break;
                }
            }
        }
        return false;
    }

    private boolean handleProjectChange(IProject project, int kind) throws CoreException {
        if (project.isOpen()) {
            switch (kind) {
                case 4: {
                    return true;
                }
                case 1: {
                    return false;
                }
                case 2: {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}

