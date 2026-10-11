/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.TaskItem
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.TaskItem;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.IJobProgressManagerListener;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.TaskInfo;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.progress.IProgressConstants2;
import org.eclipse.ui.progress.WorkbenchJob;

public class TaskBarProgressManager {
    private IJobProgressManagerListener listener;
    private WorkbenchJob animationUpdateJob;
    private boolean isAnimated = false;
    private List jobs = Collections.synchronizedList(new ArrayList());
    private Map jobInfoMap = Collections.synchronizedMap(new HashMap());
    private final TaskItem taskItem;
    private ImageDescriptor overlayDescriptor;
    private Image overlayImage;

    public TaskBarProgressManager(TaskItem taskItem) {
        Assert.isNotNull((Object)taskItem);
        this.taskItem = taskItem;
        this.animationUpdateJob = this.getAnimationUpdateJob();
        this.animationUpdateJob.setSystem(true);
        this.listener = this.getProgressListener();
        ProgressManager.getInstance().addListener(this.listener);
        taskItem.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                TaskBarProgressManager.this.dispose();
            }
        });
    }

    public void dispose() {
        ProgressManager.getInstance().removeListener(this.listener);
        this.setAnimated(false);
        this.disposeOverlay();
    }

    private WorkbenchJob getAnimationUpdateJob() {
        return new WorkbenchJob(ProgressMessages.AnimationManager_AnimationStart){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                if (TaskBarProgressManager.this.isAnimated) {
                    if (!TaskBarProgressManager.this.taskItem.isDisposed() && !TaskBarProgressManager.this.jobs.isEmpty()) {
                        Job job = (Job)TaskBarProgressManager.this.jobs.get(0);
                        JobInfo jobInfo = (JobInfo)TaskBarProgressManager.this.jobInfoMap.get(job);
                        if (job != null && jobInfo != null) {
                            int percentDone = this.getPercentDone(jobInfo);
                            if (percentDone == -1 || jobInfo.hasTaskInfo() && jobInfo.getTaskInfo().totalWork == -1) {
                                this.setProgressState(2);
                            } else {
                                this.setProgressState(0);
                                if (!TaskBarProgressManager.this.taskItem.isDisposed()) {
                                    TaskBarProgressManager.this.taskItem.setProgress(percentDone);
                                }
                            }
                        } else {
                            this.setProgressState(-1);
                        }
                        TaskBarProgressManager.this.updateImage(job);
                    } else {
                        TaskBarProgressManager.this.updateImage(null);
                    }
                } else {
                    this.setProgressState(-1);
                    TaskBarProgressManager.this.updateImage(null);
                }
                if (TaskBarProgressManager.this.isAnimated && TaskBarProgressManager.this.taskItem != null && !TaskBarProgressManager.this.taskItem.isDisposed()) {
                    this.schedule(400L);
                }
                return Status.OK_STATUS;
            }

            private void setProgressState(int state) {
                if (!TaskBarProgressManager.this.taskItem.isDisposed() && TaskBarProgressManager.this.taskItem.getProgressState() != state) {
                    TaskBarProgressManager.this.taskItem.setProgressState(-1);
                    TaskBarProgressManager.this.taskItem.setProgressState(state);
                }
            }

            private int getPercentDone(JobTreeElement info) {
                if (info.isJobInfo()) {
                    return ((JobInfo)info).getPercentDone();
                }
                if (info.hasChildren()) {
                    TaskInfo ti;
                    Object[] roots = ((GroupInfo)info).getChildren();
                    if (roots.length == 1 && roots[0] instanceof JobTreeElement && (ti = ((JobInfo)roots[0]).getTaskInfo()) != null) {
                        return ti.getPercentDone();
                    }
                    return ((GroupInfo)info).getPercentDone();
                }
                return 0;
            }
        };
    }

    private void updateImage(Job job) {
        if (this.taskItem == null || this.taskItem.isDisposed()) {
            return;
        }
        if (job == null) {
            this.disposeOverlay();
            this.taskItem.setOverlayImage(null);
            return;
        }
        ImageDescriptor descriptor = (ImageDescriptor)job.getProperty(IProgressConstants.ICON_PROPERTY);
        if (descriptor != null) {
            if (!descriptor.equals(this.overlayDescriptor)) {
                this.disposeOverlay();
                this.setOverlay(descriptor);
            }
        } else if (ProgressManager.getInstance().getIconFor(job) != null) {
            this.disposeOverlay();
            Image newImage = ProgressManager.getInstance().getIconFor(job);
            this.taskItem.setOverlayImage(newImage);
        } else {
            this.disposeOverlay();
            this.taskItem.setOverlayImage(null);
        }
    }

    private void setOverlay(ImageDescriptor descriptor) {
        this.overlayDescriptor = descriptor;
        this.overlayImage = descriptor.createImage();
        this.taskItem.setOverlayImage(this.overlayImage);
    }

    private void disposeOverlay() {
        this.overlayDescriptor = null;
        if (this.overlayImage != null) {
            this.overlayImage.dispose();
            this.overlayImage = null;
        }
    }

    private IJobProgressManagerListener getProgressListener() {
        return new IJobProgressManagerListener(){

            public void addJob(JobInfo info) {
                if (this.isNotTracked(info)) {
                    return;
                }
                if (TaskBarProgressManager.this.jobs.isEmpty()) {
                    TaskBarProgressManager.this.setAnimated(true);
                }
                if (!TaskBarProgressManager.this.jobs.contains(info.getJob())) {
                    TaskBarProgressManager.this.jobs.add(info.getJob());
                }
                TaskBarProgressManager.this.jobInfoMap.put(info.getJob(), info);
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
                TaskBarProgressManager.this.jobs.clear();
                TaskBarProgressManager.this.jobInfoMap.clear();
                TaskBarProgressManager.this.setAnimated(false);
                JobInfo[] currentInfos = manager.getJobInfos(this.showsDebug());
                int i = 0;
                while (i < currentInfos.length) {
                    this.addJob(currentInfos[i]);
                    ++i;
                }
            }

            public void removeJob(JobInfo info) {
                TaskBarProgressManager.this.jobs.remove(info.getJob());
                TaskBarProgressManager.this.jobInfoMap.remove(info.getJob());
                if (TaskBarProgressManager.this.jobs.isEmpty()) {
                    TaskBarProgressManager.this.setAnimated(false);
                }
            }

            public boolean showsDebug() {
                return false;
            }

            private boolean isNotTracked(JobInfo info) {
                Job job = info.getJob();
                return job.getState() != 4 || !this.shouldShowSystemProgress(info);
            }

            private boolean shouldShowSystemProgress(JobInfo info) {
                Boolean showInTaskBarIcon = Boolean.FALSE;
                Object property = info.getJob().getProperty(IProgressConstants2.SHOW_IN_TASKBAR_ICON_PROPERTY);
                if (property instanceof Boolean) {
                    showInTaskBarIcon = (Boolean)property;
                }
                return showInTaskBarIcon;
            }

            public void addGroup(GroupInfo info) {
            }

            public void removeGroup(GroupInfo group) {
            }

            public void refreshGroup(GroupInfo info) {
            }
        };
    }

    private synchronized void setAnimated(boolean animated) {
        this.isAnimated = animated;
        this.animationUpdateJob.schedule();
    }
}

