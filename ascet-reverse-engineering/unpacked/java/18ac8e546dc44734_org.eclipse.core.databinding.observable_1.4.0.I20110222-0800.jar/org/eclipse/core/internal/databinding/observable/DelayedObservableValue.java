/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.observable.value.ValueDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public class DelayedObservableValue
extends AbstractObservableValue
implements IStaleListener,
IValueChangeListener {
    private final int delay;
    private IObservableValue observable;
    private boolean dirty = true;
    private Object cachedValue = null;
    private boolean updating = false;
    private ValueUpdater updater = null;

    public DelayedObservableValue(int delayMillis, IObservableValue observable) {
        super(observable.getRealm());
        this.delay = delayMillis;
        this.observable = observable;
        observable.addValueChangeListener(this);
        observable.addStaleListener(this);
        this.cachedValue = this.doGetValue();
    }

    public void handleValueChange(ValueChangeEvent event) {
        if (!this.updating) {
            this.makeDirty();
        }
    }

    public void handleStale(StaleEvent staleEvent) {
        if (!this.updating) {
            this.fireStale();
        }
    }

    protected Object doGetValue() {
        if (this.dirty) {
            this.cachedValue = this.observable.getValue();
            this.dirty = false;
            if (this.updater != null && !this.updater.running) {
                this.fireValueChange(Diffs.createValueDiff(this.updater.oldValue, this.cachedValue));
                this.cancelScheduledUpdate();
            }
        }
        return this.cachedValue;
    }

    protected void doSetValue(Object value) {
        this.updating = true;
        try {
            this.dirty = false;
            this.cancelScheduledUpdate();
            Object oldValue = this.cachedValue;
            this.observable.setValue(value);
            this.cachedValue = this.observable.getValue();
            if (!Util.equals(oldValue, this.cachedValue)) {
                this.fireValueChange(Diffs.createValueDiff(oldValue, this.cachedValue));
            }
        }
        finally {
            this.updating = false;
        }
    }

    public boolean isStale() {
        ObservableTracker.getterCalled(this);
        return this.dirty && this.updater != null || this.observable.isStale();
    }

    public Object getValueType() {
        return this.observable.getValueType();
    }

    public synchronized void dispose() {
        this.cancelScheduledUpdate();
        if (this.observable != null) {
            this.observable.dispose();
            this.observable = null;
        }
        super.dispose();
    }

    private void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.fireStale();
        }
        this.cancelScheduledUpdate();
        this.scheduleUpdate();
    }

    private void cancelScheduledUpdate() {
        if (this.updater != null) {
            this.updater.cancel();
            this.updater = null;
        }
    }

    private void scheduleUpdate() {
        this.updater = new ValueUpdater(this.cachedValue);
        this.getRealm().timerExec(this.delay, this.updater);
    }

    private void internalFireValueChange(final Object oldValue) {
        this.cancelScheduledUpdate();
        this.fireValueChange(new ValueDiff(){

            public Object getOldValue() {
                return oldValue;
            }

            public Object getNewValue() {
                return DelayedObservableValue.this.getValue();
            }
        });
    }

    class ValueUpdater
    implements Runnable {
        private final Object oldValue;
        boolean cancel = false;
        boolean running = false;

        ValueUpdater(Object oldValue) {
            this.oldValue = oldValue;
        }

        void cancel() {
            this.cancel = true;
        }

        public void run() {
            if (!this.cancel) {
                try {
                    this.running = true;
                    DelayedObservableValue.this.internalFireValueChange(this.oldValue);
                }
                finally {
                    this.running = false;
                }
            }
        }
    }
}

