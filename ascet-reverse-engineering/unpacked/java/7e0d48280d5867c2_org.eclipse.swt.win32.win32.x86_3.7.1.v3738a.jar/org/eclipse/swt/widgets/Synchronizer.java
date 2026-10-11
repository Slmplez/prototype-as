/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.RunnableLock;

public class Synchronizer {
    Display display;
    int messageCount;
    RunnableLock[] messages;
    Object messageLock = new Object();
    Thread syncThread;
    static final int GROW_SIZE = 4;
    static final int MESSAGE_LIMIT = 64;
    static final boolean IS_CARBON = "carbon".equals(SWT.getPlatform());
    static final boolean IS_COCOA = "cocoa".equals(SWT.getPlatform());
    static final boolean IS_GTK = "gtk".equals(SWT.getPlatform());
    static /* synthetic */ Class class$0;

    public Synchronizer(Display display) {
        this.display = display;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addLast(RunnableLock lock) {
        boolean wake = false;
        Object object = this.messageLock;
        synchronized (object) {
            if (this.messages == null) {
                this.messages = new RunnableLock[4];
            }
            if (this.messageCount == this.messages.length) {
                RunnableLock[] newMessages = new RunnableLock[this.messageCount + 4];
                System.arraycopy(this.messages, 0, newMessages, 0, this.messageCount);
                this.messages = newMessages;
            }
            this.messages[this.messageCount++] = lock;
            wake = this.messageCount == 1;
        }
        if (wake) {
            this.display.wakeThread();
        }
    }

    protected void asyncExec(Runnable runnable) {
        if (!(runnable != null || IS_CARBON || IS_GTK || IS_COCOA)) {
            this.display.wake();
            return;
        }
        this.addLast(new RunnableLock(runnable));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    int getMessageCount() {
        Object object = this.messageLock;
        synchronized (object) {
            return this.messageCount;
        }
    }

    void releaseSynchronizer() {
        this.display = null;
        this.messages = null;
        this.messageLock = null;
        this.syncThread = null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    RunnableLock removeFirst() {
        Object object = this.messageLock;
        synchronized (object) {
            block5: {
                if (this.messageCount != 0) break block5;
                return null;
            }
            RunnableLock lock = this.messages[0];
            System.arraycopy(this.messages, 1, this.messages, 0, --this.messageCount);
            this.messages[this.messageCount] = null;
            if (this.messageCount == 0 && this.messages.length > 64) {
                this.messages = null;
            }
            return lock;
        }
    }

    boolean runAsyncMessages() {
        return this.runAsyncMessages(false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean runAsyncMessages(boolean all) {
        boolean run = false;
        do {
            RunnableLock lock;
            if ((lock = this.removeFirst()) == null) {
                return run;
            }
            run = true;
            RunnableLock runnableLock = lock;
            synchronized (runnableLock) {
                block10: {
                    this.syncThread = lock.thread;
                    try {
                        try {
                            lock.run();
                        }
                        catch (Throwable t) {
                            lock.throwable = t;
                            SWT.error(46, t);
                            this.syncThread = null;
                            lock.notifyAll();
                            break block10;
                        }
                    }
                    catch (Throwable throwable) {
                        this.syncThread = null;
                        lock.notifyAll();
                        throw throwable;
                    }
                    this.syncThread = null;
                    lock.notifyAll();
                }
            }
        } while (all);
        return run;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void syncExec(Runnable runnable) {
        RunnableLock lock = null;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Object object = clazz;
        synchronized (clazz) {
            if (this.display == null || this.display.isDisposed()) {
                SWT.error(45);
            }
            if (!this.display.isValidThread()) {
                if (runnable == null) {
                    this.display.wake();
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return;
                }
                lock = new RunnableLock(runnable);
                lock.thread = Thread.currentThread();
                this.addLast(lock);
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            if (lock == null) {
                if (runnable != null) {
                    runnable.run();
                }
                return;
            }
            object = lock;
            synchronized (object) {
                boolean interrupted = false;
                while (!lock.done()) {
                    try {
                        lock.wait();
                    }
                    catch (InterruptedException interruptedException) {
                        interrupted = true;
                    }
                }
                if (interrupted) {
                    Compatibility.interrupt();
                }
                if (lock.throwable != null) {
                    SWT.error(46, lock.throwable);
                }
            }
            return;
        }
    }
}

