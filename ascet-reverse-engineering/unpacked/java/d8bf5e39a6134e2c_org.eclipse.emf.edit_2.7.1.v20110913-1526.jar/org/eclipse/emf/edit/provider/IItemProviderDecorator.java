/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.edit.provider.IChangeNotifier;

public interface IItemProviderDecorator {
    public IChangeNotifier getDecoratedItemProvider();

    public void setDecoratedItemProvider(IChangeNotifier var1);
}

