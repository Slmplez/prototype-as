/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapChangeEvent
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.map.ObservableMap
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.validation;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.map.ObservableMap;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public class ValidatedObservableMap
extends ObservableMap {
    private IObservableMap target;
    private IObservableValue validationStatus;
    private boolean stale;
    private boolean computeNextDiff = false;
    private boolean updatingTarget = false;
    private IMapChangeListener targetChangeListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            if (ValidatedObservableMap.this.updatingTarget) {
                return;
            }
            IStatus status = (IStatus)ValidatedObservableMap.this.validationStatus.getValue();
            if (ValidatedObservableMap.isValid(status)) {
                if (ValidatedObservableMap.this.stale) {
                    ValidatedObservableMap.this.stale = false;
                    ValidatedObservableMap.this.updateWrappedMap(new HashMap(ValidatedObservableMap.this.target));
                } else {
                    MapDiff diff = event.diff;
                    if (ValidatedObservableMap.this.computeNextDiff) {
                        diff = Diffs.computeMapDiff((Map)ValidatedObservableMap.this.wrappedMap, (Map)ValidatedObservableMap.this.target);
                        ValidatedObservableMap.this.computeNextDiff = false;
                    }
                    ValidatedObservableMap.this.applyDiff(diff, ValidatedObservableMap.this.wrappedMap);
                    ValidatedObservableMap.this.fireMapChange(diff);
                }
            } else {
                ValidatedObservableMap.this.makeStale();
            }
        }
    };
    private IStaleListener targetStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ValidatedObservableMap.this.fireStale();
        }
    };
    private IValueChangeListener validationStatusChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            IStatus oldStatus = (IStatus)event.diff.getOldValue();
            IStatus newStatus = (IStatus)event.diff.getNewValue();
            if (ValidatedObservableMap.this.stale && !ValidatedObservableMap.isValid(oldStatus) && ValidatedObservableMap.isValid(newStatus)) {
                ValidatedObservableMap.this.stale = false;
                ValidatedObservableMap.this.updateWrappedMap(new HashMap(ValidatedObservableMap.this.target));
                ValidatedObservableMap.this.computeNextDiff = true;
            }
        }
    };

    public ValidatedObservableMap(IObservableMap target, IObservableValue validationStatus) {
        super(target.getRealm(), new HashMap(target));
        Assert.isNotNull((Object)validationStatus, (String)"Validation status observable cannot be null");
        Assert.isTrue((boolean)target.getRealm().equals(validationStatus.getRealm()), (String)"Target and validation status observables must be on the same realm");
        this.target = target;
        this.validationStatus = validationStatus;
        target.addMapChangeListener(this.targetChangeListener);
        target.addStaleListener(this.targetStaleListener);
        validationStatus.addValueChangeListener(this.validationStatusChangeListener);
    }

    private void updateWrappedMap(Map newMap) {
        Map oldMap = this.wrappedMap;
        MapDiff diff = Diffs.computeMapDiff((Map)oldMap, (Map)newMap);
        this.wrappedMap = newMap;
        this.fireMapChange(diff);
    }

    private static boolean isValid(IStatus status) {
        return status.isOK() || status.matches(3);
    }

    private void applyDiff(MapDiff diff, Map map) {
        Object key;
        Iterator iterator = diff.getRemovedKeys().iterator();
        while (iterator.hasNext()) {
            map.remove(iterator.next());
        }
        iterator = diff.getChangedKeys().iterator();
        while (iterator.hasNext()) {
            key = iterator.next();
            map.put(key, diff.getNewValue(key));
        }
        iterator = diff.getAddedKeys().iterator();
        while (iterator.hasNext()) {
            key = iterator.next();
            map.put(key, diff.getNewValue(key));
        }
    }

    private void makeStale() {
        if (!this.stale) {
            this.stale = true;
            this.fireStale();
        }
    }

    private void updateTargetMap(MapDiff diff) {
        this.updatingTarget = true;
        try {
            if (this.stale) {
                this.stale = false;
                this.applyDiff(Diffs.computeMapDiff((Map)this.target, (Map)this.wrappedMap), (Map)this.target);
            } else {
                this.applyDiff(diff, (Map)this.target);
            }
        }
        finally {
            this.updatingTarget = false;
        }
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale || this.target.isStale();
    }

    public void clear() {
        this.checkRealm();
        if (this.isEmpty()) {
            return;
        }
        MapDiff diff = Diffs.computeMapDiff((Map)this.wrappedMap, (Map)Collections.EMPTY_MAP);
        this.wrappedMap = new HashMap();
        this.updateTargetMap(diff);
        this.fireMapChange(diff);
    }

    public Object put(Object key, Object value) {
        MapDiff diff;
        Object oldValue;
        this.checkRealm();
        if (this.wrappedMap.containsKey(key)) {
            oldValue = this.wrappedMap.put(key, value);
            diff = this.wrappedMap.containsKey(key) ? Diffs.createMapDiffSingleChange((Object)key, (Object)oldValue, (Object)value) : Diffs.createMapDiffSingleRemove((Object)key, (Object)oldValue);
        } else {
            oldValue = this.wrappedMap.put(key, value);
            diff = Diffs.createMapDiffSingleAdd((Object)key, (Object)value);
        }
        this.updateTargetMap(diff);
        this.fireMapChange(diff);
        return oldValue;
    }

    public void putAll(Map m) {
        this.checkRealm();
        HashMap map = new HashMap(this.wrappedMap);
        map.putAll(m);
        MapDiff diff = Diffs.computeMapDiff((Map)this.wrappedMap, map);
        this.wrappedMap = map;
        this.updateTargetMap(diff);
        this.fireMapChange(diff);
    }

    public Object remove(Object key) {
        this.checkRealm();
        if (!this.wrappedMap.containsKey(key)) {
            return null;
        }
        Object oldValue = this.wrappedMap.remove(key);
        MapDiff diff = Diffs.createMapDiffSingleRemove((Object)key, oldValue);
        this.updateTargetMap(diff);
        this.fireMapChange(diff);
        return oldValue;
    }

    public Object getKeyType() {
        return this.target.getKeyType();
    }

    public Object getValueType() {
        return this.target.getValueType();
    }

    public synchronized void dispose() {
        this.target.removeMapChangeListener(this.targetChangeListener);
        this.target.removeStaleListener(this.targetStaleListener);
        this.validationStatus.removeValueChangeListener(this.validationStatusChangeListener);
        super.dispose();
    }
}

