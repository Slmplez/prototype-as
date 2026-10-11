/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

public interface ITransactionLock {
    public Thread getOwner();

    public int getDepth();

    public void acquire(boolean var1) throws InterruptedException;

    public boolean acquire(long var1, boolean var3) throws InterruptedException;

    public void uiSafeAcquire(boolean var1) throws InterruptedException;

    public void release();

    public boolean yield();

    public void checkedTransfer(Thread var1);
}

