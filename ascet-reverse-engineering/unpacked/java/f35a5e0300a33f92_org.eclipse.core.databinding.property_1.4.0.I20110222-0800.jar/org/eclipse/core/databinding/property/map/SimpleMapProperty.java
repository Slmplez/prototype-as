/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 */
package org.eclipse.core.databinding.property.map;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.map.MapProperty;
import org.eclipse.core.internal.databinding.property.map.SimplePropertyObservableMap;

public abstract class SimpleMapProperty
extends MapProperty {
    public IObservableMap observe(Realm realm, Object source) {
        return new SimplePropertyObservableMap(realm, source, this);
    }

    protected abstract Map doGetMap(Object var1);

    public final void setMap(Object source, Map map, MapDiff diff) {
        if (source != null && !diff.isEmpty()) {
            this.doSetMap(source, map, diff);
        }
    }

    protected abstract void doSetMap(Object var1, Map var2, MapDiff var3);

    protected void doSetMap(Object source, Map map) {
        MapDiff diff = Diffs.computeLazyMapDiff((Map)this.doGetMap(source), (Map)map);
        this.doSetMap(source, map, diff);
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        HashMap map = new HashMap(this.doGetMap(source));
        diff.applyTo(map);
        this.doSetMap(source, map, diff);
    }

    public abstract INativePropertyListener adaptListener(ISimplePropertyListener var1);
}

