/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.sphinx.platform.preferences;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.preferences.AbstractEclipsePreference;
import org.eclipse.sphinx.platform.preferences.IProjectPreference;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.osgi.service.prefs.BackingStoreException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractProjectPreference<T>
extends AbstractEclipsePreference<T>
implements IProjectPreference<T> {
    protected String requiredProjectNatureId;

    public AbstractProjectPreference(String requiredProjectNatureId, String qualifier, String key, String defaultValueAsString) {
        super(qualifier, key, defaultValueAsString);
        this.requiredProjectNatureId = requiredProjectNatureId;
    }

    @Override
    public String getRequiredProjectNatureId() {
        return this.requiredProjectNatureId;
    }

    @Override
    public T get(IProject project) {
        Assert.isNotNull((Object)project);
        try {
            if (project.isAccessible() && (this.requiredProjectNatureId == null || project.hasNature(this.requiredProjectNatureId))) {
                IEclipsePreferences prefs = this.getProjectPreferences(project);
                if (prefs != null) {
                    String valueAsString = prefs.get(this.key, this.defaultValueAsString);
                    return this.toObject(project, valueAsString);
                }
                return this.toObject(project, this.defaultValueAsString);
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
        }
        return null;
    }

    @Override
    public void set(IProject project, T valueAsObject) {
        Assert.isNotNull((Object)project);
        try {
            if (project.isAccessible() && (this.requiredProjectNatureId == null || project.hasNature(this.requiredProjectNatureId))) {
                String valueAsString = this.toString(project, valueAsObject);
                IEclipsePreferences prefs = this.getProjectPreferences(project);
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
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsWarning(Activator.getDefault(), ex);
        }
    }

    @Override
    public T getDefaultValueAsObject(IProject project) {
        return this.toObject(project, this.defaultValueAsString);
    }

    @Override
    public void setToDefault(IProject project) {
        IEclipsePreferences prefs = this.getProjectPreferences(project);
        if (prefs != null) {
            prefs.remove(this.key);
        }
    }

    @Override
    public void addPreferenceChangeListener(IProject project, IEclipsePreferences.IPreferenceChangeListener listener) {
        IEclipsePreferences prefs = this.getProjectPreferences(project);
        if (prefs != null) {
            prefs.addPreferenceChangeListener(listener);
        }
    }

    @Override
    public void removePreferenceChangeListener(IProject project, IEclipsePreferences.IPreferenceChangeListener listener) {
        IEclipsePreferences prefs = this.getProjectPreferences(project);
        if (prefs != null) {
            prefs.removePreferenceChangeListener(listener);
        }
    }

    protected IEclipsePreferences getProjectPreferences(IProject project) {
        Assert.isNotNull((Object)project);
        ProjectScope projectScope = new ProjectScope(project);
        return projectScope.getNode(this.qualifier);
    }

    protected T toObject(IProject project, String valueAsString) {
        return null;
    }

    protected String toString(IProject project, T valueAsObject) {
        return valueAsObject != null ? valueAsObject.toString() : null;
    }
}

