/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.jobs.ISchedulingRule;

public interface ISchedulingRuleProvider {
    public ISchedulingRule getSchedulingRule();
}

