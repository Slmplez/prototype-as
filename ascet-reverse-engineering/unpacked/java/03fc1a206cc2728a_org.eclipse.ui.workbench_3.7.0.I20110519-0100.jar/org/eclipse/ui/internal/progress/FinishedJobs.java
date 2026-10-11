/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.IJobProgressManagerListener;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.TaskInfo;
import org.eclipse.ui.progress.IProgressConstants;

public class FinishedJobs
extends EventManager {
    private static FinishedJobs theInstance;
    private IJobProgressManagerListener listener;
    private HashSet keptjobinfos = new HashSet();
    private HashMap finishedTime = new HashMap();
    private static JobTreeElement[] EMPTY_INFOS;

    public static synchronized FinishedJobs getInstance() {
        if (theInstance == null) {
            theInstance = new FinishedJobs();
            EMPTY_INFOS = new JobTreeElement[0];
        }
        return theInstance;
    }

    private FinishedJobs() {
        this.listener = new IJobProgressManagerListener(){

            public void addJob(JobInfo info) {
                FinishedJobs.this.checkForDuplicates(info);
            }

            public void addGroup(GroupInfo info) {
                FinishedJobs.this.checkForDuplicates(info);
            }

            public void refreshJobInfo(JobInfo info) {
                FinishedJobs.this.checkTasks(info);
            }

            public void refreshGroup(GroupInfo info) {
            }

            public void refreshAll() {
            }

            public void removeJob(JobInfo info) {
                if (FinishedJobs.keep(info)) {
                    FinishedJobs.this.checkForDuplicates(info);
                    FinishedJobs.this.add(info);
                }
            }

            public void removeGroup(GroupInfo group) {
            }

            public boolean showsDebug() {
                return false;
            }
        };
        ProgressManager.getInstance().addListener(this.listener);
    }

    static boolean keep(JobInfo info) {
        Job job = info.getJob();
        if (job != null) {
            if (FinishedJobs.hasKeepFlag(job)) {
                return true;
            }
            IStatus status = job.getResult();
            if (status != null && status.getSeverity() == 4) {
                return true;
            }
        }
        return false;
    }

    static boolean hasKeepFlag(Job job) {
        Object prop = job.getProperty(ProgressManagerUtil.KEEP_PROPERTY);
        if (prop instanceof Boolean && ((Boolean)prop).booleanValue()) {
            return true;
        }
        prop = job.getProperty(ProgressManagerUtil.KEEPONE_PROPERTY);
        return prop instanceof Boolean && (Boolean)prop != false;
    }

    void addListener(KeptJobsListener l) {
        this.addListenerObject(l);
    }

    void removeListener(KeptJobsListener l) {
        this.removeListenerObject(l);
    }

    private void checkForDuplicates(GroupInfo info) {
        Object[] objects = info.getChildren();
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof JobInfo) {
                this.checkForDuplicates((JobInfo)objects[i]);
            }
            ++i;
        }
    }

    private void checkForDuplicates(JobTreeElement info) {
        JobTreeElement[] toBeRemoved = this.findJobsToRemove(info);
        if (toBeRemoved != null) {
            int i = 0;
            while (i < toBeRemoved.length) {
                this.remove(toBeRemoved[i]);
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void add(JobInfo info) {
        boolean fire = false;
        HashSet hashSet = this.keptjobinfos;
        synchronized (hashSet) {
            if (!this.keptjobinfos.contains(info)) {
                this.keptjobinfos.add(info);
                long now = System.currentTimeMillis();
                this.finishedTime.put(info, new Long(now));
                Object parent = info.getParent();
                if (parent != null && !this.keptjobinfos.contains(parent)) {
                    this.keptjobinfos.add(parent);
                    this.finishedTime.put(parent, new Long(now));
                }
                fire = true;
            }
        }
        if (fire) {
            Object[] l = this.getListeners();
            int i = 0;
            while (i < l.length) {
                KeptJobsListener jv = (KeptJobsListener)l[i];
                jv.finished(info);
                ++i;
            }
        }
    }

    static void disposeAction(JobTreeElement jte) {
        Object prop;
        JobInfo ji;
        Job job;
        if (jte.isJobInfo() && (job = (ji = (JobInfo)jte).getJob()) != null && (prop = job.getProperty(IProgressConstants.ACTION_PROPERTY)) instanceof ActionFactory.IWorkbenchAction) {
            ((ActionFactory.IWorkbenchAction)prop).dispose();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private JobTreeElement[] findJobsToRemove(JobTreeElement info) {
        Object prop;
        Job myJob;
        if (info.isJobInfo() && (myJob = ((JobInfo)info).getJob()) != null && (prop = myJob.getProperty(ProgressManagerUtil.KEEPONE_PROPERTY)) instanceof Boolean && ((Boolean)prop).booleanValue()) {
            JobTreeElement[] all;
            ArrayList<JobTreeElement> found = null;
            HashSet hashSet = this.keptjobinfos;
            synchronized (hashSet) {
                all = this.keptjobinfos.toArray(new JobTreeElement[this.keptjobinfos.size()]);
            }
            int i = 0;
            while (i < all.length) {
                Job job;
                JobTreeElement jte = all[i];
                if (jte != info && jte.isJobInfo() && (job = ((JobInfo)jte).getJob()) != null && job != myJob && job.belongsTo((Object)myJob)) {
                    if (found == null) {
                        found = new ArrayList<JobTreeElement>();
                    }
                    found.add(jte);
                }
                ++i;
            }
            if (found != null) {
                return found.toArray(new JobTreeElement[found.size()]);
            }
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void checkTasks(JobInfo info) {
        TaskInfo tinfo;
        if (FinishedJobs.keep(info) && (tinfo = info.getTaskInfo()) != null) {
            JobTreeElement[] toBeRemoved = null;
            boolean fire = false;
            JobTreeElement element = (JobTreeElement)tinfo.getParent();
            HashSet hashSet = this.keptjobinfos;
            synchronized (hashSet) {
                if (element == info && !this.keptjobinfos.contains(tinfo)) {
                    toBeRemoved = this.findJobsToRemove(element);
                    this.keptjobinfos.add(tinfo);
                    this.finishedTime.put(tinfo, new Long(System.currentTimeMillis()));
                }
            }
            if (toBeRemoved != null) {
                int i = 0;
                while (i < toBeRemoved.length) {
                    this.remove(toBeRemoved[i]);
                    ++i;
                }
            }
            if (fire) {
                Object[] l = this.getListeners();
                int i = 0;
                while (i < l.length) {
                    KeptJobsListener jv = (KeptJobsListener)l[i];
                    jv.finished(info);
                    ++i;
                }
            }
        }
    }

    public void removeErrorJobs() {
        JobTreeElement[] infos = this.getKeptElements();
        int i = 0;
        while (i < infos.length) {
            JobInfo info1;
            Job job;
            if (infos[i].isJobInfo() && (job = (info1 = (JobInfo)infos[i]).getJob()) != null) {
                if (FinishedJobs.hasKeepFlag(job)) {
                    info1.setReported(true);
                    Object[] l = this.getListeners();
                    int j = 0;
                    while (j < l.length) {
                        KeptJobsListener jv = (KeptJobsListener)l[j];
                        jv.removed(null);
                        ++j;
                    }
                } else {
                    IStatus status = job.getResult();
                    if (status != null && status.getSeverity() == 4) {
                        JobTreeElement topElement = (JobTreeElement)info1.getParent();
                        if (topElement == null) {
                            topElement = info1;
                        }
                        FinishedJobs.getInstance().remove(topElement);
                    }
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean remove(JobTreeElement jte) {
        boolean fire = false;
        boolean removed = false;
        HashSet hashSet = this.keptjobinfos;
        synchronized (hashSet) {
            if (this.keptjobinfos.remove(jte)) {
                removed = true;
                this.finishedTime.remove(jte);
                FinishedJobs.disposeAction(jte);
                JobTreeElement[] jtes = this.keptjobinfos.toArray(new JobTreeElement[this.keptjobinfos.size()]);
                int i = 0;
                while (i < jtes.length) {
                    JobTreeElement parent = (JobTreeElement)jtes[i].getParent();
                    if (parent != null && (parent == jte || parent.getParent() == jte)) {
                        if (this.keptjobinfos.remove(jtes[i])) {
                            FinishedJobs.disposeAction(jtes[i]);
                        }
                        this.finishedTime.remove(jtes[i]);
                    }
                    ++i;
                }
                fire = true;
            }
        }
        if (fire) {
            Object[] l = this.getListeners();
            int i = 0;
            while (i < l.length) {
                KeptJobsListener jv = (KeptJobsListener)l[i];
                jv.removed(jte);
                ++i;
            }
        }
        return removed;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    JobTreeElement[] getKeptElements() {
        JobTreeElement[] all;
        if (this.keptjobinfos.isEmpty()) {
            return EMPTY_INFOS;
        }
        HashSet hashSet = this.keptjobinfos;
        synchronized (hashSet) {
            all = this.keptjobinfos.toArray(new JobTreeElement[this.keptjobinfos.size()]);
        }
        return all;
    }

    public Date getFinishDate(JobTreeElement jte) {
        Object o = this.finishedTime.get(jte);
        if (o instanceof Long) {
            return new Date((Long)o);
        }
        return null;
    }

    public boolean isKept(JobTreeElement element) {
        return this.keptjobinfos.contains(element);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clearAll() {
        HashSet hashSet = this.keptjobinfos;
        synchronized (hashSet) {
            JobTreeElement[] all = this.keptjobinfos.toArray(new JobTreeElement[this.keptjobinfos.size()]);
            int i = 0;
            while (i < all.length) {
                FinishedJobs.disposeAction(all[i]);
                ++i;
            }
            this.keptjobinfos.clear();
            this.finishedTime.clear();
        }
        Object[] l = this.getListeners();
        int i = 0;
        while (i < l.length) {
            KeptJobsListener jv = (KeptJobsListener)l[i];
            jv.removed(null);
            ++i;
        }
    }

    Set getKeptAsSet() {
        return this.keptjobinfos;
    }

    static interface KeptJobsListener {
        public void finished(JobTreeElement var1);

        public void removed(JobTreeElement var1);
    }
}

