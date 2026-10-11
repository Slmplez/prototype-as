/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.AbstractSourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.AbstractSourceLookupParticipant;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant;

public abstract class AbstractSourceContainer
extends PlatformObject
implements ISourceContainer {
    public static final Object[] EMPTY = new Object[0];
    private ISourceLookupDirector fDirector;

    protected void abort(String message, Throwable exception) throws CoreException {
        Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, message, exception);
        throw new CoreException((IStatus)status);
    }

    protected void warn(String message, Throwable exception) throws CoreException {
        Status status = new Status(2, DebugPlugin.getUniqueIdentifier(), 125, message, exception);
        throw new CoreException((IStatus)status);
    }

    public void dispose() {
        this.fDirector = null;
    }

    public ISourceContainer[] getSourceContainers() throws CoreException {
        return new ISourceContainer[0];
    }

    public boolean isComposite() {
        return false;
    }

    public void init(ISourceLookupDirector director) {
        this.fDirector = director;
    }

    protected ISourceLookupDirector getDirector() {
        return this.fDirector;
    }

    protected boolean isFindDuplicates() {
        ISourceLookupDirector director = this.getDirector();
        if (director != null) {
            AbstractSourceLookupDirector asld;
            ISourceLookupParticipant participant;
            if (director instanceof AbstractSourceLookupDirector && (participant = (asld = (AbstractSourceLookupDirector)director).getCurrentParticipant()) instanceof AbstractSourceLookupParticipant) {
                AbstractSourceLookupParticipant aslp = (AbstractSourceLookupParticipant)participant;
                return aslp.isFindDuplicates();
            }
            return director.isFindDuplicates();
        }
        return false;
    }

    protected ISourceContainerType getSourceContainerType(String id) {
        return DebugPlugin.getDefault().getLaunchManager().getSourceContainerType(id);
    }
}

