/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;

public class BatchInitializationMonitor
implements IProgressMonitor {
    public ThreadLocal initializeAfterLoadMonitor = new ThreadLocal();
    public String subTaskName = "";
    public int worked = 0;

    private IProgressMonitor getMonitor() {
        return (IProgressMonitor)this.initializeAfterLoadMonitor.get();
    }

    public void beginTask(String name, int totalWork) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.beginTask(name, totalWork);
        }
    }

    public void done() {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.done();
        }
        this.worked = 0;
        this.subTaskName = "";
    }

    public void internalWorked(double work) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.internalWorked(work);
        }
    }

    public boolean isCanceled() {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            return monitor.isCanceled();
        }
        return false;
    }

    public void setCanceled(boolean value) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.setCanceled(value);
        }
    }

    public void setTaskName(String name) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.setTaskName(name);
        }
    }

    public void subTask(String name) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.subTask(name);
        }
        this.subTaskName = name;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void worked(int work) {
        IProgressMonitor monitor = this.getMonitor();
        if (monitor != null) {
            monitor.worked(work);
        }
        BatchInitializationMonitor batchInitializationMonitor = this;
        synchronized (batchInitializationMonitor) {
            this.worked += work;
        }
    }

    public synchronized int getWorked() {
        int result = this.worked;
        this.worked = 0;
        return result;
    }
}

