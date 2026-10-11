/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.DebugPlugin;

public interface IBreakpoint
extends IAdaptable {
    public static final String BREAKPOINT_MARKER = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".breakpointMarker";
    public static final String LINE_BREAKPOINT_MARKER = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".lineBreakpointMarker";
    public static final String ENABLED = "org.eclipse.debug.core.enabled";
    public static final String ID = "org.eclipse.debug.core.id";
    public static final String REGISTERED = "org.eclipse.debug.core.registered";
    public static final String PERSISTED = "org.eclipse.debug.core.persisted";

    public void delete() throws CoreException;

    public IMarker getMarker();

    public void setMarker(IMarker var1) throws CoreException;

    public String getModelIdentifier();

    public boolean isEnabled() throws CoreException;

    public void setEnabled(boolean var1) throws CoreException;

    public boolean isRegistered() throws CoreException;

    public void setRegistered(boolean var1) throws CoreException;

    public boolean isPersisted() throws CoreException;

    public void setPersisted(boolean var1) throws CoreException;
}

