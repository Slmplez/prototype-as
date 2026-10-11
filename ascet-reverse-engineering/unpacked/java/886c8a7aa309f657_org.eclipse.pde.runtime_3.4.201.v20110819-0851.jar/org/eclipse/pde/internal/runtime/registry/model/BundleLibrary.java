/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class BundleLibrary
extends ModelObject {
    private String library;

    public String getLibrary() {
        return this.library;
    }

    public void setLibrary(String name) {
        this.library = name;
    }
}

