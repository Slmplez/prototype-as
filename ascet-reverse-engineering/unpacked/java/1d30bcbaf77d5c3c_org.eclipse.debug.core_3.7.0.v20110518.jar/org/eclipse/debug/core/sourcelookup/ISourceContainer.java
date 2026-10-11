/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;

public interface ISourceContainer
extends IAdaptable {
    public void init(ISourceLookupDirector var1);

    public Object[] findSourceElements(String var1) throws CoreException;

    public String getName();

    public ISourceContainer[] getSourceContainers() throws CoreException;

    public boolean isComposite();

    public ISourceContainerType getType();

    public void dispose();
}

