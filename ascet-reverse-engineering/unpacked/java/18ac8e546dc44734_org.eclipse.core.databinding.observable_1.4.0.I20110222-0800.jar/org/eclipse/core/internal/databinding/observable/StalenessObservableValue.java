/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;

public class StalenessObservableValue
extends AbstractObservableValue {
    private IObservable tracked;
    private boolean stale;
    private MyListener listener = new MyListener();

    public StalenessObservableValue(IObservable observable) {
        super(observable.getRealm());
        this.tracked = observable;
        this.stale = observable.isStale();
        this.tracked.addChangeListener(this.listener);
        this.tracked.addStaleListener(this.listener);
    }

    protected Object doGetValue() {
        return this.tracked.isStale() ? Boolean.TRUE : Boolean.FALSE;
    }

    public Object getValueType() {
        return Boolean.TYPE;
    }

    public synchronized void dispose() {
        if (this.tracked != null) {
            this.tracked.removeChangeListener(this.listener);
            this.tracked.removeStaleListener(this.listener);
            this.tracked = null;
            this.listener = null;
        }
        super.dispose();
    }

    private class MyListener
    implements IChangeListener,
    IStaleListener {
        private MyListener() {
        }

        public void handleChange(ChangeEvent event) {
            if (StalenessObservableValue.this.stale && !event.getObservable().isStale()) {
                StalenessObservableValue.this.stale = false;
                StalenessObservableValue.this.fireValueChange(Diffs.createValueDiff(Boolean.TRUE, Boolean.FALSE));
            }
        }

        public void handleStale(StaleEvent staleEvent) {
            if (!StalenessObservableValue.this.stale) {
                StalenessObservableValue.this.stale = true;
                StalenessObservableValue.this.fireValueChange(Diffs.createValueDiff(Boolean.FALSE, Boolean.TRUE));
            }
        }
    }
}

