/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;

public interface ComposeableAdapterFactory
extends AdapterFactory {
    public ComposeableAdapterFactory getRootAdapterFactory();

    public void setParentAdapterFactory(ComposedAdapterFactory var1);
}

