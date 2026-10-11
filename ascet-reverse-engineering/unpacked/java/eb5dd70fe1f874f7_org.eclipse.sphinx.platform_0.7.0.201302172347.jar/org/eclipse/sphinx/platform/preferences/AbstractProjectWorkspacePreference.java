/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.preferences.AbstractProjectPreference;
import org.eclipse.sphinx.platform.preferences.AbstractWorkspacePreference;
import org.eclipse.sphinx.platform.preferences.IProjectWorkspacePreference;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractProjectWorkspacePreference<T>
implements IProjectWorkspacePreference<T> {
    protected AbstractProjectPreference<T> projectPreference;
    protected AbstractWorkspacePreference<T> workspacePreference;

    public AbstractProjectWorkspacePreference(String requiredProjectNatureId, String qualifier, String key, String defaultValueAsString) {
        this(requiredProjectNatureId, qualifier, qualifier, key, defaultValueAsString);
    }

    public AbstractProjectWorkspacePreference(String requiredProjectNatureId, String projectLevelQualifier, String workspaceLevelQualifier, String key, String defaultValueAsString) {
        this.projectPreference = new AbstractProjectPreference<T>(requiredProjectNatureId, projectLevelQualifier, key, null){

            @Override
            protected T toObject(IProject project, String valueAsString) {
                return AbstractProjectWorkspacePreference.this.toObject(project, valueAsString);
            }

            @Override
            protected String toString(IProject project, T valueAsObject) {
                return AbstractProjectWorkspacePreference.this.toString(project, valueAsObject);
            }
        };
        this.workspacePreference = new AbstractWorkspacePreference<T>(workspaceLevelQualifier, key, defaultValueAsString){

            @Override
            protected T toObject(String valueAsString) {
                return AbstractProjectWorkspacePreference.this.toObject(null, valueAsString);
            }

            @Override
            protected String toString(T valueAsObject) {
                return AbstractProjectWorkspacePreference.this.toString(null, valueAsObject);
            }
        };
    }

    @Override
    public String getQualifier() {
        return this.workspacePreference.getQualifier();
    }

    @Override
    public String getKey() {
        return this.workspacePreference.getKey();
    }

    @Override
    public String getDefaultValueAsString() {
        return this.workspacePreference.getDefaultValueAsString();
    }

    @Override
    public String getRequiredProjectNatureId() {
        return this.projectPreference.getRequiredProjectNatureId();
    }

    @Override
    public T get(IProject project) {
        if (project != null) {
            try {
                String natureId;
                if (project.isAccessible() && ((natureId = this.projectPreference.getRequiredProjectNatureId()) == null || project.hasNature(natureId))) {
                    T valueAsObject = this.getFromProject(project);
                    if (valueAsObject != null) {
                        return valueAsObject;
                    }
                    return this.getFromWorkspaceForProject(project);
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
            }
            return null;
        }
        return this.getFromWorkspace();
    }

    @Override
    public T getDefaultValueAsObject() {
        return this.workspacePreference.getDefaultValueAsObject();
    }

    @Override
    public T getFromProject(IProject project) {
        return this.projectPreference.get(project);
    }

    @Override
    public void setInProject(IProject project, T valueAsObject) {
        this.projectPreference.set(project, valueAsObject);
    }

    @Override
    public void setToDefaultInProject(IProject project) {
        this.projectPreference.setToDefault(project);
    }

    @Override
    public void addPreferenceChangeListenerToProject(IProject project, IEclipsePreferences.IPreferenceChangeListener listener) {
        this.projectPreference.addPreferenceChangeListener(project, listener);
    }

    @Override
    public void removePreferenceChangeListenerFromProject(IProject project, IEclipsePreferences.IPreferenceChangeListener listener) {
        this.projectPreference.removePreferenceChangeListener(project, listener);
    }

    @Override
    public T getFromWorkspace() {
        return this.workspacePreference.get();
    }

    @Override
    public T getFromWorkspaceForProject(IProject project) {
        try {
            String natureId;
            if (project.isAccessible() && ((natureId = this.projectPreference.getRequiredProjectNatureId()) == null || project.hasNature(natureId))) {
                IEclipsePreferences prefs = this.workspacePreference.getWorkspacePreferences();
                if (prefs != null) {
                    String valueAsString = prefs.get(this.workspacePreference.getKey(), this.workspacePreference.getDefaultValueAsString());
                    return this.toObject(project, valueAsString);
                }
                return this.toObject(project, this.workspacePreference.getDefaultValueAsString());
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
        }
        return null;
    }

    @Override
    public void setInWorkspace(T valueAsObject) {
        this.workspacePreference.set(valueAsObject);
    }

    @Override
    public void setToDefaultInWorkspace() {
        this.workspacePreference.setToDefault();
    }

    @Override
    public void addPreferenceChangeListenerToWorkspace(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.workspacePreference.addPreferenceChangeListener(listener);
    }

    @Override
    public void removePreferenceChangeListenerFromWorkspace(IEclipsePreferences.IPreferenceChangeListener listener) {
        this.workspacePreference.removePreferenceChangeListener(listener);
    }

    protected T toObject(IProject project, String valueAsString) {
        return this.toObject(valueAsString);
    }

    protected String toString(IProject project, T valueAsObject) {
        return this.toString(valueAsObject);
    }

    protected T toObject(String valueAsString) {
        return null;
    }

    protected String toString(T valueAsObject) {
        return valueAsObject != null ? valueAsObject.toString() : null;
    }
}

