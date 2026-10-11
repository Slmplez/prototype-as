/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.internal.core.mapping.AbstractResourceMappingScope;

public class RootResourceSynchronizationScope
extends AbstractResourceMappingScope {
    private IResource[] roots;
    static /* synthetic */ Class class$0;

    public RootResourceSynchronizationScope(IResource[] roots) {
        this.roots = roots;
    }

    public ResourceTraversal[] getTraversals() {
        return new ResourceTraversal[]{new ResourceTraversal(this.roots, 2, 0)};
    }

    public void setRoots(IResource[] roots) {
        this.roots = roots;
        this.fireTraversalsChangedEvent(this.getTraversals(), this.getMappings());
    }

    public ResourceMapping[] getInputMappings() {
        return this.getMappings();
    }

    public ISynchronizationScope asInputScope() {
        return this;
    }

    public ResourceMapping[] getMappings() {
        ArrayList<Object> result = new ArrayList<Object>();
        int i = 0;
        while (i < this.roots.length) {
            Object o;
            IResource resource = this.roots[i];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.core.resources.mapping.ResourceMapping");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((o = resource.getAdapter((Class)clazz)) instanceof ResourceMapping) {
                result.add(o);
            }
            ++i;
        }
        return result.toArray(new ResourceMapping[result.size()]);
    }

    public ResourceTraversal[] getTraversals(ResourceMapping mapping) {
        Object object = mapping.getModelObject();
        if (object instanceof IResource) {
            IResource resource = (IResource)object;
            return new ResourceTraversal[]{new ResourceTraversal(new IResource[]{resource}, 2, 0)};
        }
        return null;
    }

    public boolean hasAdditionalMappings() {
        return false;
    }

    public boolean hasAdditonalResources() {
        return false;
    }

    public IProject[] getProjects() {
        return ResourcesPlugin.getWorkspace().getRoot().getProjects();
    }

    public ResourceMappingContext getContext() {
        return ResourceMappingContext.LOCAL_CONTEXT;
    }

    public void refresh(ResourceMapping[] mappings) {
    }
}

