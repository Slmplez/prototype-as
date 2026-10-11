/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarkerDelta
 */
package org.eclipse.debug.core;

import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.debug.core.model.IBreakpoint;

public interface IBreakpointListener {
    public void breakpointAdded(IBreakpoint var1);

    public void breakpointRemoved(IBreakpoint var1, IMarkerDelta var2);

    public void breakpointChanged(IBreakpoint var1, IMarkerDelta var2);
}

