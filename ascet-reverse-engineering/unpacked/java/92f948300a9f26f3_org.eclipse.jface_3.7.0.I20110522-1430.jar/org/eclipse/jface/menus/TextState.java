/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.menus;

import org.eclipse.jface.commands.PersistentState;
import org.eclipse.jface.preference.IPreferenceStore;

public class TextState
extends PersistentState {
    public final void load(IPreferenceStore store, String preferenceKey) {
        String value = store.getString(preferenceKey);
        this.setValue(value);
    }

    public final void save(IPreferenceStore store, String preferenceKey) {
        Object value = this.getValue();
        if (value instanceof String) {
            store.setValue(preferenceKey, (String)value);
        }
    }

    public void setValue(Object value) {
        if (!(value instanceof String) && value != null) {
            throw new IllegalArgumentException("TextState takes a String as a value");
        }
        super.setValue(value);
    }
}

