/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 */
package org.eclipse.equinox.internal.p2.director;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ProgressMonitorWrapper;

class InfiniteProgress
extends ProgressMonitorWrapper {
    private int totalWork;
    private int currentIncrement;
    private int halfWay;
    private int nextProgress;
    private int worked;

    protected InfiniteProgress(IProgressMonitor monitor) {
        super(monitor);
        this.nextProgress = this.currentIncrement = 4;
        this.worked = 0;
    }

    public void beginTask(String name, int work) {
        super.beginTask(name, work);
        this.totalWork = work;
        this.halfWay = this.totalWork / 2;
    }

    public void worked(int work) {
        if (--this.nextProgress <= 0) {
            super.worked(1);
            ++this.worked;
            if (this.worked >= this.halfWay) {
                this.currentIncrement *= 2;
                this.halfWay += (this.totalWork - this.halfWay) / 2;
            }
            this.nextProgress = this.currentIncrement;
        }
    }
}

