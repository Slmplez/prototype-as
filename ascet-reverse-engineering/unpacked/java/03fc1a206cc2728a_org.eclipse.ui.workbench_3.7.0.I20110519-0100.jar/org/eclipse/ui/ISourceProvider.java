/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import java.util.Map;
import org.eclipse.ui.ISourceProviderListener;

public interface ISourceProvider {
    public void addSourceProviderListener(ISourceProviderListener var1);

    public void dispose();

    public Map getCurrentState();

    public String[] getProvidedSourceNames();

    public void removeSourceProviderListener(ISourceProviderListener var1);
}

