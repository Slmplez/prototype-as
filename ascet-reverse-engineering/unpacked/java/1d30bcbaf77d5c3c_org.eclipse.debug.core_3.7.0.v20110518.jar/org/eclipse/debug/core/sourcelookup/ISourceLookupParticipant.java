/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;

public interface ISourceLookupParticipant {
    public void init(ISourceLookupDirector var1);

    public Object[] findSourceElements(Object var1) throws CoreException;

    public String getSourceName(Object var1) throws CoreException;

    public void dispose();

    public void sourceContainersChanged(ISourceLookupDirector var1);
}

