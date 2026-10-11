/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;

public interface IMapChangeListener
extends IObservablesListener {
    public void handleMapChange(MapChangeEvent var1);
}

