/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IIndexedValue
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IIndexedValue;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaValue;

public interface IJavaArray
extends IJavaObject,
IIndexedValue {
    public IJavaValue[] getValues() throws DebugException;

    public IJavaValue getValue(int var1) throws DebugException;

    public int getLength() throws DebugException;

    public void setValue(int var1, IJavaValue var2) throws DebugException;

    public void setValues(IJavaValue[] var1) throws DebugException;

    public void setValues(int var1, int var2, IJavaValue[] var3, int var4) throws DebugException;
}

