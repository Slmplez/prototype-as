/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.team.core.mapping;

import java.util.HashSet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.mapping.IMergeContext;
import org.eclipse.team.core.mapping.IResourceMappingMerger;
import org.eclipse.team.core.mapping.provider.MergeStatus;

public abstract class ResourceMappingMerger
implements IResourceMappingMerger {
    public IStatus validateMerge(IMergeContext mergeContext, IProgressMonitor monitor) {
        return Status.OK_STATUS;
    }

    protected abstract ModelProvider getModelProvider();

    public ISchedulingRule getMergeRule(IMergeContext context) {
        ResourceMapping[] mappings = context.getScope().getMappings(this.getModelProvider().getId());
        Object rule = null;
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            IProject[] mappingProjects = mapping.getProjects();
            int j = 0;
            while (j < mappingProjects.length) {
                IProject project = mappingProjects[j];
                rule = rule == null ? project : MultiRule.combine((ISchedulingRule)rule, (ISchedulingRule)project);
                ++j;
            }
            ++i;
        }
        return rule;
    }

    public IStatus merge(IMergeContext mergeContext, IProgressMonitor monitor) throws CoreException {
        IDiff[] deltas = this.getSetToMerge(mergeContext);
        IStatus status = mergeContext.merge(deltas, false, monitor);
        return this.covertFilesToMappings(status, mergeContext);
    }

    private IDiff[] getSetToMerge(IMergeContext mergeContext) {
        ResourceMapping[] mappings = mergeContext.getScope().getMappings(this.getModelProvider().getDescriptor().getId());
        HashSet<IDiff> result = new HashSet<IDiff>();
        int i = 0;
        while (i < mappings.length) {
            ResourceMapping mapping = mappings[i];
            ResourceTraversal[] traversals = mergeContext.getScope().getTraversals(mapping);
            IDiff[] deltas = mergeContext.getDiffTree().getDiffs(traversals);
            int j = 0;
            while (j < deltas.length) {
                IDiff delta = deltas[j];
                result.add(delta);
                ++j;
            }
            ++i;
        }
        return result.toArray(new IDiff[result.size()]);
    }

    private IStatus covertFilesToMappings(IStatus status, IMergeContext mergeContext) {
        if (status.getCode() == 1) {
            return new MergeStatus(status.getPlugin(), status.getMessage(), mergeContext.getScope().getMappings(this.getModelProvider().getDescriptor().getId()));
        }
        return status;
    }
}

