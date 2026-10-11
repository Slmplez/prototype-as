/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.debug.core.model.ITerminate;

public interface IProcess
extends IAdaptable,
ITerminate {
    public static final String ATTR_CMDLINE = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".ATTR_CMDLINE";
    public static final String ATTR_PROCESS_TYPE = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".ATTR_PROCESS_TYPE";
    public static final String ATTR_PROCESS_LABEL = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".ATTR_PROCESS_LABEL";

    public String getLabel();

    public ILaunch getLaunch();

    public IStreamsProxy getStreamsProxy();

    public void setAttribute(String var1, String var2);

    public String getAttribute(String var1);

    public int getExitValue() throws DebugException;
}

