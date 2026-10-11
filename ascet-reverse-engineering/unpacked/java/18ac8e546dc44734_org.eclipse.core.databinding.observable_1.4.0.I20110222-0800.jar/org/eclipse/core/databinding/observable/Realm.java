/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding.observable;

import java.util.Timer;
import java.util.TimerTask;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.internal.databinding.observable.Queue;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;

public abstract class Realm {
    private static ThreadLocal defaultRealm = new ThreadLocal();
    private Thread workerThread;
    private volatile Timer timer;
    Queue workQueue = new Queue();

    public static Realm getDefault() {
        return (Realm)defaultRealm.get();
    }

    protected static Realm setDefault(Realm realm) {
        Realm oldValue = Realm.getDefault();
        defaultRealm.set(realm);
        return oldValue;
    }

    public abstract boolean isCurrent();

    protected static void safeRun(final Runnable runnable) {
        ISafeRunnable safeRunnable = runnable instanceof ISafeRunnable ? (ISafeRunnable)runnable : new ISafeRunnable(){

            public void handleException(Throwable exception) {
                Policy.getLog().log((IStatus)new Status(4, "org.eclipse.core.databinding", 0, "Unhandled exception: " + exception.getMessage(), exception));
            }

            public void run() throws Exception {
                runnable.run();
            }
        };
        SafeRunner.run((ISafeRunnable)safeRunnable);
    }

    public void exec(Runnable runnable) {
        if (this.isCurrent()) {
            Realm.safeRun(runnable);
        } else {
            this.asyncExec(runnable);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void asyncExec(Runnable runnable) {
        Queue queue = this.workQueue;
        synchronized (queue) {
            this.ensureWorkerThreadIsRunning();
            this.workQueue.enqueue(runnable);
            this.workQueue.notifyAll();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void timerExec(int milliseconds, final Runnable runnable) {
        if (milliseconds < 0) {
            return;
        }
        if (milliseconds == 0) {
            this.asyncExec(runnable);
        } else {
            Queue queue = this.workQueue;
            synchronized (queue) {
                if (this.timer == null) {
                    this.timer = new Timer(true);
                }
                this.timer.schedule(new TimerTask(){

                    public void run() {
                        Realm.this.asyncExec(runnable);
                    }
                }, milliseconds);
            }
        }
    }

    private void ensureWorkerThreadIsRunning() {
        if (this.workerThread == null) {
            this.workerThread = new Thread(){

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                public void run() {
                    try {
                        while (true) {
                            Runnable work = null;
                            Queue queue = Realm.this.workQueue;
                            synchronized (queue) {
                                while (Realm.this.workQueue.isEmpty()) {
                                    Realm.this.workQueue.wait();
                                }
                                work = (Runnable)Realm.this.workQueue.dequeue();
                            }
                            Realm.this.syncExec(work);
                        }
                    }
                    catch (InterruptedException interruptedException) {
                        return;
                    }
                }
            };
            this.workerThread.start();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void syncExec(Runnable runnable) {
        SyncRunnable syncRunnable = new SyncRunnable(runnable);
        this.asyncExec(syncRunnable);
        SyncRunnable syncRunnable2 = syncRunnable;
        synchronized (syncRunnable2) {
            while (true) {
                if (syncRunnable.hasRun) {
                    return;
                }
                try {
                    syncRunnable.wait();
                }
                catch (InterruptedException interruptedException) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public static void runWithDefault(Realm realm, Runnable runnable) {
        Realm oldRealm = Realm.getDefault();
        try {
            defaultRealm.set(realm);
            runnable.run();
        }
        finally {
            defaultRealm.set(oldRealm);
        }
    }

    static class SyncRunnable
    implements Runnable {
        boolean hasRun = false;
        private Runnable runnable;

        SyncRunnable(Runnable runnable) {
            this.runnable = runnable;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            try {
                Realm.safeRun(this.runnable);
            }
            catch (Throwable throwable) {
                SyncRunnable syncRunnable = this;
                synchronized (syncRunnable) {
                    this.hasRun = true;
                    this.notifyAll();
                }
                throw throwable;
            }
            SyncRunnable syncRunnable = this;
            synchronized (syncRunnable) {
                this.hasRun = true;
                this.notifyAll();
            }
        }
    }
}

