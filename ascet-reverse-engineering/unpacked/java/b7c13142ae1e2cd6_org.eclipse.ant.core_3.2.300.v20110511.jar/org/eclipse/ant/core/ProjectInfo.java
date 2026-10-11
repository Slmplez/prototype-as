/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.core;

public class ProjectInfo {
    private String name = null;
    private String description = null;

    ProjectInfo(String name, String description) {
        this.name = name == null ? "" : name;
        this.description = description;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }
}

