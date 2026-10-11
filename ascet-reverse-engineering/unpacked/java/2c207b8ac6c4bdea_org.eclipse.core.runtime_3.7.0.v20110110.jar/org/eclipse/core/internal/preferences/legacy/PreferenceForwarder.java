/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.DefaultPreferences
 *  org.eclipse.core.internal.preferences.EclipsePreferences
 *  org.eclipse.core.internal.preferences.PreferencesService
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.core.internal.preferences.legacy;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Properties;
import org.eclipse.core.internal.preferences.DefaultPreferences;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.osgi.service.prefs.BackingStoreException;

public class PreferenceForwarder
extends Preferences
implements IEclipsePreferences.IPreferenceChangeListener,
IEclipsePreferences.INodeChangeListener {
    private static final byte[] BYTE_ARRAY_DEFAULT_DEFAULT = new byte[0];
    private IEclipsePreferences pluginRoot = (IEclipsePreferences)PreferencesService.getDefault().getRootNode().node("instance");
    private DefaultPreferences defaultsRoot = (DefaultPreferences)PreferencesService.getDefault().getRootNode().node("default");
    private String pluginID;
    private Object plugin;
    private boolean notify = true;

    public PreferenceForwarder(String pluginID) {
        this(null, pluginID);
    }

    public PreferenceForwarder(Object plugin, String pluginID) {
        this.plugin = plugin;
        this.pluginID = pluginID;
    }

    public synchronized void added(IEclipsePreferences.NodeChangeEvent event) {
        if (this.listeners.size() > 0 && this.pluginID.equals(event.getChild().name())) {
            try {
                EclipsePreferences prefs = (EclipsePreferences)event.getChild();
                prefs.addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
            }
            catch (ClassCastException e) {
                throw new RuntimeException("Plug-in preferences must be instances of EclipsePreferences: " + e.getMessage());
            }
        }
    }

    public synchronized void removed(IEclipsePreferences.NodeChangeEvent event) {
    }

    public synchronized void addPropertyChangeListener(Preferences.IPropertyChangeListener listener) {
        if (this.listeners.size() == 0) {
            EclipsePreferences prefs = this.getPluginPreferences(false);
            if (prefs != null) {
                prefs.addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
            }
            this.pluginRoot.addNodeChangeListener((IEclipsePreferences.INodeChangeListener)this);
        }
        this.listeners.add((Object)listener);
    }

    public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
        if (!this.notify) {
            return;
        }
        Object oldValue = event.getOldValue();
        Object newValue = event.getNewValue();
        String key = event.getKey();
        if (newValue == null) {
            newValue = this.getDefault(key, oldValue);
        } else if (oldValue == null) {
            oldValue = this.getDefault(key, newValue);
        }
        this.firePropertyChangeEvent(key, oldValue, newValue);
    }

    private EclipsePreferences getPluginPreferences(boolean create) {
        try {
            if (!create && !this.pluginRoot.nodeExists(this.pluginID)) {
                return null;
            }
        }
        catch (BackingStoreException backingStoreException) {
            return null;
        }
        try {
            return (EclipsePreferences)this.pluginRoot.node(this.pluginID);
        }
        catch (ClassCastException e) {
            throw new RuntimeException("Plug-in preferences must be instances of EclipsePreferences: " + e.getMessage());
        }
    }

    private IEclipsePreferences getDefaultPreferences() {
        return this.defaultsRoot.node(this.pluginID, this.plugin);
    }

    public synchronized void removePropertyChangeListener(Preferences.IPropertyChangeListener listener) {
        this.listeners.remove((Object)listener);
        if (this.listeners.size() == 0) {
            EclipsePreferences prefs = this.getPluginPreferences(false);
            if (prefs != null) {
                prefs.removePreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
            }
            this.pluginRoot.removeNodeChangeListener((IEclipsePreferences.INodeChangeListener)this);
        }
    }

    private Object getDefault(String key, Object obj) {
        IEclipsePreferences defaults = this.getDefaultPreferences();
        if (obj instanceof String) {
            return defaults.get(key, "");
        }
        if (obj instanceof Integer) {
            return new Integer(defaults.getInt(key, 0));
        }
        if (obj instanceof Double) {
            return new Double(defaults.getDouble(key, 0.0));
        }
        if (obj instanceof Float) {
            return new Float(defaults.getFloat(key, 0.0f));
        }
        if (obj instanceof Long) {
            return new Long(defaults.getLong(key, 0L));
        }
        if (obj instanceof byte[]) {
            return defaults.getByteArray(key, BYTE_ARRAY_DEFAULT_DEFAULT);
        }
        if (obj instanceof Boolean) {
            return defaults.getBoolean(key, false) ? Boolean.TRUE : Boolean.FALSE;
        }
        return null;
    }

    public boolean contains(String name) {
        if (name == null) {
            return false;
        }
        String value = this.getPluginPreferences(true).get(name, null);
        if (value != null) {
            return true;
        }
        return this.getDefaultPreferences().get(name, null) != null;
    }

    public boolean getBoolean(String name) {
        return this.getPluginPreferences(true).getBoolean(name, this.getDefaultPreferences().getBoolean(name, false));
    }

    public void setValue(String name, boolean value) {
        Boolean newValue;
        Boolean oldValue = this.getBoolean(name) ? Boolean.TRUE : Boolean.FALSE;
        Boolean bl = newValue = value ? Boolean.TRUE : Boolean.FALSE;
        if (newValue == oldValue) {
            return;
        }
        try {
            this.notify = false;
            if (this.getDefaultBoolean(name) == value) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).putBoolean(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, newValue);
        }
        finally {
            this.notify = true;
        }
    }

    public boolean getDefaultBoolean(String name) {
        return this.getDefaultPreferences().getBoolean(name, false);
    }

    public void setDefault(String name, boolean value) {
        this.getDefaultPreferences().putBoolean(name, value);
    }

    public double getDouble(String name) {
        return this.getPluginPreferences(true).getDouble(name, this.getDefaultPreferences().getDouble(name, 0.0));
    }

    public void setValue(String name, double value) {
        if (Double.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        double doubleValue = this.getDouble(name);
        if (value == doubleValue) {
            return;
        }
        Double oldValue = new Double(doubleValue);
        Double newValue = new Double(value);
        try {
            this.notify = false;
            if (this.getDefaultDouble(name) == value) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).putDouble(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, newValue);
        }
        finally {
            this.notify = true;
        }
    }

    public double getDefaultDouble(String name) {
        return this.getDefaultPreferences().getDouble(name, 0.0);
    }

    public void setDefault(String name, double value) {
        if (Double.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        this.getDefaultPreferences().putDouble(name, value);
    }

    public float getFloat(String name) {
        return this.getPluginPreferences(true).getFloat(name, this.getDefaultPreferences().getFloat(name, 0.0f));
    }

    public void setValue(String name, float value) {
        if (Float.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        float floatValue = this.getFloat(name);
        if (value == floatValue) {
            return;
        }
        Float oldValue = new Float(floatValue);
        Float newValue = new Float(value);
        try {
            this.notify = false;
            if (this.getDefaultFloat(name) == value) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).putFloat(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, newValue);
        }
        finally {
            this.notify = true;
        }
    }

    public float getDefaultFloat(String name) {
        return this.getDefaultPreferences().getFloat(name, 0.0f);
    }

    public void setDefault(String name, float value) {
        if (Float.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        this.getDefaultPreferences().putFloat(name, value);
    }

    public int getInt(String name) {
        return this.getPluginPreferences(true).getInt(name, this.getDefaultPreferences().getInt(name, 0));
    }

    public void setValue(String name, int value) {
        int intValue = this.getInt(name);
        if (value == intValue) {
            return;
        }
        Integer oldValue = new Integer(intValue);
        Integer newValue = new Integer(value);
        try {
            this.notify = false;
            if (this.getDefaultInt(name) == value) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).putInt(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, newValue);
        }
        finally {
            this.notify = true;
        }
    }

    public int getDefaultInt(String name) {
        return this.getDefaultPreferences().getInt(name, 0);
    }

    public void setDefault(String name, int value) {
        this.getDefaultPreferences().putInt(name, value);
    }

    public long getLong(String name) {
        return this.getPluginPreferences(true).getLong(name, this.getDefaultPreferences().getLong(name, 0L));
    }

    public void setValue(String name, long value) {
        long longValue = this.getLong(name);
        if (value == longValue) {
            return;
        }
        Long oldValue = new Long(longValue);
        Long newValue = new Long(value);
        try {
            this.notify = false;
            if (this.getDefaultLong(name) == value) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).putLong(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, newValue);
        }
        finally {
            this.notify = true;
        }
    }

    public long getDefaultLong(String name) {
        return this.getDefaultPreferences().getLong(name, 0L);
    }

    public void setDefault(String name, long value) {
        this.getDefaultPreferences().putLong(name, value);
    }

    public String getString(String name) {
        return this.getPluginPreferences(true).get(name, this.getDefaultPreferences().get(name, ""));
    }

    public void setValue(String name, String value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        String oldValue = this.getString(name);
        if (value.equals(oldValue)) {
            return;
        }
        try {
            this.notify = false;
            if (this.getDefaultString(name).equals(value)) {
                this.getPluginPreferences(true).remove(name);
            } else {
                this.getPluginPreferences(true).put(name, value);
            }
            this.firePropertyChangeEvent(name, oldValue, value);
        }
        finally {
            this.notify = true;
        }
    }

    public String getDefaultString(String name) {
        return this.getDefaultPreferences().get(name, "");
    }

    public void setDefault(String name, String value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        this.getDefaultPreferences().put(name, value);
    }

    public boolean isDefault(String name) {
        if (name == null) {
            return false;
        }
        return this.getPluginPreferences(true).get(name, null) == null;
    }

    public void setToDefault(String name) {
        EclipsePreferences preferences = this.getPluginPreferences(true);
        String oldValue = preferences.get(name, null);
        if (oldValue != null) {
            preferences.remove(name);
        }
    }

    public String[] propertyNames() {
        return this.getPluginPreferences(true).keys();
    }

    public String[] defaultPropertyNames() {
        try {
            return this.getDefaultPreferences().keys();
        }
        catch (BackingStoreException e) {
            this.logError(e.getMessage(), (Exception)((Object)e));
            return new String[0];
        }
    }

    public boolean needsSaving() {
        return this.getPluginPreferences(true).isDirty();
    }

    public void flush() throws BackingStoreException {
        EclipsePreferences node = this.getPluginPreferences(false);
        if (node != null) {
            node.flush();
        }
    }

    private void logError(String message, Exception e) {
        Status status = new Status(4, "org.eclipse.equinox.preferences", 4, message, (Throwable)e);
        RuntimeLog.log((IStatus)status);
    }

    public void load(InputStream in) throws IOException {
        Properties result = new Properties();
        result.load(in);
        this.convertFromProperties(result);
        try {
            this.flush();
        }
        catch (BackingStoreException e) {
            throw new IOException(e.getMessage());
        }
    }

    public void store(OutputStream out, String header) throws IOException {
        Properties result = this.convertToProperties();
        result.store(out, header);
        try {
            this.flush();
        }
        catch (BackingStoreException e) {
            throw new IOException(e.getMessage());
        }
    }

    private void convertFromProperties(Properties props) {
        EclipsePreferences preferences = this.getPluginPreferences(true);
        Iterator i = props.keySet().iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            String value = props.getProperty(key);
            if (value == null) continue;
            preferences.put(key, value);
        }
    }

    public String toString() {
        return "PreferenceForwarder(" + this.pluginID + ")";
    }

    private Properties convertToProperties() {
        Properties result = new Properties();
        String[] keys = this.propertyNames();
        int i = 0;
        while (i < keys.length) {
            String key = keys[i];
            String value = this.getString(key);
            if (!"".equals(value)) {
                result.put(key, value);
            }
            ++i;
        }
        return result;
    }
}

