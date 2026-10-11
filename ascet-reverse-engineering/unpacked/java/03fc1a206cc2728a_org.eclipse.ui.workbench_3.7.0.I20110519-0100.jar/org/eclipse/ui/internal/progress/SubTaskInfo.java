/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;

class SubTaskInfo
extends JobTreeElement {
    protected String taskName;
    JobInfo jobInfo;

    SubTaskInfo(JobInfo parentJob, String name) {
        this.taskName = name;
        this.jobInfo = parentJob;
    }

    Object[] getChildren() {
        return ProgressManagerUtil.EMPTY_OBJECT_ARRAY;
    }

    String getDisplayString() {
        if (this.taskName == null) {
            return ProgressMessages.SubTaskInfo_UndefinedTaskName;
        }
        return this.taskName;
    }

    boolean hasChildren() {
        return false;
    }

    void setTaskName(String name) {
        this.taskName = name == null ? ProgressMessages.SubTaskInfo_UndefinedTaskName : name;
    }

    String getTaskName() {
        return this.taskName;
    }

    public Object getParent() {
        return this.jobInfo;
    }

    boolean isJobInfo() {
        return false;
    }

    boolean isActive() {
        return this.jobInfo.isActive();
    }
}

