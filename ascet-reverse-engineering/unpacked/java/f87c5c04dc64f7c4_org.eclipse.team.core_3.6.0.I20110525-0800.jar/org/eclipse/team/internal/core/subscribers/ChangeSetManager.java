/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.team.internal.core.subscribers.ChangeSet;
import org.eclipse.team.internal.core.subscribers.IChangeSetChangeListener;

public abstract class ChangeSetManager {
    private ListenerList listeners = new ListenerList(1);
    private Set sets;
    private boolean initializing;

    protected Object[] getListeners() {
        return this.listeners.getListeners();
    }

    protected void fireNameChangedEvent(final ChangeSet set) {
        if (this.initializing) {
            return;
        }
        if (this.contains(set)) {
            Object[] listeners = this.getListeners();
            int i = 0;
            while (i < listeners.length) {
                final IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                    }

                    public void run() throws Exception {
                        listener.nameChanged(set);
                    }
                });
                ++i;
            }
        }
    }

    protected void fireDefaultChangedEvent(final ChangeSet oldSet, final ChangeSet defaultSet) {
        if (this.initializing) {
            return;
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.defaultSetChanged(oldSet, defaultSet);
                }
            });
            ++i;
        }
    }

    public void add(ChangeSet set) {
        if (!this.contains(set)) {
            this.internalGetSets().add(set);
            this.handleSetAdded(set);
        }
    }

    protected void handleSetAdded(final ChangeSet set) {
        if (this.initializing) {
            return;
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.setAdded(set);
                }
            });
            ++i;
        }
    }

    public void remove(ChangeSet set) {
        if (this.contains(set)) {
            this.internalGetSets().remove(set);
            this.handleSetRemoved(set);
        }
    }

    protected void handleSetRemoved(final ChangeSet set) {
        if (this.initializing) {
            return;
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.setRemoved(set);
                }
            });
            ++i;
        }
    }

    public boolean contains(ChangeSet set) {
        return this.internalGetSets().contains(set);
    }

    public void addListener(IChangeSetChangeListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(IChangeSetChangeListener listener) {
        this.listeners.remove((Object)listener);
    }

    public ChangeSet[] getSets() {
        Set sets = this.internalGetSets();
        return sets.toArray(new ChangeSet[sets.size()]);
    }

    public void dispose() {
    }

    protected void fireResourcesChangedEvent(final ChangeSet changeSet, final IPath[] allAffectedResources) {
        if (this.initializing) {
            return;
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.resourcesChanged(changeSet, allAffectedResources);
                }
            });
            ++i;
        }
    }

    private Set internalGetSets() {
        if (this.sets == null) {
            this.sets = Collections.synchronizedSet(new HashSet());
            try {
                this.initializing = true;
                this.initializeSets();
            }
            finally {
                this.initializing = false;
            }
        }
        return this.sets;
    }

    protected abstract void initializeSets();

    public boolean isInitialized() {
        return this.sets != null;
    }
}

