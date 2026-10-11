/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.SubTaskInfo;

public class TaskInfo
extends SubTaskInfo {
    double preWork = 0.0;
    int totalWork = 0;

    TaskInfo(JobInfo parentJobInfo, String infoName, int total) {
        super(parentJobInfo, infoName);
        this.totalWork = total;
    }

    void addWork(double workIncrement) {
        if (this.totalWork == -1) {
            return;
        }
        this.preWork += workIncrement;
    }

    void addWork(double workIncrement, IProgressMonitor parentMonitor, int parentTicks) {
        if (this.totalWork == -1) {
            return;
        }
        this.addWork(workIncrement);
        parentMonitor.internalWorked(workIncrement * (double)parentTicks / (double)this.totalWork);
    }

    String getDisplayString(boolean showProgress) {
        if (this.totalWork == -1) {
            return this.unknownProgress();
        }
        if (this.taskName == null) {
            return this.getDisplayStringWithoutTask(showProgress);
        }
        if (showProgress) {
            Object[] messageValues = new String[]{String.valueOf(this.getPercentDone()), this.jobInfo.getJob().getName(), this.taskName};
            return NLS.bind((String)ProgressMessages.JobInfo_DoneMessage, (Object[])messageValues);
        }
        Object[] messageValues = new String[]{this.jobInfo.getJob().getName(), this.taskName};
        return NLS.bind((String)ProgressMessages.JobInfo_DoneNoProgressMessage, (Object[])messageValues);
    }

    String getDisplayStringWithoutTask(boolean showProgress) {
        if (!showProgress || this.totalWork == -1) {
            return this.jobInfo.getJob().getName();
        }
        return NLS.bind((String)ProgressMessages.JobInfo_NoTaskNameDoneMessage, (Object)this.jobInfo.getJob().getName(), (Object)String.valueOf(this.getPercentDone()));
    }

    int getPercentDone() {
        if (this.totalWork == -1) {
            return -1;
        }
        return Math.min((int)(this.preWork * 100.0 / (double)this.totalWork), 100);
    }

    private String unknownProgress() {
        if (this.taskName == null) {
            return this.jobInfo.getJob().getName();
        }
        Object[] messageValues = new String[]{this.jobInfo.getJob().getName(), this.taskName};
        return NLS.bind((String)ProgressMessages.JobInfo_UnknownProgress, (Object[])messageValues);
    }
}

