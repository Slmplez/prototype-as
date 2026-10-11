/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.services;

import org.eclipse.ui.ISourceProvider;

public interface ISourceProviderService {
    public ISourceProvider getSourceProvider(String var1);

    public ISourceProvider[] getSourceProviders();
}

