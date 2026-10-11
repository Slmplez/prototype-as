/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.ObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableHelper;
import org.eclipse.core.runtime.Assert;

public class DetailObservableMap
extends ObservableMap
implements IObserving {
    private boolean updating = false;
    private IObservableValue master;
    private IObservableFactory detailFactory;
    private IObservableMap detailMap;
    private Object detailKeyType;
    private Object detailValueType;
    private IValueChangeListener masterChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (DetailObservableMap.this.isDisposed()) {
                return;
            }
            ObservableTracker.setIgnore(true);
            try {
                HashMap oldMap = new HashMap(DetailObservableMap.this.wrappedMap);
                DetailObservableMap.this.updateDetailMap();
                DetailObservableMap.this.fireMapChange(Diffs.computeMapDiff(oldMap, DetailObservableMap.this.wrappedMap));
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
    };
    private IMapChangeListener detailChangeListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            if (!DetailObservableMap.this.updating) {
                DetailObservableMap.this.fireMapChange(event.diff);
            }
        }
    };

    public DetailObservableMap(IObservableFactory detailFactory, IObservableValue master, Object keyType, Object valueType) {
        super(master.getRealm(), Collections.EMPTY_MAP);
        Assert.isTrue((!master.isDisposed() ? 1 : 0) != 0, (String)"Master observable is disposed");
        this.master = master;
        this.detailFactory = detailFactory;
        this.detailKeyType = keyType;
        this.detailValueType = valueType;
        master.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                DetailObservableMap.this.dispose();
            }
        });
        ObservableTracker.setIgnore(true);
        try {
            this.updateDetailMap();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
        master.addValueChangeListener(this.masterChangeListener);
    }

    private void updateDetailMap() {
        Object masterValue = this.master.getValue();
        if (this.detailMap != null) {
            this.detailMap.removeMapChangeListener(this.detailChangeListener);
            this.detailMap.dispose();
        }
        if (masterValue == null) {
            this.detailMap = null;
            this.wrappedMap = Collections.EMPTY_MAP;
        } else {
            ObservableTracker.setIgnore(true);
            try {
                this.detailMap = (IObservableMap)this.detailFactory.createObservable(masterValue);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
            DetailObservableHelper.warnIfDifferentRealms(this.getRealm(), this.detailMap.getRealm());
            this.wrappedMap = this.detailMap;
            if (this.detailKeyType != null) {
                Object innerKeyType = this.detailMap.getKeyType();
                Assert.isTrue((boolean)this.detailKeyType.equals(innerKeyType), (String)"Cannot change key type in a nested observable map");
            }
            if (this.detailValueType != null) {
                Object innerValueType = this.detailMap.getValueType();
                Assert.isTrue((boolean)this.detailValueType.equals(innerValueType), (String)"Cannot change value type in a nested observable map");
            }
            this.detailMap.addMapChangeListener(this.detailChangeListener);
        }
    }

    public Object getKeyType() {
        return this.detailKeyType;
    }

    public Object getValueType() {
        return this.detailValueType;
    }

    public Object put(Object key, Object value) {
        ObservableTracker.setIgnore(true);
        try {
            Object object = this.detailMap.put(key, value);
            return object;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public void putAll(Map map) {
        ObservableTracker.setIgnore(true);
        try {
            this.detailMap.putAll(map);
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public Object remove(Object key) {
        ObservableTracker.setIgnore(true);
        try {
            Object object = this.detailMap.remove(key);
            return object;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public void clear() {
        ObservableTracker.setIgnore(true);
        try {
            this.detailMap.clear();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public synchronized void dispose() {
        if (this.master != null) {
            this.master.removeValueChangeListener(this.masterChangeListener);
            this.master = null;
            this.masterChangeListener = null;
        }
        this.detailFactory = null;
        if (this.detailMap != null) {
            this.detailMap.removeMapChangeListener(this.detailChangeListener);
            this.detailMap.dispose();
            this.detailMap = null;
        }
        this.detailChangeListener = null;
        super.dispose();
    }

    public Object getObserved() {
        if (this.detailMap instanceof IObserving) {
            return ((IObserving)((Object)this.detailMap)).getObserved();
        }
        return null;
    }
}

