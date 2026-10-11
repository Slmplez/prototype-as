/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.PluginVersionIdentifier
 */
package org.eclipse.core.runtime;

import java.net.URL;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.ILibrary;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginPrerequisite;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.PluginVersionIdentifier;

public interface IPluginDescriptor {
    public IExtension getExtension(String var1);

    public IExtensionPoint getExtensionPoint(String var1);

    public IExtensionPoint[] getExtensionPoints();

    public IExtension[] getExtensions();

    public URL getInstallURL();

    public String getLabel();

    public Plugin getPlugin() throws CoreException;

    public ClassLoader getPluginClassLoader();

    public IPluginPrerequisite[] getPluginPrerequisites();

    public String getProviderName();

    public ResourceBundle getResourceBundle() throws MissingResourceException;

    public String getResourceString(String var1);

    public String getResourceString(String var1, ResourceBundle var2);

    public ILibrary[] getRuntimeLibraries();

    public String getUniqueIdentifier();

    public PluginVersionIdentifier getVersionIdentifier();

    public boolean isPluginActivated();

    public URL find(IPath var1);

    public URL find(IPath var1, Map var2);
}

