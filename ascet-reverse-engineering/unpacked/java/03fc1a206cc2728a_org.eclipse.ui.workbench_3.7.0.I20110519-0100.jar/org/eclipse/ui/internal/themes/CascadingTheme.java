/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal.themes;

import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.internal.themes.CascadingColorRegistry;
import org.eclipse.ui.internal.themes.CascadingFontRegistry;
import org.eclipse.ui.themes.ITheme;

public class CascadingTheme
extends EventManager
implements ITheme {
    private CascadingFontRegistry fontRegistry;
    private CascadingColorRegistry colorRegistry;
    private ITheme currentTheme;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            CascadingTheme.this.fire(event);
        }
    };

    public CascadingTheme(ITheme currentTheme, CascadingColorRegistry colorRegistry, CascadingFontRegistry fontRegistry) {
        this.currentTheme = currentTheme;
        this.colorRegistry = colorRegistry;
        this.fontRegistry = fontRegistry;
        fontRegistry.addListener(this.listener);
        colorRegistry.addListener(this.listener);
    }

    protected void fire(PropertyChangeEvent event) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    public String getId() {
        return this.currentTheme.getId();
    }

    public String getLabel() {
        return this.currentTheme.getLabel();
    }

    public ColorRegistry getColorRegistry() {
        return this.colorRegistry;
    }

    public FontRegistry getFontRegistry() {
        return this.fontRegistry;
    }

    public void dispose() {
        this.colorRegistry.removeListener(this.listener);
        this.fontRegistry.removeListener(this.listener);
    }

    public String getString(String key) {
        return this.currentTheme.getString(key);
    }

    public int getInt(String key) {
        return this.currentTheme.getInt(key);
    }

    public boolean getBoolean(String key) {
        return this.currentTheme.getBoolean(key);
    }

    public Set keySet() {
        return this.currentTheme.keySet();
    }
}

