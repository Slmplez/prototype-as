/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 */
package org.eclipse.debug.core.sourcelookup.containers;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public abstract class CompositeSourceContainer
extends AbstractSourceContainer {
    private ISourceContainer[] fContainers;

    public boolean isComposite() {
        return true;
    }

    public Object[] findSourceElements(String name) throws CoreException {
        return this.findSourceElements(name, this.getSourceContainers());
    }

    protected Object[] findSourceElements(String name, ISourceContainer[] containers) throws CoreException {
        ArrayList<Object> results = null;
        CoreException single = null;
        MultiStatus multiStatus = null;
        if (this.isFindDuplicates()) {
            results = new ArrayList<Object>();
        }
        int i = 0;
        while (i < containers.length) {
            block12: {
                ISourceContainer container = containers[i];
                try {
                    Object[] objects = container.findSourceElements(name);
                    if (objects.length <= 0) break block12;
                    if (results != null) {
                        int j = 0;
                        while (j < objects.length) {
                            results.add(objects[j]);
                            ++j;
                        }
                        break block12;
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

    protected abstract ISourceContainer[] createSourceContainers() throws CoreException;

    public synchronized ISourceContainer[] getSourceContainers() throws CoreException {
        if (this.fContainers == null) {
            this.fContainers = this.createSourceContainers();
            int i = 0;
            while (i < this.fContainers.length) {
                ISourceContainer container = this.fContainers[i];
                container.init(this.getDirector());
                ++i;
            }
        }
        return this.fContainers;
    }

    public void dispose() {
        super.dispose();
        if (this.fContainers != null) {
            int i = 0;
            while (i < this.fContainers.length) {
                ISourceContainer container = this.fContainers[i];
                container.dispose();
                ++i;
            }
        }
        this.fContainers = null;
    }
}

