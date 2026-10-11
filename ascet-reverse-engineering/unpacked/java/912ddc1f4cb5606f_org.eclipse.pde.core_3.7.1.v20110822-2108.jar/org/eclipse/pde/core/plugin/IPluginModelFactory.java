/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.pde.core.plugin.IExtensionsModelFactory;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;

public interface IPluginModelFactory
extends IExtensionsModelFactory {
    public IPluginImport createImport();

    public IPluginLibrary createLibrary();
}

