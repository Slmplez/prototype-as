/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.sphinx.platform.preferences.IEclipsePreference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProjectWorkspacePreference<T>
extends IEclipsePreference<T> {
    public String getRequiredProjectNatureId();

    public T get(IProject var1);

    public T getDefaultValueAsObject();

    public T getFromProject(IProject var1);

    public void setInProject(IProject var1, T var2);

    public void setToDefaultInProject(IProject var1);

    public void addPreferenceChangeListenerToProject(IProject var1, IEclipsePreferences.IPreferenceChangeListener var2);

    public void removePreferenceChangeListenerFromProject(IProject var1, IEclipsePreferences.IPreferenceChangeListener var2);

    public T getFromWorkspace();

    public T getFromWorkspaceForProject(IProject var1);

    public void setInWorkspace(T var1);

    public void setToDefaultInWorkspace();

    public void addPreferenceChangeListenerToWorkspace(IEclipsePreferences.IPreferenceChangeListener var1);

    public void removePreferenceChangeListenerFromWorkspace(IEclipsePreferences.IPreferenceChangeListener var1);
}

