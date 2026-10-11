/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.jface.preference.IPersistentPreferenceStore
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.ui.preferences;

import java.io.IOException;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.jface.preference.IPersistentPreferenceStore;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class ScopedPreferenceStore
extends EventManager
implements IPreferenceStore,
IPersistentPreferenceStore {
    private IScopeContext storeContext;
    private IScopeContext[] searchContexts;
    protected boolean silentRunning = false;
    IEclipsePreferences.IPreferenceChangeListener preferencesListener;
    private IScopeContext defaultContext = new DefaultScope();
    String nodeQualifier;
    String defaultQualifier;
    private boolean dirty;

    public ScopedPreferenceStore(IScopeContext context, String qualifier, String defaultQualifierPath) {
        this(context, qualifier);
        this.defaultQualifier = defaultQualifierPath;
    }

    public ScopedPreferenceStore(IScopeContext context, String qualifier) {
        this.storeContext = context;
        this.nodeQualifier = qualifier;
        this.defaultQualifier = qualifier;
        ((IEclipsePreferences)this.getStorePreferences().parent()).addNodeChangeListener(this.getNodeChangeListener());
    }

    private IEclipsePreferences.INodeChangeListener getNodeChangeListener() {
        return new IEclipsePreferences.INodeChangeListener(){

            public void added(IEclipsePreferences.NodeChangeEvent event) {
                if (ScopedPreferenceStore.this.nodeQualifier.equals(event.getChild().name()) && ScopedPreferenceStore.this.isListenerAttached()) {
                    ScopedPreferenceStore.this.getStorePreferences().addPreferenceChangeListener(ScopedPreferenceStore.this.preferencesListener);
                }
            }

            public void removed(IEclipsePreferences.NodeChangeEvent event) {
            }
        };
    }

    private void initializePreferencesListener() {
        if (this.preferencesListener == null) {
            this.preferencesListener = new IEclipsePreferences.IPreferenceChangeListener(){

                public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
                    if (ScopedPreferenceStore.this.silentRunning) {
                        return;
                    }
                    Object oldValue = event.getOldValue();
                    Object newValue = event.getNewValue();
                    String key = event.getKey();
                    if (newValue == null) {
                        newValue = ScopedPreferenceStore.this.getDefault(key, oldValue);
                    } else if (oldValue == null) {
                        oldValue = ScopedPreferenceStore.this.getDefault(key, newValue);
                    }
                    ScopedPreferenceStore.this.firePropertyChangeEvent(event.getKey(), oldValue, newValue);
                }
            };
            this.getStorePreferences().addPreferenceChangeListener(this.preferencesListener);
        }
    }

    Object getDefault(String key, Object obj) {
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
        if (obj instanceof Boolean) {
            return defaults.getBoolean(key, false) ? Boolean.TRUE : Boolean.FALSE;
        }
        return null;
    }

    IEclipsePreferences getStorePreferences() {
        return this.storeContext.getNode(this.nodeQualifier);
    }

    private IEclipsePreferences getDefaultPreferences() {
        return this.defaultContext.getNode(this.defaultQualifier);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.initializePreferencesListener();
        this.addListenerObject(listener);
    }

    public IEclipsePreferences[] getPreferenceNodes(boolean includeDefault) {
        if (this.searchContexts == null) {
            if (includeDefault) {
                return new IEclipsePreferences[]{this.getStorePreferences(), this.getDefaultPreferences()};
            }
            return new IEclipsePreferences[]{this.getStorePreferences()};
        }
        int length = this.searchContexts.length;
        if (includeDefault) {
            ++length;
        }
        IEclipsePreferences[] preferences = new IEclipsePreferences[length];
        int i = 0;
        while (i < this.searchContexts.length) {
            preferences[i] = this.searchContexts[i].getNode(this.nodeQualifier);
            ++i;
        }
        if (includeDefault) {
            preferences[length - 1] = this.getDefaultPreferences();
        }
        return preferences;
    }

    public void setSearchContexts(IScopeContext[] scopes) {
        this.searchContexts = scopes;
        if (scopes == null) {
            return;
        }
        int i = 0;
        while (i < scopes.length) {
            if (scopes[i].equals(this.defaultContext)) {
                Assert.isTrue((boolean)false, (String)WorkbenchMessages.ScopedPreferenceStore_DefaultAddedError);
            }
            ++i;
        }
    }

    public boolean contains(String name) {
        if (name == null) {
            return false;
        }
        return Platform.getPreferencesService().get(name, null, (Preferences[])this.getPreferenceNodes(true)) != null;
    }

    public void firePropertyChangeEvent(String name, Object oldValue, Object newValue) {
        Object[] list = this.getListeners();
        if (list.length == 0) {
            return;
        }
        final PropertyChangeEvent event = new PropertyChangeEvent((Object)this, name, oldValue, newValue);
        int i = 0;
        while (i < list.length) {
            final IPropertyChangeListener listener = (IPropertyChangeListener)list[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(JFaceResources.getString((String)"PreferenceStore.changeError")){

                public void run() {
                    listener.propertyChange(event);
                }
            });
            ++i;
        }
    }

    public boolean getBoolean(String name) {
        String value = this.internalGet(name);
        return value == null ? false : Boolean.valueOf(value);
    }

    public boolean getDefaultBoolean(String name) {
        return this.getDefaultPreferences().getBoolean(name, false);
    }

    public double getDefaultDouble(String name) {
        return this.getDefaultPreferences().getDouble(name, 0.0);
    }

    public float getDefaultFloat(String name) {
        return this.getDefaultPreferences().getFloat(name, 0.0f);
    }

    public int getDefaultInt(String name) {
        return this.getDefaultPreferences().getInt(name, 0);
    }

    public long getDefaultLong(String name) {
        return this.getDefaultPreferences().getLong(name, 0L);
    }

    public String getDefaultString(String name) {
        return this.getDefaultPreferences().get(name, "");
    }

    public double getDouble(String name) {
        String value = this.internalGet(name);
        if (value == null) {
            return 0.0;
        }
        try {
            return Double.parseDouble(value);
        }
        catch (NumberFormatException numberFormatException) {
            return 0.0;
        }
    }

    private String internalGet(String key) {
        return Platform.getPreferencesService().get(key, null, (Preferences[])this.getPreferenceNodes(true));
    }

    public float getFloat(String name) {
        String value = this.internalGet(name);
        if (value == null) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(value);
        }
        catch (NumberFormatException numberFormatException) {
            return 0.0f;
        }
    }

    public int getInt(String name) {
        String value = this.internalGet(name);
        if (value == null) {
            return 0;
        }
        try {
            return Integer.parseInt(value);
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public long getLong(String name) {
        String value = this.internalGet(name);
        if (value == null) {
            return 0L;
        }
        try {
            return Long.parseLong(value);
        }
        catch (NumberFormatException numberFormatException) {
            return 0L;
        }
    }

    public String getString(String name) {
        String value = this.internalGet(name);
        return value == null ? "" : value;
    }

    public boolean isDefault(String name) {
        if (name == null) {
            return false;
        }
        return Platform.getPreferencesService().get(name, null, (Preferences[])this.getPreferenceNodes(false)) == null;
    }

    public boolean needsSaving() {
        return this.dirty;
    }

    public void putValue(String name, String value) {
        try {
            this.silentRunning = true;
            this.getStorePreferences().put(name, value);
        }
        finally {
            this.silentRunning = false;
            this.dirty = true;
        }
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
        if (!this.isListenerAttached()) {
            this.disposePreferenceStoreListener();
        }
    }

    public void setDefault(String name, double value) {
        this.getDefaultPreferences().putDouble(name, value);
    }

    public void setDefault(String name, float value) {
        this.getDefaultPreferences().putFloat(name, value);
    }

    public void setDefault(String name, int value) {
        this.getDefaultPreferences().putInt(name, value);
    }

    public void setDefault(String name, long value) {
        this.getDefaultPreferences().putLong(name, value);
    }

    public void setDefault(String name, String defaultObject) {
        this.getDefaultPreferences().put(name, defaultObject);
    }

    public void setDefault(String name, boolean value) {
        this.getDefaultPreferences().putBoolean(name, value);
    }

    public void setToDefault(String name) {
        String oldValue = this.getString(name);
        String defaultValue = this.getDefaultString(name);
        try {
            this.silentRunning = true;
            this.getStorePreferences().remove(name);
            if (oldValue != defaultValue) {
                this.dirty = true;
                this.firePropertyChangeEvent(name, oldValue, defaultValue);
            }
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void setValue(String name, double value) {
        double oldValue = this.getDouble(name);
        if (oldValue == value) {
            return;
        }
        try {
            this.silentRunning = true;
            if (this.getDefaultDouble(name) == value) {
                this.getStorePreferences().remove(name);
            } else {
                this.getStorePreferences().putDouble(name, value);
            }
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Double(oldValue), new Double(value));
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void setValue(String name, float value) {
        float oldValue = this.getFloat(name);
        if (oldValue == value) {
            return;
        }
        try {
            this.silentRunning = true;
            if (this.getDefaultFloat(name) == value) {
                this.getStorePreferences().remove(name);
            } else {
                this.getStorePreferences().putFloat(name, value);
            }
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Float(oldValue), new Float(value));
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void setValue(String name, int value) {
        int oldValue = this.getInt(name);
        if (oldValue == value) {
            return;
        }
        try {
            this.silentRunning = true;
            if (this.getDefaultInt(name) == value) {
                this.getStorePreferences().remove(name);
            } else {
                this.getStorePreferences().putInt(name, value);
            }
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Integer(oldValue), new Integer(value));
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void setValue(String name, long value) {
        long oldValue = this.getLong(name);
        if (oldValue == value) {
            return;
        }
        try {
            this.silentRunning = true;
            if (this.getDefaultLong(name) == value) {
                this.getStorePreferences().remove(name);
            } else {
                this.getStorePreferences().putLong(name, value);
            }
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Long(oldValue), new Long(value));
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void setValue(String name, String value) {
        if (this.getDefaultString(name).equals(value)) {
            this.getStorePreferences().remove(name);
        } else {
            this.getStorePreferences().put(name, value);
        }
        this.dirty = true;
    }

    public void setValue(String name, boolean value) {
        boolean oldValue = this.getBoolean(name);
        if (oldValue == value) {
            return;
        }
        try {
            this.silentRunning = true;
            if (this.getDefaultBoolean(name) == value) {
                this.getStorePreferences().remove(name);
            } else {
                this.getStorePreferences().putBoolean(name, value);
            }
            this.dirty = true;
            this.firePropertyChangeEvent(name, oldValue ? Boolean.TRUE : Boolean.FALSE, value ? Boolean.TRUE : Boolean.FALSE);
        }
        finally {
            this.silentRunning = false;
        }
    }

    public void save() throws IOException {
        try {
            this.getStorePreferences().flush();
            this.dirty = false;
        }
        catch (BackingStoreException e) {
            throw new IOException(e.getMessage());
        }
    }

    private void disposePreferenceStoreListener() {
        IEclipsePreferences root = (IEclipsePreferences)Platform.getPreferencesService().getRootNode().node("instance");
        try {
            if (!root.nodeExists(this.nodeQualifier)) {
                return;
            }
        }
        catch (BackingStoreException backingStoreException) {
            return;
        }
        IEclipsePreferences preferences = this.getStorePreferences();
        if (preferences == null) {
            return;
        }
        if (this.preferencesListener != null) {
            preferences.removePreferenceChangeListener(this.preferencesListener);
            this.preferencesListener = null;
        }
    }
}

