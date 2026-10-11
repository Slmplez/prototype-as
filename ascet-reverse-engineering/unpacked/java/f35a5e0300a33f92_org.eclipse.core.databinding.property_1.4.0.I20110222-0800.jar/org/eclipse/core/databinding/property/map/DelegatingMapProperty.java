/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 */
package org.eclipse.core.databinding.property.map;

import java.util.Collections;
import java.util.Map;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.map.MapProperty;
import org.eclipse.core.databinding.property.map.SimpleMapProperty;

public abstract class DelegatingMapProperty
extends MapProperty {
    private final Object keyType;
    private final Object valueType;
    private final IMapProperty nullProperty = new NullMapProperty();

    protected DelegatingMapProperty() {
        this(null, null);
    }

    protected DelegatingMapProperty(Object keyType, Object valueType) {
        this.keyType = keyType;
        this.valueType = valueType;
    }

    public final IMapProperty getDelegate(Object source) {
        if (source == null) {
            return this.nullProperty;
        }
        IMapProperty delegate = this.doGetDelegate(source);
        if (delegate == null) {
            delegate = this.nullProperty;
        }
        return delegate;
    }

    protected abstract IMapProperty doGetDelegate(Object var1);

    public Object getKeyType() {
        return this.keyType;
    }

    public Object getValueType() {
        return this.valueType;
    }

    protected Map doGetMap(Object source) {
        return this.getDelegate(source).getMap(source);
    }

    protected void doSetMap(Object source, Map map) {
        this.getDelegate(source).setMap(source, map);
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        this.getDelegate(source).updateMap(source, diff);
    }

    public IObservableMap observe(Object source) {
        return this.getDelegate(source).observe(source);
    }

    public IObservableMap observe(Realm realm, Object source) {
        return this.getDelegate(source).observe(realm, source);
    }

    private class NullMapProperty
    extends SimpleMapProperty {
        private NullMapProperty() {
        }

        protected Map doGetMap(Object source) {
            return Collections.EMPTY_MAP;
        }

        protected void doSetMap(Object source, Map map, MapDiff diff) {
        }

        protected void doSetMap(Object source, Map map) {
        }

        protected void doUpdateMap(Object source, MapDiff diff) {
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return null;
        }

        public Object getKeyType() {
            return DelegatingMapProperty.this.keyType;
        }

        public Object getValueType() {
            return DelegatingMapProperty.this.valueType;
        }
    }
}

