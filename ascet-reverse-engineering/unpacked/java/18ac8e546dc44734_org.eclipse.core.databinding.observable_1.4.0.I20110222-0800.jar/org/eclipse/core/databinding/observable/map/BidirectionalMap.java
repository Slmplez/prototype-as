/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.ObservableMap;

public class BidirectionalMap
extends ObservableMap {
    private IMapChangeListener mapListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            BidirectionalMap.this.fireMapChange(event.diff);
        }
    };

    public BidirectionalMap(IObservableMap wrappedMap) {
        super(wrappedMap.getRealm(), wrappedMap);
        wrappedMap.addMapChangeListener(this.mapListener);
    }
}

