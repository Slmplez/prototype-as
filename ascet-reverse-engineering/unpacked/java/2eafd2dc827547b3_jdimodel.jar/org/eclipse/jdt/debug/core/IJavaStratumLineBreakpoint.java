/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;

public interface IJavaStratumLineBreakpoint
extends IJavaLineBreakpoint {
    public String getPattern() throws CoreException;

    public String getSourceName() throws CoreException;

    public String getStratum() throws CoreException;

    public String getSourcePath() throws CoreException;
}

