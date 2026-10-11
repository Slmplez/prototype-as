/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.IModelProviderDescriptor
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.team.core.mapping.provider;

import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.IModelProviderDescriptor;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;
import org.eclipse.team.internal.core.mapping.ResourceMappingScope;
import org.eclipse.team.internal.core.mapping.ScopeChangeEvent;
import org.eclipse.team.internal.core.mapping.ScopeManagerEventHandler;

public class SynchronizationScopeManager
extends PlatformObject
implements ISynchronizationScopeManager {
    private static final int MAX_ITERATION = 10;
    private final ResourceMappingContext context;
    private final boolean consultModels;
    private ISynchronizationScope scope;
    private boolean initialized;
    private ScopeManagerEventHandler handler;
    private final String name;

    public static ResourceMapping[] getMappingsFromProviders(ResourceTraversal[] traversals, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        HashSet<ResourceMapping> result = new HashSet<ResourceMapping>();
        IModelProviderDescriptor[] descriptors = ModelProvider.getModelProviderDescriptors();
        int i = 0;
        while (i < descriptors.length) {
            IModelProviderDescriptor descriptor = descriptors[i];
            ResourceMapping[] mappings = SynchronizationScopeManager.getMappings(descriptor, traversals, context, monitor);
            result.addAll(Arrays.asList(mappings));
            Policy.checkCanceled(monitor);
            ++i;
        }
        return result.toArray(new ResourceMapping[result.size()]);
    }

    private static ResourceMapping[] getMappings(IModelProviderDescriptor descriptor, ResourceTraversal[] traversals, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] matchingTraversals = descriptor.getMatchingTraversals(traversals);
        return descriptor.getModelProvider().getMappings(matchingTraversals, context, monitor);
    }

    public SynchronizationScopeManager(String name, ResourceMapping[] inputMappings, ResourceMappingContext resourceMappingContext, boolean consultModels) {
        this.name = name;
        this.context = resourceMappingContext;
        this.consultModels = consultModels;
        this.scope = this.createScope(inputMappings);
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public ISchedulingRule getSchedulingRule() {
        HashSet<IProject> projects = new HashSet<IProject>();
        ResourceMapping[] mappings = this.scope.getInputMappings();
        int i = 0;
        while (i < mappings.length) {
            IResource resource;
            ResourceMapping mapping = mappings[i];
            Object modelObject = mapping.getModelObject();
            if (modelObject instanceof IResource) {
                resource = (IResource)modelObject;
                if (resource.getType() == 8) {
                    return ResourcesPlugin.getWorkspace().getRoot();
                }
            } else {
                return ResourcesPlugin.getWorkspace().getRoot();
            }
            projects.add(resource.getProject());
            ++i;
        }
        return MultiRule.combine((ISchedulingRule[])projects.toArray(new IProject[projects.size()]));
    }

    public void initialize(IProgressMonitor monitor) throws CoreException {
        ResourcesPlugin.getWorkspace().run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                SynchronizationScopeManager.this.internalPrepareContext(monitor);
            }
        }, this.getSchedulingRule(), 0, monitor);
    }

    public ResourceTraversal[] refresh(final ResourceMapping[] mappings, IProgressMonitor monitor) throws CoreException {
        final ResourceTraversal[][] traversals = new ResourceTraversal[][]{new ResourceTraversal[0]};
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        workspace.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                traversals[0] = SynchronizationScopeManager.this.internalRefreshScope(mappings, true, monitor);
            }
        }, this.getSchedulingRule(), 0, monitor);
        return traversals[0];
    }

    private void internalPrepareContext(IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] newTraversals;
        if (this.initialized) {
            return;
        }
        monitor.beginTask(null, -1);
        ((ResourceMappingScope)this.scope).reset();
        ResourceMapping[] targetMappings = this.scope.getInputMappings();
        boolean firstTime = true;
        boolean hasAdditionalResources = false;
        int count = 0;
        do {
            Policy.checkCanceled(monitor);
            newTraversals = this.addMappingsToScope(targetMappings, Policy.subMonitorFor(monitor, -1));
            if (newTraversals.length <= 0 || !this.consultModels) continue;
            ResourceTraversal[] adjusted = this.adjustInputTraversals(newTraversals);
            targetMappings = SynchronizationScopeManager.getMappingsFromProviders(adjusted, this.context, Policy.subMonitorFor(monitor, -1));
            if (firstTime) {
                firstTime = false;
                continue;
            }
            if (hasAdditionalResources) continue;
            hasAdditionalResources = newTraversals.length != 0;
        } while (this.consultModels & newTraversals.length != 0 && count++ < 10);
        this.setHasAdditionalMappings(this.scope, this.consultModels && this.internalHasAdditionalMappings());
        this.setHasAdditionalResources(this.consultModels && hasAdditionalResources);
        monitor.done();
        this.initialized = true;
        this.fireMappingsChangedEvent(this.scope.getMappings(), this.scope.getTraversals());
    }

    private ResourceTraversal[] internalRefreshScope(ResourceMapping[] mappings, boolean checkForContraction, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask(null, 100 * mappings.length + 100);
        ScopeChangeEvent change = new ScopeChangeEvent(this.scope);
        CompoundResourceTraversal refreshTraversals = new CompoundResourceTraversal();
        CompoundResourceTraversal removedTraversals = new CompoundResourceTraversal();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            ResourceTraversal[] previousTraversals = this.scope.getTraversals(mapping);
            ResourceTraversal[] mappingTraversals = mapping.getTraversals(this.context, Policy.subMonitorFor(monitor, 100));
            refreshTraversals.addTraversals(mappingTraversals);
            ResourceTraversal[] uncovered = this.getUncoveredTraversals(mappingTraversals);
            if (checkForContraction && previousTraversals != null && previousTraversals.length > 0) {
                ResourceTraversal[] removed = this.getUncoveredTraversals(mappingTraversals, previousTraversals);
                removedTraversals.addTraversals(removed);
            }
            if (uncovered.length > 0) {
                change.setExpanded(true);
                ResourceTraversal[] result = this.performExpandScope(mapping, mappingTraversals, uncovered, monitor);
                refreshTraversals.addTraversals(result);
            }
            ++i;
        }
        if (checkForContraction && removedTraversals.getRoots().length > 0) {
            ((ResourceMappingScope)this.scope).reset();
            this.internalRefreshScope(this.scope.getInputMappings(), false, monitor);
            change.setContracted(true);
        }
        if (change.shouldFireChange()) {
            this.fireMappingsChangedEvent(change.getChangedMappings(), change.getChangedTraversals(refreshTraversals));
        }
        monitor.done();
        return refreshTraversals.asTraversals();
    }

    private ResourceTraversal[] getUncoveredTraversals(ResourceTraversal[] newTraversals, ResourceTraversal[] previousTraversals) {
        CompoundResourceTraversal t = new CompoundResourceTraversal();
        t.addTraversals(newTraversals);
        return t.getUncoveredTraversals(previousTraversals);
    }

    private ResourceTraversal[] performExpandScope(ResourceMapping mapping, ResourceTraversal[] mappingTraversals, ResourceTraversal[] uncovered, IProgressMonitor monitor) throws CoreException {
        ResourceMapping ancestor = this.findAncestor(mapping);
        if (ancestor == null) {
            uncovered = this.addMappingToScope(mapping, mappingTraversals);
            this.addResourcesToScope(uncovered, monitor);
            return mappingTraversals;
        }
        ResourceTraversal[] ancestorTraversals = ancestor.getTraversals(this.context, Policy.subMonitorFor(monitor, 100));
        uncovered = this.addMappingToScope(ancestor, ancestorTraversals);
        this.addResourcesToScope(uncovered, monitor);
        return ancestorTraversals;
    }

    private ResourceMapping findAncestor(ResourceMapping mapping) {
        ResourceMapping[] mappings = this.scope.getMappings(mapping.getModelProviderId());
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping m = mappings[i];
            if (m.contains(mapping)) {
                return m;
            }
            ++i;
        }
        return null;
    }

    private ResourceTraversal[] getUncoveredTraversals(ResourceTraversal[] traversals) {
        return ((ResourceMappingScope)this.scope).getCompoundTraversal().getUncoveredTraversals(traversals);
    }

    private void addResourcesToScope(ResourceTraversal[] newTraversals, IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] adjusted;
        ResourceMapping[] targetMappings;
        if (!this.consultModels) {
            return;
        }
        int count = 0;
        while ((newTraversals = this.addMappingsToScope(targetMappings = SynchronizationScopeManager.getMappingsFromProviders(adjusted = this.adjustInputTraversals(newTraversals), this.context, Policy.subMonitorFor(monitor, -1)), Policy.subMonitorFor(monitor, -1))).length != 0 && count++ < 10) {
        }
        if (!this.scope.hasAdditionalMappings()) {
            this.setHasAdditionalMappings(this.scope, this.internalHasAdditionalMappings());
        }
        if (!this.scope.hasAdditonalResources()) {
            this.setHasAdditionalResources(true);
        }
    }

    private void fireMappingsChangedEvent(ResourceMapping[] newMappings, ResourceTraversal[] newTraversals) {
        ((ResourceMappingScope)this.scope).fireTraversalsChangedEvent(newTraversals, newMappings);
    }

    protected final void setHasAdditionalMappings(ISynchronizationScope scope, boolean hasAdditionalMappings) {
        ((ResourceMappingScope)scope).setHasAdditionalMappings(hasAdditionalMappings);
    }

    protected final void setHasAdditionalResources(boolean hasAdditionalResources) {
        ((ResourceMappingScope)this.scope).setHasAdditionalResources(hasAdditionalResources);
    }

    protected final ISynchronizationScope createScope(ResourceMapping[] inputMappings) {
        return new ResourceMappingScope(inputMappings, this);
    }

    protected ResourceTraversal[] adjustInputTraversals(ResourceTraversal[] traversals) {
        return traversals;
    }

    private ResourceTraversal[] addMappingsToScope(ResourceMapping[] targetMappings, IProgressMonitor monitor) throws CoreException {
        CompoundResourceTraversal result = new CompoundResourceTraversal();
        ResourceMappingContext context = this.context;
        int i = 0;
        while (i < targetMappings.length) {
            ResourceMapping mapping = targetMappings[i];
            if (this.scope.getTraversals(mapping) == null) {
                ResourceTraversal[] traversals = mapping.getTraversals(context, Policy.subMonitorFor(monitor, 100));
                ResourceTraversal[] newOnes = this.addMappingToScope(mapping, traversals);
                result.addTraversals(newOnes);
            }
            Policy.checkCanceled(monitor);
            ++i;
        }
        return result.asTraversals();
    }

    protected final ResourceTraversal[] addMappingToScope(ResourceMapping mapping, ResourceTraversal[] traversals) {
        return ((ResourceMappingScope)this.scope).addMapping(mapping, traversals);
    }

    private boolean internalHasAdditionalMappings() {
        ResourceMapping[] mappings;
        ResourceMapping[] inputMappings = this.scope.getInputMappings();
        if (inputMappings.length == (mappings = this.scope.getMappings()).length) {
            ResourceMapping mapping;
            HashSet<ResourceMapping> testSet = new HashSet<ResourceMapping>();
            int i = 0;
            while (i < mappings.length) {
                mapping = mappings[i];
                testSet.add(mapping);
                ++i;
            }
            i = 0;
            while (i < inputMappings.length) {
                mapping = inputMappings[i];
                if (!testSet.contains(mapping)) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        return true;
    }

    public ResourceMappingContext getContext() {
        return this.context;
    }

    public ISynchronizationScope getScope() {
        return this.scope;
    }

    public void dispose() {
        if (this.handler != null) {
            this.handler.shutdown();
        }
    }

    public void refresh(ResourceMapping[] mappings) {
        this.getHandler().refresh(mappings);
    }

    private synchronized ScopeManagerEventHandler getHandler() {
        if (this.handler == null) {
            this.handler = new ScopeManagerEventHandler(this);
        }
        return this.handler;
    }

    public String getName() {
        return this.name;
    }
}

