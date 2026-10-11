/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;

public class SingletonAdapterImpl
implements Adapter.Internal {
    protected List<Notifier> targets;

    public boolean isAdapterForType(Object type) {
        return false;
    }

    public void notifyChanged(Notification msg) {
    }

    public Notifier getTarget() {
        return this.targets == null || this.targets.isEmpty() ? null : this.targets.get(this.targets.size() - 1);
    }

    public void setTarget(Notifier target) {
        if (this.targets == null) {
            this.targets = new ArrayList<Notifier>();
        }
        this.targets.add(target);
    }

    public void unsetTarget(Notifier target) {
        if (this.targets != null) {
            this.targets.remove(target);
        }
    }

    public void dispose() {
        List<Notifier> oldTargets = this.targets;
        this.targets = null;
        if (oldTargets != null) {
            for (Notifier notifier : oldTargets) {
                notifier.eAdapters().remove(this);
            }
        }
    }
}

