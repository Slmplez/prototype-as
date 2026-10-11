/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IDiff
 */
package org.eclipse.core.databinding.property;

import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;

public abstract class NativePropertyListener
implements INativePropertyListener {
    private final IProperty property;
    private final ISimplePropertyListener listener;

    public NativePropertyListener(IProperty property, ISimplePropertyListener listener) {
        this.property = property;
        this.listener = listener;
    }

    public final void addTo(Object source) {
        if (source != null) {
            this.doAddTo(source);
        }
    }

    protected abstract void doAddTo(Object var1);

    public final void removeFrom(Object source) {
        if (source != null) {
            this.doRemoveFrom(source);
        }
    }

    protected abstract void doRemoveFrom(Object var1);

    protected void fireChange(Object source, IDiff diff) {
        this.listener.handleEvent(new SimplePropertyEvent(SimplePropertyEvent.CHANGE, source, this.property, diff));
    }

    protected void fireStale(Object source) {
        this.listener.handleEvent(new SimplePropertyEvent(SimplePropertyEvent.STALE, source, this.property, null));
    }
}

