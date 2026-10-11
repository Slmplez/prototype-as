/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.IModelChangedListenerFilter;

public interface IModelChangeProviderExtension
extends IModelChangeProvider {
    public void transferListenersTo(IModelChangeProviderExtension var1, IModelChangedListenerFilter var2);
}

