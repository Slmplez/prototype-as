/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.pde.internal.core.PDECore;
import org.osgi.service.prefs.BackingStoreException;

public final class PDEPreferencesManager {
    private static final String EMPTY_STRING = "";
    private IEclipsePreferences fDefaultScopePrefs;
    private IEclipsePreferences fInstanceScopePrefs;

    public PDEPreferencesManager(String ID) {
        this.fInstanceScopePrefs = new InstanceScope().getNode(ID);
        this.fDefaultScopePrefs = new DefaultScope().getNode(ID);
    }

    public void addPreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.fInstanceScopePrefs.addPreferenceChangeListener(listener);
    }

    public boolean getBoolean(String key) {
        return this.fInstanceScopePrefs.getBoolean(key, this.fDefaultScopePrefs.getBoolean(key, false));
    }

    public boolean getDefaultBoolean(String key) {
        return this.fDefaultScopePrefs.getBoolean(key, false);
    }

    public int getDefaultInt(String key) {
        return this.fDefaultScopePrefs.getInt(key, 0);
    }

    public String getDefaultString(String key) {
        return this.fDefaultScopePrefs.get(key, EMPTY_STRING);
    }

    public int getInt(String key) {
        return this.fInstanceScopePrefs.getInt(key, this.fDefaultScopePrefs.getInt(key, 0));
    }

    public String getString(String key) {
        return this.fInstanceScopePrefs.get(key, this.fDefaultScopePrefs.get(key, EMPTY_STRING));
    }

    public void removePreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.fInstanceScopePrefs.removePreferenceChangeListener(listener);
    }

    public void savePluginPreferences() {
        try {
            this.fInstanceScopePrefs.flush();
        }
        catch (BackingStoreException e) {
            PDECore.logException(e);
        }
    }

    public void setDefault(String key, boolean value) {
        this.fDefaultScopePrefs.putBoolean(key, value);
    }

    public void setDefault(String key, int value) {
        this.fDefaultScopePrefs.putInt(key, value);
    }

    public void setDefault(String key, String value) {
        this.fDefaultScopePrefs.put(key, value);
    }

    public void setToDefault(String key) {
        this.fInstanceScopePrefs.put(key, this.fDefaultScopePrefs.get(key, EMPTY_STRING));
    }

    public void setValue(String key, boolean value) {
        this.fInstanceScopePrefs.putBoolean(key, value);
    }

    public void setValue(String key, int value) {
        this.fInstanceScopePrefs.putInt(key, value);
    }

    public void setValue(String key, String value) {
        this.fInstanceScopePrefs.put(key, value);
    }

    public void setValueOrRemove(String key, boolean value) {
        if (value == this.getDefaultBoolean(key)) {
            this.fInstanceScopePrefs.remove(key);
        } else {
            this.fInstanceScopePrefs.putBoolean(key, value);
        }
    }

    public void setValueOrRemove(String key, int value) {
        if (value == this.getDefaultInt(key)) {
            this.fInstanceScopePrefs.remove(key);
        } else {
            this.fInstanceScopePrefs.putInt(key, value);
        }
    }

    public void setValueOrRemove(String key, String value) {
        if (value.equals(this.getDefaultString(key))) {
            this.fInstanceScopePrefs.remove(key);
        } else {
            this.fInstanceScopePrefs.put(key, value);
        }
    }

    public void flush() throws BackingStoreException {
        this.fInstanceScopePrefs.flush();
    }
}

