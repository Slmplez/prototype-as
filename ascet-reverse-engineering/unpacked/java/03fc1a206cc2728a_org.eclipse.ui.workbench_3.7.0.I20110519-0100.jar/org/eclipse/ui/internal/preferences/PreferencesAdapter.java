/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 */
package org.eclipse.ui.internal.preferences;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.ui.internal.preferences.PropertyMapAdapter;

public final class PreferencesAdapter
extends PropertyMapAdapter {
    private Preferences store;
    private Preferences.IPropertyChangeListener listener = new Preferences.IPropertyChangeListener(){

        public void propertyChange(Preferences.PropertyChangeEvent event) {
            PreferencesAdapter.this.firePropertyChange(event.getProperty());
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public PreferencesAdapter(Preferences toConvert) {
        this.store = toConvert;
    }

    protected void attachListener() {
        this.store.addPropertyChangeListener(this.listener);
    }

    protected void detachListener() {
        this.store.removePropertyChangeListener(this.listener);
    }

    public Set keySet() {
        HashSet<String> result = new HashSet<String>();
        String[] names = this.store.propertyNames();
        int i = 0;
        while (i < names.length) {
            String string = names[i];
            result.add(string);
            ++i;
        }
        return result;
    }

    public Object getValue(String propertyId, Class propertyType) {
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
            return this.store.getString(propertyId);
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz2) {
            return this.store.getBoolean(propertyId) ? Boolean.TRUE : Boolean.FALSE;
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz3) {
            return new Double(this.store.getDouble(propertyId));
        }
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz4) {
            return new Float(this.store.getFloat(propertyId));
        }
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz5) {
            return new Integer(this.store.getInt(propertyId));
        }
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (propertyType == clazz6) {
            return new Long(this.store.getLong(propertyId));
        }
        return null;
    }

    public boolean propertyExists(String propertyId) {
        return this.store.contains(propertyId);
    }

    public void setValue(String propertyId, Object newValue) {
        if (newValue instanceof String) {
            this.store.setValue(propertyId, (String)newValue);
        } else if (newValue instanceof Integer) {
            this.store.setValue(propertyId, ((Integer)newValue).intValue());
        } else if (newValue instanceof Boolean) {
            this.store.setValue(propertyId, ((Boolean)newValue).booleanValue());
        } else if (newValue instanceof Double) {
            this.store.setValue(propertyId, ((Double)newValue).doubleValue());
        } else if (newValue instanceof Float) {
            this.store.setValue(propertyId, ((Float)newValue).floatValue());
        } else if (newValue instanceof Integer) {
            this.store.setValue(propertyId, ((Integer)newValue).intValue());
        } else if (newValue instanceof Long) {
            this.store.setValue(propertyId, ((Long)newValue).longValue());
        }
    }
}

