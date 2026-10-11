/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;

public class InfiniteSubProgressMonitor
extends SubProgressMonitor {
    int totalWork;
    int halfWay;
    int currentIncrement;
    int nextProgress;
    int worked;

    public InfiniteSubProgressMonitor(IProgressMonitor monitor, int ticks) {
        this(monitor, ticks, 0);
    }

    public InfiniteSubProgressMonitor(IProgressMonitor monitor, int ticks, int style) {
        super(monitor, ticks, style);
    }

    public void beginTask(String name, int totalWork) {
        super.beginTask(name, totalWork);
        this.totalWork = totalWork;
        this.halfWay = totalWork / 2;
        this.nextProgress = this.currentIncrement = 1;
        this.worked = 0;
    }

    public void worked(int work) {
        if (this.worked >= this.totalWork) {
            return;
        }
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

    public void subTask(String name) {
        if (name != null && !name.equals("")) {
            super.subTask(name);
        }
    }
}

