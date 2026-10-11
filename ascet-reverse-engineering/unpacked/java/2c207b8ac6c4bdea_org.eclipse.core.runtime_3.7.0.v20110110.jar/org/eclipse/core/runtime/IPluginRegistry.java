/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.PluginVersionIdentifier
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.PluginVersionIdentifier;

public interface IPluginRegistry {
    public IConfigurationElement[] getConfigurationElementsFor(String var1);

    public IConfigurationElement[] getConfigurationElementsFor(String var1, String var2);

    public IConfigurationElement[] getConfigurationElementsFor(String var1, String var2, String var3);

    public IExtension getExtension(String var1, String var2);

    public IExtension getExtension(String var1, String var2, String var3);

    public IExtensionPoint getExtensionPoint(String var1);

    public IExtensionPoint getExtensionPoint(String var1, String var2);

    public IExtensionPoint[] getExtensionPoints();

    public IPluginDescriptor getPluginDescriptor(String var1);

    public IPluginDescriptor getPluginDescriptor(String var1, PluginVersionIdentifier var2);

    public IPluginDescriptor[] getPluginDescriptors();

    public IPluginDescriptor[] getPluginDescriptors(String var1);
}

