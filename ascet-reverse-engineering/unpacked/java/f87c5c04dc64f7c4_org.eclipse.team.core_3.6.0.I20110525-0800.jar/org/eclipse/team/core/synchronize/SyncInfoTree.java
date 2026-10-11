/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.team.core.synchronize;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.core.synchronize.SyncInfoSetChangeEvent;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.subscribers.SyncInfoTreeChangeEvent;

public class SyncInfoTree
extends SyncInfoSet {
    protected Map parents = Collections.synchronizedMap(new HashMap());

    public SyncInfoTree() {
    }

    public SyncInfoTree(SyncInfo[] infos) {
        super(infos);
        int i = 0;
        while (i < infos.length) {
            SyncInfo info = infos[i];
            IResource local = info.getLocal();
            this.addToParents(local, local);
            ++i;
        }
    }

    public synchronized boolean hasMembers(IResource resource) {
        if (resource.getType() == 1) {
            return false;
        }
        IContainer parent = (IContainer)resource;
        if (parent.getType() == 8) {
            return !this.isEmpty();
        }
        IPath path = parent.getFullPath();
        Set allDescendants = (Set)this.parents.get(path);
        return allDescendants != null && !allDescendants.isEmpty();
    }

    public synchronized SyncInfo[] getSyncInfos(IResource resource, int depth) {
        if (depth == 0 || resource.getType() == 1) {
            SyncInfo info = this.getSyncInfo(resource);
            if (info == null) {
                return new SyncInfo[0];
            }
            return new SyncInfo[]{info};
        }
        if (depth == 1) {
            ArrayList<SyncInfo> result = new ArrayList<SyncInfo>();
            SyncInfo info = this.getSyncInfo(resource);
            if (info != null) {
                result.add(info);
            }
            IResource[] members = this.members(resource);
            int i = 0;
            while (i < members.length) {
                IResource member = members[i];
                info = this.getSyncInfo(member);
                if (info != null) {
                    result.add(info);
                }
                ++i;
            }
            return result.toArray(new SyncInfo[result.size()]);
        }
        if (resource.getType() == 8) {
            return this.getSyncInfos();
        }
        return this.internalGetDeepSyncInfo((IContainer)resource);
    }

    private synchronized SyncInfo[] internalGetDeepSyncInfo(IContainer resource) {
        ArrayList<SyncInfo> infos = new ArrayList<SyncInfo>();
        IResource[] children = this.internalGetOutOfSyncDescendants(resource);
        int i = 0;
        while (i < children.length) {
            IResource child = children[i];
            SyncInfo info = this.getSyncInfo(child);
            if (info != null) {
                infos.add(info);
            } else {
                TeamPlugin.log(1, String.valueOf(Messages.SyncInfoTree_0) + child.getFullPath(), null);
            }
            ++i;
        }
        return infos.toArray(new SyncInfo[infos.size()]);
    }

    protected SyncInfoSetChangeEvent createEmptyChangeEvent() {
        return new SyncInfoTreeChangeEvent(this);
    }

    public void add(SyncInfo info) {
        try {
            this.beginInput();
            boolean alreadyExists = this.getSyncInfo(info.getLocal()) != null;
            super.add(info);
            if (!alreadyExists) {
                IResource local = info.getLocal();
                this.addToParents(local, local);
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void remove(IResource resource) {
        try {
            this.beginInput();
            super.remove(resource);
            this.removeFromParents(resource, resource);
        }
        finally {
            this.endInput(null);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clear() {
        try {
            this.beginInput();
            super.clear();
            SyncInfoTree syncInfoTree = this;
            synchronized (syncInfoTree) {
                this.parents.clear();
            }
        }
        finally {
            this.endInput(null);
        }
    }

    private synchronized boolean addToParents(IResource resource, IResource parent) {
        if (parent.getType() == 8) {
            return false;
        }
        boolean addedParent = false;
        if (parent.getType() == 1) {
            addedParent = true;
        } else {
            HashSet<IResource> children = (HashSet<IResource>)this.parents.get(parent.getFullPath());
            if (children == null) {
                children = new HashSet<IResource>();
                this.parents.put(parent.getFullPath(), children);
                addedParent = true;
            }
            children.add(resource);
        }
        if (!this.addToParents(resource, (IResource)parent.getParent()) && addedParent) {
            this.internalAddedSubtreeRoot(parent);
        }
        return addedParent;
    }

    private synchronized boolean removeFromParents(IResource resource, IResource parent) {
        if (parent.getType() == 8) {
            return false;
        }
        boolean removedParent = false;
        if (parent.getType() == 1) {
            removedParent = true;
        } else {
            Set children = (Set)this.parents.get(parent.getFullPath());
            if (children != null) {
                children.remove(resource);
                if (children.isEmpty()) {
                    this.parents.remove(parent.getFullPath());
                    removedParent = true;
                }
            }
        }
        if (!this.removeFromParents(resource, (IResource)parent.getParent()) && removedParent) {
            this.internalRemovedSubtreeRoot(parent);
        }
        return removedParent;
    }

    private void internalAddedSubtreeRoot(IResource parent) {
        ((SyncInfoTreeChangeEvent)this.getChangeEvent()).addedSubtreeRoot(parent);
    }

    private void internalRemovedSubtreeRoot(IResource parent) {
        ((SyncInfoTreeChangeEvent)this.getChangeEvent()).removedSubtreeRoot(parent);
    }

    public void remove(IResource resource, int depth) {
        try {
            this.beginInput();
            if (this.getSyncInfo(resource) != null) {
                this.remove(resource);
            }
            if (depth == 0 || resource.getType() == 1) {
                return;
            }
            if (depth == 1) {
                IResource[] members = this.members(resource);
                int i = 0;
                while (i < members.length) {
                    IResource member = members[i];
                    if (this.getSyncInfo(member) != null) {
                        this.remove(member);
                    }
                    ++i;
                }
            } else if (depth == 2) {
                IResource[] toRemove = this.internalGetOutOfSyncDescendants((IContainer)resource);
                int i = 0;
                while (i < toRemove.length) {
                    this.remove(toRemove[i]);
                    ++i;
                }
            }
        }
        finally {
            this.endInput(null);
        }
    }

    protected synchronized IResource[] internalGetOutOfSyncDescendants(IContainer resource) {
        Set allChildren = (Set)this.parents.get(resource.getFullPath());
        if (allChildren == null) {
            return new IResource[0];
        }
        return allChildren.toArray(new IResource[allChildren.size()]);
    }

    private synchronized IResource[] internalMembers(IWorkspaceRoot root) {
        Set possibleChildren = this.parents.keySet();
        HashSet<IProject> children = new HashSet<IProject>();
        Iterator it = possibleChildren.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            IResource element = root.findMember((IPath)next);
            if (element == null) continue;
            children.add(element.getProject());
        }
        return children.toArray(new IResource[children.size()]);
    }

    public synchronized IResource[] members(IResource resource) {
        if (resource.getType() == 1) {
            return new IResource[0];
        }
        IContainer parent = (IContainer)resource;
        if (parent.getType() == 8) {
            return this.internalMembers((IWorkspaceRoot)parent);
        }
        HashSet<IResource> children = new HashSet<IResource>();
        IPath path = parent.getFullPath();
        Set possibleChildren = (Set)this.parents.get(path);
        if (possibleChildren != null) {
            Iterator it = possibleChildren.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                IResource element = (IResource)next;
                IPath childPath = element.getFullPath();
                IResource modelObject = null;
                if (childPath.segmentCount() == path.segmentCount() + 1) {
                    modelObject = element;
                } else if (childPath.segmentCount() > path.segmentCount()) {
                    IFolder childFolder = parent.getFolder((IPath)new Path(null, childPath.segment(path.segmentCount())));
                    modelObject = childFolder;
                }
                if (modelObject == null) continue;
                children.add(modelObject);
            }
        }
        return children.toArray(new IResource[children.size()]);
    }
}

