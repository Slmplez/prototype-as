/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.jdt.internal.core.search.processing;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class JobManager
implements Runnable {
    protected IJob[] awaitingJobs = new IJob[10];
    protected int jobStart = 0;
    protected int jobEnd = -1;
    protected boolean executing = false;
    protected Thread processingThread;
    protected Job progressJob;
    private int enableCount = 1;
    public static boolean VERBOSE = false;
    public boolean activated = false;
    private int awaitingClients = 0;

    public void activateProcessing() {
        this.activated = true;
    }

    public synchronized int awaitingJobsCount() {
        return this.activated ? this.jobEnd - this.jobStart + 1 : 1;
    }

    public synchronized IJob currentJob() {
        if (this.enableCount > 0 && this.jobStart <= this.jobEnd) {
            return this.awaitingJobs[this.jobStart];
        }
        return null;
    }

    public synchronized void disable() {
        --this.enableCount;
        if (VERBOSE) {
            Util.verbose("DISABLING background indexing");
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void discardJobs(String jobFamily) {
        if (VERBOSE) {
            Util.verbose("DISCARD   background job family - " + jobFamily);
        }
        try {
            IJob currentJob;
            JobManager jobManager = this;
            synchronized (jobManager) {
                currentJob = this.currentJob();
                this.disable();
            }
            if (currentJob != null && (jobFamily == null || currentJob.belongsTo(jobFamily))) {
                currentJob.cancel();
                while (this.processingThread != null && this.executing) {
                    try {
                        if (VERBOSE) {
                            Util.verbose("-> waiting end of current background job - " + currentJob);
                        }
                        Thread.sleep(50L);
                    }
                    catch (InterruptedException interruptedException) {}
                }
            }
            int loc = -1;
            JobManager jobManager2 = this;
            synchronized (jobManager2) {
                int i = this.jobStart;
                while (i <= this.jobEnd) {
                    currentJob = this.awaitingJobs[i];
                    if (currentJob != null) {
                        this.awaitingJobs[i] = null;
                        if (jobFamily != null && !currentJob.belongsTo(jobFamily)) {
                            this.awaitingJobs[++loc] = currentJob;
                        } else {
                            if (VERBOSE) {
                                Util.verbose("-> discarding background job  - " + currentJob);
                            }
                            currentJob.cancel();
                        }
                    }
                    ++i;
                }
                this.jobStart = 0;
                this.jobEnd = loc;
            }
        }
        finally {
            this.enable();
        }
        if (VERBOSE) {
            Util.verbose("DISCARD   DONE with background job family - " + jobFamily);
        }
    }

    public synchronized void enable() {
        ++this.enableCount;
        if (VERBOSE) {
            Util.verbose("ENABLING  background indexing");
        }
        this.notifyAll();
    }

    protected synchronized boolean isJobWaiting(IJob request) {
        int i = this.jobEnd;
        while (i > this.jobStart) {
            if (request.equals(this.awaitingJobs[i])) {
                return true;
            }
            --i;
        }
        return false;
    }

    protected synchronized void moveToNextJob() {
        if (this.jobStart <= this.jobEnd) {
            this.awaitingJobs[this.jobStart++] = null;
            if (this.jobStart > this.jobEnd) {
                this.jobStart = 0;
                this.jobEnd = -1;
            }
        }
    }

    protected void notifyIdle(long idlingTime) {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean performConcurrentJob(IJob searchJob, int waitingPolicy, IProgressMonitor progress) {
        if (VERBOSE) {
            Util.verbose("STARTING  concurrent job - " + searchJob);
        }
        searchJob.ensureReadyToRun();
        boolean status = false;
        try {
            int concurrentJobWork;
            block48: {
                concurrentJobWork = 100;
                if (progress != null) {
                    progress.beginTask("", concurrentJobWork);
                }
                if (this.awaitingJobsCount() <= 0) break block48;
                switch (waitingPolicy) {
                    case 1: {
                        if (VERBOSE) {
                            Util.verbose("-> NOT READY - forcing immediate - " + searchJob);
                        }
                        try {
                            this.disable();
                            status = searchJob.execute((IProgressMonitor)(progress == null ? null : new SubProgressMonitor(progress, concurrentJobWork)));
                        }
                        finally {
                            this.enable();
                        }
                        if (VERBOSE) {
                            Util.verbose("FINISHED  concurrent job - " + searchJob);
                        }
                        boolean bl = status;
                        return bl;
                    }
                    case 2: {
                        if (VERBOSE) {
                            Util.verbose("-> NOT READY - cancelling - " + searchJob);
                        }
                        if (VERBOSE) {
                            Util.verbose("CANCELED concurrent job - " + searchJob);
                        }
                        throw new OperationCanceledException();
                    }
                    case 3: {
                        SubProgressMonitor subProgress = null;
                        try {
                            Thread t;
                            int totalWork = 1000;
                            if (progress != null) {
                                subProgress = new SubProgressMonitor(progress, concurrentJobWork * 8 / 10);
                                subProgress.beginTask("", totalWork);
                                concurrentJobWork = concurrentJobWork * 2 / 10;
                            }
                            int originalPriority = (t = this.processingThread) == null ? -1 : t.getPriority();
                            try {
                                int awaitingJobsCount;
                                if (t != null) {
                                    t.setPriority(Thread.currentThread().getPriority());
                                }
                                JobManager jobManager = this;
                                synchronized (jobManager) {
                                    ++this.awaitingClients;
                                }
                                IJob previousJob = null;
                                int lastJobsCount = totalWork;
                                float lastWorked = 0.0f;
                                float totalWorked = 0.0f;
                                while ((awaitingJobsCount = this.awaitingJobsCount()) > 0) {
                                    if (subProgress != null && subProgress.isCanceled() || this.processingThread == null) {
                                        throw new OperationCanceledException();
                                    }
                                    IJob currentJob = this.currentJob();
                                    if (currentJob != null && currentJob != previousJob) {
                                        if (VERBOSE) {
                                            Util.verbose("-> NOT READY - waiting until ready - " + searchJob);
                                        }
                                        if (subProgress != null) {
                                            float ratio;
                                            String indexing = Messages.bind(Messages.jobmanager_filesToIndex, currentJob.getJobFamily(), Integer.toString(awaitingJobsCount));
                                            subProgress.subTask(indexing);
                                            float f = ratio = awaitingJobsCount < totalWork ? 1.0f : (float)totalWork / (float)awaitingJobsCount;
                                            totalWorked = lastJobsCount > awaitingJobsCount ? (totalWorked += (float)(lastJobsCount - awaitingJobsCount) * ratio) : (totalWorked += ratio);
                                            if (totalWorked - lastWorked >= 1.0f) {
                                                subProgress.worked((int)(totalWorked - lastWorked));
                                                lastWorked = totalWorked;
                                            }
                                            lastJobsCount = awaitingJobsCount;
                                        }
                                        previousJob = currentJob;
                                    }
                                    try {
                                        if (VERBOSE) {
                                            Util.verbose("-> GOING TO SLEEP - " + searchJob);
                                        }
                                        Thread.sleep(50L);
                                    }
                                    catch (InterruptedException interruptedException) {}
                                }
                            }
                            catch (Throwable throwable) {
                                JobManager jobManager = this;
                                synchronized (jobManager) {
                                    --this.awaitingClients;
                                }
                                if (t != null && originalPriority > -1 && t.isAlive()) {
                                    t.setPriority(originalPriority);
                                }
                                throw throwable;
                            }
                            JobManager jobManager = this;
                            synchronized (jobManager) {
                                --this.awaitingClients;
                            }
                            if (t != null && originalPriority > -1 && t.isAlive()) {
                                t.setPriority(originalPriority);
                            }
                        }
                        catch (Throwable throwable) {
                            if (subProgress != null) {
                                subProgress.done();
                            }
                            throw throwable;
                        }
                        if (subProgress == null) break;
                        subProgress.done();
                    }
                }
            }
            status = searchJob.execute((IProgressMonitor)(progress == null ? null : new SubProgressMonitor(progress, concurrentJobWork)));
        }
        finally {
            if (progress != null) {
                progress.done();
            }
            if (VERBOSE) {
                Util.verbose("FINISHED  concurrent job - " + searchJob);
            }
        }
        return status;
    }

    public abstract String processName();

    public synchronized void request(IJob job) {
        job.ensureReadyToRun();
        int size = this.awaitingJobs.length;
        if (++this.jobEnd == size) {
            this.jobEnd -= this.jobStart;
            if (this.jobEnd < 50 && this.jobEnd < this.jobStart) {
                System.arraycopy(this.awaitingJobs, this.jobStart, this.awaitingJobs, 0, this.jobEnd);
                int i = this.jobStart;
                while (i < size) {
                    this.awaitingJobs[i] = null;
                    ++i;
                }
            } else {
                this.awaitingJobs = new IJob[size * 2];
                System.arraycopy(this.awaitingJobs, this.jobStart, this.awaitingJobs, 0, this.jobEnd);
            }
            this.jobStart = 0;
        }
        this.awaitingJobs[this.jobEnd] = job;
        if (VERBOSE) {
            Util.verbose("REQUEST   background job - " + job);
            Util.verbose("AWAITING JOBS count: " + this.awaitingJobsCount());
        }
        this.notifyAll();
    }

    public synchronized void reset() {
        if (VERBOSE) {
            Util.verbose("Reset");
        }
        if (this.processingThread != null) {
            this.discardJobs(null);
        } else {
            this.processingThread = new Thread((Runnable)this, this.processName());
            this.processingThread.setDaemon(true);
            this.processingThread.setPriority(4);
            this.processingThread.setContextClassLoader(this.getClass().getClassLoader());
            this.processingThread.start();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void run() {
        long idlingStart = -1L;
        this.activateProcessing();
        try {
            this.progressJob = null;
            while (this.processingThread != null) {
                try {
                    IJob job;
                    JobManager jobManager = this;
                    synchronized (jobManager) {
                        if (this.processingThread == null) {
                            continue;
                        }
                        job = this.currentJob();
                        if (job == null) {
                            if (this.progressJob != null) {
                                this.progressJob.cancel();
                                this.progressJob = null;
                            }
                            if (idlingStart < 0L) {
                                idlingStart = System.currentTimeMillis();
                            } else {
                                this.notifyIdle(System.currentTimeMillis() - idlingStart);
                            }
                            this.wait();
                        } else {
                            idlingStart = -1L;
                        }
                    }
                    if (job == null) {
                        this.notifyIdle(System.currentTimeMillis() - idlingStart);
                        Thread.sleep(500L);
                        continue;
                    }
                    if (VERBOSE) {
                        Util.verbose(String.valueOf(this.awaitingJobsCount()) + " awaiting jobs");
                        Util.verbose("STARTING background job - " + job);
                    }
                    try {
                        this.executing = true;
                        if (this.progressJob == null) {
                            class ProgressJob
                            extends Job {
                                final /* synthetic */ JobManager this$0;

                                ProgressJob(JobManager jobManager, String name) {
                                    super(name);
                                    this.this$0 = jobManager;
                                }

                                protected IStatus run(IProgressMonitor monitor) {
                                    IJob job = this.this$0.currentJob();
                                    while (!monitor.isCanceled() && job != null) {
                                        String taskName = Messages.jobmanager_indexing + Messages.bind(Messages.jobmanager_filesToIndex, job.getJobFamily(), Integer.toString(this.this$0.awaitingJobsCount()));
                                        monitor.subTask(taskName);
                                        this.setName(taskName);
                                        try {
                                            Thread.sleep(500L);
                                        }
                                        catch (InterruptedException interruptedException) {}
                                        job = this.this$0.currentJob();
                                    }
                                    return Status.OK_STATUS;
                                }
                            }
                            this.progressJob = new ProgressJob(this, Messages.bind(Messages.jobmanager_indexing, "", ""));
                            this.progressJob.setPriority(30);
                            this.progressJob.setSystem(true);
                            this.progressJob.schedule();
                        }
                        job.execute(null);
                    }
                    finally {
                        this.executing = false;
                        if (VERBOSE) {
                            Util.verbose("FINISHED background job - " + job);
                        }
                        this.moveToNextJob();
                        if (this.awaitingClients == 0) {
                            Thread.sleep(50L);
                        }
                    }
                }
                catch (InterruptedException interruptedException) {}
            }
        }
        catch (RuntimeException e) {
            if (this.processingThread != null) {
                Util.log(e, "Background Indexer Crash Recovery");
                this.discardJobs(null);
                this.processingThread = null;
                this.reset();
            }
            throw e;
        }
        catch (Error e) {
            if (this.processingThread != null && !(e instanceof ThreadDeath)) {
                Util.log(e, "Background Indexer Crash Recovery");
                this.discardJobs(null);
                this.processingThread = null;
                this.reset();
            }
            throw e;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void shutdown() {
        if (VERBOSE) {
            Util.verbose("Shutdown");
        }
        this.disable();
        this.discardJobs(null);
        Thread thread = this.processingThread;
        try {
            Job job;
            if (thread != null) {
                JobManager jobManager = this;
                synchronized (jobManager) {
                    this.processingThread = null;
                    this.notifyAll();
                }
                thread.join();
            }
            if ((job = this.progressJob) != null) {
                job.cancel();
                job.join();
            }
        }
        catch (InterruptedException interruptedException) {}
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        buffer.append("Enable count:").append(this.enableCount).append('\n');
        int numJobs = this.jobEnd - this.jobStart + 1;
        buffer.append("Jobs in queue:").append(numJobs).append('\n');
        int i = 0;
        while (i < numJobs && i < 15) {
            buffer.append(i).append(" - job[" + i + "]: ").append(this.awaitingJobs[this.jobStart + i]).append('\n');
            ++i;
        }
        return buffer.toString();
    }
}

