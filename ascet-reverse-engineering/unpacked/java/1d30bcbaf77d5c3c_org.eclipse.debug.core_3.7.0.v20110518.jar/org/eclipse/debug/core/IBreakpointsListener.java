/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarkerDelta
 */
package org.eclipse.debug.core;

import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.debug.core.model.IBreakpoint;

public interface IBreakpointsListener {
    public void breakpointsAdded(IBreakpoint[] var1);

    public void breakpointsRemoved(IBreakpoint[] var1, IMarkerDelta[] var2);

    public void breakpointsChanged(IBreakpoint[] var1, IMarkerDelta[] var2);
}

