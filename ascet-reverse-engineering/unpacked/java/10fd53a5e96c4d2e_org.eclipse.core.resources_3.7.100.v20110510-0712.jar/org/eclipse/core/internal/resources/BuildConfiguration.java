/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.PlatformObject;

public class BuildConfiguration
extends PlatformObject
implements IBuildConfiguration {
    private final IProject project;
    private final String name;

    public BuildConfiguration(IProject project) {
        this(project, "");
    }

    public BuildConfiguration(IProject project, String configName) {
        this.project = project;
        this.name = configName;
    }

    public IBuildConfiguration getBuildConfig() throws CoreException {
        return this.project.getBuildConfig(this.name);
    }

    public String getName() {
        return this.name;
    }

    public IProject getProject() {
        return this.project;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        BuildConfiguration other = (BuildConfiguration)obj;
        if (this.name == null ? other.name != null : !this.name.equals(other.name)) {
            return false;
        }
        return !(this.project == null ? other.project != null : !this.project.equals(other.project));
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.name == null ? 0 : this.name.hashCode());
        result = 31 * result + (this.project == null ? 0 : this.project.hashCode());
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        if (this.project != null) {
            result.append(this.project.getName());
        } else {
            result.append("?");
        }
        result.append(";");
        if (this.name != null) {
            result.append(" [").append(this.name).append(']');
        } else {
            result.append(" [active]");
        }
        return result.toString();
    }

    public Object getAdapter(Class adapter) {
        if (adapter.isInstance(this.project)) {
            return this.project;
        }
        return super.getAdapter(adapter);
    }
}

