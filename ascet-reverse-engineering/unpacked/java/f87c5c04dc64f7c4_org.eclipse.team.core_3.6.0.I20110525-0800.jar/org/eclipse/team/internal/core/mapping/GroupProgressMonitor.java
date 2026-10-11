/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 */
package org.eclipse.team.internal.core.mapping;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ProgressMonitorWrapper;

public class GroupProgressMonitor
extends ProgressMonitorWrapper
implements IProgressMonitor {
    private final IProgressMonitor group;
    private final int ticks;

    public GroupProgressMonitor(IProgressMonitor monitor, IProgressMonitor group, int groupTicks) {
        super(monitor);
        this.group = group;
        this.ticks = groupTicks;
    }

    public IProgressMonitor getGroup() {
        return this.group;
    }

    public int getTicks() {
        return this.ticks;
    }
}

