/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;

public interface IJavaClassPrepareBreakpoint
extends IJavaBreakpoint {
    public static final int TYPE_CLASS = 0;
    public static final int TYPE_INTERFACE = 1;

    public int getMemberType() throws CoreException;
}

