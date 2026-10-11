/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.progress;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.progress.AnimationItem;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.IAnimationProcessor;
import org.eclipse.ui.internal.progress.IJobProgressManagerListener;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.ProgressAnimationProcessor;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.progress.WorkbenchJob;

public class AnimationManager {
    private static AnimationManager singleton;
    boolean animated = false;
    private IJobProgressManagerListener listener;
    IAnimationProcessor animationProcessor = new ProgressAnimationProcessor(this);
    WorkbenchJob animationUpdateJob = new WorkbenchJob(ProgressMessages.AnimationManager_AnimationStart){

        public IStatus runInUIThread(IProgressMonitor monitor) {
            if (AnimationManager.this.animated) {
                AnimationManager.this.animationProcessor.animationStarted();
            } else {
                AnimationManager.this.animationProcessor.animationFinished();
            }
            return Status.OK_STATUS;
        }
    };

    public static AnimationManager getInstance() {
        if (singleton == null) {
            singleton = new AnimationManager();
        }
        return singleton;
    }

    static Color getItemBackgroundColor(Control control) {
        return control.getDisplay().getSystemColor(29);
    }

    AnimationManager() {
        this.animationUpdateJob.setSystem(true);
        this.listener = this.getProgressListener();
        ProgressManager.getInstance().addListener(this.listener);
    }

    void addItem(AnimationItem item) {
        this.animationProcessor.addItem(item);
    }

    void removeItem(AnimationItem item) {
        this.animationProcessor.removeItem(item);
    }

    boolean isAnimated() {
        return this.animated;
    }

    void setAnimated(boolean bool) {
        this.animated = bool;
        this.animationUpdateJob.schedule(100L);
    }

    void dispose() {
        this.setAnimated(false);
        ProgressManager.getInstance().removeListener(this.listener);
    }

    private IJobProgressManagerListener getProgressListener() {
        return new IJobProgressManagerListener(){
            Set jobs = Collections.synchronizedSet(new HashSet());

            public void addJob(JobInfo info) {
                this.incrementJobCount(info);
            }

            public void refreshJobInfo(JobInfo info) {
                int state = info.getJob().getState();
                if (state == 4) {
                    this.addJob(info);
                } else {
                    this.removeJob(info);
                }
            }

            public void refreshAll() {
                ProgressManager manager = ProgressManager.getInstance();
                this.jobs.clear();
                AnimationManager.this.setAnimated(false);
                JobInfo[] currentInfos = manager.getJobInfos(this.showsDebug());
                int i = 0;
                while (i < currentInfos.length) {
                    this.addJob(currentInfos[i]);
                    ++i;
                }
            }

            public void removeJob(JobInfo info) {
                this.decrementJobCount(info.getJob());
            }

            public boolean showsDebug() {
                return false;
            }

            private void incrementJobCount(JobInfo info) {
                if (this.isNotTracked(info)) {
                    return;
                }
                if (this.jobs.isEmpty()) {
                    AnimationManager.this.setAnimated(true);
                }
                this.jobs.add(info.getJob());
            }

            private void decrementJobCount(Job job) {
                this.jobs.remove(job);
                if (this.jobs.isEmpty()) {
                    AnimationManager.this.setAnimated(false);
                }
            }

            private boolean isNotTracked(JobInfo info) {
                Job job = info.getJob();
                return job.getState() != 4 || AnimationManager.this.animationProcessor.isProcessorJob(job);
            }

            public void addGroup(GroupInfo info) {
            }

            public void removeGroup(GroupInfo group) {
            }

            public void refreshGroup(GroupInfo info) {
            }
        };
    }

    int getPreferredWidth() {
        return this.animationProcessor.getPreferredWidth();
    }
}

