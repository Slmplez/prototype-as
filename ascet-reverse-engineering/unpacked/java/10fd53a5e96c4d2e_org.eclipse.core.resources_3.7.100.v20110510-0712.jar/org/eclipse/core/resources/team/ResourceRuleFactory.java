/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.core.resources.team;

import java.util.HashSet;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;

public class ResourceRuleFactory
implements IResourceRuleFactory {
    private final IWorkspace workspace = ResourcesPlugin.getWorkspace();

    protected ResourceRuleFactory() {
    }

    public final ISchedulingRule buildRule() {
        return this.workspace.getRoot();
    }

    public ISchedulingRule charsetRule(IResource resource) {
        if (resource.getType() == 8) {
            return null;
        }
        return resource.getProject();
    }

    public final ISchedulingRule derivedRule(IResource resource) {
        return null;
    }

    public ISchedulingRule copyRule(IResource source, IResource destination) {
        return this.parent(destination);
    }

    public ISchedulingRule createRule(IResource resource) {
        return this.parent(resource);
    }

    public ISchedulingRule deleteRule(IResource resource) {
        return this.parent(resource);
    }

    private boolean isReadOnly(IResource resource) {
        ResourceAttributes attributes = resource.getResourceAttributes();
        return attributes == null ? false : attributes.isReadOnly();
    }

    public final ISchedulingRule markerRule(IResource resource) {
        return null;
    }

    public ISchedulingRule modifyRule(IResource resource) {
        IPath path = resource.getFullPath();
        if (path.segmentCount() == 2 && path.segment(1).equals(".project")) {
            return this.parent(resource);
        }
        return resource;
    }

    public ISchedulingRule moveRule(IResource source, IResource destination) {
        return MultiRule.combine((ISchedulingRule)this.parent(source), (ISchedulingRule)this.parent(destination));
    }

    protected final ISchedulingRule parent(IResource resource) {
        switch (resource.getType()) {
            case 4: 
            case 8: {
                return resource;
            }
        }
        return resource.getParent();
    }

    public ISchedulingRule refreshRule(IResource resource) {
        return this.parent(resource);
    }

    public ISchedulingRule validateEditRule(IResource[] resources) {
        if (resources.length == 0) {
            return null;
        }
        if (resources.length == 1) {
            return this.isReadOnly(resources[0]) ? this.parent(resources[0]) : null;
        }
        HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
        int i = 0;
        while (i < resources.length) {
            if (this.isReadOnly(resources[i])) {
                rules.add(this.parent(resources[i]));
            }
            ++i;
        }
        if (rules.isEmpty()) {
            return null;
        }
        if (rules.size() == 1) {
            return (ISchedulingRule)rules.iterator().next();
        }
        ISchedulingRule[] ruleArray = rules.toArray(new ISchedulingRule[rules.size()]);
        return new MultiRule(ruleArray);
    }
}

