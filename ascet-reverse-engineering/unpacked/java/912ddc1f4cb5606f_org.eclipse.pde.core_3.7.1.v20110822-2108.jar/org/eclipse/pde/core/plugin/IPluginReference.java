/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IMatchRules;

public interface IPluginReference
extends IIdentifiable,
IMatchRules {
    public static final String P_MATCH = "match";
    public static final String P_VERSION = "version";

    public int getMatch();

    public String getVersion();

    public void setMatch(int var1) throws CoreException;

    public void setVersion(String var1) throws CoreException;
}

