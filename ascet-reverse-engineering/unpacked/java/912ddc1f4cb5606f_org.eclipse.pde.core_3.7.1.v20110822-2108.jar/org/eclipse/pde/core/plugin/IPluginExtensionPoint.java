/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IPluginExtensionPoint
extends IPluginObject,
IIdentifiable {
    public static final String P_SCHEMA = "schema";

    public String getFullId();

    public String getSchema();

    public void setSchema(String var1) throws CoreException;
}

