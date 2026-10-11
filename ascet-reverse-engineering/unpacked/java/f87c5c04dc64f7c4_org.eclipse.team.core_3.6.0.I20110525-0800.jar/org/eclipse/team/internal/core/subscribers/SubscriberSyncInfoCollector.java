/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoFilter;
import org.eclipse.team.core.synchronize.SyncInfoTree;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberResourceCollector;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoEventHandler;
import org.eclipse.team.internal.core.subscribers.SyncSetInputFromSubscriber;
import org.eclipse.team.internal.core.subscribers.SyncSetInputFromSyncSet;

public final class SubscriberSyncInfoCollector
extends SubscriberResourceCollector {
    private final SyncSetInputFromSubscriber subscriberInput;
    private SyncSetInputFromSyncSet filteredInput;
    private SubscriberSyncInfoEventHandler eventHandler;
    private IResource[] roots;

    public SubscriberSyncInfoCollector(Subscriber subscriber, IResource[] roots) {
        super(subscriber);
        this.roots = roots;
        this.eventHandler = new SubscriberSyncInfoEventHandler(subscriber, roots);
        this.subscriberInput = this.eventHandler.getSyncSetInput();
        this.filteredInput = new SyncSetInputFromSyncSet(this.subscriberInput.getSyncSet(), this.getEventHandler());
        this.filteredInput.setFilter(new SyncInfoFilter(){

            public boolean select(SyncInfo info, IProgressMonitor monitor) {
                return true;
            }
        });
    }

    public void setProgressGroup(IProgressMonitor monitor, int ticks) {
        this.getEventHandler().setProgressGroupHint(monitor, ticks);
    }

    public void start() {
        this.eventHandler.start();
    }

    public void waitForCollector(IProgressMonitor monitor) {
        monitor.worked(1);
        int i = 0;
        do {
            try {
                Thread.sleep(5L);
            }
            catch (InterruptedException interruptedException) {}
            Policy.checkCanceled(monitor);
        } while ((i = this.eventHandler.getEventHandlerJob().getState() == 0 ? i + 1 : 0) != 50);
        monitor.worked(1);
    }

    public void reset() {
        this.eventHandler.reset(this.getRoots());
    }

    public void dispose() {
        this.eventHandler.shutdown();
        this.subscriberInput.disconnect();
        if (this.filteredInput != null) {
            this.filteredInput.disconnect();
        }
        super.dispose();
    }

    public IResource[] getRoots() {
        if (this.roots == null) {
            return super.getRoots();
        }
        return this.roots;
    }

    public boolean isAllRootsIncluded() {
        return this.roots == null;
    }

    protected SubscriberEventHandler getEventHandler() {
        return this.eventHandler;
    }

    public SyncInfoTree getSubscriberSyncInfoSet() {
        return this.subscriberInput.getSyncSet();
    }

    public SyncInfoTree getSyncInfoSet() {
        return this.filteredInput.getSyncSet();
    }

    public void setFilter(SyncInfoFilter filter) {
        this.filteredInput.setFilter(filter);
        this.filteredInput.reset();
    }

    public void setRoots(IResource[] roots) {
        this.roots = roots;
        this.reset();
    }

    protected boolean hasMembers(IResource resource) {
        return this.getSubscriberSyncInfoSet().hasMembers(resource);
    }

    protected void remove(IResource resource) {
        this.eventHandler.remove(resource);
    }

    protected void change(IResource resource, int depth) {
        this.eventHandler.change(resource, depth);
    }
}

