/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core;

import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.IModelChangedListener;

public interface IModelChangeProvider {
    public void addModelChangedListener(IModelChangedListener var1);

    public void fireModelChanged(IModelChangedEvent var1);

    public void fireModelObjectChanged(Object var1, String var2, Object var3, Object var4);

    public void removeModelChangedListener(IModelChangedListener var1);
}

