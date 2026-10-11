/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.map.ComputedObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 *  org.eclipse.core.internal.databinding.identity.IdentitySet
 */
package org.eclipse.core.internal.databinding.property.value;

import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.map.ComputedObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.internal.databinding.property.Util;

public class SetSimpleValueObservableMap
extends ComputedObservableMap
implements IPropertyObservable {
    private SimpleValueProperty detailProperty;
    private INativePropertyListener listener;
    private Map cachedValues;
    private Set staleKeys;
    private boolean updating;

    public SetSimpleValueObservableMap(IObservableSet keySet, SimpleValueProperty valueProperty) {
        super(keySet, valueProperty.getValueType());
        this.detailProperty = valueProperty;
    }

    protected void firstListenerAdded() {
        if (this.listener == null) {
            this.listener = this.detailProperty.adaptListener(new ISimplePropertyListener(){

                public void handleEvent(SimplePropertyEvent event) {
                    if (!SetSimpleValueObservableMap.this.isDisposed() && !SetSimpleValueObservableMap.this.updating) {
                        SetSimpleValueObservableMap.this.getRealm().exec(new Runnable(this, event){
                            final /* synthetic */ 1 this$1;
                            private final /* synthetic */ SimplePropertyEvent val$event;
                            {
                                this.this$1 = var1_1;
                                this.val$event = simplePropertyEvent;
                            }

                            public void run() {
                                if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                    SetSimpleValueObservableMap.access$1(1.access$0(this.this$1), this.val$event.getSource());
                                } else if (this.val$event.type == SimplePropertyEvent.STALE) {
                                    boolean wasStale = !SetSimpleValueObservableMap.access$2(1.access$0(this.this$1)).isEmpty();
                                    SetSimpleValueObservableMap.access$2(1.access$0(this.this$1)).add(this.val$event.getSource());
                                    if (!wasStale) {
                                        SetSimpleValueObservableMap.access$3(1.access$0(this.this$1));
                                    }
                                }
                            }
                        });
                    }
                }

                static /* synthetic */ SetSimpleValueObservableMap access$0(1 var0) {
                    return var0.SetSimpleValueObservableMap.this;
                }
            });
        }
        this.cachedValues = new IdentityMap();
        this.staleKeys = new IdentitySet();
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        this.cachedValues.clear();
        this.cachedValues = null;
        this.staleKeys.clear();
        this.staleKeys = null;
    }

    protected void hookListener(Object addedKey) {
        if (this.cachedValues != null) {
            this.cachedValues.put(addedKey, this.detailProperty.getValue(addedKey));
            if (this.listener != null) {
                this.listener.addTo(addedKey);
            }
        }
    }

    protected void unhookListener(Object removedKey) {
        if (this.cachedValues != null) {
            if (this.listener != null) {
                this.listener.removeFrom(removedKey);
            }
            this.cachedValues.remove(removedKey);
            this.staleKeys.remove(removedKey);
        }
    }

    protected Object doGet(Object key) {
        return this.detailProperty.getValue(key);
    }

    protected Object doPut(Object key, Object value) {
        Object oldValue = this.detailProperty.getValue(key);
        this.updating = true;
        try {
            this.detailProperty.setValue(key, value);
        }
        finally {
            this.updating = false;
        }
        this.notifyIfChanged(key);
        return oldValue;
    }

    private void notifyIfChanged(Object key) {
        Object newValue;
        Object oldValue;
        if (this.cachedValues != null && (!Util.equals(oldValue = this.cachedValues.get(key), newValue = this.detailProperty.getValue(key)) || this.staleKeys.contains(key))) {
            this.cachedValues.put(key, newValue);
            this.staleKeys.remove(key);
            this.fireMapChange(Diffs.createMapDiffSingleChange((Object)key, oldValue, (Object)newValue));
        }
    }

    public Object getObserved() {
        return this.keySet();
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public boolean isStale() {
        return super.isStale() || this.staleKeys != null && !this.staleKeys.isEmpty();
    }

    public synchronized void dispose() {
        if (this.cachedValues != null) {
            this.cachedValues.clear();
            this.cachedValues = null;
        }
        this.listener = null;
        this.detailProperty = null;
        this.cachedValues = null;
        this.staleKeys = null;
        super.dispose();
    }

    static /* synthetic */ void access$1(SetSimpleValueObservableMap setSimpleValueObservableMap, Object object) {
        setSimpleValueObservableMap.notifyIfChanged(object);
    }

    static /* synthetic */ Set access$2(SetSimpleValueObservableMap setSimpleValueObservableMap) {
        return setSimpleValueObservableMap.staleKeys;
    }

    static /* synthetic */ void access$3(SetSimpleValueObservableMap setSimpleValueObservableMap) {
        setSimpleValueObservableMap.fireStale();
    }
}

