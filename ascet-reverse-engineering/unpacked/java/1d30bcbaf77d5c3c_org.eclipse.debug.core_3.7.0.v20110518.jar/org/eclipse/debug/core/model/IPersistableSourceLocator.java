/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.ISourceLocator;

public interface IPersistableSourceLocator
extends ISourceLocator {
    public String getMemento() throws CoreException;

    public void initializeFromMemento(String var1) throws CoreException;

    public void initializeDefaults(ILaunchConfiguration var1) throws CoreException;
}

