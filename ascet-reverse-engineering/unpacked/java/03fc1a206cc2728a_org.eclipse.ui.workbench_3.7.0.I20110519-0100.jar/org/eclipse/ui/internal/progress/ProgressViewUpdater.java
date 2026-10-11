/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal.progress;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.IJobProgressManagerListener;
import org.eclipse.ui.internal.progress.IProgressUpdateCollector;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.progress.WorkbenchJob;

class ProgressViewUpdater
implements IJobProgressManagerListener {
    private static ProgressViewUpdater singleton;
    private IProgressUpdateCollector[] collectors;
    Job updateJob;
    UpdatesInfo currentInfo = new UpdatesInfo();
    Object updateLock = new Object();
    boolean debug;
    private long lastUpdateJobScheduleRequest = 0L;

    static ProgressViewUpdater getSingleton() {
        if (singleton == null) {
            singleton = new ProgressViewUpdater();
        }
        return singleton;
    }

    static boolean hasSingleton() {
        return singleton != null;
    }

    static void clearSingleton() {
        if (singleton != null) {
            ProgressManager.getInstance().removeListener(singleton);
        }
        singleton = null;
    }

    private ProgressViewUpdater() {
        this.createUpdateJob();
        this.collectors = new IProgressUpdateCollector[0];
        ProgressManager.getInstance().addListener(this);
        this.debug = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_SYSTEM_JOBS");
    }

    void addCollector(IProgressUpdateCollector newCollector) {
        IProgressUpdateCollector[] newCollectors = new IProgressUpdateCollector[this.collectors.length + 1];
        System.arraycopy(this.collectors, 0, newCollectors, 0, this.collectors.length);
        newCollectors[this.collectors.length] = newCollector;
        this.collectors = newCollectors;
    }

    void removeCollector(IProgressUpdateCollector provider) {
        HashSet<IProgressUpdateCollector> newCollectors = new HashSet<IProgressUpdateCollector>();
        int i = 0;
        while (i < this.collectors.length) {
            if (!this.collectors[i].equals(provider)) {
                newCollectors.add(this.collectors[i]);
            }
            ++i;
        }
        IProgressUpdateCollector[] newArray = new IProgressUpdateCollector[newCollectors.size()];
        newCollectors.toArray(newArray);
        this.collectors = newArray;
        if (this.collectors.length == 0) {
            ProgressViewUpdater.clearSingleton();
        }
    }

    void scheduleUpdate() {
        long now;
        if (PlatformUI.isWorkbenchRunning() && (now = System.currentTimeMillis()) - this.lastUpdateJobScheduleRequest >= 100L) {
            this.updateJob.schedule(100L);
            this.lastUpdateJobScheduleRequest = now;
        }
    }

    private void createUpdateJob() {
        this.updateJob = new WorkbenchJob(ProgressMessages.ProgressContentProvider_UpdateProgressJob){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public IStatus runInUIThread(IProgressMonitor monitor) {
                if (ProgressViewUpdater.this.collectors.length == 0) {
                    return Status.CANCEL_STATUS;
                }
                if (ProgressViewUpdater.this.currentInfo.updateAll) {
                    Object object = ProgressViewUpdater.this.updateLock;
                    synchronized (object) {
                        ProgressViewUpdater.this.currentInfo.reset();
                    }
                    int i = 0;
                    while (i < ProgressViewUpdater.this.collectors.length) {
                        ProgressViewUpdater.this.collectors[i].refresh();
                        ++i;
                    }
                } else {
                    Object[] deletionItems;
                    Object[] additionItems;
                    Object[] updateItems;
                    Object object = ProgressViewUpdater.this.updateLock;
                    synchronized (object) {
                        ProgressViewUpdater.this.currentInfo.processForUpdate();
                        updateItems = ProgressViewUpdater.this.currentInfo.refreshes.toArray();
                        additionItems = ProgressViewUpdater.this.currentInfo.additions.toArray();
                        deletionItems = ProgressViewUpdater.this.currentInfo.deletions.toArray();
                        ProgressViewUpdater.this.currentInfo.reset();
                    }
                    int v = 0;
                    while (v < ProgressViewUpdater.this.collectors.length) {
                        IProgressUpdateCollector collector = ProgressViewUpdater.this.collectors[v];
                        if (updateItems.length > 0) {
                            collector.refresh(updateItems);
                        }
                        if (additionItems.length > 0) {
                            collector.add(additionItems);
                        }
                        if (deletionItems.length > 0) {
                            collector.remove(deletionItems);
                        }
                        ++v;
                    }
                }
                return Status.OK_STATUS;
            }
        };
        this.updateJob.setSystem(true);
        this.updateJob.setPriority(50);
        this.updateJob.setProperty(ProgressManagerUtil.INFRASTRUCTURE_PROPERTY, new Object());
    }

    UpdatesInfo getCurrentInfo() {
        return this.currentInfo;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refresh(JobInfo info) {
        if (this.isUpdateJob(info.getJob())) {
            return;
        }
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.refresh(info);
            GroupInfo group = info.getGroupInfo();
            if (group != null) {
                this.currentInfo.refresh(group);
            }
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refreshJobInfo(JobInfo info) {
        if (this.isUpdateJob(info.getJob())) {
            return;
        }
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.refresh(info);
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refreshGroup(GroupInfo info) {
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.refresh(info);
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addGroup(GroupInfo info) {
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.add(info);
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void refreshAll() {
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.updateAll = true;
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addJob(JobInfo info) {
        if (this.isUpdateJob(info.getJob())) {
            return;
        }
        Object object = this.updateLock;
        synchronized (object) {
            GroupInfo group = info.getGroupInfo();
            if (group == null) {
                this.currentInfo.add(info);
            } else {
                this.currentInfo.refresh(group);
            }
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeJob(JobInfo info) {
        if (this.isUpdateJob(info.getJob())) {
            return;
        }
        Object object = this.updateLock;
        synchronized (object) {
            GroupInfo group = info.getGroupInfo();
            if (group == null) {
                this.currentInfo.remove(info);
            } else {
                this.currentInfo.refresh(group);
            }
        }
        this.scheduleUpdate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeGroup(GroupInfo group) {
        Object object = this.updateLock;
        synchronized (object) {
            this.currentInfo.remove(group);
        }
        this.scheduleUpdate();
    }

    public boolean showsDebug() {
        return this.debug;
    }

    boolean isUpdateJob(Job job) {
        return job.equals(this.updateJob);
    }

    class UpdatesInfo {
        Collection additions = new HashSet();
        Collection deletions = new HashSet();
        Collection refreshes = new HashSet();
        boolean updateAll = false;

        private UpdatesInfo() {
        }

        void add(JobTreeElement addition) {
            this.additions.add(addition);
        }

        void remove(JobTreeElement removal) {
            this.deletions.add(removal);
        }

        void refresh(JobTreeElement refresh) {
            this.refreshes.add(refresh);
        }

        void reset() {
            this.additions.clear();
            this.deletions.clear();
            this.refreshes.clear();
            this.updateAll = false;
        }

        void processForUpdate() {
            HashSet<JobTreeElement> staleAdditions = new HashSet<JobTreeElement>();
            Iterator additionsIterator = this.additions.iterator();
            while (additionsIterator.hasNext()) {
                JobTreeElement treeElement = (JobTreeElement)additionsIterator.next();
                if (treeElement.isActive() || !this.deletions.contains(treeElement)) continue;
                staleAdditions.add(treeElement);
            }
            this.additions.removeAll(staleAdditions);
            HashSet<JobTreeElement> obsoleteRefresh = new HashSet<JobTreeElement>();
            Iterator refreshIterator = this.refreshes.iterator();
            while (refreshIterator.hasNext()) {
                Object parent;
                JobTreeElement treeElement = (JobTreeElement)refreshIterator.next();
                if (this.deletions.contains(treeElement) || this.additions.contains(treeElement)) {
                    obsoleteRefresh.add(treeElement);
                }
                if ((parent = treeElement.getParent()) != null && (this.deletions.contains(parent) || this.additions.contains(parent))) {
                    obsoleteRefresh.add(treeElement);
                }
                if (treeElement.isActive()) continue;
                obsoleteRefresh.add(treeElement);
                this.deletions.add(treeElement);
            }
            this.refreshes.removeAll(obsoleteRefresh);
        }
    }
}

