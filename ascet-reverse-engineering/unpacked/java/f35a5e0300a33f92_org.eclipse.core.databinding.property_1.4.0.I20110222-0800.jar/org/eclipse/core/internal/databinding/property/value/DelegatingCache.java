/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapChangeEvent
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 *  org.eclipse.core.internal.databinding.identity.IdentityObservableSet
 */
package org.eclipse.core.internal.databinding.property.value;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.property.value.DelegatingValueProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentityObservableSet;

abstract class DelegatingCache {
    private Realm realm;
    private DelegatingValueProperty detailProperty;
    private IObservableSet elements;
    private Map delegateCaches;

    DelegatingCache(Realm realm, DelegatingValueProperty detailProperty) {
        this.realm = realm;
        this.detailProperty = detailProperty;
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.elements = new IdentityObservableSet(realm, null);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        this.delegateCaches = new IdentityMap();
        this.elements.addSetChangeListener(new ISetChangeListener(){

            public void handleSetChange(SetChangeEvent event) {
                Object element;
                Iterator it = event.diff.getRemovals().iterator();
                while (it.hasNext()) {
                    element = it.next();
                    DelegatingCache.this.getCache(element).remove(element);
                }
                it = event.diff.getAdditions().iterator();
                while (it.hasNext()) {
                    element = it.next();
                    DelegatingCache.this.getCache(element).add(element);
                }
            }
        });
    }

    private DelegateCache getCache(Object masterElement) {
        IValueProperty delegate = this.detailProperty.getDelegate(masterElement);
        if (this.delegateCaches.containsKey(delegate)) {
            return (DelegateCache)this.delegateCaches.get(delegate);
        }
        return new DelegateCache(delegate);
    }

    Object get(Object element) {
        return this.getCache(element).get(element);
    }

    Object put(Object element, Object value) {
        return this.getCache(element).put(element, value);
    }

    boolean containsValue(Object value) {
        Iterator it = this.delegateCaches.values().iterator();
        while (it.hasNext()) {
            DelegateCache cache = (DelegateCache)it.next();
            if (!cache.containsValue(value)) continue;
            return true;
        }
        return false;
    }

    void addAll(Collection elements) {
        this.elements.addAll(elements);
    }

    void retainAll(Collection elements) {
        this.elements.retainAll(elements);
    }

    abstract void handleValueChange(Object var1, Object var2, Object var3);

    void dispose() {
        if (this.elements != null) {
            this.elements.clear();
            this.elements.dispose();
            this.elements = null;
        }
        if (this.delegateCaches != null) {
            Iterator it = this.delegateCaches.values().iterator();
            while (it.hasNext()) {
                DelegateCache cache = (DelegateCache)it.next();
                cache.dispose();
            }
            this.delegateCaches.clear();
            this.delegateCaches = null;
        }
    }

    private class DelegateCache
    implements IMapChangeListener {
        private final IValueProperty delegate;
        private final IObservableSet masterElements;
        private final IObservableMap masterElementValues;
        private final Map cachedValues;

        DelegateCache(IValueProperty delegate) {
            this.delegate = delegate;
            ObservableTracker.setIgnore((boolean)true);
            try {
                this.masterElements = new IdentityObservableSet(DelegatingCache.this.realm, DelegatingCache.this.elements.getElementType());
                this.masterElementValues = delegate.observeDetail(this.masterElements);
            }
            finally {
                ObservableTracker.setIgnore((boolean)false);
            }
            this.cachedValues = new IdentityMap();
            this.masterElementValues.addMapChangeListener((IMapChangeListener)this);
        }

        void add(Object masterElement) {
            boolean wasEmpty = this.masterElements.isEmpty();
            this.masterElements.add(masterElement);
            this.cachedValues.put(masterElement, this.masterElementValues.get(masterElement));
            if (wasEmpty) {
                DelegatingCache.this.delegateCaches.put(this.delegate, this);
            }
        }

        void remove(Object masterElement) {
            this.cachedValues.remove(masterElement);
            this.masterElements.remove(masterElement);
            if (this.cachedValues.isEmpty()) {
                this.dispose();
            }
        }

        Object get(Object masterElement) {
            return this.cachedValues.get(masterElement);
        }

        Object put(Object masterElement, Object detailValue) {
            Object oldValue = this.masterElementValues.put(masterElement, detailValue);
            this.notifyIfChanged(masterElement);
            return oldValue;
        }

        boolean containsValue(Object detailValue) {
            return this.cachedValues.containsValue(detailValue);
        }

        public void handleMapChange(MapChangeEvent event) {
            Set changedKeys = event.diff.getChangedKeys();
            Iterator it = changedKeys.iterator();
            while (it.hasNext()) {
                this.notifyIfChanged(it.next());
            }
        }

        private void notifyIfChanged(Object masterElement) {
            Object newValue;
            Object oldValue = this.cachedValues.get(masterElement);
            if (oldValue != (newValue = this.masterElementValues.get(masterElement))) {
                this.cachedValues.put(masterElement, newValue);
                this.handleValueChange(masterElement, oldValue, newValue);
            }
        }

        void handleValueChange(Object masterElement, Object oldValue, Object newValue) {
            DelegatingCache.this.handleValueChange(masterElement, oldValue, newValue);
        }

        void dispose() {
            DelegatingCache.this.delegateCaches.remove(this.delegate);
            this.masterElementValues.dispose();
            this.masterElements.dispose();
            this.cachedValues.clear();
        }
    }
}

