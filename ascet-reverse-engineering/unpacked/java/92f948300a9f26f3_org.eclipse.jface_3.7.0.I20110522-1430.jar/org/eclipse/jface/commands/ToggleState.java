/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.commands;

import org.eclipse.jface.commands.PersistentState;
import org.eclipse.jface.preference.IPreferenceStore;

public class ToggleState
extends PersistentState {
    public ToggleState() {
        this.setValue(Boolean.FALSE);
    }

    public final void load(IPreferenceStore store, String preferenceKey) {
        boolean currentValue = (Boolean)this.getValue();
        store.setDefault(preferenceKey, currentValue);
        if (this.shouldPersist() && store.contains(preferenceKey)) {
            boolean value = store.getBoolean(preferenceKey);
            this.setValue(value ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public final void save(IPreferenceStore store, String preferenceKey) {
        Object value;
        if (this.shouldPersist() && (value = this.getValue()) instanceof Boolean) {
            store.setValue(preferenceKey, (Boolean)value);
        }
    }

    public void setValue(Object value) {
        if (!(value instanceof Boolean)) {
            throw new IllegalArgumentException("ToggleState takes a Boolean as a value");
        }
        super.setValue(value);
    }
}

