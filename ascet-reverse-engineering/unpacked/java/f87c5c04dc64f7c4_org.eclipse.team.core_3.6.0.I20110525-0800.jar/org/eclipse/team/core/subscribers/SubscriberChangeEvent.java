/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.subscribers.ISubscriberChangeEvent;
import org.eclipse.team.core.subscribers.Subscriber;

public class SubscriberChangeEvent
implements ISubscriberChangeEvent {
    private Subscriber subscriber;
    private int flags;
    private IResource resource;

    public SubscriberChangeEvent(Subscriber subscriber, int flags, IResource resource) {
        this.subscriber = subscriber;
        this.flags = flags;
        this.resource = resource;
    }

    public int getFlags() {
        return this.flags;
    }

    public IResource getResource() {
        return this.resource;
    }

    public Subscriber getSubscriber() {
        return this.subscriber;
    }

    public static SubscriberChangeEvent[] asSyncChangedDeltas(Subscriber subscriber, IResource[] resources) {
        SubscriberChangeEvent[] deltas = new SubscriberChangeEvent[resources.length];
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            deltas[i] = new SubscriberChangeEvent(subscriber, 1, resource);
            ++i;
        }
        return deltas;
    }
}

