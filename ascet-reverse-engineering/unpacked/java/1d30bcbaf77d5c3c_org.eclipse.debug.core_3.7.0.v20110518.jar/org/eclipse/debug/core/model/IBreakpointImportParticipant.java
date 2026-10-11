/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IBreakpoint;

public interface IBreakpointImportParticipant {
    public boolean matches(Map var1, IBreakpoint var2) throws CoreException;

    public void verify(IBreakpoint var1) throws CoreException;
}

