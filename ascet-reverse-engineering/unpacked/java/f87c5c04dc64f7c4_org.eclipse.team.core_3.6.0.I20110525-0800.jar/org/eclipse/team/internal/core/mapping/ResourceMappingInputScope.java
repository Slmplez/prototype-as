/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.internal.core.mapping;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.internal.core.mapping.AbstractResourceMappingScope;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;

public class ResourceMappingInputScope
extends AbstractResourceMappingScope {
    ISynchronizationScope wrappedScope;

    public ResourceMappingInputScope(ISynchronizationScope wrappedScope) {
        this.wrappedScope = wrappedScope;
    }

    public ResourceMapping[] getInputMappings() {
        return this.wrappedScope.getInputMappings();
    }

    public ResourceMapping[] getMappings() {
        return this.getInputMappings();
    }

    public ResourceTraversal[] getTraversals() {
        CompoundResourceTraversal result = new CompoundResourceTraversal();
        ResourceMapping[] mappings = this.getMappings();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            ResourceTraversal[] traversals = this.getTraversals(mapping);
            result.addTraversals(traversals);
            ++i;
        }
        return result.asTraversals();
    }

    public ResourceTraversal[] getTraversals(ResourceMapping mapping) {
        if (!this.contains(mapping)) {
            return null;
        }
        return this.wrappedScope.getTraversals(mapping);
    }

    private boolean contains(ResourceMapping mapping) {
        ResourceMapping[] mappings = this.getMappings();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping child = mappings[i];
            if (child.equals((Object)mapping)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean hasAdditionalMappings() {
        return false;
    }

    public boolean hasAdditonalResources() {
        return false;
    }

    public ISynchronizationScope asInputScope() {
        return this;
    }

    public IProject[] getProjects() {
        return this.wrappedScope.getProjects();
    }

    public ResourceMappingContext getContext() {
        return this.wrappedScope.getContext();
    }

    public void refresh(ResourceMapping[] mappings) {
        this.wrappedScope.refresh(mappings);
    }
}

