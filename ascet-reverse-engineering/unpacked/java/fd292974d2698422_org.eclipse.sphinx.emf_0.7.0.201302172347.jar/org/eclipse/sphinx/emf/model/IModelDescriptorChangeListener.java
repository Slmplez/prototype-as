/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.model;

import org.eclipse.sphinx.emf.model.IModelDescriptor;

public interface IModelDescriptorChangeListener {
    public void handleModelAdded(IModelDescriptor var1);

    public void handleModelRemoved(IModelDescriptor var1);
}

