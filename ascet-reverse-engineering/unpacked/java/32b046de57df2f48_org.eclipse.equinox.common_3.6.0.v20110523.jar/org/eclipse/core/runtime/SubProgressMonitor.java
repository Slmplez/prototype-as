/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ProgressMonitorWrapper;

public class SubProgressMonitor
extends ProgressMonitorWrapper {
    public static final int SUPPRESS_SUBTASK_LABEL = 2;
    public static final int PREPEND_MAIN_LABEL_TO_SUBTASK = 4;
    private int parentTicks = 0;
    private double sentToParent = 0.0;
    private double scale = 0.0;
    private int nestedBeginTasks = 0;
    private boolean usedUp = false;
    private boolean hasSubTask = false;
    private int style;
    private String mainTaskLabel;

    public SubProgressMonitor(IProgressMonitor monitor, int ticks) {
        this(monitor, ticks, 0);
    }

    public SubProgressMonitor(IProgressMonitor monitor, int ticks, int style) {
        super(monitor);
        this.parentTicks = ticks > 0 ? ticks : 0;
        this.style = style;
    }

    public void beginTask(String name, int totalWork) {
        ++this.nestedBeginTasks;
        if (this.nestedBeginTasks > 1) {
            return;
        }
        double d = this.scale = totalWork <= 0 ? 0.0 : (double)this.parentTicks / (double)totalWork;
        if ((this.style & 4) != 0) {
            this.mainTaskLabel = name;
        }
    }

    public void done() {
        if (this.nestedBeginTasks == 0 || --this.nestedBeginTasks > 0) {
            return;
        }
        double remaining = (double)this.parentTicks - this.sentToParent;
        if (remaining > 0.0) {
            super.internalWorked(remaining);
        }
        if (this.hasSubTask) {
            this.subTask("");
        }
        this.sentToParent = 0.0;
    }

    public void internalWorked(double work) {
        if (this.usedUp || this.nestedBeginTasks != 1) {
            return;
        }
        double realWork = work > 0.0 ? this.scale * work : 0.0;
        super.internalWorked(realWork);
        this.sentToParent += realWork;
        if (this.sentToParent >= (double)this.parentTicks) {
            this.usedUp = true;
        }
    }

    public void subTask(String name) {
        if ((this.style & 2) != 0) {
            return;
        }
        this.hasSubTask = true;
        String label = name;
        if ((this.style & 4) != 0 && this.mainTaskLabel != null && this.mainTaskLabel.length() > 0) {
            label = String.valueOf(this.mainTaskLabel) + ' ' + label;
        }
        super.subTask(label);
    }

    public void worked(int work) {
        this.internalWorked(work);
    }
}

