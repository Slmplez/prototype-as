/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.util;

import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.emf.transaction.internal.ITransactionLock;

public final class EmptyLock
implements ITransactionLock {
    private AtomicInteger count = new AtomicInteger(0);

    public void acquire(boolean exclusive) throws InterruptedException {
        this.acquire(0L, exclusive);
    }

    public boolean acquire(long timeout, boolean exclusive) throws InterruptedException {
        this.count.incrementAndGet();
        return true;
    }

    public void checkedTransfer(Thread thread) {
    }

    public int getDepth() {
        return this.count.get();
    }

    public Thread getOwner() {
        return Thread.currentThread();
    }

    public void release() {
        this.count.decrementAndGet();
    }

    public void uiSafeAcquire(boolean exclusive) throws InterruptedException {
        this.acquire(exclusive);
    }

    public boolean yield() {
        return true;
    }
}

