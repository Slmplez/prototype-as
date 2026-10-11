/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;
import org.eclipse.swt.widgets.Display;

public class WorkQueue {
    private boolean updateScheduled = false;
    private LinkedList pendingWork = new LinkedList();
    private Display d;
    private Set pendingWorkSet = new HashSet();
    private Runnable updateJob = new Runnable(){

        public void run() {
            WorkQueue.this.doUpdate();
            WorkQueue.this.updateScheduled = false;
        }
    };

    public WorkQueue(Display targetDisplay) {
        this.d = targetDisplay;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void doUpdate() {
        while (true) {
            Runnable next;
            LinkedList linkedList = this.pendingWork;
            synchronized (linkedList) {
                if (this.pendingWork.isEmpty()) {
                    break;
                }
                next = (Runnable)this.pendingWork.removeFirst();
                this.pendingWorkSet.remove(next);
            }
            next.run();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void runOnce(Runnable work) {
        LinkedList linkedList = this.pendingWork;
        synchronized (linkedList) {
            if (this.pendingWorkSet.contains(work)) {
                return;
            }
            this.pendingWorkSet.add(work);
            this.asyncExec(work);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void asyncExec(Runnable work) {
        LinkedList linkedList = this.pendingWork;
        synchronized (linkedList) {
            this.pendingWork.add(work);
            if (!this.updateScheduled) {
                this.updateScheduled = true;
                this.d.timerExec(0, this.updateJob);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void cancelExec(Runnable toCancel) {
        LinkedList linkedList = this.pendingWork;
        synchronized (linkedList) {
            this.pendingWork.remove(toCancel);
            this.pendingWorkSet.remove(toCancel);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void cancelAll() {
        LinkedList linkedList = this.pendingWork;
        synchronized (linkedList) {
            this.pendingWork.clear();
            this.pendingWorkSet.clear();
        }
    }
}

