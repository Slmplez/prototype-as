/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeListener;
import org.eclipse.team.core.synchronize.SyncInfoTree;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;

public class SubscriberSyncInfoSet
extends SyncInfoTree {
    protected SubscriberEventHandler handler;

    public SubscriberSyncInfoSet(SubscriberEventHandler handler) {
        this.handler = handler;
    }

    public void connect(ISyncInfoSetChangeListener listener, IProgressMonitor monitor) {
        if (this.handler == null) {
            super.connect(listener, monitor);
        } else {
            this.connect(listener);
        }
    }

    public void connect(final ISyncInfoSetChangeListener listener) {
        if (this.handler == null) {
            throw new UnsupportedOperationException();
        }
        this.handler.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) {
                try {
                    SubscriberSyncInfoSet.this.beginInput();
                    monitor.beginTask(null, 100);
                    SubscriberSyncInfoSet.this.removeSyncSetChangedListener(listener);
                    SubscriberSyncInfoSet.this.addSyncSetChangedListener(listener);
                    listener.syncInfoSetReset(SubscriberSyncInfoSet.this, Policy.subMonitorFor(monitor, 95));
                }
                finally {
                    SubscriberSyncInfoSet.this.endInput(Policy.subMonitorFor(monitor, 5));
                    monitor.done();
                }
            }
        }, true);
    }
}

