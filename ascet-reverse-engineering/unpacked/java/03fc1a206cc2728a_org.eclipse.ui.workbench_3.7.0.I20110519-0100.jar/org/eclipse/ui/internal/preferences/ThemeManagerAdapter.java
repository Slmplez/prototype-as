/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal.preferences;

import java.util.Set;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.internal.preferences.PropertyMapAdapter;
import org.eclipse.ui.internal.preferences.ThemeAdapter;
import org.eclipse.ui.themes.IThemeManager;

public class ThemeManagerAdapter
extends PropertyMapAdapter {
    private IThemeManager manager;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            ThemeManagerAdapter.this.firePropertyChange(event.getProperty());
        }
    };

    public ThemeManagerAdapter(IThemeManager manager) {
        this.manager = manager;
    }

    protected void attachListener() {
        this.manager.addPropertyChangeListener(this.listener);
    }

    protected void detachListener() {
        this.manager.removePropertyChangeListener(this.listener);
    }

    public Set keySet() {
        Set result = ThemeAdapter.getKeySet(this.manager.getCurrentTheme());
        return result;
    }

    public Object getValue(String propertyId, Class propertyType) {
        return ThemeAdapter.getValue(this.manager.getCurrentTheme(), propertyId, propertyType);
    }

    public boolean propertyExists(String propertyId) {
        return this.keySet().contains(propertyId);
    }

    public void setValue(String propertyId, Object newValue) {
        throw new UnsupportedOperationException();
    }
}

