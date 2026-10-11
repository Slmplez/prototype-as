/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;

class GroupInfo
extends JobTreeElement
implements IProgressMonitor {
    private List infos = new ArrayList();
    private Object lock = new Object();
    private String taskName = ProgressMessages.SubTaskInfo_UndefinedTaskName;
    boolean isActive = false;
    double total = -1.0;
    double currentWork;

    GroupInfo() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean hasChildren() {
        Object object = this.lock;
        synchronized (object) {
            return !this.infos.isEmpty();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Object[] getChildren() {
        Object object = this.lock;
        synchronized (object) {
            return this.infos.toArray();
        }
    }

    String getDisplayString() {
        if (this.total < 0.0) {
            return this.taskName;
        }
        Object[] messageValues = new String[]{this.taskName, String.valueOf(this.getPercentDone())};
        return NLS.bind((String)ProgressMessages.JobInfo_NoTaskNameDoneMessage, (Object[])messageValues);
    }

    int getPercentDone() {
        return (int)(this.currentWork * 100.0 / this.total);
    }

    boolean isJobInfo() {
        return false;
    }

    public int compareTo(Object arg0) {
        return this.getDisplayString().compareTo(((JobTreeElement)arg0).getDisplayString());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void beginTask(String name, int totalWork) {
        if (name == null) {
            name = ProgressMessages.SubTaskInfo_UndefinedTaskName;
        } else {
            this.taskName = name;
        }
        this.total = totalWork;
        Object object = this.lock;
        synchronized (object) {
            this.isActive = true;
        }
        ProgressManager.getInstance().refreshGroup(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void done() {
        Object object = this.lock;
        synchronized (object) {
            this.isActive = false;
        }
        this.updateInProgressManager();
    }

    private void updateInProgressManager() {
        Iterator infoIterator = this.infos.iterator();
        while (infoIterator.hasNext()) {
            JobInfo next = (JobInfo)infoIterator.next();
            if (next.getJob().getState() == 0) continue;
            ProgressManager.getInstance().refreshGroup(this);
            return;
        }
        if (FinishedJobs.getInstance().isKept(this)) {
            ProgressManager.getInstance().refreshGroup(this);
        } else {
            ProgressManager.getInstance().removeGroup(this);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void internalWorked(double work) {
        Object object = this.lock;
        synchronized (object) {
            this.currentWork += work;
        }
    }

    public boolean isCanceled() {
        return false;
    }

    public void setCanceled(boolean value) {
        this.cancel();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setTaskName(String name) {
        GroupInfo groupInfo = this;
        synchronized (groupInfo) {
            this.isActive = true;
        }
        this.taskName = name == null ? ProgressMessages.SubTaskInfo_UndefinedTaskName : name;
    }

    public void subTask(String name) {
    }

    public void worked(int work) {
        this.internalWorked(work);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeJobInfo(JobInfo job) {
        Object object = this.lock;
        synchronized (object) {
            this.infos.remove(job);
            if (this.infos.isEmpty()) {
                this.done();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addJobInfo(JobInfo job) {
        Object object = this.lock;
        synchronized (object) {
            this.infos.add(job);
        }
    }

    boolean isActive() {
        return this.isActive;
    }

    public void cancel() {
        Object[] jobInfos = this.getChildren();
        int i = 0;
        while (i < jobInfos.length) {
            ((JobInfo)jobInfos[i]).cancel();
            ++i;
        }
        this.updateInProgressManager();
    }

    public boolean isCancellable() {
        return true;
    }

    String getTaskName() {
        return this.taskName;
    }
}

