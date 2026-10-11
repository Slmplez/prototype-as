/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.core.resources.mapping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;

public final class CompositeResourceMapping
extends ResourceMapping {
    private final ResourceMapping[] mappings;
    private final Object modelObject;
    private IProject[] projects;
    private String providerId;

    public CompositeResourceMapping(String providerId, Object modelObject, ResourceMapping[] mappings) {
        this.modelObject = modelObject;
        this.mappings = mappings;
        this.providerId = providerId;
    }

    public boolean contains(ResourceMapping mapping) {
        int i = 0;
        while (i < this.mappings.length) {
            ResourceMapping childMapping = this.mappings[i];
            if (childMapping.contains(mapping)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public ResourceMapping[] getMappings() {
        return this.mappings;
    }

    public Object getModelObject() {
        return this.modelObject;
    }

    public String getModelProviderId() {
        return this.providerId;
    }

    public IProject[] getProjects() {
        if (this.projects == null) {
            HashSet<IProject> result = new HashSet<IProject>();
            int i = 0;
            while (i < this.mappings.length) {
                ResourceMapping mapping = this.mappings[i];
                result.addAll(Arrays.asList(mapping.getProjects()));
                ++i;
            }
            this.projects = result.toArray(new IProject[result.size()]);
        }
        return this.projects;
    }

    public ResourceTraversal[] getTraversals(ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        try {
            monitor.beginTask("", 100 * this.mappings.length);
            ArrayList<ResourceTraversal> result = new ArrayList<ResourceTraversal>();
            int i = 0;
            while (i < this.mappings.length) {
                ResourceMapping mapping = this.mappings[i];
                result.addAll(Arrays.asList(mapping.getTraversals(context, (IProgressMonitor)new SubProgressMonitor(monitor, 100))));
                ++i;
            }
            ResourceTraversal[] resourceTraversalArray = result.toArray(new ResourceTraversal[result.size()]);
            return resourceTraversalArray;
        }
        finally {
            monitor.done();
        }
    }
}

