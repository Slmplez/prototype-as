/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public interface IResourceRuleFactory {
    public ISchedulingRule createRule(IResource var1);

    public ISchedulingRule buildRule();

    public ISchedulingRule charsetRule(IResource var1);

    public ISchedulingRule derivedRule(IResource var1);

    public ISchedulingRule copyRule(IResource var1, IResource var2);

    public ISchedulingRule deleteRule(IResource var1);

    public ISchedulingRule markerRule(IResource var1);

    public ISchedulingRule modifyRule(IResource var1);

    public ISchedulingRule moveRule(IResource var1, IResource var2);

    public ISchedulingRule refreshRule(IResource var1);

    public ISchedulingRule validateEditRule(IResource[] var1);
}

