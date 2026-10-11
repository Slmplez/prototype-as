/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.workspace.util;

import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.workspace.util.SynchRequest;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

class DeletedSynchRequest
extends SynchRequest {
    DeletedSynchRequest(WorkspaceSynchronizer synch, Resource resource) {
        super(synch, resource);
    }

    protected void doPerform() {
        if (!this.synch.getDelegate().handleResourceDeleted(this.resource)) {
            WorkspaceSynchronizer.defaultDelegate.handleResourceDeleted(this.resource);
        }
    }
}

