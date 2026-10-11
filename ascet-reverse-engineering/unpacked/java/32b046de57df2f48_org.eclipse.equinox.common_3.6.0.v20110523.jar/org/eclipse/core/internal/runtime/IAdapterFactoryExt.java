/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.core.runtime.IAdapterFactory;

public interface IAdapterFactoryExt {
    public IAdapterFactory loadFactory(boolean var1);

    public String[] getAdapterNames();
}

