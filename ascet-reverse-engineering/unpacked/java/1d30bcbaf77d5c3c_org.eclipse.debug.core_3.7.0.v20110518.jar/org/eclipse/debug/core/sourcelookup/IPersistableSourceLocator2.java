/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IPersistableSourceLocator;

public interface IPersistableSourceLocator2
extends IPersistableSourceLocator {
    public void initializeFromMemento(String var1, ILaunchConfiguration var2) throws CoreException;

    public void dispose();
}

