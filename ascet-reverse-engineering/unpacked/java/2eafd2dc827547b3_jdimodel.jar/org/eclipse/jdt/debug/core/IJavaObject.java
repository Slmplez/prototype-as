/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;

public interface IJavaObject
extends IJavaValue {
    public IJavaValue sendMessage(String var1, String var2, IJavaValue[] var3, IJavaThread var4, boolean var5) throws DebugException;

    public IJavaValue sendMessage(String var1, String var2, IJavaValue[] var3, IJavaThread var4, String var5) throws DebugException;

    public IJavaFieldVariable getField(String var1, boolean var2) throws DebugException;

    public IJavaFieldVariable getField(String var1, String var2) throws DebugException;

    public IJavaThread[] getWaitingThreads() throws DebugException;

    public IJavaThread getOwningThread() throws DebugException;

    public IJavaObject[] getReferringObjects(long var1) throws DebugException;

    public void enableCollection() throws DebugException;

    public void disableCollection() throws DebugException;

    public long getUniqueId() throws DebugException;
}

