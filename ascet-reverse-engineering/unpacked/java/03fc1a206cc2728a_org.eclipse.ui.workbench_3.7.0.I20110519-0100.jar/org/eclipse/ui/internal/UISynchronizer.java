/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Synchronizer
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Synchronizer;
import org.eclipse.ui.internal.Semaphore;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.UILockListener;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class UISynchronizer
extends Synchronizer {
    protected UILockListener lockListener;
    protected boolean isStarting = true;
    protected List pendingStartup = new ArrayList();
    private boolean use32Threading = false;
    public static final ThreadLocal startupThread = new ThreadLocal(){

        protected Object initialValue() {
            return Boolean.FALSE;
        }

        public void set(Object value) {
            if (value != Boolean.TRUE && value != Boolean.FALSE) {
                throw new IllegalArgumentException();
            }
            super.set(value);
        }
    };
    public static final ThreadLocal overrideThread = new ThreadLocal(){

        protected Object initialValue() {
            return Boolean.FALSE;
        }

        public void set(Object value) {
            if (value != Boolean.TRUE && value != Boolean.FALSE) {
                throw new IllegalArgumentException();
            }
            if (value == Boolean.TRUE && ((Boolean)startupThread.get()).booleanValue()) {
                throw new IllegalStateException();
            }
            super.set(value);
        }
    };

    public UISynchronizer(Display display, UILockListener lock) {
        super(display);
        this.lockListener = lock;
        this.use32Threading = WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("use32Threading");
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void started() {
        UISynchronizer uISynchronizer = this;
        synchronized (uISynchronizer) {
            if (!this.isStarting) {
                throw new IllegalStateException();
            }
            this.isStarting = false;
            Iterator i = this.pendingStartup.iterator();
            while (i.hasNext()) {
                Runnable runnable = (Runnable)i.next();
                try {
                    super.asyncExec(runnable);
                }
                catch (RuntimeException runtimeException) {}
            }
            this.pendingStartup = null;
            ((Object)((Object)this)).notifyAll();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void asyncExec(Runnable runnable) {
        if (runnable != null && !this.use32Threading) {
            UISynchronizer uISynchronizer = this;
            synchronized (uISynchronizer) {
                if (this.isStarting && !(runnable instanceof StartupThreading.StartupRunnable) && overrideThread.get() == Boolean.FALSE) {
                    this.pendingStartup.add(runnable);
                    return;
                }
            }
        }
        super.asyncExec(runnable);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void syncExec(Runnable runnable) {
        UISynchronizer uISynchronizer = this;
        synchronized (uISynchronizer) {
            if (this.isStarting && !this.use32Threading && startupThread.get() == Boolean.FALSE && overrideThread.get() == Boolean.FALSE) {
                do {
                    try {
                        ((Object)((Object)this)).wait();
                    }
                    catch (InterruptedException interruptedException) {}
                } while (this.isStarting);
            }
        }
        if (runnable == null || this.lockListener.isUI() || !this.lockListener.isLockOwner()) {
            super.syncExec(runnable);
            return;
        }
        Semaphore work = new Semaphore(runnable);
        work.setOperationThread(Thread.currentThread());
        this.lockListener.addPendingWork(work);
        this.asyncExec(new Runnable(){

            public void run() {
                UISynchronizer.this.lockListener.doPendingWork();
            }
        });
        try {
            do {
                if (!this.lockListener.isUIWaiting()) continue;
                this.lockListener.interruptUI();
            } while (!work.acquire(1000L));
        }
        catch (InterruptedException interruptedException) {}
    }
}

