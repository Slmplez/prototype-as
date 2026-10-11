/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.services;

import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.services.IDisposable;

public interface IServiceWithSources
extends IDisposable {
    public void addSourceProvider(ISourceProvider var1);

    public void removeSourceProvider(ISourceProvider var1);
}

