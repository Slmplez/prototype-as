/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.resources.mapping;

import org.eclipse.core.internal.resources.mapping.ShallowContainer;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.IProgressMonitor;

public class SimpleResourceMapping
extends ResourceMapping {
    private final IResource resource;

    public SimpleResourceMapping(IResource resource) {
        this.resource = resource;
    }

    public boolean contains(ResourceMapping mapping) {
        if (mapping.getModelProviderId().equals(this.getModelProviderId())) {
            Object object = mapping.getModelObject();
            if (object instanceof IResource) {
                IResource other = (IResource)object;
                return this.resource.getFullPath().isPrefixOf(other.getFullPath());
            }
            if (object instanceof ShallowContainer) {
                ShallowContainer sc = (ShallowContainer)((Object)object);
                IContainer other = sc.getResource();
                return this.resource.getFullPath().isPrefixOf(other.getFullPath());
            }
        }
        return false;
    }

    public Object getModelObject() {
        return this.resource;
    }

    public String getModelProviderId() {
        return "org.eclipse.core.resources.modelProvider";
    }

    public IProject[] getProjects() {
        if (this.resource.getType() == 8) {
            return ((IWorkspaceRoot)this.resource).getProjects();
        }
        return new IProject[]{this.resource.getProject()};
    }

    public ResourceTraversal[] getTraversals(ResourceMappingContext context, IProgressMonitor monitor) {
        if (this.resource.getType() == 8) {
            return new ResourceTraversal[]{new ResourceTraversal(((IWorkspaceRoot)this.resource).getProjects(), 2, 0)};
        }
        return new ResourceTraversal[]{new ResourceTraversal(new IResource[]{this.resource}, 2, 0)};
    }
}

