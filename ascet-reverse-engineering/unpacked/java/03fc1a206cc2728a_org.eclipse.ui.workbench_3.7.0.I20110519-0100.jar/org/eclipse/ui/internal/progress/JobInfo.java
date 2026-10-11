/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.SubTaskInfo;
import org.eclipse.ui.internal.progress.TaskInfo;

public class JobInfo
extends JobTreeElement {
    private IStatus blockedStatus;
    private volatile boolean canceled = false;
    private volatile boolean reported = false;
    private List children = Collections.synchronizedList(new ArrayList());
    private Job job;
    private GroupInfo parent;
    private TaskInfo taskInfo;
    private int ticks = -1;

    JobInfo(Job enclosingJob) {
        this.job = enclosingJob;
    }

    void addSubTask(String subTaskName) {
        this.children.add(new SubTaskInfo(this, subTaskName));
    }

    void addWork(double workIncrement) {
        if (this.taskInfo == null) {
            return;
        }
        if (this.parent == null || this.ticks < 1) {
            this.taskInfo.addWork(workIncrement);
        } else {
            this.taskInfo.addWork(workIncrement, this.parent, this.ticks);
        }
    }

    void beginTask(String taskName, int work) {
        this.taskInfo = new TaskInfo(this, taskName, work);
    }

    public void cancel() {
        this.canceled = true;
        this.job.cancel();
        ProgressManager.getInstance().refreshJobInfo(this);
    }

    void clearChildren() {
        this.children.clear();
    }

    void clearTaskInfo() {
        FinishedJobs.getInstance().remove(this.taskInfo);
        this.taskInfo = null;
    }

    private int compareJobs(JobInfo jobInfo) {
        Job job2 = jobInfo.getJob();
        if (this.job.isUser()) {
            if (!job2.isUser()) {
                return -1;
            }
        } else if (job2.isUser()) {
            return 1;
        }
        if (this.isBlocked()) {
            if (!jobInfo.isBlocked()) {
                return 1;
            }
        } else if (jobInfo.isBlocked()) {
            return -1;
        }
        if (this.job.getPriority() == job2.getPriority()) {
            return this.job.getName().compareTo(job2.getName());
        }
        if (this.job.getPriority() > job2.getPriority()) {
            return -1;
        }
        return 1;
    }

    public int compareTo(Object arg0) {
        if (!(arg0 instanceof JobInfo)) {
            return super.compareTo(arg0);
        }
        JobInfo element = (JobInfo)arg0;
        if (this.isCanceled() && !element.isCanceled()) {
            return 1;
        }
        if (element.getJob().getState() == this.getJob().getState()) {
            return this.compareJobs(element);
        }
        if (this.getJob().getState() == 4) {
            return -1;
        }
        return 1;
    }

    void dispose() {
        if (this.parent != null) {
            this.parent.removeJobInfo(this);
        }
    }

    public IStatus getBlockedStatus() {
        return this.blockedStatus;
    }

    Object[] getChildren() {
        return this.children.toArray();
    }

    String getCondensedDisplayString() {
        TaskInfo info = this.getTaskInfo();
        if (info != null) {
            return info.getDisplayStringWithoutTask(true);
        }
        return this.getJob().getName();
    }

    public Image getDisplayImage() {
        int done = this.getPercentDone();
        if (done > 0) {
            return super.getDisplayImage();
        }
        if (this.isBlocked()) {
            return JFaceResources.getImage((String)"LOCKED_JOB");
        }
        int state = this.getJob().getState();
        if (state == 1) {
            return JFaceResources.getImage((String)"SLEEPING_JOB");
        }
        if (state == 2) {
            return JFaceResources.getImage((String)"WAITING_JOB");
        }
        return super.getDisplayImage();
    }

    String getDisplayString() {
        return this.getDisplayString(true);
    }

    String getDisplayString(boolean showProgress) {
        String name = this.getDisplayStringWithStatus(showProgress);
        if (this.job.isSystem()) {
            return NLS.bind((String)ProgressMessages.JobInfo_System, (Object[])new Object[]{name});
        }
        return name;
    }

    private String getDisplayStringWithStatus(boolean showProgress) {
        if (this.isCanceled()) {
            return NLS.bind((String)ProgressMessages.JobInfo_Cancelled, (Object[])new Object[]{this.getJob().getName()});
        }
        if (this.isBlocked()) {
            return NLS.bind((String)ProgressMessages.JobInfo_Blocked, (Object[])new Object[]{this.getJob().getName(), this.blockedStatus.getMessage()});
        }
        if (this.getJob().getState() == 4) {
            TaskInfo info = this.getTaskInfo();
            if (info == null) {
                return this.getJob().getName();
            }
            return info.getDisplayString(showProgress);
        }
        if (this.getJob().getState() == 1) {
            return NLS.bind((String)ProgressMessages.JobInfo_Sleeping, (Object[])new Object[]{this.getJob().getName()});
        }
        return NLS.bind((String)ProgressMessages.JobInfo_Waiting, (Object[])new Object[]{this.getJob().getName()});
    }

    GroupInfo getGroupInfo() {
        if (this.parent != null) {
            return this.parent;
        }
        return null;
    }

    public Job getJob() {
        return this.job;
    }

    public Object getParent() {
        return this.parent;
    }

    int getPercentDone() {
        TaskInfo info = this.getTaskInfo();
        if (info != null) {
            if (info.totalWork == -1) {
                return -1;
            }
            if (info.totalWork == 0) {
                return 0;
            }
            return (int)info.preWork * 100 / info.totalWork;
        }
        return -1;
    }

    TaskInfo getTaskInfo() {
        return this.taskInfo;
    }

    boolean hasChildren() {
        return this.children.size() > 0;
    }

    boolean hasTaskInfo() {
        return this.taskInfo != null;
    }

    boolean isActive() {
        return this.getJob().getState() != 0;
    }

    boolean isReported() {
        return this.reported;
    }

    void setReported(boolean errorReported) {
        this.reported = errorReported;
    }

    public boolean isBlocked() {
        return this.getBlockedStatus() != null;
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public boolean isCancellable() {
        return super.isCancellable();
    }

    boolean isJobInfo() {
        return true;
    }

    public void setBlockedStatus(IStatus blockedStatus) {
        this.blockedStatus = blockedStatus;
    }

    void setGroupInfo(GroupInfo group) {
        this.parent = group;
    }

    void setTaskName(String name) {
        this.taskInfo.setTaskName(name);
    }

    public void setTicks(int ticks) {
        this.ticks = ticks;
    }
}

