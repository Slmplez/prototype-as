/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaVariable;

public interface IJavaFieldVariable
extends IJavaVariable {
    public boolean isTransient() throws DebugException;

    public boolean isVolatile() throws DebugException;

    public IJavaType getDeclaringType();

    public IJavaObject getReceiver();

    public IJavaReferenceType getReceivingType();
}

