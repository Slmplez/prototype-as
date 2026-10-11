/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.pde.core.plugin.IPluginBase;

public class DependencyLoop {
    private IPluginBase[] members;
    private String name;

    public IPluginBase[] getMembers() {
        return this.members;
    }

    void setMembers(IPluginBase[] members) {
        this.members = members;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String toString() {
        return this.name;
    }
}

