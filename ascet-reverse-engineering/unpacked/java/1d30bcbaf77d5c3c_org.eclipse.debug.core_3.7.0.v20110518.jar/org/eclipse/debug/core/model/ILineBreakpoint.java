/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IBreakpoint;

public interface ILineBreakpoint
extends IBreakpoint {
    public int getLineNumber() throws CoreException;

    public int getCharStart() throws CoreException;

    public int getCharEnd() throws CoreException;
}

