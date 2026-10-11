/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

import org.eclipse.emf.common.notify.Notification;

public interface NotificationChain {
    public boolean add(Notification var1);

    public void dispatch();
}

