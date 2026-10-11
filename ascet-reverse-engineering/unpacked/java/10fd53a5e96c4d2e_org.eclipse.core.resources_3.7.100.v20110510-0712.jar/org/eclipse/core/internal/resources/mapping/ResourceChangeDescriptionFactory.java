/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources.mapping;

import org.eclipse.core.internal.resources.mapping.ProposedResourceDelta;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.IResourceChangeDescriptionFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;

public class ResourceChangeDescriptionFactory
implements IResourceChangeDescriptionFactory {
    private ProposedResourceDelta root = new ProposedResourceDelta(ResourcesPlugin.getWorkspace().getRoot());

    private ProposedResourceDelta buildDeleteDelta(ProposedResourceDelta parentDelta, IResource resource) {
        ProposedResourceDelta delta = parentDelta.getChild(resource.getName());
        if (delta == null) {
            delta = new ProposedResourceDelta(resource);
            parentDelta.add(delta);
        }
        delta.setKind(2);
        if (resource.getType() == 1) {
            return delta;
        }
        try {
            IResource[] members = ((IContainer)resource).members();
            int childCount = members.length;
            if (childCount > 0) {
                ProposedResourceDelta[] childDeltas = new ProposedResourceDelta[childCount];
                int i = 0;
                while (i < childCount) {
                    childDeltas[i] = this.buildDeleteDelta(delta, members[i]);
                    ++i;
                }
            }
        }
        catch (CoreException coreException) {}
        return delta;
    }

    public void change(IFile file) {
        ProposedResourceDelta delta = this.getDelta(file);
        if (delta.getKind() == 0) {
            delta.setKind(4);
        }
        if (delta.getKind() == 4 || (delta.getFlags() & 0x1000) != 0 || (delta.getFlags() & 0x800) != 0) {
            delta.addFlags(256);
        }
    }

    public void close(IProject project) {
        this.delete(project);
        ProposedResourceDelta delta = this.getDelta(project);
        delta.addFlags(16384);
    }

    public void copy(IResource resource, IPath destination) {
        this.moveOrCopyDeep(resource, destination, false);
    }

    public void create(IResource resource) {
        this.getDelta(resource).setKind(1);
    }

    public void delete(IResource resource) {
        if (resource.getType() == 8) {
            IProject[] projects = ((IWorkspaceRoot)resource).getProjects(8);
            int i = 0;
            while (i < projects.length) {
                this.buildDeleteDelta(this.root, projects[i]);
                ++i;
            }
        } else {
            this.buildDeleteDelta(this.getDelta(resource.getParent()), resource);
        }
    }

    private void fail(CoreException e) {
        Policy.log(e.getStatus().getSeverity(), "An internal error occurred while accumulating a change description.", e);
    }

    public IResourceDelta getDelta() {
        return this.root;
    }

    ProposedResourceDelta getDelta(IResource resource) {
        ProposedResourceDelta delta = (ProposedResourceDelta)this.root.findMember(resource.getFullPath());
        if (delta != null) {
            return delta;
        }
        ProposedResourceDelta parent = this.getDelta(resource.getParent());
        delta = new ProposedResourceDelta(resource);
        parent.add(delta);
        return delta;
    }

    protected IResource getDestinationResource(IResource source, IPath sourcePrefix, IPath destinationPrefix) {
        IResource destination;
        IPath relativePath = source.getFullPath().removeFirstSegments(sourcePrefix.segmentCount());
        IPath destinationPath = destinationPrefix.append(relativePath);
        IWorkspaceRoot wsRoot = ResourcesPlugin.getWorkspace().getRoot();
        switch (source.getType()) {
            case 1: {
                destination = wsRoot.getFile(destinationPath);
                break;
            }
            case 2: {
                destination = wsRoot.getFolder(destinationPath);
                break;
            }
            case 4: {
                destination = wsRoot.getProject(destinationPath.segment(0));
                break;
            }
            default: {
                destination = null;
            }
        }
        return destination;
    }

    public void move(IResource resource, IPath destination) {
        this.moveOrCopyDeep(resource, destination, true);
    }

    boolean moveOrCopy(IResource resource, IPath sourcePrefix, IPath destinationPrefix, boolean move) {
        ProposedResourceDelta sourceDelta = this.getDelta(resource);
        if (sourceDelta.getKind() == 2) {
            return false;
        }
        IResource destinationResource = this.getDestinationResource(resource, sourcePrefix, destinationPrefix);
        ProposedResourceDelta destinationDelta = this.getDelta(destinationResource);
        if ((destinationDelta.getKind() & 5) > 0) {
            return false;
        }
        IPath fromPath = resource.getFullPath();
        boolean wasAdded = false;
        int sourceFlags = sourceDelta.getFlags();
        if (move) {
            if (sourceDelta.getKind() == 1) {
                if ((sourceFlags & 0x1000) != 0) {
                    fromPath = sourceDelta.getMovedFromPath();
                    sourceDelta.setMovedFromPath(null);
                }
                sourceDelta.setKind(0);
                wasAdded = true;
            } else {
                sourceDelta.setKind(2);
                sourceDelta.setFlags(8192);
                sourceDelta.setMovedToPath(destinationPrefix.append(fromPath.removeFirstSegments(sourcePrefix.segmentCount())));
            }
        }
        if (destinationDelta.getKind() == 2) {
            destinationDelta.setKind(4);
            destinationDelta.addFlags(262144);
        } else {
            destinationDelta.setKind(1);
        }
        if (!wasAdded || !fromPath.equals((Object)resource.getFullPath())) {
            destinationDelta.addFlags(move ? 4096 : 2048);
            destinationDelta.setMovedFromPath(fromPath);
            if (move) {
                destinationDelta.addFlags(sourceFlags);
            }
        }
        return true;
    }

    private void moveOrCopyDeep(IResource resource, IPath destination, final boolean move) {
        final IPath sourcePrefix = resource.getFullPath();
        final IPath destinationPrefix = destination;
        try {
            if (resource.isAccessible()) {
                resource.accept(new IResourceVisitor(){

                    public boolean visit(IResource child) {
                        return ResourceChangeDescriptionFactory.this.moveOrCopy(child, sourcePrefix, destinationPrefix, move);
                    }
                });
            } else {
                this.moveOrCopy(resource, sourcePrefix, destination, move);
            }
        }
        catch (CoreException e) {
            this.fail(e);
        }
    }
}

