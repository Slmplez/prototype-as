/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.subscribers.Subscriber;

public interface ISubscriberChangeEvent {
    public static final int NO_CHANGE = 0;
    public static final int SYNC_CHANGED = 1;
    public static final int ROOT_ADDED = 2;
    public static final int ROOT_REMOVED = 4;

    public int getFlags();

    public IResource getResource();

    public Subscriber getSubscriber();
}

