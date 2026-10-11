/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 */
package org.eclipse.debug.core.sourcelookup;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public abstract class AbstractSourceLookupParticipant
implements ISourceLookupParticipant {
    private ISourceLookupDirector fDirector;
    protected static final Object[] EMPTY = new Object[0];

    public void init(ISourceLookupDirector director) {
        this.fDirector = director;
    }

    public void dispose() {
        this.fDirector = null;
    }

    public Object[] findSourceElements(Object object) throws CoreException {
        String name;
        ArrayList<Object> results = null;
        CoreException single = null;
        MultiStatus multiStatus = null;
        if (this.isFindDuplicates()) {
            results = new ArrayList<Object>();
        }
        if ((name = this.getSourceName(object)) != null) {
            ISourceContainer[] containers = this.getSourceContainers();
            int i = 0;
            while (i < containers.length) {
                block13: {
                    try {
                        Object[] objects;
                        ISourceContainer container = this.getDelegateContainer(containers[i]);
                        if (container == null || (objects = container.findSourceElements(name)).length <= 0) break block13;
                        if (results != null) {
                            int j = 0;
                            while (j < objects.length) {
                                results.add(objects[j]);
                                ++j;
                            }
                            break block13;
                        }
                        if (objects.length == 1) {
                            return objects;
                        }
                        return new Object[]{objects[0]};
                    }
                    catch (CoreException e) {
                        if (single == null) {
                            single = e;
                        }
                        if (multiStatus == null) {
                            multiStatus = new MultiStatus(DebugPlugin.getUniqueIdentifier(), 125, new IStatus[]{single.getStatus()}, SourceLookupMessages.Source_Lookup_Error, null);
                            multiStatus.add(e.getStatus());
                        }
                        multiStatus.add(e.getStatus());
                    }
                }
                ++i;
            }
        }
        if (results == null) {
            if (multiStatus != null) {
                throw new CoreException(multiStatus);
            }
            if (single != null) {
                throw single;
            }
            return EMPTY;
        }
        return results.toArray();
    }

    protected ISourceContainer getDelegateContainer(ISourceContainer container) {
        return container;
    }

    protected ISourceLookupDirector getDirector() {
        return this.fDirector;
    }

    public boolean isFindDuplicates() {
        ISourceLookupDirector director = this.getDirector();
        if (director != null) {
            return director.isFindDuplicates();
        }
        return false;
    }

    protected ISourceContainer[] getSourceContainers() {
        ISourceLookupDirector director = this.getDirector();
        if (director != null) {
            return director.getSourceContainers();
        }
        return new ISourceContainer[0];
    }

    public void sourceContainersChanged(ISourceLookupDirector director) {
    }
}

