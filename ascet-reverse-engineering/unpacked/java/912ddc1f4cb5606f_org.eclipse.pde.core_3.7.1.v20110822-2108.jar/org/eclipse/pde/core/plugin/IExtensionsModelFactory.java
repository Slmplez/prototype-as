/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IExtensionsModelFactory {
    public IPluginAttribute createAttribute(IPluginElement var1);

    public IPluginElement createElement(IPluginObject var1);

    public IPluginExtension createExtension();

    public IPluginExtensionPoint createExtensionPoint();
}

