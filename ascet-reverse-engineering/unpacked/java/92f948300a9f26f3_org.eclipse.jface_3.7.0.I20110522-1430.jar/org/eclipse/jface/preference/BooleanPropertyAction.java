/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;

public class BooleanPropertyAction
extends Action {
    private IPreferenceStore preferenceStore;
    private String property;

    public BooleanPropertyAction(String title, IPreferenceStore preferenceStore, String property) throws IllegalArgumentException {
        super(title, 2);
        if (preferenceStore == null || property == null) {
            throw new IllegalArgumentException();
        }
        this.preferenceStore = preferenceStore;
        this.property = property;
        final String finalProprety = property;
        preferenceStore.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (finalProprety.equals(event.getProperty())) {
                    BooleanPropertyAction.this.setChecked(Boolean.TRUE.equals(event.getNewValue()));
                }
            }
        });
        this.setChecked(preferenceStore.getBoolean(property));
    }

    public void run() {
        this.preferenceStore.setValue(this.property, this.isChecked());
    }
}

