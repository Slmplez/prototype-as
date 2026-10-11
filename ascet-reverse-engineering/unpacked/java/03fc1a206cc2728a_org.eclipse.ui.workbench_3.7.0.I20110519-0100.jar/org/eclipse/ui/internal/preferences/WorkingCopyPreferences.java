/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.ui.internal.preferences;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.ui.internal.preferences.Base64;
import org.eclipse.ui.preferences.WorkingCopyManager;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class WorkingCopyPreferences
extends EventManager
implements IEclipsePreferences {
    private static final String TRUE = "true";
    private final Map temporarySettings;
    private final IEclipsePreferences original;
    private boolean removed = false;
    private WorkingCopyManager manager;

    public WorkingCopyPreferences(IEclipsePreferences original, WorkingCopyManager manager) {
        this.original = original;
        this.manager = manager;
        this.temporarySettings = new HashMap();
    }

    private void checkRemoved() {
        if (this.removed) {
            String message = "Preference node: " + this.absolutePath() + " has been removed.";
            throw new IllegalStateException(message);
        }
    }

    public void addNodeChangeListener(IEclipsePreferences.INodeChangeListener listener) {
    }

    public void removeNodeChangeListener(IEclipsePreferences.INodeChangeListener listener) {
    }

    public void addPreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.checkRemoved();
        this.addListenerObject(listener);
    }

    public void removePreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.checkRemoved();
        this.removeListenerObject(listener);
    }

    public void removeNode() throws BackingStoreException {
        this.checkRemoved();
        String[] keys = this.keys();
        int i = 0;
        while (i < keys.length) {
            this.remove(keys[i]);
            ++i;
        }
        String[] childNames = this.childrenNames();
        int i2 = 0;
        while (i2 < childNames.length) {
            this.node(childNames[i2]).removeNode();
            ++i2;
        }
        this.removed = true;
    }

    public Preferences node(String path) {
        this.checkRemoved();
        return this.manager.getWorkingCopy((IEclipsePreferences)this.getOriginal().node(path));
    }

    public void accept(IPreferenceNodeVisitor visitor) throws BackingStoreException {
        this.checkRemoved();
        if (!visitor.visit((IEclipsePreferences)this)) {
            return;
        }
        String[] childNames = this.childrenNames();
        int i = 0;
        while (i < childNames.length) {
            ((IEclipsePreferences)this.node(childNames[i])).accept(visitor);
            ++i;
        }
    }

    public void put(String key, String value) {
        this.checkRemoved();
        if (key == null || value == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        this.temporarySettings.put(key, value);
        if (!value.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, value);
        }
    }

    private void firePropertyChangeEvent(String key, Object oldValue, Object newValue) {
        Object[] listeners = this.getListeners();
        if (listeners.length == 0) {
            return;
        }
        IEclipsePreferences.PreferenceChangeEvent event = new IEclipsePreferences.PreferenceChangeEvent((Object)this, key, oldValue, newValue);
        int i = 0;
        while (i < listeners.length) {
            ((IEclipsePreferences.IPreferenceChangeListener)listeners[i]).preferenceChange(event);
            ++i;
        }
    }

    public String get(String key, String defaultValue) {
        this.checkRemoved();
        return this.internalGet(key, defaultValue);
    }

    private String internalGet(String key, String defaultValue) {
        if (key == null) {
            throw new NullPointerException();
        }
        if (this.temporarySettings.containsKey(key)) {
            Object value = this.temporarySettings.get(key);
            return value == null ? defaultValue : (String)value;
        }
        return this.getOriginal().get(key, defaultValue);
    }

    public void remove(String key) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.original.get(key, null);
        if (oldValue == null) {
            return;
        }
        this.temporarySettings.put(key, null);
        this.firePropertyChangeEvent(key, oldValue, null);
    }

    public void clear() {
        this.checkRemoved();
        Iterator i = this.temporarySettings.keySet().iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            Object value = this.temporarySettings.get(key);
            if (value == null) continue;
            this.temporarySettings.put(key, null);
            this.firePropertyChangeEvent(key, value, null);
        }
    }

    public void putInt(String key, int value) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = Integer.toString(value);
        this.temporarySettings.put(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public int getInt(String key, int defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        int result = defaultValue;
        if (value != null) {
            try {
                result = Integer.parseInt(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public void putLong(String key, long value) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = Long.toString(value);
        this.temporarySettings.put(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public long getLong(String key, long defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        long result = defaultValue;
        if (value != null) {
            try {
                result = Long.parseLong(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public void putBoolean(String key, boolean value) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = String.valueOf(value);
        this.temporarySettings.put(key, newValue);
        if (!newValue.equalsIgnoreCase(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        return value == null ? defaultValue : TRUE.equalsIgnoreCase(value);
    }

    public void putFloat(String key, float value) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = Float.toString(value);
        this.temporarySettings.put(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public float getFloat(String key, float defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        float result = defaultValue;
        if (value != null) {
            try {
                result = Float.parseFloat(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public void putDouble(String key, double value) {
        this.checkRemoved();
        if (key == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = Double.toString(value);
        this.temporarySettings.put(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public double getDouble(String key, double defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        double result = defaultValue;
        if (value != null) {
            try {
                result = Double.parseDouble(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public void putByteArray(String key, byte[] value) {
        this.checkRemoved();
        if (key == null || value == null) {
            throw new NullPointerException();
        }
        String oldValue = null;
        oldValue = this.temporarySettings.containsKey(key) ? (String)this.temporarySettings.get(key) : this.getOriginal().get(key, null);
        String newValue = new String(Base64.encode(value));
        this.temporarySettings.put(key, newValue);
        if (!newValue.equals(oldValue)) {
            this.firePropertyChangeEvent(key, oldValue, newValue);
        }
    }

    public byte[] getByteArray(String key, byte[] defaultValue) {
        this.checkRemoved();
        String value = this.internalGet(key, null);
        return value == null ? defaultValue : Base64.decode(value.getBytes());
    }

    public String[] keys() throws BackingStoreException {
        this.checkRemoved();
        HashSet<String> allKeys = new HashSet<String>(Arrays.asList(this.getOriginal().keys()));
        allKeys.addAll(this.temporarySettings.keySet());
        return allKeys.toArray(new String[allKeys.size()]);
    }

    public String[] childrenNames() throws BackingStoreException {
        this.checkRemoved();
        return this.getOriginal().childrenNames();
    }

    public Preferences parent() {
        this.checkRemoved();
        return this.manager.getWorkingCopy((IEclipsePreferences)this.getOriginal().parent());
    }

    public boolean nodeExists(String pathName) throws BackingStoreException {
        if (pathName.length() == 0) {
            return this.removed ? false : this.getOriginal().nodeExists(pathName);
        }
        return this.getOriginal().nodeExists(pathName);
    }

    public String name() {
        return this.getOriginal().name();
    }

    public String absolutePath() {
        return this.getOriginal().absolutePath();
    }

    public void flush() throws BackingStoreException {
        if (this.removed) {
            this.getOriginal().removeNode();
            return;
        }
        this.checkRemoved();
        Iterator i = this.temporarySettings.keySet().iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            String value = (String)this.temporarySettings.get(key);
            if (value == null) {
                this.getOriginal().remove(key);
                continue;
            }
            this.getOriginal().put(key, value);
        }
        this.temporarySettings.clear();
        this.getOriginal().flush();
    }

    public void sync() throws BackingStoreException {
        this.checkRemoved();
        this.temporarySettings.clear();
        this.getOriginal().sync();
    }

    private IEclipsePreferences getOriginal() {
        return this.original;
    }
}

