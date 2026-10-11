/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IPluginAttribute
extends IPluginObject {
    public static final String P_VALUE = "value";

    public String getValue();

    public void setValue(String var1) throws CoreException;
}

