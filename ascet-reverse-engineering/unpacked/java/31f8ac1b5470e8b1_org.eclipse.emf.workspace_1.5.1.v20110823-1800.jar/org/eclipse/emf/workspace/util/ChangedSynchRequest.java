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

class ChangedSynchRequest
extends SynchRequest {
    ChangedSynchRequest(WorkspaceSynchronizer synch, Resource resource) {
        super(synch, resource);
    }

    protected void doPerform() {
        if (!this.synch.getDelegate().handleResourceChanged(this.resource)) {
            WorkspaceSynchronizer.defaultDelegate.handleResourceChanged(this.resource);
        }
    }
}

