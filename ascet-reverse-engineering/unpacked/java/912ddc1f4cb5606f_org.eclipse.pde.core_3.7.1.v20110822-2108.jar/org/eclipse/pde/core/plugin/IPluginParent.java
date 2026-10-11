/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IPluginParent
extends IPluginObject {
    public static final String P_SIBLING_ORDER = "sibling_order";

    public void add(int var1, IPluginObject var2) throws CoreException;

    public void add(IPluginObject var1) throws CoreException;

    public int getChildCount();

    public int getIndexOf(IPluginObject var1);

    public void swap(IPluginObject var1, IPluginObject var2) throws CoreException;

    public IPluginObject[] getChildren();

    public void remove(IPluginObject var1) throws CoreException;
}

