/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;

public interface IJavaHotCodeReplaceListener {
    public void hotCodeReplaceFailed(IJavaDebugTarget var1, DebugException var2);

    public void hotCodeReplaceSucceeded(IJavaDebugTarget var1);

    public void obsoleteMethods(IJavaDebugTarget var1);
}

