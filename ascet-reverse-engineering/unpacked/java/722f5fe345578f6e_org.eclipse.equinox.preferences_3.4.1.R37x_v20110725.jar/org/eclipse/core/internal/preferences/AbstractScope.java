/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;

public abstract class AbstractScope
implements IScopeContext {
    public abstract String getName();

    public IEclipsePreferences getNode(String qualifier) {
        if (qualifier == null) {
            throw new IllegalArgumentException();
        }
        return (IEclipsePreferences)PreferencesService.getDefault().getRootNode().node(this.getName()).node(qualifier);
    }

    public abstract IPath getLocation();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IScopeContext)) {
            return false;
        }
        IScopeContext other = (IScopeContext)obj;
        if (!this.getName().equals(other.getName())) {
            return false;
        }
        IPath location = this.getLocation();
        return location == null ? other.getLocation() == null : location.equals((Object)other.getLocation());
    }

    public int hashCode() {
        return this.getName().hashCode();
    }
}

