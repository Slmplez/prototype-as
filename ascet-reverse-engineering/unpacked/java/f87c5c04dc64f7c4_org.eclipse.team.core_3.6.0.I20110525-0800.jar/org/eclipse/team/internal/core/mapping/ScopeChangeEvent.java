/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.internal.core.mapping;

import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;

public class ScopeChangeEvent {
    private final ISynchronizationScope scope;
    private final ResourceMapping[] originalMappings;
    private final ResourceTraversal[] originalTraversals;
    private boolean expanded;
    private boolean contracted;

    public ScopeChangeEvent(ISynchronizationScope scope) {
        this.scope = scope;
        this.originalMappings = scope.getMappings();
        this.originalTraversals = scope.getTraversals();
    }

    public boolean hasAdditionalMappings() {
        return this.scope.getMappings().length > this.originalMappings.length;
    }

    public ResourceTraversal[] getUncoveredTraversals(CompoundResourceTraversal traversal) {
        CompoundResourceTraversal originals = new CompoundResourceTraversal();
        originals.addTraversals(this.originalTraversals);
        return originals.getUncoveredTraversals(traversal);
    }

    public void setExpanded(boolean expanded) {
        this.expanded = expanded;
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void setContracted(boolean contracted) {
        this.contracted = contracted;
    }

    public boolean isContracted() {
        return this.contracted;
    }

    public ResourceMapping[] getChangedMappings() {
        ResourceMapping[] changedMappings;
        ResourceMapping[] currentMappings = this.scope.getMappings();
        if (currentMappings.length > this.originalMappings.length) {
            ResourceMapping mapping;
            HashSet<ResourceMapping> originalSet = new HashSet<ResourceMapping>();
            ArrayList<ResourceMapping> result = new ArrayList<ResourceMapping>();
            int i = 0;
            while (i < this.originalMappings.length) {
                mapping = this.originalMappings[i];
                originalSet.add(mapping);
                ++i;
            }
            i = 0;
            while (i < currentMappings.length) {
                mapping = currentMappings[i];
                if (!originalSet.contains(mapping)) {
                    result.add(mapping);
                }
                ++i;
            }
            changedMappings = result.toArray(new ResourceMapping[result.size()]);
        } else if (this.isContracted()) {
            ResourceMapping mapping;
            HashSet<ResourceMapping> finalSet = new HashSet<ResourceMapping>();
            ArrayList<ResourceMapping> result = new ArrayList<ResourceMapping>();
            int i = 0;
            while (i < currentMappings.length) {
                mapping = currentMappings[i];
                finalSet.add(mapping);
                ++i;
            }
            i = 0;
            while (i < this.originalMappings.length) {
                mapping = this.originalMappings[i];
                if (!finalSet.contains(mapping)) {
                    result.add(mapping);
                }
                ++i;
            }
            changedMappings = result.toArray(new ResourceMapping[result.size()]);
        } else {
            changedMappings = new ResourceMapping[]{};
        }
        return changedMappings;
    }

    public ResourceTraversal[] getChangedTraversals(CompoundResourceTraversal refreshTraversals) {
        ResourceTraversal[] changesTraversals;
        if (this.isExpanded()) {
            changesTraversals = this.getUncoveredTraversals(refreshTraversals);
        } else if (this.isContracted()) {
            CompoundResourceTraversal finalTraversals = new CompoundResourceTraversal();
            finalTraversals.addTraversals(this.scope.getTraversals());
            changesTraversals = finalTraversals.getUncoveredTraversals(this.originalTraversals);
        } else {
            changesTraversals = new ResourceTraversal[]{};
        }
        return changesTraversals;
    }

    public boolean shouldFireChange() {
        return this.isExpanded() || this.isContracted() || this.hasAdditionalMappings();
    }
}

