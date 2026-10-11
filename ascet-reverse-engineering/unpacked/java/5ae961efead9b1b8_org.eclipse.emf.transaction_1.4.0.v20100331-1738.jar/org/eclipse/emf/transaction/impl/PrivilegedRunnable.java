/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.emf.transaction.impl;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class PrivilegedRunnable<T>
extends RunnableWithResult.Impl<T> {
    private final InternalTransaction transaction;
    private final Runnable delegate;
    private final Thread owner;

    PrivilegedRunnable(InternalTransaction transaction, Runnable delegate) {
        this.transaction = transaction;
        this.delegate = delegate;
        this.owner = Thread.currentThread();
    }

    public Transaction getTransaction() {
        return this.transaction;
    }

    public Thread getOwner() {
        return this.owner;
    }

    @Override
    public void run() {
        boolean needPrivilege;
        RunnableWithResult rwr = this.delegate instanceof RunnableWithResult ? (RunnableWithResult)this.delegate : null;
        boolean bl = needPrivilege = this.transaction.getOwner() != Thread.currentThread();
        if (needPrivilege) {
            this.transaction.startPrivileged(this);
        }
        try {
            try {
                this.delegate.run();
                if (rwr != null) {
                    if (rwr.getStatus() != null) {
                        this.setStatus(rwr.getStatus());
                    } else {
                        this.setStatus(Status.OK_STATUS);
                    }
                    this.setResult(rwr.getResult());
                } else {
                    this.setStatus(Status.OK_STATUS);
                }
            }
            catch (RuntimeException e) {
                String message = e.getLocalizedMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                this.setStatus((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), 51, message, (Throwable)e));
                throw e;
            }
            catch (Error e) {
                String message = e.getLocalizedMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                this.setStatus((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), 51, message, (Throwable)e));
                throw e;
            }
        }
        finally {
            if (needPrivilege) {
                this.transaction.endPrivileged(this);
            }
        }
    }
}

