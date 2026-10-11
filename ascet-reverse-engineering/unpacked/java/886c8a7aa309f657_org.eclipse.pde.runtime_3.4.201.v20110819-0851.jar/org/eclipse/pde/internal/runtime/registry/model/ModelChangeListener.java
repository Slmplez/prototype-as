/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.ModelChangeDelta;

public interface ModelChangeListener {
    public void modelChanged(ModelChangeDelta[] var1);
}

