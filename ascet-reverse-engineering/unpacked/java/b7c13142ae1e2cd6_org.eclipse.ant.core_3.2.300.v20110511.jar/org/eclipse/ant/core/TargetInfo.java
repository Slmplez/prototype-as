/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.core;

import org.eclipse.ant.core.ProjectInfo;

public class TargetInfo {
    private String name = null;
    private String description = null;
    private ProjectInfo project = null;
    private String[] dependencies = null;
    private boolean isDefault = false;

    TargetInfo(ProjectInfo project, String name, String description, String[] dependencies, boolean isDefault) {
        this.name = name == null ? "" : name;
        this.description = description;
        this.project = project;
        this.dependencies = dependencies;
        this.isDefault = isDefault;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public ProjectInfo getProject() {
        return this.project;
    }

    public String[] getDependencies() {
        return this.dependencies;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TargetInfo)) {
            return false;
        }
        TargetInfo other = (TargetInfo)obj;
        return this.getName().equals(other.getName());
    }

    public int hashCode() {
        return this.getName().hashCode();
    }

    public String toString() {
        return this.getName();
    }
}

