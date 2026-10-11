/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.variants;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.subscribers.SubscriberChangeEvent;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantTree;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;

public abstract class ResourceVariantTreeSubscriber
extends Subscriber {
    public SyncInfo getSyncInfo(IResource resource) throws TeamException {
        if (!this.isSupervised(resource)) {
            return null;
        }
        IResourceVariant remoteResource = this.getRemoteTree().getResourceVariant(resource);
        IResourceVariant baseResource = this.getResourceComparator().isThreeWay() ? this.getBaseTree().getResourceVariant(resource) : null;
        return this.getSyncInfo(resource, baseResource, remoteResource);
    }

    protected SyncInfo getSyncInfo(IResource local, IResourceVariant base, IResourceVariant remote) throws TeamException {
        SyncInfo info = new SyncInfo(local, base, remote, this.getResourceComparator());
        info.init();
        return info;
    }

    public IResource[] members(IResource resource) throws TeamException {
        if (resource.getType() == 1) {
            return new IResource[0];
        }
        try {
            HashSet<IResource> allMembers;
            block8: {
                allMembers = new HashSet<IResource>();
                try {
                    allMembers.addAll(Arrays.asList(((IContainer)resource).members()));
                }
                catch (CoreException e) {
                    if (e.getStatus().getCode() == 368) break block8;
                    throw e;
                }
            }
            allMembers.addAll(Arrays.asList(this.internalMembers(this.getRemoteTree(), resource)));
            if (this.getResourceComparator().isThreeWay()) {
                allMembers.addAll(Arrays.asList(this.internalMembers(this.getBaseTree(), resource)));
            }
            Iterator iterator = allMembers.iterator();
            while (iterator.hasNext()) {
                IResource member = (IResource)iterator.next();
                if (!member.exists() && !this.getRemoteTree().hasResourceVariant(member)) {
                    iterator.remove();
                    continue;
                }
                if (this.isSupervised(member)) continue;
                iterator.remove();
            }
            return allMembers.toArray(new IResource[allMembers.size()]);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }

    public void refresh(IResource[] resources, int depth, IProgressMonitor monitor) throws TeamException {
        monitor = Policy.monitorFor(monitor);
        ArrayList<IStatus> errors = new ArrayList<IStatus>();
        try {
            monitor.beginTask(null, 1000 * resources.length);
            int i = 0;
            while (i < resources.length) {
                IStatus status;
                IResource resource = resources[i];
                if (resource.getProject().isAccessible() && !(status = this.refresh(resource, depth, Policy.subMonitorFor(monitor, 1000))).isOK()) {
                    errors.add(status);
                }
                ++i;
            }
        }
        finally {
            monitor.done();
        }
        if (!errors.isEmpty()) {
            int numSuccess = resources.length - errors.size();
            throw new TeamException((IStatus)new MultiStatus("org.eclipse.team.core", 0, errors.toArray(new IStatus[errors.size()]), NLS.bind((String)Messages.ResourceVariantTreeSubscriber_1, (Object[])new Object[]{this.getName(), Integer.toString(numSuccess), Integer.toString(resources.length)}), null));
        }
    }

    protected abstract IResourceVariantTree getBaseTree();

    protected abstract IResourceVariantTree getRemoteTree();

    private IStatus refresh(IResource resource, int depth, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask(null, 100);
            HashSet<IResource> allChanges = new HashSet<IResource>();
            if (this.getResourceComparator().isThreeWay()) {
                IResource[] baseChanges = this.getBaseTree().refresh(new IResource[]{resource}, depth, Policy.subMonitorFor(monitor, 25));
                allChanges.addAll(Arrays.asList(baseChanges));
            }
            IResource[] remoteChanges = this.getRemoteTree().refresh(new IResource[]{resource}, depth, Policy.subMonitorFor(monitor, 75));
            allChanges.addAll(Arrays.asList(remoteChanges));
            IResource[] changedResources = allChanges.toArray(new IResource[allChanges.size()]);
            this.fireTeamResourceChange(SubscriberChangeEvent.asSyncChangedDeltas(this, changedResources));
            IStatus iStatus = Status.OK_STATUS;
            return iStatus;
        }
        catch (TeamException e) {
            TeamStatus teamStatus = new TeamStatus(4, "org.eclipse.team.core", 0, NLS.bind((String)Messages.ResourceVariantTreeSubscriber_2, (Object[])new String[]{resource.getFullPath().toString(), e.getMessage()}), (Throwable)((Object)e), resource);
            return teamStatus;
        }
        finally {
            monitor.done();
        }
    }

    private IResource[] internalMembers(IResourceVariantTree tree, IResource resource) throws TeamException, CoreException {
        IResource[] members;
        try {
            members = tree.members(resource);
        }
        catch (CoreException e) {
            if (!this.isSupervised(resource) || e.getStatus().getCode() == 368) {
                return new IResource[0];
            }
            throw e;
        }
        return members;
    }
}

