/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

public abstract class DemultiplexingListener
extends ResourceSetListenerImpl {
    public DemultiplexingListener() {
    }

    public DemultiplexingListener(NotificationFilter filter) {
        super(filter);
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
        for (Notification next : event.getNotifications()) {
            this.handleNotification(event.getEditingDomain(), next);
        }
    }

    protected abstract void handleNotification(TransactionalEditingDomain var1, Notification var2);

    public boolean isPostcommitOnly() {
        return true;
    }
}

