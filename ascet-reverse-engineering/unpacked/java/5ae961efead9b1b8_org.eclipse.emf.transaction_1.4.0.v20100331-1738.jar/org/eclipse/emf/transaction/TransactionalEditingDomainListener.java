/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction;

import java.util.EventListener;
import org.eclipse.emf.transaction.TransactionalEditingDomainEvent;

public interface TransactionalEditingDomainListener
extends EventListener {
    public void transactionStarting(TransactionalEditingDomainEvent var1);

    public void transactionInterrupted(TransactionalEditingDomainEvent var1);

    public void transactionStarted(TransactionalEditingDomainEvent var1);

    public void transactionClosing(TransactionalEditingDomainEvent var1);

    public void transactionClosed(TransactionalEditingDomainEvent var1);

    public void editingDomainDisposing(TransactionalEditingDomainEvent var1);
}

