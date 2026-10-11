/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.map.MapDiff
 */
package org.eclipse.core.internal.databinding.property.map;

import java.util.Map;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.map.SimpleMapProperty;

public final class SelfMapProperty
extends SimpleMapProperty {
    private final Object keyType;
    private final Object valueType;

    public SelfMapProperty(Object keyType, Object valueType) {
        this.keyType = keyType;
        this.valueType = valueType;
    }

    public Object getKeyType() {
        return this.keyType;
    }

    public Object getValueType() {
        return this.valueType;
    }

    protected Map doGetMap(Object source) {
        return (Map)source;
    }

    protected void doSetMap(Object source, Map map, MapDiff diff) {
        this.doUpdateMap(source, diff);
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        diff.applyTo((Map)source);
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    protected void doAddListener(Object source, INativePropertyListener listener) {
    }

    protected void doRemoveListener(Object source, INativePropertyListener listener) {
    }
}

