/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.impl;

import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;

public interface InternalLifecycle
extends TransactionalEditingDomain.Lifecycle {
    public void transactionStarting(InternalTransaction var1);

    public void transactionInterrupted(InternalTransaction var1);

    public void transactionStarted(InternalTransaction var1);

    public void transactionClosing(InternalTransaction var1);

    public void transactionClosed(InternalTransaction var1);
}

