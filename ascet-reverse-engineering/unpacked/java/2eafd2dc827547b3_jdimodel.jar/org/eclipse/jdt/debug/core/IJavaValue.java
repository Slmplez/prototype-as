/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.debug.core.IJavaType;

public interface IJavaValue
extends IValue {
    public String getSignature() throws DebugException;

    public String getGenericSignature() throws DebugException;

    public IJavaType getJavaType() throws DebugException;

    public boolean isNull();
}

