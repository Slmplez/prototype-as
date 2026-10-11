/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;

public interface Adapter {
    public void notifyChanged(Notification var1);

    public Notifier getTarget();

    public void setTarget(Notifier var1);

    public boolean isAdapterForType(Object var1);

    public static interface Internal
    extends Adapter {
        public void unsetTarget(Notifier var1);
    }
}

