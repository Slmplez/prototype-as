/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.core.resources.mapping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.internal.resources.mapping.ModelProviderManager;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.mapping.IModelProviderDescriptor;
import org.eclipse.core.resources.mapping.ModelStatus;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;

public abstract class ModelProvider
extends PlatformObject {
    public static final String RESOURCE_MODEL_PROVIDER_ID = "org.eclipse.core.resources.modelProvider";
    private IModelProviderDescriptor descriptor;

    public static IModelProviderDescriptor getModelProviderDescriptor(String id) {
        IModelProviderDescriptor[] descs = ModelProviderManager.getDefault().getDescriptors();
        int i = 0;
        while (i < descs.length) {
            IModelProviderDescriptor descriptor = descs[i];
            if (descriptor.getId().equals(id)) {
                return descriptor;
            }
            ++i;
        }
        return null;
    }

    public static IModelProviderDescriptor[] getModelProviderDescriptors() {
        return ModelProviderManager.getDefault().getDescriptors();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ModelProvider) {
            ModelProvider other = (ModelProvider)((Object)obj);
            return other.getDescriptor().getId().equals(this.getDescriptor().getId());
        }
        return super.equals(obj);
    }

    public final IModelProviderDescriptor getDescriptor() {
        return this.descriptor;
    }

    public final String getId() {
        return this.descriptor.getId();
    }

    public ResourceMapping[] getMappings(IResource resource, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        return new ResourceMapping[0];
    }

    public ResourceMapping[] getMappings(IResource[] resources, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        HashSet<ResourceMapping> mappings = new HashSet<ResourceMapping>();
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            ResourceMapping[] resourceMappings = this.getMappings(resource, context, monitor);
            if (resourceMappings.length > 0) {
                mappings.addAll(Arrays.asList(resourceMappings));
            }
            ++i;
        }
        return mappings.toArray(new ResourceMapping[mappings.size()]);
    }

    public ResourceMapping[] getMappings(ResourceTraversal[] traversals, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        HashSet<ResourceMapping> result = new HashSet<ResourceMapping>();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            ResourceMapping[] mappings = this.getMappings(traversal.getResources(), context, monitor);
            int j = 0;
            while (j < mappings.length) {
                result.add(mappings[j]);
                ++j;
            }
            ++i;
        }
        return result.toArray(new ResourceMapping[result.size()]);
    }

    public ResourceTraversal[] getTraversals(ResourceMapping[] mappings, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask("", 100 * mappings.length);
            ArrayList<ResourceTraversal> traversals = new ArrayList<ResourceTraversal>();
            int i = 0;
            while (i < mappings.length) {
                ResourceMapping mapping = mappings[i];
                traversals.addAll(Arrays.asList(mapping.getTraversals(context, (IProgressMonitor)new SubProgressMonitor(monitor, 100))));
                ++i;
            }
            ResourceTraversal[] resourceTraversalArray = traversals.toArray(new ResourceTraversal[traversals.size()]);
            return resourceTraversalArray;
        }
        finally {
            monitor.done();
        }
    }

    public int hashCode() {
        return this.getDescriptor().getId().hashCode();
    }

    public final void init(IModelProviderDescriptor desc) {
        if (this.descriptor != null) {
            return;
        }
        this.descriptor = desc;
        this.initialize();
    }

    protected void initialize() {
    }

    public IStatus validateChange(IResourceDelta delta, IProgressMonitor monitor) {
        return new ModelStatus(0, "org.eclipse.core.resources", this.descriptor.getId(), Status.OK_STATUS.getMessage());
    }
}

