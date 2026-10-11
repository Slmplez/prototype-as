/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.IPluginReference;

public interface IPluginImport
extends IPluginObject,
IPluginReference {
    public static final String P_REEXPORTED = "export";
    public static final String P_OPTIONAL = "optional";

    public boolean isReexported();

    public boolean isOptional();

    public void setReexported(boolean var1) throws CoreException;

    public void setOptional(boolean var1) throws CoreException;
}

