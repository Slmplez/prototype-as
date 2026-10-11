/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapChangeEvent
 *  org.eclipse.jface.viewers.CellLabelProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.ViewerCell
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Set;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.ViewerCell;

public class ObservableMapCellLabelProvider
extends CellLabelProvider {
    protected IObservableMap[] attributeMaps;
    private IMapChangeListener mapChangeListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            Set affectedElements = event.diff.getChangedKeys();
            LabelProviderChangedEvent newEvent = new LabelProviderChangedEvent((IBaseLabelProvider)ObservableMapCellLabelProvider.this, affectedElements.toArray());
            ObservableMapCellLabelProvider.this.fireLabelProviderChanged(newEvent);
        }
    };

    public ObservableMapCellLabelProvider(IObservableMap attributeMap) {
        this(new IObservableMap[]{attributeMap});
    }

    protected ObservableMapCellLabelProvider(IObservableMap[] attributeMaps) {
        this.attributeMaps = new IObservableMap[attributeMaps.length];
        System.arraycopy(attributeMaps, 0, this.attributeMaps, 0, attributeMaps.length);
        int i = 0;
        while (i < attributeMaps.length) {
            attributeMaps[i].addMapChangeListener(this.mapChangeListener);
            ++i;
        }
    }

    public void dispose() {
        int i = 0;
        while (i < this.attributeMaps.length) {
            this.attributeMaps[i].removeMapChangeListener(this.mapChangeListener);
            ++i;
        }
        super.dispose();
        this.attributeMaps = null;
        this.mapChangeListener = null;
    }

    public void update(ViewerCell cell) {
        Object element = cell.getElement();
        Object value = this.attributeMaps[0].get(element);
        cell.setText(value == null ? "" : value.toString());
    }
}

