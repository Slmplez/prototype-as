/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.localstore;

import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.localstore.RefreshLocalVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public class RefreshLocalAliasVisitor
extends RefreshLocalVisitor {
    public RefreshLocalAliasVisitor(IProgressMonitor monitor) {
        super(monitor);
    }

    protected void createResource(UnifiedTreeNode node, Resource target) throws CoreException {
        super.createResource(node, target);
        IFileStore store = node.getStore();
        if (store == null) {
            return;
        }
        IResource[] aliases = this.workspace.getAliasManager().computeAliases(target, store);
        if (aliases != null) {
            int i = 0;
            while (i < aliases.length) {
                if (aliases[i].getProject().isOpen() && !((Resource)aliases[i]).isFiltered()) {
                    super.createResource(node, (Resource)aliases[i]);
                }
                ++i;
            }
        }
    }

    protected void deleteResource(UnifiedTreeNode node, Resource target) throws CoreException {
        super.deleteResource(node, target);
        IFileStore store = node.getStore();
        if (store == null) {
            return;
        }
        IResource[] aliases = this.workspace.getAliasManager().computeAliases(target, store);
        if (aliases != null) {
            boolean wasFilteredOut = false;
            if (store.fetchInfo() != null && store.fetchInfo().exists()) {
                wasFilteredOut = target.isFiltered();
            }
            int i = 0;
            while (i < aliases.length) {
                if (aliases[i].getProject().isOpen()) {
                    if (wasFilteredOut) {
                        if (((Resource)aliases[i]).isFiltered()) {
                            super.deleteResource(node, (Resource)aliases[i]);
                        }
                    } else {
                        super.deleteResource(node, (Resource)aliases[i]);
                    }
                }
                ++i;
            }
        }
    }

    protected void resourceChanged(UnifiedTreeNode node, Resource target) {
        super.resourceChanged(node, target);
        IFileStore store = node.getStore();
        if (store == null) {
            return;
        }
        IResource[] aliases = this.workspace.getAliasManager().computeAliases(target, store);
        if (aliases != null) {
            int i = 0;
            while (i < aliases.length) {
                if (aliases[i].getProject().isOpen()) {
                    super.resourceChanged(node, (Resource)aliases[i]);
                }
                ++i;
            }
        }
    }

    protected void fileToFolder(UnifiedTreeNode node, Resource target) throws CoreException {
        super.fileToFolder(node, target);
        IFileStore store = node.getStore();
        if (store == null) {
            return;
        }
        IResource[] aliases = this.workspace.getAliasManager().computeAliases(target, store);
        if (aliases != null) {
            int i = 0;
            while (i < aliases.length) {
                super.fileToFolder(node, (Resource)aliases[i]);
                ++i;
            }
        }
    }

    protected void folderToFile(UnifiedTreeNode node, Resource target) throws CoreException {
        super.folderToFile(node, target);
        IFileStore store = node.getStore();
        if (store == null) {
            return;
        }
        IResource[] aliases = this.workspace.getAliasManager().computeAliases(target, store);
        if (aliases != null) {
            int i = 0;
            while (i < aliases.length) {
                super.folderToFile(node, (Resource)aliases[i]);
                ++i;
            }
        }
    }

    protected void refresh(Container parent) throws CoreException {
        parent.getLocalManager().refresh(parent, 0, true, null);
    }
}

