/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;

public class AdapterFactoryImpl
implements AdapterFactory {
    public boolean isFactoryForType(Object type) {
        return false;
    }

    public Object adapt(Object target, Object type) {
        if (target instanceof Notifier) {
            return this.adapt((Notifier)target, type);
        }
        return this.resolve(target, type);
    }

    protected Object resolve(Object object, Object type) {
        return object;
    }

    public Adapter adapt(Notifier target, Object type) {
        for (Adapter adapter : target.eAdapters()) {
            if (!adapter.isAdapterForType(type)) continue;
            return adapter;
        }
        return this.adaptNew(target, type);
    }

    public Adapter adaptNew(Notifier target, Object type) {
        Adapter adapter = this.createAdapter(target, type);
        this.associate(adapter, target);
        return adapter;
    }

    public void adaptAllNew(Notifier target) {
        Adapter adapter = this.createAdapter(target);
        this.associate(adapter, target);
    }

    protected Adapter createAdapter(Notifier target, Object type) {
        return this.createAdapter(target);
    }

    protected Adapter createAdapter(Notifier target) {
        return new AdapterImpl();
    }

    protected void associate(Adapter adapter, Notifier target) {
        if (adapter != null) {
            target.eAdapters().add(adapter);
        }
    }
}

