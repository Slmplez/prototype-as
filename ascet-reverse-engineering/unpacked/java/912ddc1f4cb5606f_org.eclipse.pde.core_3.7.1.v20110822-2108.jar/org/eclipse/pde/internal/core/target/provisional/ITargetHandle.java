/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.target.provisional;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;

public interface ITargetHandle {
    public ITargetDefinition getTargetDefinition() throws CoreException;

    public String getMemento() throws CoreException;

    public boolean exists();
}

