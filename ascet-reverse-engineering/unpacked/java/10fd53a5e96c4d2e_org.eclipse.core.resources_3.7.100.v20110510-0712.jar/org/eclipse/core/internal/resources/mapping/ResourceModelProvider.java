/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.resources.mapping;

import java.util.HashSet;
import org.eclipse.core.internal.resources.mapping.ShallowContainer;
import org.eclipse.core.internal.resources.mapping.ShallowResourceMapping;
import org.eclipse.core.internal.resources.mapping.SimpleResourceMapping;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public final class ResourceModelProvider
extends ModelProvider {
    public ResourceMapping[] getMappings(IResource resource, ResourceMappingContext context, IProgressMonitor monitor) {
        return new ResourceMapping[]{new SimpleResourceMapping(resource)};
    }

    public ResourceMapping[] getMappings(ResourceTraversal[] traversals, ResourceMappingContext context, IProgressMonitor monitor) throws CoreException {
        HashSet<Object> result = new HashSet<Object>();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            IResource[] resources = traversal.getResources();
            int n = traversal.getDepth();
            int j = 0;
            while (j < resources.length) {
                IResource resource = resources[j];
                switch (n) {
                    case 2: {
                        result.add(resource);
                        break;
                    }
                    case 1: {
                        if (resource.getType() == 1) {
                            result.add(resource);
                            break;
                        }
                        result.add((Object)new ShallowContainer((IContainer)resource));
                        break;
                    }
                    case 0: {
                        if (resource.getType() != 1) break;
                        result.add(resource);
                    }
                }
                ++j;
            }
            ++i;
        }
        ResourceMapping[] mappings = new ResourceMapping[result.size()];
        int i2 = 0;
        for (Object e : result) {
            mappings[i2++] = e instanceof IResource ? new SimpleResourceMapping((IResource)e) : new ShallowResourceMapping((ShallowContainer)((Object)e));
        }
        return mappings;
    }
}

