/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction;

import java.util.EventObject;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

public class TransactionalEditingDomainEvent
extends EventObject {
    private static final long serialVersionUID = 7386794800444405389L;
    public static final int TRANSACTION_STARTING = 1;
    public static final int TRANSACTION_INTERRUPTED = 2;
    public static final int TRANSACTION_STARTED = 4;
    public static final int TRANSACTION_CLOSING = 8;
    public static final int TRANSACTION_CLOSED = 16;
    public static final int EDITING_DOMAIN_DISPOSING = 32;
    private int type;
    private Transaction transaction;

    public TransactionalEditingDomainEvent(TransactionalEditingDomain source, int type) {
        super(source);
        this.type = type;
    }

    public TransactionalEditingDomainEvent(TransactionalEditingDomain source, int type, Transaction transaction) {
        super(source);
        this.type = type;
        this.transaction = transaction;
    }

    public TransactionalEditingDomain getSource() {
        return (TransactionalEditingDomain)super.getSource();
    }

    public int getEventType() {
        return this.type;
    }

    public Transaction getTransaction() {
        return this.transaction;
    }
}

