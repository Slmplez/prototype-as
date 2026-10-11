/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.team.ResourceRuleFactory
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.team.ResourceRuleFactory;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public class PessimisticResourceRuleFactory
extends ResourceRuleFactory {
    IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();

    public ISchedulingRule copyRule(IResource source, IResource destination) {
        return this.root;
    }

    public ISchedulingRule createRule(IResource resource) {
        return this.root;
    }

    public ISchedulingRule deleteRule(IResource resource) {
        return this.root;
    }

    public ISchedulingRule modifyRule(IResource resource) {
        return this.root;
    }

    public ISchedulingRule moveRule(IResource source, IResource destination) {
        return this.root;
    }

    public ISchedulingRule refreshRule(IResource resource) {
        return this.root;
    }

    public ISchedulingRule validateEditRule(IResource[] resources) {
        return this.root;
    }

    public ISchedulingRule charsetRule(IResource resource) {
        return this.root;
    }
}

