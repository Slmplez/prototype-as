/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaReferenceType;

public interface IJavaInterfaceType
extends IJavaReferenceType {
    public IJavaClassType[] getImplementors() throws DebugException;

    public IJavaInterfaceType[] getSubInterfaces() throws DebugException;

    public IJavaInterfaceType[] getSuperInterfaces() throws DebugException;
}

