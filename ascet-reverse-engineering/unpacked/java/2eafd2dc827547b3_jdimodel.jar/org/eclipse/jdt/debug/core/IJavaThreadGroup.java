/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IDebugElement
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.jdt.debug.core.IJavaThread;

public interface IJavaThreadGroup
extends IDebugElement {
    public IJavaThread[] getThreads() throws DebugException;

    public boolean hasThreads() throws DebugException;

    public IJavaThreadGroup getThreadGroup() throws DebugException;

    public boolean hasThreadGroups() throws DebugException;

    public IJavaThreadGroup[] getThreadGroups() throws DebugException;

    public String getName() throws DebugException;
}

