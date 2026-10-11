/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.JobChangeEvent;
import org.eclipse.core.internal.jobs.JobMessages;
import org.eclipse.core.internal.jobs.JobOSGiUtils;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;

class JobListeners {
    private final IListenerDoit aboutToRun = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.aboutToRun(event);
        }
    };
    private final IListenerDoit awake = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.awake(event);
        }
    };
    private final IListenerDoit done = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.done(event);
        }
    };
    private final IListenerDoit running = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.running(event);
        }
    };
    private final IListenerDoit scheduled = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.scheduled(event);
        }
    };
    private final IListenerDoit sleeping = new IListenerDoit(){

        public void notify(IJobChangeListener listener, IJobChangeEvent event) {
            listener.sleeping(event);
        }
    };
    protected final ListenerList global = new ListenerList(1);

    JobListeners() {
    }

    static JobChangeEvent newEvent(Job job) {
        JobChangeEvent instance = new JobChangeEvent();
        instance.job = job;
        return instance;
    }

    static JobChangeEvent newEvent(Job job, IStatus result) {
        JobChangeEvent instance = new JobChangeEvent();
        instance.job = job;
        instance.result = result;
        return instance;
    }

    static JobChangeEvent newEvent(Job job, long delay) {
        JobChangeEvent instance = new JobChangeEvent();
        instance.job = job;
        instance.delay = delay;
        return instance;
    }

    private void doNotify(IListenerDoit doit, IJobChangeEvent event) {
        Object[] listeners = this.global.getListeners();
        int size = listeners.length;
        int i = 0;
        while (i < size) {
            try {
                if (listeners[i] != null) {
                    doit.notify((IJobChangeListener)listeners[i], event);
                }
            }
            catch (Exception e) {
                this.handleException(listeners[i], e);
            }
            catch (LinkageError e) {
                this.handleException(listeners[i], e);
            }
            ++i;
        }
        ListenerList list = event.getJob().getListeners();
        Object[] objectArray = listeners = list == null ? null : list.getListeners();
        if (listeners == null) {
            return;
        }
        size = listeners.length;
        int i2 = 0;
        while (i2 < size) {
            try {
                if (listeners[i2] != null) {
                    doit.notify((IJobChangeListener)listeners[i2], event);
                }
            }
            catch (Exception e) {
                this.handleException(listeners[i2], e);
            }
            catch (LinkageError e) {
                this.handleException(listeners[i2], e);
            }
            ++i2;
        }
    }

    private void handleException(Object listener, Throwable e) {
        if (e instanceof OperationCanceledException) {
            return;
        }
        String pluginId = JobOSGiUtils.getDefault().getBundleId(listener);
        if (pluginId == null) {
            pluginId = "org.eclipse.core.jobs";
        }
        String message = NLS.bind((String)JobMessages.meta_pluginProblems, (Object)pluginId);
        RuntimeLog.log((IStatus)new Status(4, pluginId, 2, message, e));
    }

    public void add(IJobChangeListener listener) {
        this.global.add((Object)listener);
    }

    public void remove(IJobChangeListener listener) {
        this.global.remove((Object)listener);
    }

    public void aboutToRun(Job job) {
        this.doNotify(this.aboutToRun, JobListeners.newEvent(job));
    }

    public void awake(Job job) {
        this.doNotify(this.awake, JobListeners.newEvent(job));
    }

    public void done(Job job, IStatus result, boolean reschedule) {
        JobChangeEvent event = JobListeners.newEvent(job, result);
        event.reschedule = reschedule;
        this.doNotify(this.done, event);
    }

    public void running(Job job) {
        this.doNotify(this.running, JobListeners.newEvent(job));
    }

    public void scheduled(Job job, long delay, boolean reschedule) {
        JobChangeEvent event = JobListeners.newEvent(job, delay);
        event.reschedule = reschedule;
        this.doNotify(this.scheduled, event);
    }

    public void sleeping(Job job) {
        this.doNotify(this.sleeping, JobListeners.newEvent(job));
    }

    static interface IListenerDoit {
        public void notify(IJobChangeListener var1, IJobChangeEvent var2);
    }
}

