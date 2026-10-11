/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;

public interface IJavaModifiers {
    public boolean isPublic() throws DebugException;

    public boolean isPrivate() throws DebugException;

    public boolean isProtected() throws DebugException;

    public boolean isPackagePrivate() throws DebugException;

    public boolean isFinal() throws DebugException;

    public boolean isStatic() throws DebugException;

    public boolean isSynthetic() throws DebugException;
}

