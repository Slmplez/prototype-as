/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.debug.core.DebugPlugin;
import org.osgi.service.prefs.BackingStoreException;

public final class Preferences {
    static final IScopeContext[] contexts = new IScopeContext[]{DefaultScope.INSTANCE, InstanceScope.INSTANCE};
    static final int DEFAULT_CONTEXT = 0;
    static final int INSTANCE_CONTEXT = 1;

    private Preferences() {
    }

    public static synchronized void setString(String qualifier, String key, String value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.put(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).put(key, value);
        }
    }

    public static synchronized void setBoolean(String qualifier, String key, boolean value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putBoolean(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putBoolean(key, value);
        }
    }

    public static synchronized void setInt(String qualifier, String key, int value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putInt(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putInt(key, value);
        }
    }

    public static synchronized void setLong(String qualifier, String key, long value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putLong(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putLong(key, value);
        }
    }

    public static synchronized void setByteArray(String qualifier, String key, byte[] value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putByteArray(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putByteArray(key, value);
        }
    }

    public static synchronized void setDouble(String qualifier, String key, double value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putDouble(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putDouble(key, value);
        }
    }

    public static synchronized void setFloat(String qualifier, String key, float value, IScopeContext context) {
        if (context != null) {
            try {
                IEclipsePreferences node = context.getNode(qualifier);
                node.putFloat(key, value);
                node.flush();
            }
            catch (BackingStoreException bse) {
                DebugPlugin.log(bse);
            }
        } else {
            contexts[1].getNode(qualifier).putFloat(key, value);
        }
    }

    public static synchronized void setDefaultString(String qualifier, String key, String value) {
        contexts[0].getNode(qualifier).put(key, value);
    }

    public static synchronized void setDefaultBoolean(String qualifier, String key, boolean value) {
        contexts[0].getNode(qualifier).putBoolean(key, value);
    }

    public static synchronized void setDefaultByteArray(String qualifier, String key, byte[] value) {
        contexts[0].getNode(qualifier).putByteArray(key, value);
    }

    public static synchronized void setDefaultDouble(String qualifier, String key, double value) {
        contexts[0].getNode(qualifier).putDouble(key, value);
    }

    public static synchronized void setDefaultFloat(String qualifier, String key, float value) {
        contexts[0].getNode(qualifier).putFloat(key, value);
    }

    public static synchronized void setDefaultInt(String qualifier, String key, int value) {
        contexts[0].getNode(qualifier).putInt(key, value);
    }

    public static synchronized void setDefaultLong(String qualifier, String key, long value) {
        contexts[0].getNode(qualifier).putLong(key, value);
    }

    public static synchronized void setToDefault(String qualifier, String key) {
        if (key != null) {
            contexts[1].getNode(qualifier).remove(key);
        }
    }

    public static synchronized boolean getDefaultBoolean(String qualifier, String key, boolean defaultvalue) {
        return contexts[0].getNode(qualifier).getBoolean(key, defaultvalue);
    }

    public static synchronized String getDefaultString(String qualifier, String key, String defaultvalue) {
        return contexts[0].getNode(qualifier).get(key, defaultvalue);
    }

    public static synchronized byte[] getDefaultByteArray(String qualifier, String key, byte[] defaultvalue) {
        return contexts[0].getNode(qualifier).getByteArray(key, defaultvalue);
    }

    public static synchronized int getDefaultInt(String qualifier, String key, int defaultvalue) {
        return contexts[0].getNode(qualifier).getInt(key, defaultvalue);
    }

    public static synchronized long getDefaultLong(String qualifier, String key, long defaultvalue) {
        return contexts[0].getNode(qualifier).getLong(key, defaultvalue);
    }

    public static synchronized double getDefaultDouble(String qualifier, String key, double defaultvalue) {
        return contexts[0].getNode(qualifier).getDouble(key, defaultvalue);
    }

    public static synchronized float getDefaultFloat(String qualifier, String key, float defaultvalue) {
        return contexts[0].getNode(qualifier).getFloat(key, defaultvalue);
    }

    public static synchronized void savePreferences(String qualifier) {
        try {
            contexts[0].getNode(qualifier).flush();
            contexts[1].getNode(qualifier).flush();
        }
        catch (BackingStoreException bse) {
            DebugPlugin.log(bse);
        }
    }

    public static void addPreferenceListener(String qualifier, IEclipsePreferences.IPreferenceChangeListener listener) {
        contexts[0].getNode(qualifier).addPreferenceChangeListener(listener);
        contexts[1].getNode(qualifier).addPreferenceChangeListener(listener);
    }

    public static void removePreferenceListener(String qualifier, IEclipsePreferences.IPreferenceChangeListener listener) {
        contexts[0].getNode(qualifier).removePreferenceChangeListener(listener);
        contexts[1].getNode(qualifier).removePreferenceChangeListener(listener);
    }
}

