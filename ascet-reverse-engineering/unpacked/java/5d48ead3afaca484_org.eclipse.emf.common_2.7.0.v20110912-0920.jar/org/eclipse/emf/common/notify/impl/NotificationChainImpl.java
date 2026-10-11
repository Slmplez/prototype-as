/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.BasicEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NotificationChainImpl
extends BasicEList<Notification>
implements NotificationChain {
    private static final long serialVersionUID = 1L;

    public NotificationChainImpl() {
    }

    public NotificationChainImpl(int initialCapacity) {
        super(initialCapacity);
    }

    @Override
    protected Object[] newData(int capacity) {
        return new Notification[capacity];
    }

    @Override
    public boolean add(Notification newNotification) {
        if (newNotification == null) {
            return false;
        }
        int i = 0;
        while (i < this.size) {
            Notification notification = (Notification)this.data[i];
            if (notification.merge(newNotification)) {
                return false;
            }
            ++i;
        }
        return super.add(newNotification);
    }

    @Override
    public void dispatch() {
        int i = 0;
        while (i < this.size) {
            Notification notification = (Notification)this.data[i];
            this.dispatch(notification);
            ++i;
        }
    }

    protected void dispatch(Notification notification) {
        Object notifier = notification.getNotifier();
        if (notifier != null && notification.getEventType() != -1) {
            ((Notifier)notifier).eNotify(notification);
        }
    }
}

