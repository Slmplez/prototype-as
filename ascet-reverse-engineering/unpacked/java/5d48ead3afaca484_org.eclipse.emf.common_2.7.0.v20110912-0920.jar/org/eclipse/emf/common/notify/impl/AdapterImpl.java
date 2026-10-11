/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;

public class AdapterImpl
implements Adapter.Internal {
    protected Notifier target = null;

    public boolean isAdapterForType(Object type) {
        return false;
    }

    public void notifyChanged(Notification msg) {
    }

    public Notifier getTarget() {
        return this.target;
    }

    public void setTarget(Notifier newTarget) {
        this.target = newTarget;
    }

    public void unsetTarget(Notifier oldTarget) {
        if (this.target == oldTarget) {
            this.setTarget(null);
        }
    }
}

