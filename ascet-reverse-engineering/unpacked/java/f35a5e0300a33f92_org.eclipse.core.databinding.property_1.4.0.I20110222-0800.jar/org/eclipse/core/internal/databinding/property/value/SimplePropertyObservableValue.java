/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.value.AbstractObservableValue
 *  org.eclipse.core.databinding.observable.value.ValueDiff
 */
package org.eclipse.core.internal.databinding.property.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.ValueDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.internal.databinding.property.Util;

public class SimplePropertyObservableValue
extends AbstractObservableValue
implements IPropertyObservable {
    private Object source;
    private SimpleValueProperty property;
    private boolean updating = false;
    private Object cachedValue;
    private boolean stale;
    private INativePropertyListener listener;

    public SimplePropertyObservableValue(Realm realm, Object source, SimpleValueProperty property) {
        super(realm);
        this.source = source;
        this.property = property;
    }

    protected void firstListenerAdded() {
        if (!this.isDisposed()) {
            if (this.listener == null) {
                this.listener = this.property.adaptListener(new ISimplePropertyListener(){

                    public void handleEvent(SimplePropertyEvent event) {
                        if (!SimplePropertyObservableValue.this.isDisposed() && !SimplePropertyObservableValue.this.updating) {
                            SimplePropertyObservableValue.this.getRealm().exec(new Runnable(this, event){
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ SimplePropertyEvent val$event;
                                {
                                    this.this$1 = var1_1;
                                    this.val$event = simplePropertyEvent;
                                }

                                public void run() {
                                    if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                        SimplePropertyObservableValue.access$1(1.access$0(this.this$1), (ValueDiff)this.val$event.diff);
                                    } else if (this.val$event.type == SimplePropertyEvent.STALE && !SimplePropertyObservableValue.access$2(1.access$0(this.this$1))) {
                                        SimplePropertyObservableValue.access$3(1.access$0(this.this$1), true);
                                        SimplePropertyObservableValue.access$4(1.access$0(this.this$1));
                                    }
                                }
                            });
                        }
                    }

                    static /* synthetic */ SimplePropertyObservableValue access$0(1 var0) {
                        return var0.SimplePropertyObservableValue.this;
                    }
                });
            }
            this.getRealm().exec(new Runnable(){

                public void run() {
                    SimplePropertyObservableValue.this.cachedValue = SimplePropertyObservableValue.this.property.getValue(SimplePropertyObservableValue.this.source);
                    SimplePropertyObservableValue.this.stale = false;
                    if (SimplePropertyObservableValue.this.listener != null) {
                        SimplePropertyObservableValue.this.listener.addTo(SimplePropertyObservableValue.this.source);
                    }
                }
            });
        }
    }

    protected void lastListenerRemoved() {
        if (this.listener != null) {
            this.listener.removeFrom(this.source);
        }
        this.cachedValue = null;
        this.stale = false;
    }

    protected Object doGetValue() {
        this.notifyIfChanged(null);
        return this.property.getValue(this.source);
    }

    protected void doSetValue(Object value) {
        this.updating = true;
        try {
            this.property.setValue(this.source, value);
        }
        finally {
            this.updating = false;
        }
        this.notifyIfChanged(null);
    }

    private void notifyIfChanged(ValueDiff diff) {
        if (this.hasListeners()) {
            Object oldValue = this.cachedValue;
            Object newValue = this.cachedValue = this.property.getValue(this.source);
            if (diff == null) {
                diff = Diffs.createValueDiff((Object)oldValue, (Object)newValue);
            }
            if (!Util.equals(oldValue, newValue) || this.stale) {
                this.stale = false;
                this.fireValueChange(diff);
            }
        }
    }

    public Object getValueType() {
        return this.property.getValueType();
    }

    public Object getObserved() {
        return this.source;
    }

    public IProperty getProperty() {
        return this.property;
    }

    public boolean isStale() {
        ObservableTracker.getterCalled((IObservable)this);
        return this.stale;
    }

    public synchronized void dispose() {
        if (!this.isDisposed()) {
            if (this.listener != null) {
                this.listener.removeFrom(this.source);
            }
            this.source = null;
            this.property = null;
            this.listener = null;
            this.stale = false;
        }
        super.dispose();
    }

    static /* synthetic */ void access$1(SimplePropertyObservableValue simplePropertyObservableValue, ValueDiff valueDiff) {
        simplePropertyObservableValue.notifyIfChanged(valueDiff);
    }

    static /* synthetic */ boolean access$2(SimplePropertyObservableValue simplePropertyObservableValue) {
        return simplePropertyObservableValue.stale;
    }

    static /* synthetic */ void access$4(SimplePropertyObservableValue simplePropertyObservableValue) {
        simplePropertyObservableValue.fireStale();
    }
}

