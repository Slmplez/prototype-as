/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.RemoteResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.internal.core.mapping;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.RemoteResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.provider.SynchronizationScopeManager;
import org.eclipse.team.internal.core.mapping.AbstractResourceMappingScope;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;
import org.eclipse.team.internal.core.mapping.ResourceMappingInputScope;

public class ResourceMappingScope
extends AbstractResourceMappingScope {
    private ResourceMapping[] inputMappings;
    private final Map mappingsToTraversals = Collections.synchronizedMap(new HashMap());
    private boolean hasAdditionalMappings;
    private boolean hasAdditionalResources;
    private final CompoundResourceTraversal compoundTraversal = new CompoundResourceTraversal();
    private final SynchronizationScopeManager manager;

    public ResourceMappingScope(ResourceMapping[] selectedMappings, SynchronizationScopeManager manager) {
        this.inputMappings = selectedMappings;
        this.manager = manager;
    }

    public ResourceTraversal[] addMapping(ResourceMapping mapping, ResourceTraversal[] traversals) {
        ResourceTraversal[] newTraversals = this.compoundTraversal.getUncoveredTraversals(traversals);
        this.mappingsToTraversals.put(mapping, traversals);
        this.compoundTraversal.addTraversals(traversals);
        return newTraversals;
    }

    public ResourceMapping[] getInputMappings() {
        return this.inputMappings;
    }

    public ResourceMapping[] getMappings() {
        if (this.mappingsToTraversals.isEmpty()) {
            return this.inputMappings;
        }
        return this.mappingsToTraversals.keySet().toArray(new ResourceMapping[this.mappingsToTraversals.size()]);
    }

    public ResourceTraversal[] getTraversals() {
        return this.compoundTraversal.asTraversals();
    }

    public ResourceTraversal[] getTraversals(ResourceMapping mapping) {
        return (ResourceTraversal[])this.mappingsToTraversals.get(mapping);
    }

    public boolean hasAdditionalMappings() {
        return this.hasAdditionalMappings;
    }

    public void setHasAdditionalMappings(boolean hasAdditionalMappings) {
        this.hasAdditionalMappings = hasAdditionalMappings;
    }

    public void setHasAdditionalResources(boolean hasAdditionalResources) {
        this.hasAdditionalResources = hasAdditionalResources;
    }

    public boolean hasAdditonalResources() {
        return this.hasAdditionalResources;
    }

    public CompoundResourceTraversal getCompoundTraversal() {
        return this.compoundTraversal;
    }

    public ISynchronizationScope asInputScope() {
        return new ResourceMappingInputScope(this);
    }

    public IProject[] getProjects() {
        ResourceMappingContext context = this.getContext();
        if (context instanceof RemoteResourceMappingContext) {
            RemoteResourceMappingContext rrmc = (RemoteResourceMappingContext)context;
            return rrmc.getProjects();
        }
        return ResourcesPlugin.getWorkspace().getRoot().getProjects();
    }

    public ResourceMappingContext getContext() {
        return this.manager.getContext();
    }

    public void refresh(ResourceMapping[] mappings) {
        this.manager.refresh(mappings);
    }

    public void reset() {
        this.mappingsToTraversals.clear();
        this.compoundTraversal.clear();
        this.hasAdditionalMappings = false;
        this.hasAdditionalResources = false;
    }
}

