/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.jobs;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.internal.jobs.Counter;
import org.eclipse.core.internal.jobs.ImplicitJobs;
import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.internal.jobs.InternalWorker;
import org.eclipse.core.internal.jobs.JobChangeEvent;
import org.eclipse.core.internal.jobs.JobListeners;
import org.eclipse.core.internal.jobs.JobMessages;
import org.eclipse.core.internal.jobs.JobOSGiUtils;
import org.eclipse.core.internal.jobs.JobQueue;
import org.eclipse.core.internal.jobs.JobStatus;
import org.eclipse.core.internal.jobs.LockManager;
import org.eclipse.core.internal.jobs.Semaphore;
import org.eclipse.core.internal.jobs.ThreadJob;
import org.eclipse.core.internal.jobs.Worker;
import org.eclipse.core.internal.jobs.WorkerPool;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.core.runtime.jobs.LockListener;
import org.eclipse.core.runtime.jobs.ProgressProvider;
import org.eclipse.osgi.util.NLS;

public class JobManager
implements IJobManager {
    public static final String PI_JOBS = "org.eclipse.core.jobs";
    public static final int PLUGIN_ERROR = 2;
    private static final String OPTION_DEADLOCK_ERROR = "org.eclipse.core.jobs/jobs/errorondeadlock";
    private static final String OPTION_DEBUG_BEGIN_END = "org.eclipse.core.jobs/jobs/beginend";
    private static final String OPTION_DEBUG_YIELDING = "org.eclipse.core.jobs/jobs/yielding";
    private static final String OPTION_DEBUG_YIELDING_DETAILED = "org.eclipse.core.jobs/jobs/yielding/detailed";
    private static final String OPTION_DEBUG_JOBS = "org.eclipse.core.jobs/jobs";
    private static final String OPTION_DEBUG_JOBS_TIMING = "org.eclipse.core.jobs/jobs/timing";
    private static final String OPTION_LOCKS = "org.eclipse.core.jobs/jobs/locks";
    private static final String OPTION_SHUTDOWN = "org.eclipse.core.jobs/jobs/shutdown";
    static boolean DEBUG = false;
    static boolean DEBUG_BEGIN_END = false;
    static boolean DEBUG_YIELDING = false;
    static boolean DEBUG_YIELDING_DETAILED = false;
    static boolean DEBUG_DEADLOCK = false;
    static boolean DEBUG_LOCKS = false;
    static boolean DEBUG_TIMING = false;
    static boolean DEBUG_SHUTDOWN = false;
    private static DateFormat DEBUG_FORMAT;
    private static JobManager instance;
    private static final ISchedulingRule nullRule;
    private volatile boolean active = true;
    final ImplicitJobs implicitJobs = new ImplicitJobs(this);
    private final JobListeners jobListeners = new JobListeners();
    private final Object lock = new Object();
    private final LockManager lockManager = new LockManager();
    private WorkerPool pool;
    private ProgressProvider progressProvider = null;
    private final HashSet running;
    private final HashSet yielding;
    private final JobQueue sleeping;
    private boolean suspended = false;
    private final JobQueue waiting;
    final JobQueue waitingThreadJobs;
    Counter waitQueueCounter = new Counter();
    final List monitorStack = new ArrayList();
    private final InternalWorker internalWorker;

    static {
        nullRule = new ISchedulingRule(){

            public boolean contains(ISchedulingRule rule) {
                return rule == this;
            }

            public boolean isConflicting(ISchedulingRule rule) {
                return rule == this;
            }
        };
    }

    public static void debug(String msg) {
        StringBuffer msgBuf = new StringBuffer(msg.length() + 40);
        if (DEBUG_TIMING) {
            if (DEBUG_FORMAT == null) {
                DEBUG_FORMAT = new SimpleDateFormat("HH:mm:ss.SSS");
            }
            DEBUG_FORMAT.format(new Date(), msgBuf, new FieldPosition(0));
            msgBuf.append('-');
        }
        msgBuf.append('[').append(Thread.currentThread()).append(']').append(msg);
        System.out.println(msgBuf.toString());
    }

    static synchronized JobManager getInstance() {
        if (instance == null) {
            new JobManager();
        }
        return instance;
    }

    private static String printJobName(Job job) {
        if (job instanceof ThreadJob) {
            Job realJob = ((ThreadJob)job).realJob;
            if (realJob != null) {
                return realJob.getClass().getName();
            }
            return "ThreadJob on rule: " + job.getRule();
        }
        return job.getClass().getName();
    }

    public static String printState(Job job) {
        return JobManager.printState(job.internalGetState());
    }

    public static String printState(int state) {
        switch (state) {
            case 0: {
                return "NONE";
            }
            case 2: {
                return "WAITING";
            }
            case 1: {
                return "SLEEPING";
            }
            case 4: {
                return "RUNNING";
            }
            case 8: {
                return "BLOCKED";
            }
            case 64: {
                return "YIELDING";
            }
            case 16: {
                return "ABOUT_TO_RUN";
            }
            case 32: {
                return "ABOUT_TO_SCHEDULE";
            }
        }
        return "UNKNOWN";
    }

    public static void shutdown() {
        if (instance != null) {
            instance.doShutdown();
            instance = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private JobManager() {
        instance = this;
        this.initDebugOptions();
        Object object = this.lock;
        synchronized (object) {
            this.waiting = new JobQueue(false);
            this.waitingThreadJobs = new JobQueue(false, false);
            this.sleeping = new JobQueue(true);
            this.running = new HashSet(10);
            this.yielding = new HashSet(10);
            this.pool = new WorkerPool(this);
        }
        this.pool.setDaemon(JobOSGiUtils.getDefault().useDaemonThreads());
        this.internalWorker = new InternalWorker(this);
        this.internalWorker.setDaemon(JobOSGiUtils.getDefault().useDaemonThreads());
        this.internalWorker.start();
    }

    public void addJobChangeListener(IJobChangeListener listener) {
        this.jobListeners.add(listener);
    }

    public void beginRule(ISchedulingRule rule, IProgressMonitor monitor) {
        this.validateRule(rule);
        this.implicitJobs.begin(rule, this.monitorFor(monitor), false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean cancel(InternalJob job) {
        IProgressMonitor monitor = null;
        boolean runCanceling = false;
        Object object = this.lock;
        synchronized (object) {
            switch (job.getState()) {
                case 0: {
                    return true;
                }
                case 4: {
                    if (job.internalGetState() != 4) {
                        job.setAboutToRunCanceled(true);
                        return false;
                    }
                    monitor = job.getProgressMonitor();
                    boolean bl = runCanceling = !job.isRunCanceled();
                    if (!runCanceling) break;
                    job.setRunCanceled(true);
                    break;
                }
                default: {
                    this.changeState(job, 0);
                }
            }
        }
        if (monitor == null) {
            this.jobListeners.done((Job)job, Status.CANCEL_STATUS, false);
            return true;
        }
        if (runCanceling) {
            if (!monitor.isCanceled()) {
                monitor.setCanceled(true);
            }
            job.canceling();
        }
        return false;
    }

    public void cancel(Object family) {
        Iterator it = this.select(family).iterator();
        while (it.hasNext()) {
            this.cancel((Job)it.next());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void changeState(InternalJob job, int newState) {
        boolean blockedJobs = false;
        Object object = this.lock;
        synchronized (object) {
            Object object2 = job.jobStateLock;
            synchronized (object2) {
                job.jobStateLock.notifyAll();
                int oldState = job.internalGetState();
                switch (oldState) {
                    case 64: {
                        this.yielding.remove(job);
                    }
                    case 0: 
                    case 32: {
                        break;
                    }
                    case 8: {
                        job.remove();
                        break;
                    }
                    case 2: {
                        try {
                            this.waiting.remove(job);
                        }
                        catch (RuntimeException runtimeException) {
                            Assert.isLegal((boolean)false, (String)"Tried to remove a job that wasn't in the queue");
                        }
                        break;
                    }
                    case 1: {
                        try {
                            this.sleeping.remove(job);
                        }
                        catch (RuntimeException runtimeException) {
                            Assert.isLegal((boolean)false, (String)"Tried to remove a job that wasn't in the queue");
                        }
                        break;
                    }
                    case 4: 
                    case 16: {
                        this.running.remove(job);
                        InternalJob blocked = job.previous();
                        job.remove();
                        blockedJobs = blocked != null;
                        while (blocked != null) {
                            InternalJob previous = blocked.previous();
                            this.changeState(blocked, 2);
                            blocked = previous;
                        }
                        break;
                    }
                    default: {
                        Assert.isLegal((boolean)false, (String)("Invalid job state: " + job + ", state: " + oldState));
                    }
                }
                job.internalSetState(newState);
                switch (newState) {
                    case 0: {
                        job.setStartTime(-1L);
                        job.setWaitQueueStamp(-1L);
                        job.setRunCanceled(false);
                    }
                    case 8: {
                        break;
                    }
                    case 2: {
                        this.waiting.enqueue(job);
                        break;
                    }
                    case 1: {
                        try {
                            this.sleeping.enqueue(job);
                            break;
                        }
                        catch (RuntimeException runtimeException) {
                            throw new RuntimeException("Error changing from state: " + oldState);
                        }
                    }
                    case 4: 
                    case 16: {
                        job.setStartTime(-1L);
                        job.setWaitQueueStamp(-1L);
                        this.running.add(job);
                        break;
                    }
                    case 64: {
                        this.yielding.add(job);
                    }
                    case 32: {
                        break;
                    }
                    default: {
                        Assert.isLegal((boolean)false, (String)("Invalid job state: " + job + ", state: " + newState));
                    }
                }
            }
        }
        if (blockedJobs) {
            this.pool.jobQueued();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IProgressMonitor createMonitor(InternalJob job, IProgressMonitor group, int ticks) {
        Object object = this.lock;
        synchronized (object) {
            block6: {
                if (job.getState() == 0) break block6;
                return null;
            }
            NullProgressMonitor monitor = null;
            if (this.progressProvider != null) {
                monitor = this.progressProvider.createMonitor((Job)job, group, ticks);
            }
            if (monitor == null) {
                monitor = new NullProgressMonitor();
            }
            return monitor;
        }
    }

    private IProgressMonitor createMonitor(Job job) {
        IProgressMonitor monitor = null;
        if (this.progressProvider != null) {
            monitor = this.progressProvider.createMonitor(job);
        }
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        return monitor;
    }

    public IProgressMonitor createProgressGroup() {
        if (this.progressProvider != null) {
            return this.progressProvider.createProgressGroup();
        }
        return new NullProgressMonitor();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Job currentJob() {
        Thread current = Thread.currentThread();
        if (current instanceof Worker) {
            return ((Worker)current).currentJob();
        }
        Object object = this.lock;
        synchronized (object) {
            Iterator it = this.running.iterator();
            while (it.hasNext()) {
                Job job = (Job)it.next();
                if (job.getThread() != current) continue;
                return job;
            }
        }
        return null;
    }

    public ISchedulingRule currentRule() {
        Job currentJob = this.implicitJobs.getThreadJob(Thread.currentThread());
        if (currentJob != null) {
            return currentJob.getRule();
        }
        currentJob = this.currentJob();
        if (currentJob != null) {
            return currentJob.getRule();
        }
        return null;
    }

    private long delayFor(int priority) {
        switch (priority) {
            case 10: {
                return 0L;
            }
            case 20: {
                return 50L;
            }
            case 30: {
                return 100L;
            }
            case 40: {
                return 500L;
            }
            case 50: {
                return 1000L;
            }
        }
        Assert.isTrue((boolean)false, (String)("Job has invalid priority: " + priority));
        return 0L;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void doSchedule(InternalJob job, long delay) {
        Object object = this.lock;
        synchronized (object) {
            int state = job.internalGetState();
            if (state != 32 && state != 1) {
                return;
            }
            if (job.getPriority() == 50 && job.getRule() == null) {
                long minDelay = this.running.size() * 100;
                delay = Math.max(delay, minDelay);
            }
            if (delay > 0L) {
                job.setStartTime(System.currentTimeMillis() + delay);
                this.changeState(job, 1);
            } else {
                job.setStartTime(System.currentTimeMillis() + this.delayFor(job.getPriority()));
                job.setWaitQueueStamp(this.waitQueueCounter.increment());
                this.changeState(job, 2);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void doShutdown() {
        Job[] toCancel = null;
        Object object = this.lock;
        synchronized (object) {
            if (!this.active) {
                return;
            }
            this.active = false;
            toCancel = this.running.toArray(new Job[this.running.size()]);
            this.sleeping.clear();
            this.waiting.clear();
        }
        if (toCancel != null && toCancel.length > 0) {
            int i = 0;
            while (i < toCancel.length) {
                this.cancel(toCancel[i]);
                ++i;
            }
            int waitAttempts22 = 0;
            while (waitAttempts22 < 3) {
                Thread.yield();
                Object object2 = this.lock;
                synchronized (object2) {
                    if (this.running.isEmpty()) {
                        break;
                    }
                }
                if (DEBUG_SHUTDOWN) {
                    JobManager.debug("Shutdown - job wait cycle #" + (waitAttempts22 + 1));
                    Job[] stillRunning = null;
                    Object object3 = this.lock;
                    synchronized (object3) {
                        stillRunning = this.running.toArray(new Job[this.running.size()]);
                    }
                    if (stillRunning != null) {
                        int j = 0;
                        while (j < stillRunning.length) {
                            JobManager.debug("\tJob: " + JobManager.printJobName(stillRunning[j]));
                            ++j;
                        }
                    }
                }
                try {
                    Thread.sleep(100L);
                }
                catch (InterruptedException interruptedException) {}
                Thread.yield();
                ++waitAttempts22;
            }
            Object waitAttempts22 = this.lock;
            synchronized (waitAttempts22) {
                toCancel = this.running.toArray(new Job[this.running.size()]);
            }
        }
        this.internalWorker.cancel();
        if (toCancel != null) {
            int i = 0;
            while (i < toCancel.length) {
                String jobName = JobManager.printJobName(toCancel[i]);
                String msg = "Job found still running after platform shutdown.  Jobs should be canceled by the plugin that scheduled them during shutdown: " + jobName;
                RuntimeLog.log((IStatus)new Status(2, PI_JOBS, 2, msg, null));
                System.err.println(msg);
                ++i;
            }
        }
        Object object4 = this.lock;
        synchronized (object4) {
            this.running.clear();
        }
        this.pool.shutdown();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void endJob(InternalJob job, IStatus result, boolean notify) {
        boolean reschedule;
        long rescheduleDelay = -1L;
        Object object = this.lock;
        synchronized (object) {
            if (result == Job.ASYNC_FINISH) {
                return;
            }
            if (job.getState() == 0) {
                return;
            }
            if (DEBUG && notify) {
                JobManager.debug("Ending job: " + job);
            }
            job.setResult(result);
            job.setProgressMonitor(null);
            job.setThread(null);
            rescheduleDelay = job.getStartTime();
            this.changeState(job, 0);
        }
        boolean bl = reschedule = this.active && rescheduleDelay > -1L && job.shouldSchedule();
        if (notify) {
            this.jobListeners.done((Job)job, result, reschedule);
        }
        if (reschedule) {
            this.schedule(job, rescheduleDelay, reschedule);
        }
        if ((result.getSeverity() & 6) != 0) {
            RuntimeLog.log((IStatus)result);
        }
    }

    public void endRule(ISchedulingRule rule) {
        this.implicitJobs.end(rule, false);
    }

    public Job[] find(Object family) {
        List members = this.select(family);
        return members.toArray(new Job[members.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected InternalJob findBlockingJob(InternalJob waitingJob) {
        if (waitingJob.getRule() == null) {
            return null;
        }
        Object object = this.lock;
        synchronized (object) {
            InternalJob job;
            Iterator it;
            block11: {
                block10: {
                    if (!this.running.isEmpty()) break block10;
                    return null;
                }
                boolean hasBlockedJobs = false;
                it = this.running.iterator();
                while (it.hasNext()) {
                    job = (InternalJob)it.next();
                    if (waitingJob.isConflicting(job)) {
                        return job;
                    }
                    if (hasBlockedJobs) continue;
                    boolean bl = hasBlockedJobs = job.previous() != null;
                }
                if (hasBlockedJobs) break block11;
                return null;
            }
            it = this.running.iterator();
            while (it.hasNext()) {
                job = (InternalJob)it.next();
                while ((job = job.previous()) != null) {
                    if (!waitingJob.isConflicting(job)) continue;
                    return job;
                }
            }
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    InternalJob findBlockedJob(InternalJob job, Iterator jobs) {
        Object object = this.lock;
        synchronized (object) {
            while (jobs.hasNext()) {
                InternalJob waitingJob = (InternalJob)jobs.next();
                if (!waitingJob.isConflicting(job)) continue;
                return waitingJob;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void dequeue(JobQueue queue, InternalJob job) {
        Object object = this.lock;
        synchronized (object) {
            queue.remove(job);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void enqueue(JobQueue queue, InternalJob job) {
        Object object = this.lock;
        synchronized (object) {
            queue.enqueue(job);
        }
    }

    public LockManager getLockManager() {
        return this.lockManager;
    }

    private String getWaitMessage(int jobCount) {
        String message = jobCount == 1 ? JobMessages.jobs_waitFamSubOne : JobMessages.jobs_waitFamSub;
        return NLS.bind((String)message, (Object)Integer.toString(jobCount));
    }

    private void initDebugOptions() {
        DEBUG = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEBUG_JOBS, false);
        DEBUG_BEGIN_END = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEBUG_BEGIN_END, false);
        DEBUG_YIELDING = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEBUG_YIELDING, false);
        DEBUG_YIELDING_DETAILED = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEBUG_YIELDING_DETAILED, false);
        DEBUG_DEADLOCK = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEADLOCK_ERROR, false);
        DEBUG_LOCKS = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_LOCKS, false);
        DEBUG_TIMING = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_DEBUG_JOBS_TIMING, false);
        DEBUG_SHUTDOWN = JobOSGiUtils.getDefault().getBooleanDebugOption(OPTION_SHUTDOWN, false);
    }

    protected boolean isActive() {
        return this.active;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean isBlocking(InternalJob runningJob) {
        Object object = this.lock;
        synchronized (object) {
            if (runningJob.getState() != 4) {
                return false;
            }
            InternalJob previous = runningJob.previous();
            while (true) {
                if (previous == null) {
                    return false;
                }
                if (previous.getPriority() < runningJob.getPriority()) {
                    if (!previous.isSystem()) {
                        return true;
                    }
                    if (previous instanceof ThreadJob && ((ThreadJob)previous).shouldInterrupt()) {
                        return true;
                    }
                }
                previous = previous.previous();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isIdle() {
        Object object = this.lock;
        synchronized (object) {
            return this.running.isEmpty() && this.waiting.isEmpty();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isSuspended() {
        Object object = this.lock;
        synchronized (object) {
            return this.suspended;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void join(InternalJob job) {
        JobChangeAdapter listener;
        Semaphore barrier;
        Object object = this.lock;
        synchronized (object) {
            int state = job.getState();
            if (state == 0) {
                return;
            }
            if (this.suspended && state != 4) {
                return;
            }
            if (state == 4 && job.getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Job attempted to join itself");
            }
            barrier = new Semaphore(null);
            listener = new JobChangeAdapter(){

                public void done(IJobChangeEvent event) {
                    barrier.release();
                }
            };
            job.addJobChangeListener(listener);
        }
        try {
            while (true) {
                this.lockManager.aboutToWait(job.getThread());
                try {
                    if (!barrier.acquire(Long.MAX_VALUE)) continue;
                }
                catch (InterruptedException interruptedException) {
                    continue;
                }
                break;
            }
        }
        finally {
            this.lockManager.aboutToRelease();
            job.removeJobChangeListener(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void join(final Object family, IProgressMonitor monitor) throws InterruptedException, OperationCanceledException {
        int jobCount;
        Set jobs;
        monitor = this.monitorFor(monitor);
        JobChangeAdapter listener = null;
        Job blocking = null;
        Object object = this.lock;
        synchronized (object) {
            int states = this.suspended ? 4 : 7;
            jobs = Collections.synchronizedSet(new HashSet(this.select(family, states)));
            jobCount = jobs.size();
            if (jobCount > 0) {
                if (jobCount == 1) {
                    blocking = (Job)jobs.iterator().next();
                }
                listener = new JobChangeAdapter(){

                    public void done(IJobChangeEvent event) {
                        if (!((JobChangeEvent)event).reschedule) {
                            jobs.remove(event.getJob());
                        }
                    }

                    public void scheduled(IJobChangeEvent event) {
                        if (((JobChangeEvent)event).reschedule) {
                            return;
                        }
                        Job job = event.getJob();
                        if (job.belongsTo(family)) {
                            jobs.add(job);
                        }
                    }
                };
                this.addJobChangeListener(listener);
            }
        }
        if (jobCount == 0) {
            monitor.beginTask(JobMessages.jobs_blocked0, 1);
            monitor.done();
            return;
        }
        try {
            int jobsLeft;
            monitor.beginTask(JobMessages.jobs_blocked0, jobCount);
            monitor.subTask(this.getWaitMessage(jobCount));
            this.reportBlocked(monitor, blocking);
            int reportedWorkDone = 0;
            while ((jobsLeft = jobs.size()) > 0) {
                int actualWorkDone = Math.max(0, jobCount - jobsLeft);
                if (reportedWorkDone < actualWorkDone) {
                    monitor.worked(actualWorkDone - reportedWorkDone);
                    reportedWorkDone = actualWorkDone;
                    monitor.subTask(this.getWaitMessage(jobsLeft));
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                this.lockManager.aboutToWait(null);
                Thread.sleep(100L);
            }
        }
        finally {
            this.lockManager.aboutToRelease();
            this.removeJobChangeListener(listener);
            this.reportUnblocked(monitor);
            monitor.done();
        }
    }

    private IProgressMonitor monitorFor(IProgressMonitor monitor) {
        if ((monitor == null || monitor instanceof NullProgressMonitor) && this.progressProvider != null) {
            try {
                monitor = this.progressProvider.getDefaultMonitor();
            }
            catch (Exception e) {
                String msg = NLS.bind((String)JobMessages.meta_pluginProblems, (Object)PI_JOBS);
                RuntimeLog.log((IStatus)new Status(4, PI_JOBS, 2, msg, (Throwable)e));
            }
        }
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        return monitor;
    }

    public ILock newLock() {
        return this.lockManager.newLock();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Job nextJob() {
        Object object = this.lock;
        synchronized (object) {
            block8: {
                if (!this.suspended) break block8;
                return null;
            }
            long now = System.currentTimeMillis();
            InternalJob job = this.sleeping.peek();
            while (job != null && job.getStartTime() < now) {
                job.setStartTime(now + this.delayFor(job.getPriority()));
                job.setWaitQueueStamp(this.waitQueueCounter.increment());
                this.changeState(job, 2);
                job = this.sleeping.peek();
            }
            while ((job = this.waiting.peek()) != null) {
                InternalJob blocker = this.findBlockingJob(job);
                if (blocker == null) break;
                this.changeState(job, 8);
                Assert.isTrue((job.next() == null ? 1 : 0) != 0);
                Assert.isTrue((job.previous() == null ? 1 : 0) != 0);
                blocker.addLast(job);
            }
            if (job != null) {
                this.changeState(job, 16);
                if (DEBUG) {
                    JobManager.debug("Starting job: " + job);
                }
            }
            return (Job)job;
        }
    }

    public void removeJobChangeListener(IJobChangeListener listener) {
        this.jobListeners.remove(listener);
    }

    final void reportBlocked(IProgressMonitor monitor, InternalJob blockingJob) {
        Status reason;
        if (!(monitor instanceof IProgressMonitorWithBlocking)) {
            return;
        }
        if (blockingJob == null || blockingJob instanceof ThreadJob || blockingJob.isSystem()) {
            reason = new Status(1, PI_JOBS, 1, JobMessages.jobs_blocked0, null);
        } else {
            String msg = NLS.bind((String)JobMessages.jobs_blocked1, (Object)blockingJob.getName());
            reason = new JobStatus(1, (Job)blockingJob, msg);
        }
        ((IProgressMonitorWithBlocking)monitor).setBlocked((IStatus)reason);
    }

    final void reportUnblocked(IProgressMonitor monitor) {
        if (monitor instanceof IProgressMonitorWithBlocking) {
            ((IProgressMonitorWithBlocking)monitor).clearBlocked();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final void resume() {
        Object object = this.lock;
        synchronized (object) {
            this.suspended = false;
            this.pool.jobQueued();
        }
    }

    public final void resume(ISchedulingRule rule) {
        this.implicitJobs.resume(rule);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected InternalJob runNow(ThreadJob job, boolean releaseWaiting) {
        if (releaseWaiting) {
            ImplicitJobs implicitJobs = this.implicitJobs;
            synchronized (implicitJobs) {
                Object object = this.lock;
                synchronized (object) {
                    return this.doRunNow(job, releaseWaiting);
                }
            }
        }
        Object object = this.lock;
        synchronized (object) {
            return this.doRunNow(job, releaseWaiting);
        }
    }

    private InternalJob doRunNow(ThreadJob job, boolean releaseWaiting) {
        InternalJob blocking = this.findBlockingJob(job);
        if (blocking == null) {
            this.changeState(job, 4);
            job.setProgressMonitor((IProgressMonitor)new NullProgressMonitor());
            job.run(null);
            if (releaseWaiting) {
                this.implicitJobs.removeWaiting(job);
            }
        }
        return blocking;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void schedule(InternalJob job, long delay, boolean reschedule) {
        if (!this.active) {
            throw new IllegalStateException("Job manager has been shut down.");
        }
        Assert.isNotNull((Object)job, (String)"Job is null");
        Assert.isLegal((delay >= 0L ? 1 : 0) != 0, (String)"Scheduling delay is negative");
        Object object = this.lock;
        synchronized (object) {
            if (job.getState() == 4) {
                job.setStartTime(delay);
                return;
            }
            if (job.internalGetState() != 0) {
                return;
            }
            if (DEBUG) {
                JobManager.debug("Scheduling job: " + job);
            }
            this.changeState(job, 32);
        }
        this.jobListeners.scheduled((Job)job, delay, reschedule);
        this.doSchedule(job, delay);
        this.pool.jobQueued();
    }

    private void select(List members, Object family, InternalJob firstJob, int stateMask) {
        if (firstJob == null) {
            return;
        }
        InternalJob job = firstJob;
        do {
            if (family != null && !job.belongsTo(family) || (job.getState() & stateMask) == 0) continue;
            members.add(job);
        } while ((job = job.previous()) != null && job != firstJob);
    }

    private List select(Object family) {
        return this.select(family, 7);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private List select(Object family, int stateMask) {
        ArrayList members = new ArrayList();
        Object object = this.lock;
        synchronized (object) {
            Iterator it;
            if ((stateMask & 4) != 0) {
                it = this.running.iterator();
                while (it.hasNext()) {
                    this.select(members, family, (InternalJob)it.next(), stateMask);
                }
            }
            if ((stateMask & 2) != 0) {
                this.select(members, family, this.waiting.peek(), stateMask);
                it = this.yielding.iterator();
                while (it.hasNext()) {
                    this.select(members, family, (InternalJob)it.next(), stateMask);
                }
            }
            if ((stateMask & 1) != 0) {
                this.select(members, family, this.sleeping.peek(), stateMask);
            }
        }
        return members;
    }

    public void setLockListener(LockListener listener) {
        this.lockManager.setLockListener(listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setPriority(InternalJob job, int newPriority) {
        Object object = this.lock;
        synchronized (object) {
            int oldPriority = job.getPriority();
            if (oldPriority == newPriority) {
                return;
            }
            job.internalSetPriority(newPriority);
            if (job.getState() == 2) {
                long oldStart = job.getStartTime();
                job.setStartTime(oldStart + (this.delayFor(newPriority) - this.delayFor(oldPriority)));
                this.waiting.resort(job);
            }
        }
    }

    public void setProgressProvider(ProgressProvider provider) {
        this.progressProvider = provider;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setRule(InternalJob job, ISchedulingRule rule) {
        Object object = this.lock;
        synchronized (object) {
            Assert.isLegal((job.getState() == 0 ? 1 : 0) != 0);
            this.validateRule(rule);
            job.internalSetRule(rule);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean sleep(InternalJob job) {
        Object object = this.lock;
        synchronized (object) {
            switch (job.getState()) {
                case 4: {
                    if (job.internalGetState() != 4) break;
                    return false;
                }
                case 1: {
                    job.setStartTime(Long.MAX_VALUE);
                    this.changeState(job, 1);
                    return true;
                }
                case 0: {
                    return true;
                }
            }
            job.setStartTime(Long.MAX_VALUE);
            this.changeState(job, 1);
        }
        this.jobListeners.sleeping((Job)job);
        return true;
    }

    public void sleep(Object family) {
        Iterator it = this.select(family).iterator();
        while (it.hasNext()) {
            this.sleep((InternalJob)it.next());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected long sleepHint() {
        Object object = this.lock;
        synchronized (object) {
            InternalJob next;
            block8: {
                block7: {
                    block6: {
                        if (!this.suspended) break block6;
                        return Long.MAX_VALUE;
                    }
                    if (this.waiting.isEmpty()) break block7;
                    return 0L;
                }
                next = this.sleeping.peek();
                if (next != null) break block8;
                return Long.MAX_VALUE;
            }
            return next.getStartTime() - System.currentTimeMillis();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Job yieldRule(InternalJob job, IProgressMonitor monitor) {
        InternalJob unblocked;
        ThreadJob likeThreadJob;
        Thread currentThread = Thread.currentThread();
        Assert.isLegal((job.getState() == 4 ? 1 : 0) != 0, (String)("Cannot yieldRule job that is " + JobManager.printState(job.internalGetState())));
        Assert.isLegal((currentThread == job.getThread() ? 1 : 0) != 0, (String)"Cannot yieldRule from outside job's thread");
        ImplicitJobs implicitJobs = this.implicitJobs;
        synchronized (implicitJobs) {
            Object object = this.lock;
            synchronized (object) {
                likeThreadJob = this.implicitJobs.getThreadJob(currentThread);
                unblocked = job.previous();
                if (unblocked == null) {
                    if (likeThreadJob != null) {
                        unblocked = likeThreadJob.previous();
                        if (unblocked == null) {
                            unblocked = this.findBlockedJob(likeThreadJob, this.waitingThreadJobs.iterator());
                        }
                    } else {
                        unblocked = this.findBlockedJob(job, this.waitingThreadJobs.iterator());
                    }
                }
                if (unblocked == null) {
                    return null;
                }
                this.changeState(job, 64);
                if (DEBUG_YIELDING) {
                    JobManager.debug(job + " will yieldRule to " + unblocked);
                }
                if (likeThreadJob != null && likeThreadJob != job) {
                    this.changeState(likeThreadJob, 64);
                    if (DEBUG_YIELDING) {
                        JobManager.debug(job + " will yieldRule to " + unblocked);
                    }
                }
                if (likeThreadJob != null) {
                    job.setThread(null);
                    if (likeThreadJob.getRule() != null) {
                        this.getLockManager().removeLockThread(currentThread, likeThreadJob.getRule());
                    }
                }
                if (job.getRule() != null && !(job instanceof ThreadJob)) {
                    this.getLockManager().removeLockThread(currentThread, job.getRule());
                }
            }
        }
        if (DEBUG_YIELDING_DETAILED) {
            JobManager.debug(job + " is waiting for " + unblocked + " to transition from WAITING state");
        }
        this.waitForUnblocked(unblocked);
        IProgressMonitor mon = this.monitorFor(monitor);
        ProgressMonitorWrapper nonCanceling = new ProgressMonitorWrapper(mon){

            public boolean isCanceled() {
                this.getWrappedProgressMonitor().isCanceled();
                return false;
            }
        };
        if (DEBUG_YIELDING) {
            JobManager.debug(job + " waiting to resume");
        }
        if (likeThreadJob == null) {
            ThreadJob threadJob = new ThreadJob(job.getRule()){

                boolean isResumingAfterYield() {
                    return true;
                }
            };
            threadJob.setRealJob((Job)job);
            ThreadJob.joinRun(threadJob, (IProgressMonitor)nonCanceling);
            Object object = this.lock;
            synchronized (object) {
                this.changeState(threadJob, 0);
                this.changeState(job, 4);
                job.setThread(currentThread);
            }
        }
        ThreadJob.joinRun(likeThreadJob, (IProgressMonitor)nonCanceling);
        Object object = this.lock;
        synchronized (object) {
            this.changeState(job, 4);
            job.setThread(currentThread);
        }
        if (DEBUG_YIELDING) {
            object = this.lock;
            synchronized (object) {
                Iterator it = this.running.iterator();
                while (it.hasNext()) {
                    InternalJob other = (InternalJob)it.next();
                    if (other == job) continue;
                    Assert.isTrue((!other.isConflicting(job) ? 1 : 0) != 0, (String)(other + " conflicts and ran simultaneously with " + job));
                }
            }
            JobManager.debug(job + " resumed");
        }
        if (unblocked instanceof ThreadJob && ((ThreadJob)unblocked).isResumingAfterYield()) {
            return ((ThreadJob)unblocked).realJob;
        }
        return (Job)unblocked;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    private void waitForUnblocked(InternalJob theJob) {
        block10: {
            interrupted = false;
            var3_3 = theJob.jobStateLock;
            synchronized (var3_3) {
                if (!(theJob instanceof ThreadJob)) ** GOTO lbl19
                while (((ThreadJob)theJob).isWaiting) {
                    try {
                        theJob.jobStateLock.wait();
                    }
                    catch (InterruptedException v0) {
                        interrupted = true;
                    }
                }
                break block10;
lbl-1000:
                // 1 sources

                {
                    try {
                        theJob.jobStateLock.wait();
                        continue;
                    }
                    catch (InterruptedException v1) {
                        interrupted = true;
                    }
lbl19:
                    // 3 sources

                    ** while (theJob.internalGetState() == 2)
                }
lbl20:
                // 1 sources

            }
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
    }

    private boolean shouldRun(Job job) {
        Object t;
        try {
            return job.shouldRun();
        }
        catch (Exception e) {
            t = e;
        }
        catch (LinkageError e) {
            t = e;
        }
        catch (AssertionError e) {
            t = e;
        }
        RuntimeLog.log((IStatus)new Status(4, PI_JOBS, 2, "Error invoking shouldRun() method on: " + job, (Throwable)t));
        return false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected Job startJob() {
        Job job = null;
        while (true) {
            if ((job = this.nextJob()) == null) {
                return null;
            }
            boolean shouldRun = this.shouldRun(job);
            if (shouldRun) {
                this.jobListeners.aboutToRun(job);
            }
            boolean endJob = false;
            Object object = this.lock;
            synchronized (object) {
                Job internal = job;
                Object object2 = internal.jobStateLock;
                synchronized (object2) {
                    if (internal.internalGetState() == 16) {
                        if (shouldRun && !internal.isAboutToRunCanceled()) {
                            internal.setProgressMonitor(this.createMonitor(job));
                            internal.internalSetState(4);
                            internal.jobStateLock.notifyAll();
                            break;
                        }
                        internal.setAboutToRunCanceled(false);
                        endJob = true;
                    }
                }
            }
            if (!endJob) continue;
            this.endJob(job, Status.CANCEL_STATUS, true);
        }
        this.jobListeners.running(job);
        return job;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final void suspend() {
        Object object = this.lock;
        synchronized (object) {
            this.suspended = true;
        }
    }

    public final void suspend(ISchedulingRule rule, IProgressMonitor monitor) {
        Assert.isNotNull((Object)rule);
        this.implicitJobs.suspend(rule, this.monitorFor(monitor));
    }

    public void transferRule(ISchedulingRule rule, Thread destinationThread) {
        this.implicitJobs.transfer(rule, destinationThread);
    }

    private void validateRule(ISchedulingRule rule) {
        if (rule == null) {
            return;
        }
        Assert.isLegal((boolean)rule.contains(rule));
        Assert.isLegal((!rule.contains(nullRule) ? 1 : 0) != 0);
        Assert.isLegal((boolean)rule.isConflicting(rule));
        Assert.isLegal((!rule.isConflicting(nullRule) ? 1 : 0) != 0);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void wakeUp(InternalJob job, long delay) {
        Assert.isLegal((delay >= 0L ? 1 : 0) != 0, (String)"Scheduling delay is negative");
        Object object = this.lock;
        synchronized (object) {
            if (job.getState() != 1) {
                return;
            }
            this.doSchedule(job, delay);
        }
        this.pool.jobQueued();
        if (delay == 0L) {
            this.jobListeners.awake((Job)job);
        }
    }

    public void wakeUp(Object family) {
        Iterator it = this.select(family).iterator();
        while (it.hasNext()) {
            this.wakeUp((InternalJob)it.next(), 0L);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void endMonitoring(ThreadJob threadJob) {
        List list = this.monitorStack;
        synchronized (list) {
            int i = this.monitorStack.size() - 1;
            while (i >= 0) {
                if (((Object[])this.monitorStack.get(i))[0] == threadJob) {
                    this.monitorStack.remove(i);
                    this.monitorStack.notifyAll();
                    break;
                }
                --i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void beginMonitoring(ThreadJob threadJob, IProgressMonitor monitor) {
        List list = this.monitorStack;
        synchronized (list) {
            this.monitorStack.add(new Object[]{threadJob, monitor});
            this.monitorStack.notifyAll();
        }
    }
}

