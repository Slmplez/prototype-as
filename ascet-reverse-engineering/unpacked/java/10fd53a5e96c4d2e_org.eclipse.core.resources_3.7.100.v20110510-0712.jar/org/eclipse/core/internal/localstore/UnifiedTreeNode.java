/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 */
package org.eclipse.core.internal.localstore;

import java.util.Iterator;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.localstore.ILocalStoreConstants;
import org.eclipse.core.internal.localstore.UnifiedTree;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.resources.IResource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnifiedTreeNode
implements ILocalStoreConstants {
    protected UnifiedTreeNode child;
    protected boolean existsWorkspace;
    protected IFileInfo fileInfo;
    protected IResource resource;
    protected IFileStore store;
    protected UnifiedTree tree;

    public UnifiedTreeNode(UnifiedTree tree, IResource resource, IFileStore store, IFileInfo fileInfo, boolean existsWorkspace) {
        this.tree = tree;
        this.resource = resource;
        this.store = store;
        this.fileInfo = fileInfo;
        this.existsWorkspace = existsWorkspace;
    }

    public boolean existsInFileSystem() {
        return this.fileInfo != null && this.fileInfo.exists();
    }

    public boolean existsInWorkspace() {
        return this.existsWorkspace;
    }

    public Iterator<UnifiedTreeNode> getChildren() {
        return this.tree.getChildren(this);
    }

    protected UnifiedTreeNode getFirstChild() {
        return this.child;
    }

    public long getLastModified() {
        return this.fileInfo == null ? 0L : this.fileInfo.getLastModified();
    }

    public int getLevel() {
        return this.tree.getLevel();
    }

    public String getLocalName() {
        return this.fileInfo == null ? null : this.fileInfo.getName();
    }

    public IResource getResource() {
        return this.resource;
    }

    public IFileStore getStore() {
        if (this.store == null) {
            this.store = ((Resource)this.resource).getStore();
        }
        return this.store;
    }

    public boolean isFolder() {
        return this.fileInfo == null ? false : this.fileInfo.isDirectory();
    }

    public boolean isSymbolicLink() {
        return this.fileInfo == null ? false : this.fileInfo.getAttribute(32);
    }

    public void removeChildrenFromTree() {
        this.tree.removeNodeChildrenFromQueue(this);
    }

    public void reuse(UnifiedTree aTree, IResource aResource, IFileStore aStore, IFileInfo info, boolean existsInWorkspace) {
        this.tree = aTree;
        this.child = null;
        this.resource = aResource;
        this.store = aStore;
        this.fileInfo = info;
        this.existsWorkspace = existsInWorkspace;
    }

    public void releaseForGc() {
        this.child = null;
        this.resource = null;
        this.store = null;
        this.fileInfo = null;
    }

    public void setExistsWorkspace(boolean exists) {
        this.existsWorkspace = exists;
    }

    protected void setFirstChild(UnifiedTreeNode child) {
        this.child = child;
    }

    public void setResource(IResource resource) {
        this.resource = resource;
    }

    public String toString() {
        String s = this.resource == null ? "null" : this.resource.getFullPath().toString();
        return "Node: " + s;
    }
}

