/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.RemoteResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.mapping;

import java.util.HashSet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.RemoteResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;

public class ModelProviderResourceMapping
extends ResourceMapping {
    ModelProvider provider;

    public ModelProviderResourceMapping(ModelProvider provider) {
        this.provider = provider;
    }

    public Object getModelObject() {
        return this.provider;
    }

    public String getModelProviderId() {
        return "org.eclipse.core.resources.modelProvider";
    }

    public IProject[] getProjects() {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        try {
            IResource[] resources = this.provider.getDescriptor().getMatchingResources((IResource[])projects);
            HashSet<IProject> result = new HashSet<IProject>();
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                if (resource.isAccessible()) {
                    result.add(resource.getProject());
                }
                ++i;
            }
            return result.toArray(new IProject[result.size()]);
        }
        catch (CoreException e) {
            TeamPlugin.log(e);
            return projects;
        }
    }

    public ResourceTraversal[] getTraversals(ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask(null, 100);
            ResourceMapping[] mappings = this.provider.getMappings(this.getProviderResources(context), context, Policy.subMonitorFor(monitor, 50));
            ResourceTraversal[] resourceTraversalArray = this.provider.getTraversals(mappings, context, Policy.subMonitorFor(monitor, 50));
            return resourceTraversalArray;
        }
        finally {
            monitor.done();
        }
    }

    private IResource[] getProviderResources(ResourceMappingContext context) {
        try {
            if (context instanceof RemoteResourceMappingContext) {
                RemoteResourceMappingContext rrmc = (RemoteResourceMappingContext)context;
                return this.provider.getDescriptor().getMatchingResources((IResource[])rrmc.getProjects());
            }
        }
        catch (CoreException e) {
            TeamPlugin.log(e);
        }
        return this.getProjects();
    }

    public boolean contains(ResourceMapping mapping) {
        return mapping.getModelProviderId().equals(this.getModelProviderId());
    }
}

