/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IPluginParent;

public interface IPluginExtension
extends IPluginParent,
IIdentifiable {
    public static final String P_POINT = "point";

    public String getPoint();

    public Object getSchema();

    public void setPoint(String var1) throws CoreException;
}

