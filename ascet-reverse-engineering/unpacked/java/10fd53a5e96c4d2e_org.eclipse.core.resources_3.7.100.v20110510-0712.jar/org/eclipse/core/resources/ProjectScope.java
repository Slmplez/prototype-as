/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IScopeContext
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;

public final class ProjectScope
implements IScopeContext {
    public static final String SCOPE = "project";
    private IProject context;

    public ProjectScope(IProject context) {
        if (context == null) {
            throw new IllegalArgumentException();
        }
        this.context = context;
    }

    public IEclipsePreferences getNode(String qualifier) {
        if (qualifier == null) {
            throw new IllegalArgumentException();
        }
        return (IEclipsePreferences)Platform.getPreferencesService().getRootNode().node(SCOPE).node(this.context.getName()).node(qualifier);
    }

    public IPath getLocation() {
        IProject project = this.context.getProject();
        IPath location = project.getLocation();
        return location == null ? null : location.append(".settings");
    }

    public String getName() {
        return SCOPE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        if (!(obj instanceof ProjectScope)) {
            return false;
        }
        ProjectScope other = (ProjectScope)obj;
        return this.context.equals(other.context);
    }

    public int hashCode() {
        return super.hashCode() + this.context.getFullPath().hashCode();
    }
}

