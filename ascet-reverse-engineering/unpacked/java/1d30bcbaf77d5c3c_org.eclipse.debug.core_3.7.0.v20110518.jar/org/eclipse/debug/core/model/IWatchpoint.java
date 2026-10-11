/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IBreakpoint;

public interface IWatchpoint
extends IBreakpoint {
    public boolean isAccess() throws CoreException;

    public void setAccess(boolean var1) throws CoreException;

    public boolean isModification() throws CoreException;

    public void setModification(boolean var1) throws CoreException;

    public boolean supportsAccess();

    public boolean supportsModification();
}

