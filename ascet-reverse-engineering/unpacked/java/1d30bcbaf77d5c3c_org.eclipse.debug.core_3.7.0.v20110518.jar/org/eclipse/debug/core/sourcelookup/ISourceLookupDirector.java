/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.sourcelookup.IPersistableSourceLocator2;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;

public interface ISourceLookupDirector
extends IPersistableSourceLocator2 {
    public ILaunchConfiguration getLaunchConfiguration();

    public ISourceLookupParticipant[] getParticipants();

    public ISourceContainer[] getSourceContainers();

    public void setSourceContainers(ISourceContainer[] var1);

    public boolean isFindDuplicates();

    public void setFindDuplicates(boolean var1);

    public void initializeParticipants();

    public boolean supportsSourceContainerType(ISourceContainerType var1);

    public void clearSourceElements(Object var1);

    public void addParticipants(ISourceLookupParticipant[] var1);

    public void removeParticipants(ISourceLookupParticipant[] var1);

    public String getId();

    public ISourcePathComputer getSourcePathComputer();

    public void setSourcePathComputer(ISourcePathComputer var1);

    public Object[] findSourceElements(Object var1) throws CoreException;

    public Object getSourceElement(Object var1);
}

