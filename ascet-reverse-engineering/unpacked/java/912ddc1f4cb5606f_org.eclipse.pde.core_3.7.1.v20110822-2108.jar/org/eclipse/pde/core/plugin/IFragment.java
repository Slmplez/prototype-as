/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginBase;

public interface IFragment
extends IPluginBase {
    public static final String P_PLUGIN_ID = "plugin-id";
    public static final String P_PLUGIN_VERSION = "plugin-version";
    public static final String P_RULE = "match";

    public String getPluginId();

    public String getPluginVersion();

    public int getRule();

    public void setPluginId(String var1) throws CoreException;

    public void setPluginVersion(String var1) throws CoreException;

    public void setRule(int var1) throws CoreException;
}

