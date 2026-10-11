/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.preferences.AbstractEclipsePreference;
import org.eclipse.sphinx.platform.preferences.IWorkspacePreference;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.osgi.service.prefs.BackingStoreException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractWorkspacePreference<T>
extends AbstractEclipsePreference<T>
implements IWorkspacePreference<T> {
    public AbstractWorkspacePreference(String qualifier, String key, String defaultValueAsString) {
        super(qualifier, key, defaultValueAsString);
    }

    @Override
    public T get() {
        try {
            IEclipsePreferences prefs = this.getWorkspacePreferences();
            if (prefs != null) {
                String valueAsString = prefs.get(this.key, this.defaultValueAsString);
                return this.toObject(valueAsString);
            }
            return this.toObject(this.defaultValueAsString);
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
            return null;
        }
    }

    @Override
    public void set(T valueAsObject) {
        try {
            String valueAsString = this.toString(valueAsObject);
            IEclipsePreferences prefs = this.getWorkspacePreferences();
            if (prefs != null) {
                if (valueAsString != null && !valueAsString.equals(this.defaultValueAsString)) {
                    prefs.put(this.key, valueAsString);
                } else {
                    prefs.remove(this.key);
                }
                try {
                    prefs.flush();
                }
                catch (BackingStoreException backingStoreException) {}
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
        }
    }

    @Override
    public T getDefaultValueAsObject() {
        return this.toObject(this.defaultValueAsString);
    }

    @Override
    public void setToDefault() {
        IEclipsePreferences prefs = this.getWorkspacePreferences();
        if (prefs != null) {
            prefs.remove(this.key);
        }
    }

    @Override
    public void addPreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        IEclipsePreferences prefs = this.getWorkspacePreferences();
        if (prefs != null) {
            prefs.addPreferenceChangeListener(listener);
        }
    }

    @Override
    public void removePreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener listener) {
        IEclipsePreferences prefs = this.getWorkspacePreferences();
        if (prefs != null) {
            prefs.removePreferenceChangeListener(listener);
        }
    }

    protected IEclipsePreferences getWorkspacePreferences() {
        return new InstanceScope().getNode(this.qualifier);
    }

    protected T toObject(String valueAsString) {
        return null;
    }

    protected String toString(T valueAsObject) {
        return valueAsObject != null ? valueAsObject.toString() : null;
    }
}

