/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

class RunnableLock {
    Runnable runnable;
    Thread thread;
    Throwable throwable;

    RunnableLock(Runnable runnable) {
        this.runnable = runnable;
    }

    boolean done() {
        return this.runnable == null || this.throwable != null;
    }

    void run() {
        if (this.runnable != null) {
            this.runnable.run();
        }
        this.runnable = null;
    }
}

