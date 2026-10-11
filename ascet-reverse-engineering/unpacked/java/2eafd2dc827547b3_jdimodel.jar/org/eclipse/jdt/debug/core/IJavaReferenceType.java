/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;

public interface IJavaReferenceType
extends IJavaType {
    public IJavaFieldVariable getField(String var1) throws DebugException;

    public IJavaClassObject getClassObject() throws DebugException;

    public String[] getAvailableStrata() throws DebugException;

    public String getDefaultStratum() throws DebugException;

    public String[] getDeclaredFieldNames() throws DebugException;

    public String[] getAllFieldNames() throws DebugException;

    public IJavaObject getClassLoaderObject() throws DebugException;

    public String getGenericSignature() throws DebugException;

    public String getSourceName() throws DebugException;

    public String[] getSourceNames(String var1) throws DebugException;

    public String[] getSourcePaths(String var1) throws DebugException;

    public IJavaObject[] getInstances(long var1) throws DebugException;

    public long getInstanceCount() throws DebugException;
}

