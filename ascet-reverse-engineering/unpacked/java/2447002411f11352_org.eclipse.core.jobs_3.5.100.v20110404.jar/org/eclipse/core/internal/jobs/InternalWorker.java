/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.jobs;

import java.util.List;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;

public class InternalWorker
extends Thread {
    private final JobManager manager;
    private boolean canceled;

    InternalWorker(JobManager manager) {
        super("Worker-JM");
        this.manager = manager;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void run() {
        timeout = 0;
        var2_2 = this.manager.monitorStack;
        synchronized (var2_2) {
            while (true) {
                if (this.canceled) {
                    return;
                }
                timeout = this.manager.monitorStack.isEmpty() != false ? 0 : 250;
                i = 0;
                while (true) {
                    if (i >= this.manager.monitorStack.size()) {
                        ** try [egrp 1[TRYBLOCK] [0 : 126->141)] { 
lbl13:
                        // 1 sources

                        break;
                    }
                    o = (Object[])this.manager.monitorStack.get(i);
                    monitor = (IProgressMonitor)o[1];
                    if (monitor.isCanceled() && (t = (job = (Job)o[0]).getThread()) != null) {
                        t.interrupt();
                    }
                    ++i;
                }
                {
                    this.manager.monitorStack.wait(timeout);
                    continue;
                }
lbl22:
                // 1 sources

                catch (InterruptedException v0) {}
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void cancel() {
        List list = this.manager.monitorStack;
        synchronized (list) {
            this.canceled = true;
            this.manager.monitorStack.notifyAll();
        }
    }
}

