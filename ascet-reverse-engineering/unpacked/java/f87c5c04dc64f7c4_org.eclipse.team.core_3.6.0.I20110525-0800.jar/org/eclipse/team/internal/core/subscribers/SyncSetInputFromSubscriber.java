/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SyncSetInput;

public class SyncSetInputFromSubscriber
extends SyncSetInput {
    private Subscriber subscriber;

    public SyncSetInputFromSubscriber(Subscriber subscriber, SubscriberEventHandler handler) {
        super(handler);
        this.subscriber = subscriber;
    }

    public void disconnect() {
    }

    public Subscriber getSubscriber() {
        return this.subscriber;
    }

    protected void fetchInput(IProgressMonitor monitor) throws TeamException {
    }

    public void handleError(ITeamStatus status) {
        this.getSyncSet().addError(status);
    }
}

