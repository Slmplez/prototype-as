/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.workspace.util;

import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

abstract class SynchRequest {
    protected final WorkspaceSynchronizer synch;
    protected final Resource resource;

    SynchRequest(WorkspaceSynchronizer synch, Resource resource) {
        this.synch = synch;
        this.resource = resource;
    }

    public final void perform() throws InterruptedException {
        this.synch.getEditingDomain().runExclusive(new Runnable(){

            public void run() {
                SynchRequest.this.doPerform();
            }
        });
    }

    protected abstract void doPerform();

    protected final boolean isDisposed() {
        return this.synch.isDisposed();
    }

    final Object getLock() {
        return this.synch;
    }
}

