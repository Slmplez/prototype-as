/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public abstract class DuplexingObservableValue
extends AbstractObservableValue {
    private IObservableList target;
    private final Object valueType;
    private boolean dirty = true;
    private boolean updating = false;
    private Object cachedValue = null;
    private PrivateInterface privateInterface;

    public static DuplexingObservableValue withDefaults(IObservableList target, final Object emptyValue, final Object multiValue) {
        return new DuplexingObservableValue(target){

            protected Object coalesceElements(Collection elements) {
                if (elements.isEmpty()) {
                    return emptyValue;
                }
                Iterator it = elements.iterator();
                Object first = it.next();
                while (it.hasNext()) {
                    if (Util.equals(first, it.next())) continue;
                    return multiValue;
                }
                return first;
            }
        };
    }

    public DuplexingObservableValue(IObservableList target) {
        this(target, target.getElementType());
    }

    public DuplexingObservableValue(IObservableList target, Object valueType) {
        super(target.getRealm());
        this.target = target;
        this.valueType = valueType;
    }

    protected void firstListenerAdded() {
        if (this.privateInterface == null) {
            this.privateInterface = new PrivateInterface();
        }
        this.target.addChangeListener(this.privateInterface);
        this.target.addStaleListener(this.privateInterface);
    }

    protected void lastListenerRemoved() {
        this.target.removeChangeListener(this.privateInterface);
        this.target.removeStaleListener(this.privateInterface);
    }

    protected final void makeDirty() {
        if (this.hasListeners() && !this.dirty) {
            this.dirty = true;
            final Object oldValue = this.cachedValue;
            this.fireValueChange(new ValueDiff(){

                public Object getOldValue() {
                    return oldValue;
                }

                public Object getNewValue() {
                    return DuplexingObservableValue.this.getValue();
                }
            });
        }
    }

    public boolean isStale() {
        this.getValue();
        return this.target.isStale();
    }

    protected Object doGetValue() {
        if (!this.hasListeners()) {
            return this.coalesceElements(this.target);
        }
        if (this.dirty) {
            this.cachedValue = this.coalesceElements(this.target);
            this.dirty = false;
            if (this.target.isStale()) {
                this.fireStale();
            }
        }
        return this.cachedValue;
    }

    protected abstract Object coalesceElements(Collection var1);

    protected void doSetValue(Object value) {
        final Object oldValue = this.cachedValue;
        boolean wasUpdating = this.updating;
        try {
            this.updating = true;
            int i = 0;
            while (i < this.target.size()) {
                this.target.set(i, value);
                ++i;
            }
        }
        finally {
            this.updating = wasUpdating;
        }
        if (this.hasListeners()) {
            this.fireValueChange(new ValueDiff(){

                public Object getOldValue() {
                    return oldValue;
                }

                public Object getNewValue() {
                    return DuplexingObservableValue.this.getValue();
                }
            });
        }
    }

    public Object getValueType() {
        return this.valueType;
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        super.addChangeListener(listener);
        this.computeValueForListeners();
    }

    public synchronized void addValueChangeListener(IValueChangeListener listener) {
        super.addValueChangeListener(listener);
        this.computeValueForListeners();
    }

    private void computeValueForListeners() {
        this.getRealm().exec(new Runnable(){

            public void run() {
                if (DuplexingObservableValue.this.hasListeners()) {
                    DuplexingObservableValue.this.getValue();
                }
            }
        });
    }

    public synchronized void dispose() {
        if (this.privateInterface != null && this.target != null) {
            this.target.removeChangeListener(this.privateInterface);
            this.target.removeStaleListener(this.privateInterface);
        }
        this.target = null;
        this.privateInterface = null;
        super.dispose();
    }

    private class PrivateInterface
    implements IChangeListener,
    IStaleListener {
        private PrivateInterface() {
        }

        public void handleChange(ChangeEvent event) {
            if (!DuplexingObservableValue.this.updating) {
                DuplexingObservableValue.this.makeDirty();
            }
        }

        public void handleStale(StaleEvent staleEvent) {
            if (!DuplexingObservableValue.this.dirty) {
                DuplexingObservableValue.this.fireStale();
            }
        }
    }
}

