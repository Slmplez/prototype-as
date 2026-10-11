/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.workspace.util;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.workspace.util.SynchRequest;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

class MovedSynchRequest
extends SynchRequest {
    private final URI newURI;

    MovedSynchRequest(WorkspaceSynchronizer synch, Resource resource, URI newURI) {
        super(synch, resource);
        this.newURI = newURI;
    }

    protected void doPerform() {
        if (!this.synch.getDelegate().handleResourceMoved(this.resource, this.newURI)) {
            WorkspaceSynchronizer.defaultDelegate.handleResourceMoved(this.resource, this.newURI);
        }
    }
}

