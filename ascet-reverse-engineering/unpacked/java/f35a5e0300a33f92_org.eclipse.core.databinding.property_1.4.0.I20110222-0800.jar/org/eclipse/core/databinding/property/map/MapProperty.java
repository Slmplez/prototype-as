/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 */
package org.eclipse.core.databinding.property.map;

import java.util.Collections;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.property.MapPropertyDetailValuesMap;

public abstract class MapProperty
implements IMapProperty {
    public Map getMap(Object source) {
        if (source == null) {
            return Collections.EMPTY_MAP;
        }
        return Collections.unmodifiableMap(this.doGetMap(source));
    }

    protected Map doGetMap(Object source) {
        IObservableMap observable = this.observe(source);
        try {
            IdentityMap identityMap = new IdentityMap((Map)observable);
            return identityMap;
        }
        finally {
            observable.dispose();
        }
    }

    public final void setMap(Object source, Map map) {
        if (source != null) {
            this.doSetMap(source, map);
        }
    }

    protected void doSetMap(Object source, Map map) {
        MapDiff diff = Diffs.computeMapDiff((Map)this.doGetMap(source), (Map)map);
        this.doUpdateMap(source, diff);
    }

    public final void updateMap(Object source, MapDiff diff) {
        if (source != null) {
            this.doUpdateMap(source, diff);
        }
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        IObservableMap observable = this.observe(source);
        try {
            diff.applyTo((Map)observable);
        }
        finally {
            observable.dispose();
        }
    }

    public IObservableMap observe(Object source) {
        return this.observe(Realm.getDefault(), source);
    }

    public IObservableFactory mapFactory() {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return MapProperty.this.observe(target);
            }
        };
    }

    public IObservableFactory mapFactory(final Realm realm) {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return MapProperty.this.observe(realm, target);
            }
        };
    }

    public IObservableMap observeDetail(IObservableValue master) {
        return MasterDetailObservables.detailMap((IObservableValue)master, (IObservableFactory)this.mapFactory(master.getRealm()), (Object)this.getKeyType(), (Object)this.getValueType());
    }

    public final IMapProperty values(IValueProperty detailValues) {
        return new MapPropertyDetailValuesMap(this, detailValues);
    }
}

