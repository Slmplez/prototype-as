/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import org.eclipse.core.databinding.observable.DecoratingObservableCollection;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.set.SetDiff;

public class DecoratingObservableSet
extends DecoratingObservableCollection
implements IObservableSet {
    private IObservableSet decorated;
    private ISetChangeListener setChangeListener;

    public DecoratingObservableSet(IObservableSet decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
        this.decorated = decorated;
    }

    public void clear() {
        this.getterCalled();
        this.decorated.clear();
    }

    public synchronized void addSetChangeListener(ISetChangeListener listener) {
        this.addListener(SetChangeEvent.TYPE, listener);
    }

    public synchronized void removeSetChangeListener(ISetChangeListener listener) {
        this.removeListener(SetChangeEvent.TYPE, listener);
    }

    protected void fireSetChange(SetDiff diff) {
        super.fireChange();
        this.fireEvent(new SetChangeEvent(this, diff));
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireSetChange() instead");
    }

    protected void firstListenerAdded() {
        if (this.setChangeListener == null) {
            this.setChangeListener = new ISetChangeListener(){

                public void handleSetChange(SetChangeEvent event) {
                    DecoratingObservableSet.this.handleSetChange(event);
                }
            };
        }
        this.decorated.addSetChangeListener(this.setChangeListener);
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        if (this.setChangeListener != null) {
            this.decorated.removeSetChangeListener(this.setChangeListener);
            this.setChangeListener = null;
        }
    }

    protected void handleSetChange(SetChangeEvent event) {
        this.fireSetChange(event.diff);
    }

    public synchronized void dispose() {
        if (this.decorated != null && this.setChangeListener != null) {
            this.decorated.removeSetChangeListener(this.setChangeListener);
        }
        this.decorated = null;
        this.setChangeListener = null;
        super.dispose();
    }
}

