/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;

public interface IJavaClassType
extends IJavaReferenceType {
    public IJavaObject newInstance(String var1, IJavaValue[] var2, IJavaThread var3) throws DebugException;

    public IJavaValue sendMessage(String var1, String var2, IJavaValue[] var3, IJavaThread var4) throws DebugException;

    public IJavaClassType getSuperclass() throws DebugException;

    public IJavaInterfaceType[] getInterfaces() throws DebugException;

    public IJavaInterfaceType[] getAllInterfaces() throws DebugException;

    public boolean isEnum() throws DebugException;
}

