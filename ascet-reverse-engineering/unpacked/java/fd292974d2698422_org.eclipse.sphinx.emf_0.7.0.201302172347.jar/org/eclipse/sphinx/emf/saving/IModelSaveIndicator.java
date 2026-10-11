/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.saving;

import org.eclipse.sphinx.emf.model.IModelDescriptor;

public interface IModelSaveIndicator {
    public boolean isDirty(IModelDescriptor var1);

    public void setSaved(IModelDescriptor var1);
}

