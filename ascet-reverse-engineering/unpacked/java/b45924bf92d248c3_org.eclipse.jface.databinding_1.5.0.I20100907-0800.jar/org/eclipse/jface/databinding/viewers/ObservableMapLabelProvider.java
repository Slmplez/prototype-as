/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapChangeEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Set;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.swt.graphics.Image;

public class ObservableMapLabelProvider
extends LabelProvider
implements ILabelProvider,
ITableLabelProvider {
    protected IObservableMap[] attributeMaps;
    private IMapChangeListener mapChangeListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            Set affectedElements = event.diff.getChangedKeys();
            LabelProviderChangedEvent newEvent = new LabelProviderChangedEvent((IBaseLabelProvider)ObservableMapLabelProvider.this, affectedElements.toArray());
            ObservableMapLabelProvider.this.fireLabelProviderChanged(newEvent);
        }
    };

    public ObservableMapLabelProvider(IObservableMap attributeMap) {
        this(new IObservableMap[]{attributeMap});
    }

    public ObservableMapLabelProvider(IObservableMap[] attributeMaps) {
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

    public Image getImage(Object element) {
        return this.getColumnImage(element, 0);
    }

    public String getText(Object element) {
        return this.getColumnText(element, 0);
    }

    public Image getColumnImage(Object element, int columnIndex) {
        return null;
    }

    public String getColumnText(Object element, int columnIndex) {
        if (columnIndex < this.attributeMaps.length) {
            Object result = this.attributeMaps[columnIndex].get(element);
            return result == null ? "" : result.toString();
        }
        return null;
    }
}

