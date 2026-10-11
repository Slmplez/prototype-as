/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaModifiers;
import org.eclipse.jdt.debug.core.IJavaType;

public interface IJavaVariable
extends IVariable,
IJavaModifiers {
    public String getSignature() throws DebugException;

    public String getGenericSignature() throws DebugException;

    public IJavaType getJavaType() throws DebugException;

    public boolean isLocal() throws DebugException;
}

