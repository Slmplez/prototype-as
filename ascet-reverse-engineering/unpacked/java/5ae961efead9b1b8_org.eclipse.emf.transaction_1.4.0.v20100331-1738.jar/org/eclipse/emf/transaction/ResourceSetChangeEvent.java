/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction;

import java.util.EventObject;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceSetChangeEvent
extends EventObject {
    private static final long serialVersionUID = -6265603064286194469L;
    private final Transaction transaction;
    private final List<Notification> notifications;

    public ResourceSetChangeEvent(TransactionalEditingDomain source) {
        this(source, null, null);
    }

    public ResourceSetChangeEvent(TransactionalEditingDomain source, Transaction transaction, List<Notification> notifications) {
        super(source);
        this.transaction = transaction;
        this.notifications = notifications;
    }

    public TransactionalEditingDomain getEditingDomain() {
        return (TransactionalEditingDomain)this.source;
    }

    public Transaction getTransaction() {
        return this.transaction;
    }

    public List<Notification> getNotifications() {
        return this.notifications;
    }
}

