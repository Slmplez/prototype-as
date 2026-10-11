/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.internal.core.mapping;

import java.util.HashSet;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;
import org.eclipse.team.internal.core.subscribers.AbstractSynchronizationScope;

public abstract class AbstractResourceMappingScope
extends AbstractSynchronizationScope {
    public ResourceMapping getMapping(Object modelObject) {
        ResourceMapping[] mappings = this.getMappings();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            if (mapping.getModelObject().equals(modelObject)) {
                return mapping;
            }
            ++i;
        }
        return null;
    }

    public ResourceMapping[] getMappings(String id) {
        HashSet<ResourceMapping> result = new HashSet<ResourceMapping>();
        ResourceMapping[] mappings = this.getMappings();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            if (mapping.getModelProviderId().equals(id)) {
                result.add(mapping);
            }
            ++i;
        }
        return result.toArray(new ResourceMapping[result.size()]);
    }

    public ResourceTraversal[] getTraversals(String modelProviderId) {
        ResourceMapping[] mappings = this.getMappings(modelProviderId);
        CompoundResourceTraversal traversal = new CompoundResourceTraversal();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            ResourceTraversal[] traversals = this.getTraversals(mapping);
            if (traversals != null) {
                traversal.addTraversals(traversals);
            }
            ++i;
        }
        return traversal.asTraversals();
    }

    public ModelProvider[] getModelProviders() {
        HashSet<ModelProvider> result = new HashSet<ModelProvider>();
        ResourceMapping[] mappings = this.getMappings();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            ModelProvider modelProvider = mapping.getModelProvider();
            if (modelProvider != null) {
                result.add(modelProvider);
            }
            ++i;
        }
        return result.toArray(new ModelProvider[result.size()]);
    }
}

