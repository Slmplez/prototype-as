/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScopeChangeListener;

public interface ISynchronizationScope {
    public IProject[] getProjects();

    public ResourceMappingContext getContext();

    public ResourceMapping[] getInputMappings();

    public ISynchronizationScope asInputScope();

    public ResourceMapping[] getMappings();

    public ResourceTraversal[] getTraversals();

    public IResource[] getRoots();

    public boolean contains(IResource var1);

    public void addScopeChangeListener(ISynchronizationScopeChangeListener var1);

    public void removeScopeChangeListener(ISynchronizationScopeChangeListener var1);

    public ResourceTraversal[] getTraversals(ResourceMapping var1);

    public boolean hasAdditionalMappings();

    public boolean hasAdditonalResources();

    public ModelProvider[] getModelProviders();

    public ResourceMapping[] getMappings(String var1);

    public ResourceTraversal[] getTraversals(String var1);

    public ResourceMapping getMapping(Object var1);

    public void refresh(ResourceMapping[] var1);
}

