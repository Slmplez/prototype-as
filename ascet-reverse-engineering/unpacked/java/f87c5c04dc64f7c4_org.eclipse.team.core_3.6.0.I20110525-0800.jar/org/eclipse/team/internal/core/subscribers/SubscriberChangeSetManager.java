/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.BackgroundEventHandler;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.subscribers.ActiveChangeSet;
import org.eclipse.team.internal.core.subscribers.ActiveChangeSetManager;
import org.eclipse.team.internal.core.subscribers.ChangeSet;
import org.eclipse.team.internal.core.subscribers.SubscriberResourceCollector;
import org.osgi.service.prefs.Preferences;

public class SubscriberChangeSetManager
extends ActiveChangeSetManager {
    private static final String PREF_CHANGE_SETS = "changeSets";
    private static final int RESOURCE_REMOVAL = 1;
    private static final int RESOURCE_CHANGE = 2;
    private EventHandler handler;
    private ResourceCollector collector;

    public SubscriberChangeSetManager(Subscriber subscriber) {
        this.collector = new ResourceCollector(subscriber);
        this.handler = new EventHandler(NLS.bind((String)Messages.SubscriberChangeSetCollector_1, (Object[])new String[]{subscriber.getName()}), NLS.bind((String)Messages.SubscriberChangeSetCollector_2, (Object[])new String[]{subscriber.getName()}));
    }

    protected void initializeSets() {
        this.load(this.getPreferences());
    }

    public boolean hasMembers(IResource resource) {
        ChangeSet[] sets = this.getSets();
        int i = 0;
        while (i < sets.length) {
            ActiveChangeSet set = (ActiveChangeSet)sets[i];
            if (set.getDiffTree().getChildren(resource.getFullPath()).length > 0) {
                return true;
            }
            ++i;
        }
        if (this.getDefaultSet() != null) {
            return this.getDefaultSet().getDiffTree().getChildren(resource.getFullPath()).length > 0;
        }
        return false;
    }

    public IDiff getDiff(IResource resource) throws CoreException {
        Subscriber subscriber = this.getSubscriber();
        return subscriber.getDiff(resource);
    }

    public Subscriber getSubscriber() {
        return this.collector.getSubscriber();
    }

    public void dispose() {
        this.handler.shutdown();
        this.collector.dispose();
        super.dispose();
        this.save(this.getPreferences());
    }

    private Preferences getPreferences() {
        return SubscriberChangeSetManager.getParentPreferences().node(this.getSubscriberIdentifier());
    }

    private static Preferences getParentPreferences() {
        return SubscriberChangeSetManager.getTeamPreferences().node(PREF_CHANGE_SETS);
    }

    private static Preferences getTeamPreferences() {
        return new InstanceScope().getNode(TeamPlugin.getPlugin().getBundle().getSymbolicName());
    }

    protected String getSubscriberIdentifier() {
        return this.getSubscriber().getName();
    }

    public void waitUntilDone(IProgressMonitor monitor) {
        monitor.worked(1);
        while (this.handler.getEventHandlerJob().getState() != 0) {
            monitor.worked(1);
            try {
                Thread.sleep(10L);
            }
            catch (InterruptedException interruptedException) {}
            Policy.checkCanceled(monitor);
        }
        monitor.worked(1);
    }

    protected String getName() {
        return this.getSubscriber().getName();
    }

    private class EventHandler
    extends BackgroundEventHandler {
        private List dispatchEvents = new ArrayList();

        protected EventHandler(String jobName, String errorTitle) {
            super(jobName, errorTitle);
        }

        protected void processEvent(BackgroundEventHandler.Event event, IProgressMonitor monitor) throws CoreException {
            if (this.isShutdown()) {
                throw new OperationCanceledException();
            }
            this.dispatchEvents.add(event);
        }

        protected boolean doDispatchEvents(IProgressMonitor monitor) throws TeamException {
            if (this.dispatchEvents.isEmpty()) {
                return false;
            }
            if (this.isShutdown()) {
                throw new OperationCanceledException();
            }
            ResourceDiffTree[] locked = null;
            try {
                try {
                    locked = this.beginDispath();
                    Iterator iter = this.dispatchEvents.iterator();
                    while (iter.hasNext()) {
                        BackgroundEventHandler.Event event = (BackgroundEventHandler.Event)iter.next();
                        switch (event.getType()) {
                            case 1: {
                                this.handleRemove(event.getResource());
                                break;
                            }
                            case 2: {
                                this.handleChange(event.getResource(), ((BackgroundEventHandler.ResourceEvent)event).getDepth());
                                break;
                            }
                        }
                        if (!this.isShutdown()) continue;
                        throw new OperationCanceledException();
                    }
                }
                catch (CoreException e) {
                    throw TeamException.asTeamException(e);
                }
            }
            finally {
                try {
                    this.endDispatch(locked, monitor);
                }
                finally {
                    this.dispatchEvents.clear();
                }
            }
            return true;
        }

        private ResourceDiffTree[] beginDispath() {
            ChangeSet[] sets = SubscriberChangeSetManager.this.getSets();
            ArrayList<ResourceDiffTree> lockedSets = new ArrayList<ResourceDiffTree>();
            try {
                int i = 0;
                while (i < sets.length) {
                    ActiveChangeSet set = (ActiveChangeSet)sets[i];
                    ResourceDiffTree tree = set.internalGetDiffTree();
                    lockedSets.add(tree);
                    tree.beginInput();
                    ++i;
                }
                return lockedSets.toArray(new ResourceDiffTree[lockedSets.size()]);
            }
            catch (RuntimeException e) {
                try {
                    Iterator iter = lockedSets.iterator();
                    while (iter.hasNext()) {
                        ResourceDiffTree tree = (ResourceDiffTree)iter.next();
                        try {
                            tree.endInput(null);
                        }
                        catch (Throwable throwable) {}
                    }
                }
                catch (Throwable throwable) {}
            }
            throw e;
        }

        private void endDispatch(ResourceDiffTree[] locked, IProgressMonitor monitor) {
            if (locked == null) {
                return;
            }
            monitor.beginTask(null, 100 * locked.length);
            int i = 0;
            while (i < locked.length) {
                ResourceDiffTree tree = locked[i];
                try {
                    tree.endInput(Policy.subMonitorFor(monitor, 100));
                }
                catch (RuntimeException e) {
                    TeamPlugin.log(4, Messages.SubscriberChangeSetCollector_0, e);
                    throw e;
                }
                ++i;
            }
            monitor.done();
        }

        protected synchronized void queueEvent(BackgroundEventHandler.Event event, boolean front) {
            super.queueEvent(event, front);
        }

        private void handleRemove(IResource resource) {
            ChangeSet[] sets = SubscriberChangeSetManager.this.getSets();
            int i = 0;
            while (i < sets.length) {
                ChangeSet set = sets[i];
                if (!set.isEmpty()) {
                    set.rootRemoved(resource, 2);
                    if (set.isEmpty()) {
                        SubscriberChangeSetManager.this.remove(set);
                    }
                }
                ++i;
            }
        }

        private void handleChange(IResource resource, int depth) throws CoreException {
            int i;
            IDiff diff = SubscriberChangeSetManager.this.getDiff(resource);
            if (SubscriberChangeSetManager.this.isModified(diff)) {
                ActiveChangeSet[] containingSets = this.getContainingSets(resource);
                if (containingSets.length == 0) {
                    if (SubscriberChangeSetManager.this.getDefaultSet() != null) {
                        SubscriberChangeSetManager.this.getDefaultSet().add(diff);
                    }
                } else {
                    i = 0;
                    while (i < containingSets.length) {
                        ActiveChangeSet set = containingSets[i];
                        set.add(diff);
                        ++i;
                    }
                }
            } else {
                this.removeFromAllSets(resource);
            }
            if (depth != 0) {
                IResource[] members = SubscriberChangeSetManager.this.getSubscriber().members(resource);
                i = 0;
                while (i < members.length) {
                    IResource member = members[i];
                    this.handleChange(member, depth == 1 ? 0 : 2);
                    ++i;
                }
            }
        }

        private void removeFromAllSets(IResource resource) {
            ChangeSet set;
            ArrayList<ChangeSet> toRemove = new ArrayList<ChangeSet>();
            ChangeSet[] sets = SubscriberChangeSetManager.this.getSets();
            int i = 0;
            while (i < sets.length) {
                set = sets[i];
                if (set.contains(resource)) {
                    set.remove(resource);
                    if (set.isEmpty()) {
                        toRemove.add(set);
                    }
                }
                ++i;
            }
            Iterator iter = toRemove.iterator();
            while (iter.hasNext()) {
                set = (ActiveChangeSet)iter.next();
                SubscriberChangeSetManager.this.remove(set);
            }
        }

        private ActiveChangeSet[] getContainingSets(IResource resource) {
            HashSet<ChangeSet> result = new HashSet<ChangeSet>();
            ChangeSet[] sets = SubscriberChangeSetManager.this.getSets();
            int i = 0;
            while (i < sets.length) {
                ChangeSet set = sets[i];
                if (set.contains(resource)) {
                    result.add(set);
                }
                ++i;
            }
            return result.toArray(new ActiveChangeSet[result.size()]);
        }
    }

    private class ResourceCollector
    extends SubscriberResourceCollector {
        public ResourceCollector(Subscriber subscriber) {
            super(subscriber);
        }

        protected void remove(IResource resource) {
            if (SubscriberChangeSetManager.this.handler != null) {
                SubscriberChangeSetManager.this.handler.queueEvent(new BackgroundEventHandler.ResourceEvent(resource, 1, 2), false);
            }
        }

        protected void change(IResource resource, int depth) {
            if (SubscriberChangeSetManager.this.handler != null) {
                SubscriberChangeSetManager.this.handler.queueEvent(new BackgroundEventHandler.ResourceEvent(resource, 2, depth), false);
            }
        }

        protected boolean hasMembers(IResource resource) {
            return SubscriberChangeSetManager.this.hasMembers(resource);
        }
    }
}

