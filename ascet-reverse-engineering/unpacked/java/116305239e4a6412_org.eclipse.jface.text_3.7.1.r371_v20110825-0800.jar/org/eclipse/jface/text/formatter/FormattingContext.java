/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.jface.text.formatter;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.formatter.IFormattingContext;

public class FormattingContext
implements IFormattingContext {
    private final Map fMap = new HashMap();

    public void dispose() {
        this.fMap.clear();
    }

    public String[] getPreferenceKeys() {
        return new String[0];
    }

    public Object getProperty(Object key) {
        return this.fMap.get(key);
    }

    public boolean isBooleanPreference(String key) {
        return false;
    }

    public boolean isDoublePreference(String key) {
        return false;
    }

    public boolean isFloatPreference(String key) {
        return false;
    }

    public boolean isIntegerPreference(String key) {
        return false;
    }

    public boolean isLongPreference(String key) {
        return false;
    }

    public boolean isStringPreference(String key) {
        return false;
    }

    public void mapToStore(Map map, IPreferenceStore store) {
        String[] preferences = this.getPreferenceKeys();
        String result = null;
        String preference = null;
        int index = 0;
        while (index < preferences.length) {
            preference = preferences[index];
            result = (String)map.get(preference);
            if (result != null) {
                try {
                    if (this.isBooleanPreference(preference)) {
                        store.setValue(preference, result.equals("true"));
                    } else if (this.isIntegerPreference(preference)) {
                        store.setValue(preference, Integer.parseInt(result));
                    } else if (this.isStringPreference(preference)) {
                        store.setValue(preference, result);
                    } else if (this.isDoublePreference(preference)) {
                        store.setValue(preference, Double.parseDouble(result));
                    } else if (this.isFloatPreference(preference)) {
                        store.setValue(preference, Float.parseFloat(result));
                    } else if (this.isLongPreference(preference)) {
                        store.setValue(preference, Long.parseLong(result));
                    }
                }
                catch (NumberFormatException numberFormatException) {}
            }
            ++index;
        }
    }

    public void setProperty(Object key, Object property) {
        this.fMap.put(key, property);
    }

    public void storeToMap(IPreferenceStore store, Map map, boolean useDefault) {
        String[] preferences = this.getPreferenceKeys();
        String preference = null;
        int index = 0;
        while (index < preferences.length) {
            preference = preferences[index];
            if (this.isBooleanPreference(preference)) {
                map.put(preference, (useDefault ? store.getDefaultBoolean(preference) : store.getBoolean(preference)) ? "true" : "false");
            } else if (this.isIntegerPreference(preference)) {
                map.put(preference, String.valueOf(useDefault ? store.getDefaultInt(preference) : store.getInt(preference)));
            } else if (this.isStringPreference(preference)) {
                map.put(preference, useDefault ? store.getDefaultString(preference) : store.getString(preference));
            } else if (this.isDoublePreference(preference)) {
                map.put(preference, String.valueOf(useDefault ? store.getDefaultDouble(preference) : store.getDouble(preference)));
            } else if (this.isFloatPreference(preference)) {
                map.put(preference, String.valueOf(useDefault ? store.getDefaultFloat(preference) : store.getFloat(preference)));
            } else if (this.isLongPreference(preference)) {
                map.put(preference, String.valueOf(useDefault ? store.getDefaultLong(preference) : store.getLong(preference)));
            }
            ++index;
        }
    }
}

