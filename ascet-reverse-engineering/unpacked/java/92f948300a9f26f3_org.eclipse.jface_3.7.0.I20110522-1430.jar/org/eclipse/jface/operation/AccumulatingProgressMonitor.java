/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.operation;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.swt.widgets.Display;

class AccumulatingProgressMonitor
extends ProgressMonitorWrapper {
    private Display display;
    private Collector collector;
    private String currentTask = "";

    public AccumulatingProgressMonitor(IProgressMonitor monitor, Display display) {
        super(monitor);
        Assert.isNotNull((Object)display);
        this.display = display;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void beginTask(final String name, final int totalWork) {
        AccumulatingProgressMonitor accumulatingProgressMonitor = this;
        synchronized (accumulatingProgressMonitor) {
            this.collector = null;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                AccumulatingProgressMonitor.this.currentTask = name;
                AccumulatingProgressMonitor.this.getWrappedProgressMonitor().beginTask(name, totalWork);
            }
        });
    }

    private synchronized void clearCollector(Collector collectorToClear) {
        if (this.collector == collectorToClear) {
            this.collector = null;
        }
    }

    private void createCollector(String subTask, double work) {
        this.collector = new Collector(subTask, work, this.getWrappedProgressMonitor());
        this.display.asyncExec((Runnable)this.collector);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void done() {
        AccumulatingProgressMonitor accumulatingProgressMonitor = this;
        synchronized (accumulatingProgressMonitor) {
            this.collector = null;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                AccumulatingProgressMonitor.this.getWrappedProgressMonitor().done();
            }
        });
    }

    public synchronized void internalWorked(double work) {
        if (this.collector == null) {
            this.createCollector(null, work);
        } else {
            this.collector.worked(work);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setTaskName(final String name) {
        AccumulatingProgressMonitor accumulatingProgressMonitor = this;
        synchronized (accumulatingProgressMonitor) {
            this.collector = null;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                AccumulatingProgressMonitor.this.currentTask = name;
                AccumulatingProgressMonitor.this.getWrappedProgressMonitor().setTaskName(name);
            }
        });
    }

    public synchronized void subTask(String name) {
        if (this.collector == null) {
            this.createCollector(name, 0.0);
        } else {
            this.collector.subTask(name);
        }
    }

    public synchronized void worked(int work) {
        this.internalWorked(work);
    }

    public void clearBlocked() {
        final IProgressMonitor pm = this.getWrappedProgressMonitor();
        if (!(pm instanceof IProgressMonitorWithBlocking)) {
            return;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                ((IProgressMonitorWithBlocking)pm).clearBlocked();
                Dialog.getBlockedHandler().clearBlocked();
            }
        });
    }

    public void setBlocked(final IStatus reason) {
        final IProgressMonitor pm = this.getWrappedProgressMonitor();
        if (!(pm instanceof IProgressMonitorWithBlocking)) {
            return;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                ((IProgressMonitorWithBlocking)pm).setBlocked(reason);
                Dialog.getBlockedHandler().showBlocked(pm, reason, AccumulatingProgressMonitor.this.currentTask);
            }
        });
    }

    private class Collector
    implements Runnable {
        private String subTask;
        private double worked;
        private IProgressMonitor monitor;

        public Collector(String subTask, double work, IProgressMonitor monitor) {
            this.subTask = subTask;
            this.worked = work;
            this.monitor = monitor;
        }

        public void worked(double workedIncrement) {
            this.worked += workedIncrement;
        }

        public void subTask(String subTaskName) {
            this.subTask = subTaskName;
        }

        public void run() {
            AccumulatingProgressMonitor.this.clearCollector(this);
            if (this.subTask != null) {
                this.monitor.subTask(this.subTask);
            }
            if (this.worked > 0.0) {
                this.monitor.internalWorked(this.worked);
            }
        }
    }
}

