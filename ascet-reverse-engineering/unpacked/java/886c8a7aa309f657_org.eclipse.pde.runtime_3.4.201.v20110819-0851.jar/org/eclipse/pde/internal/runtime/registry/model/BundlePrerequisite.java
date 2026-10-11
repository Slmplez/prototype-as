/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class BundlePrerequisite
extends ModelObject {
    private boolean isExported;
    private String name;
    private String version;
    private boolean isPackage;

    public void setPackage(boolean isPackage) {
        this.isPackage = isPackage;
    }

    public boolean isPackage() {
        return this.isPackage;
    }

    public void setExported(boolean isExported) {
        this.isExported = isExported;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public boolean isExported() {
        return this.isExported;
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }
}

