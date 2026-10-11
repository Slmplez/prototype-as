/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.runtime.QualifiedName;

public class RootInfo
extends ResourceInfo {
    protected Object propertyStore = null;

    public Object getPropertyStore() {
        return this.propertyStore;
    }

    public void incrementSyncInfoGenerationCount() {
    }

    public void setPropertyStore(Object value) {
        this.propertyStore = value;
    }

    public void setSyncInfo(QualifiedName id, byte[] value) {
    }
}

