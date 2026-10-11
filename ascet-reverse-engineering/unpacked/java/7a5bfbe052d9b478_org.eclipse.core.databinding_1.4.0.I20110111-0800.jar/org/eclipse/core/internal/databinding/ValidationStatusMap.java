/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.WritableList
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.map.ObservableMap
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.WritableList;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.map.ObservableMap;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.runtime.IStatus;

public class ValidationStatusMap
extends ObservableMap {
    private boolean isDirty = true;
    private final WritableList bindings;
    private List dependencies = new ArrayList();
    private IChangeListener markDirtyChangeListener = new IChangeListener(){

        public void handleChange(ChangeEvent event) {
            ValidationStatusMap.this.markDirty();
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ValidationStatusMap(Realm realm, WritableList bindings) {
        super(realm, new HashMap());
        this.bindings = bindings;
        bindings.addChangeListener(this.markDirtyChangeListener);
    }

    public Object getKeyType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.databinding.Binding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    public Object getValueType() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.core.runtime.IStatus");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected void getterCalled() {
        this.recompute();
        super.getterCalled();
    }

    private void markDirty() {
        this.removeElementChangeListener();
        final Map oldMap = this.wrappedMap;
        MapDiff mapDiff = new MapDiff(){
            private MapDiff cachedDiff = null;

            private void ensureCached() {
                if (this.cachedDiff == null) {
                    ValidationStatusMap.this.recompute();
                    this.cachedDiff = Diffs.computeMapDiff((Map)oldMap, (Map)ValidationStatusMap.this.wrappedMap);
                }
            }

            public Set getAddedKeys() {
                this.ensureCached();
                return this.cachedDiff.getAddedKeys();
            }

            public Set getChangedKeys() {
                this.ensureCached();
                return this.cachedDiff.getChangedKeys();
            }

            public Object getNewValue(Object key) {
                this.ensureCached();
                return this.cachedDiff.getNewValue(key);
            }

            public Object getOldValue(Object key) {
                this.ensureCached();
                return this.cachedDiff.getOldValue(key);
            }

            public Set getRemovedKeys() {
                this.ensureCached();
                return this.cachedDiff.getRemovedKeys();
            }
        };
        this.wrappedMap = new HashMap();
        this.isDirty = true;
        this.fireMapChange(mapDiff);
    }

    private void recompute() {
        if (this.isDirty) {
            HashMap<Binding, IStatus> newContents = new HashMap<Binding, IStatus>();
            Iterator it = this.bindings.iterator();
            while (it.hasNext()) {
                Binding binding = (Binding)it.next();
                IObservableValue validationError = binding.getValidationStatus();
                this.dependencies.add(validationError);
                validationError.addChangeListener(this.markDirtyChangeListener);
                IStatus validationStatusValue = (IStatus)validationError.getValue();
                newContents.put(binding, validationStatusValue);
            }
            this.wrappedMap.putAll(newContents);
            this.isDirty = false;
        }
    }

    public synchronized void dispose() {
        this.bindings.removeChangeListener(this.markDirtyChangeListener);
        this.removeElementChangeListener();
        super.dispose();
    }

    private void removeElementChangeListener() {
        Iterator it = this.dependencies.iterator();
        while (it.hasNext()) {
            IObservableValue observableValue = (IObservableValue)it.next();
            observableValue.removeChangeListener(this.markDirtyChangeListener);
        }
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        this.recompute();
        super.addChangeListener(listener);
    }

    public synchronized void addMapChangeListener(IMapChangeListener listener) {
        this.recompute();
        super.addMapChangeListener(listener);
    }
}

