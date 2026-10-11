/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction.impl;

import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.PrivilegedRunnable;
import org.eclipse.emf.transaction.impl.TransactionChangeRecorder;
import org.eclipse.emf.transaction.impl.TransactionValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalTransactionalEditingDomain
extends TransactionalEditingDomain {
    public InternalTransaction startTransaction(boolean var1, Map<?, ?> var2) throws InterruptedException;

    public InternalTransaction getActiveTransaction();

    public void activate(InternalTransaction var1) throws InterruptedException;

    public void precommit(InternalTransaction var1) throws RollbackException;

    public void deactivate(InternalTransaction var1);

    public TransactionChangeRecorder getChangeRecorder();

    public TransactionValidator getValidator();

    public void broadcastUnbatched(Notification var1);

    public Map<Object, Object> getUndoRedoOptions();

    public void startPrivileged(PrivilegedRunnable<?> var1);

    public void endPrivileged(PrivilegedRunnable<?> var1);
}

