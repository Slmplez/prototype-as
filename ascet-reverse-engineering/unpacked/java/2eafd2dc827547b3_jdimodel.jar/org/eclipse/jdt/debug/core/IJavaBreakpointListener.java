/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;

public interface IJavaBreakpointListener {
    public static final int SUSPEND = 1;
    public static final int DONT_SUSPEND = 2;
    public static final int INSTALL = 1;
    public static final int DONT_INSTALL = 2;
    public static final int DONT_CARE = 4;

    public void addingBreakpoint(IJavaDebugTarget var1, IJavaBreakpoint var2);

    public int installingBreakpoint(IJavaDebugTarget var1, IJavaBreakpoint var2, IJavaType var3);

    public void breakpointInstalled(IJavaDebugTarget var1, IJavaBreakpoint var2);

    public int breakpointHit(IJavaThread var1, IJavaBreakpoint var2);

    public void breakpointRemoved(IJavaDebugTarget var1, IJavaBreakpoint var2);

    public void breakpointHasRuntimeException(IJavaLineBreakpoint var1, DebugException var2);

    public void breakpointHasCompilationErrors(IJavaLineBreakpoint var1, Message[] var2);
}

