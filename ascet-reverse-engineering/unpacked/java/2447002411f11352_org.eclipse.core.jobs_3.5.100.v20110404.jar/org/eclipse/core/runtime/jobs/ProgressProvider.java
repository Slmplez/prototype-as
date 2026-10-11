/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.core.runtime.jobs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;

public abstract class ProgressProvider {
    public abstract IProgressMonitor createMonitor(Job var1);

    public IProgressMonitor createProgressGroup() {
        return new NullProgressMonitor();
    }

    public IProgressMonitor createMonitor(Job job, IProgressMonitor group, int ticks) {
        return new SubProgressMonitor(group, ticks);
    }

    public IProgressMonitor getDefaultMonitor() {
        return new NullProgressMonitor();
    }
}

