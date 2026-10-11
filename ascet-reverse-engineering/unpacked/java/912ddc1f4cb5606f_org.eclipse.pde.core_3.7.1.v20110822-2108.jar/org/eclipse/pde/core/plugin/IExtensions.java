/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IExtensions
extends IPluginObject {
    public static final String P_EXTENSION_ORDER = "extension_order";

    public void add(IPluginExtension var1) throws CoreException;

    public void add(IPluginExtensionPoint var1) throws CoreException;

    public IPluginExtensionPoint[] getExtensionPoints();

    public IPluginExtension[] getExtensions();

    public void remove(IPluginExtension var1) throws CoreException;

    public void remove(IPluginExtensionPoint var1) throws CoreException;

    public void swap(IPluginExtension var1, IPluginExtension var2) throws CoreException;

    public int getIndexOf(IPluginExtension var1);
}

