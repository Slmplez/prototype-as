/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;

public interface ISourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String var1) throws CoreException;

    public String getMemento(ISourceContainer var1) throws CoreException;
}

