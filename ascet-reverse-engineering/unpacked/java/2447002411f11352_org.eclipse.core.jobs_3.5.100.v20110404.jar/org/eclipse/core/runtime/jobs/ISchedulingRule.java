/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.jobs;

public interface ISchedulingRule {
    public boolean contains(ISchedulingRule var1);

    public boolean isConflicting(ISchedulingRule var1);
}

