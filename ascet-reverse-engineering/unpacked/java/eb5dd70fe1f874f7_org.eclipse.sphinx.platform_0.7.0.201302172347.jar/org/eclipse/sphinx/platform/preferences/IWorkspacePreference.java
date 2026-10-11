/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.sphinx.platform.preferences.IEclipsePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IWorkspacePreference<T>
extends IEclipsePreference<T> {
    public T get();

    public void set(T var1);

    public T getDefaultValueAsObject();

    public void setToDefault();

    public void addPreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener var1);

    public void removePreferenceChangeListener(IEclipsePreferences.IPreferenceChangeListener var1);
}

