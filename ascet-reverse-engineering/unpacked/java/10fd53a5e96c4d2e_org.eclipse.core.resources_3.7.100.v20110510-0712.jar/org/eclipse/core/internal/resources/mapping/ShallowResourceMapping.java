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
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.IProgressMonitor;

public class ShallowResourceMapping
extends ResourceMapping {
    private final ShallowContainer container;

    public ShallowResourceMapping(ShallowContainer container) {
        this.container = container;
    }

    public Object getModelObject() {
        return this.container;
    }

    public String getModelProviderId() {
        return "org.eclipse.core.resources.modelProvider";
    }

    public IProject[] getProjects() {
        return new IProject[]{this.container.getResource().getProject()};
    }

    public ResourceTraversal[] getTraversals(ResourceMappingContext context, IProgressMonitor monitor) {
        return new ResourceTraversal[]{new ResourceTraversal(new IResource[]{this.container.getResource()}, 1, 0)};
    }

    public boolean contains(ResourceMapping mapping) {
        if (mapping.getModelProviderId().equals(this.getModelProviderId())) {
            Object object = mapping.getModelObject();
            IContainer resource = this.container.getResource();
            if (object instanceof ShallowContainer) {
                ShallowContainer sc = (ShallowContainer)((Object)object);
                return sc.getResource().equals(resource);
            }
            if (object instanceof IResource) {
                IResource other = (IResource)object;
                return other.getType() == 1 && resource.getFullPath().equals((Object)other.getFullPath().removeLastSegments(1));
            }
        }
        return false;
    }
}

