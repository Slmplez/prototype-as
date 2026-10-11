/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import org.eclipse.ui.internal.preferences.AbstractPropertyListener;
import org.eclipse.ui.internal.preferences.IDynamicPropertyMap;
import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.preferences.PropertyUtil;

public abstract class AbstractIntegerListener
extends AbstractPropertyListener {
    private IDynamicPropertyMap map;
    private int defaultValue;
    private String propertyId;

    public void attach(IDynamicPropertyMap map, String propertyId, int defaultValue) {
        this.defaultValue = defaultValue;
        this.propertyId = propertyId;
        if (this.map != null) {
            this.map.removeListener(this);
        }
        this.map = map;
        if (this.map != null) {
            this.map.addListener(new String[]{propertyId}, this);
        }
    }

    protected void update() {
        this.handleValue(PropertyUtil.get((IPropertyMap)this.map, this.propertyId, this.defaultValue));
    }

    protected abstract void handleValue(int var1);
}

