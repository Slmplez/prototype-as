/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.ui.internal.preferences;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.ui.internal.preferences.PropertyMapAdapter;
import org.eclipse.ui.themes.ITheme;

public class ThemeAdapter
extends PropertyMapAdapter {
    private ITheme targetTheme;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            ThemeAdapter.this.firePropertyChange(event.getProperty());
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public ThemeAdapter(ITheme targetTheme) {
        this.targetTheme = targetTheme;
    }

    protected void attachListener() {
        this.targetTheme.addPropertyChangeListener(this.listener);
    }

    protected void detachListener() {
        this.targetTheme.removePropertyChangeListener(this.listener);
    }

    public Set keySet() {
        return ThemeAdapter.getKeySet(this.targetTheme);
    }

    public Object getValue(String propertyId, Class propertyType) {
        return ThemeAdapter.getValue(this.targetTheme, propertyId, propertyType);
    }

    public static Set getKeySet(ITheme targetTheme) {
        HashSet result = new HashSet();
        result.addAll(targetTheme.keySet());
        result.addAll(targetTheme.getColorRegistry().getKeySet());
        result.addAll(targetTheme.getFontRegistry().getKeySet());
        return result;
    }

    public static Object getValue(ITheme targetTheme, String propertyId, Class propertyType) {
        FontRegistry fonts;
        Color result;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType.isAssignableFrom(clazz)) {
            return targetTheme.getString(propertyId);
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.swt.graphics.Color");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType.isAssignableFrom(clazz2) && (result = targetTheme.getColorRegistry().get(propertyId)) != null) {
            return result;
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.swt.graphics.Font");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType.isAssignableFrom(clazz3) && (fonts = targetTheme.getFontRegistry()).hasValueFor(propertyId)) {
            return fonts.get(propertyId);
        }
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz4) {
            return new Integer(targetTheme.getInt(propertyId));
        }
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz5) {
            return targetTheme.getBoolean(propertyId) ? Boolean.TRUE : Boolean.FALSE;
        }
        return null;
    }

    public boolean propertyExists(String propertyId) {
        return this.keySet().contains(propertyId);
    }

    public void setValue(String propertyId, Object newValue) {
        throw new UnsupportedOperationException();
    }
}

