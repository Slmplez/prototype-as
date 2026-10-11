/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.core.internal.resources;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.team.ResourceRuleFactory;
import org.eclipse.core.resources.team.TeamHook;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;

class Rules
implements IResourceRuleFactory,
ILifecycleListener {
    private final ResourceRuleFactory defaultFactory = new ResourceRuleFactory(){};
    private final Map<String, IResourceRuleFactory> projectsToRules = Collections.synchronizedMap(new HashMap());
    private final TeamHook teamHook;
    private final IWorkspaceRoot root;

    Rules(Workspace workspace) {
        this.root = workspace.getRoot();
        this.teamHook = workspace.getTeamHook();
        workspace.addLifecycleListener(this);
    }

    public ISchedulingRule buildRule() {
        return this.root;
    }

    public ISchedulingRule copyRule(IResource source, IResource destination) {
        if (source.getType() == 8 || destination.getType() == 8) {
            return this.root;
        }
        return this.factoryFor(destination).copyRule(source, destination);
    }

    public ISchedulingRule createRule(IResource resource) {
        if (resource.getType() == 8) {
            return this.root;
        }
        return this.factoryFor(resource).createRule(resource);
    }

    public ISchedulingRule deleteRule(IResource resource) {
        if (resource.getType() == 8) {
            return this.root;
        }
        return this.factoryFor(resource).deleteRule(resource);
    }

    private IResourceRuleFactory factoryFor(IResource destination) {
        IResourceRuleFactory fac = this.projectsToRules.get(destination.getFullPath().segment(0));
        if (fac == null) {
            if (!destination.getProject().isAccessible()) {
                return this.defaultFactory;
            }
            fac = this.teamHook.getRuleFactory(destination.getProject());
            this.projectsToRules.put(destination.getFullPath().segment(0), fac);
        }
        return fac;
    }

    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 1: 
            case 16: 
            case 64: {
                this.setRuleFactory((IProject)event.resource, null);
            }
        }
    }

    public ISchedulingRule charsetRule(IResource resource) {
        if (resource.getType() == 8) {
            return null;
        }
        return this.factoryFor(resource).charsetRule(resource);
    }

    public ISchedulingRule derivedRule(IResource resource) {
        return null;
    }

    public ISchedulingRule markerRule(IResource resource) {
        return null;
    }

    public ISchedulingRule modifyRule(IResource resource) {
        if (resource.getType() == 8) {
            return this.root;
        }
        return this.factoryFor(resource).modifyRule(resource);
    }

    public ISchedulingRule moveRule(IResource source, IResource destination) {
        if (source.getType() == 8 || destination.getType() == 8) {
            return this.root;
        }
        if (!source.getFullPath().segment(0).equals(destination.getFullPath().segment(0))) {
            return MultiRule.combine((ISchedulingRule)this.modifyRule(source.getProject()), (ISchedulingRule)this.modifyRule(destination.getProject()));
        }
        return this.factoryFor(source).moveRule(source, destination);
    }

    public ISchedulingRule refreshRule(IResource resource) {
        if (resource.getType() == 8) {
            return this.root;
        }
        return this.factoryFor(resource).refreshRule(resource);
    }

    void setRuleFactory(IProject project, IResourceRuleFactory factory) {
        if (factory == null) {
            this.projectsToRules.remove(project.getName());
        } else {
            this.projectsToRules.put(project.getName(), factory);
        }
    }

    public ISchedulingRule validateEditRule(IResource[] resources) {
        if (resources.length == 0) {
            return null;
        }
        if (resources.length == 1) {
            if (resources[0].getType() == 8) {
                return this.root;
            }
            return this.factoryFor(resources[0]).validateEditRule(resources);
        }
        HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
        IResource[] oneResource = new IResource[1];
        int i = 0;
        while (i < resources.length) {
            if (resources[i].getType() == 8) {
                return this.root;
            }
            oneResource[0] = resources[i];
            ISchedulingRule rule = this.factoryFor(resources[i]).validateEditRule(oneResource);
            if (rule != null) {
                rules.add(rule);
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

