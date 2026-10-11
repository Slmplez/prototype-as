/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginBase;

public interface IPlugin
extends IPluginBase {
    public static final String P_CLASS_NAME = "class";

    public String getClassName();

    public void setClassName(String var1) throws CoreException;
}

