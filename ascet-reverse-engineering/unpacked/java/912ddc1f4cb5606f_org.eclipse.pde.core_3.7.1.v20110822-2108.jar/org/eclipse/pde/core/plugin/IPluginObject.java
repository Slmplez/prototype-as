/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ISharedPluginModel;

public interface IPluginObject
extends IWritable,
IAdaptable {
    public static final String P_NAME = "name";

    public ISharedPluginModel getModel();

    public IPluginModelBase getPluginModel();

    public String getName();

    public boolean isInTheModel();

    public void setInTheModel(boolean var1);

    public String getTranslatedName();

    public IPluginObject getParent();

    public IPluginBase getPluginBase();

    public String getResourceString(String var1);

    public void setName(String var1) throws CoreException;

    public boolean isValid();
}

