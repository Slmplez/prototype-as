/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.IFileTree
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.localstore;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileTree;
import org.eclipse.core.internal.localstore.IUnifiedTreeVisitor;
import org.eclipse.core.internal.localstore.PrefixPool;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.refresh.RefreshJob;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Queue;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.Job;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnifiedTree {
    protected static final UnifiedTreeNode childrenMarker = new UnifiedTreeNode(null, null, null, null, false);
    private static final Iterator<UnifiedTreeNode> EMPTY_ITERATOR = Collections.EMPTY_LIST.iterator();
    protected static final UnifiedTreeNode levelMarker = new UnifiedTreeNode(null, null, null, null, false);
    private static final IFileInfo[] NO_CHILDREN = new IFileInfo[0];
    private static final IResource[] NO_RESOURCES = new IResource[0];
    protected boolean childLevelValid = false;
    protected IFileTree fileTree = null;
    protected ArrayList<UnifiedTreeNode> freeNodes = new ArrayList();
    protected int level;
    protected Queue<UnifiedTreeNode> queue;
    protected PrefixPool pathPrefixHistory;
    protected PrefixPool rootPathHistory;
    protected IResource root;

    public UnifiedTree(IResource root) {
        this.setRoot(root);
    }

    public UnifiedTree(IResource root, IFileTree fileTree) {
        this(root);
        this.fileTree = fileTree;
    }

    public void accept(IUnifiedTreeVisitor visitor) throws CoreException {
        this.accept(visitor, 2);
    }

    public void accept(IUnifiedTreeVisitor visitor, int depth) throws CoreException {
        Assert.isNotNull((Object)this.root);
        this.initializeQueue();
        this.setLevel(0, depth);
        while (!this.queue.isEmpty()) {
            UnifiedTreeNode node = this.queue.remove();
            if (this.isChildrenMarker(node)) continue;
            if (this.isLevelMarker(node)) {
                if (this.setLevel(this.getLevel() + 1, depth)) continue;
                break;
            }
            if (visitor.visit(node)) {
                this.addNodeChildrenToQueue(node);
            } else {
                this.removeNodeChildrenFromQueue(node);
            }
            if (this.freeNodes.size() >= Short.MAX_VALUE) continue;
            node.releaseForGc();
            this.freeNodes.add(node);
        }
    }

    protected void addChildren(UnifiedTreeNode node) {
        Resource parent = (Resource)node.getResource();
        int parentType = parent.getType();
        if (parentType == 1 && !node.isFolder()) {
            return;
        }
        if (!parent.getProject().isAccessible()) {
            return;
        }
        IFileInfo[] list = node.existsInFileSystem() ? this.getLocalList(node) : NO_CHILDREN;
        int localIndex = 0;
        ResourceInfo resourceInfo = parent.getResourceInfo(false, false);
        int flags = parent.getFlags(resourceInfo);
        boolean unknown = ResourceInfo.isSet(flags, 0x100000);
        if (!unknown && (parentType == 2 || parentType == 4) && parent.exists(flags, true)) {
            IResource[] members;
            IResource target = null;
            UnifiedTreeNode child = null;
            try {
                members = ((IContainer)((Object)parent)).members(10);
            }
            catch (CoreException coreException) {
                members = NO_RESOURCES;
            }
            int workspaceIndex = 0;
            while (workspaceIndex < members.length) {
                int comp;
                target = members[workspaceIndex];
                String name = target.getName();
                IFileInfo localInfo = localIndex < list.length ? list[localIndex] : null;
                int n = comp = localInfo != null ? name.compareTo(localInfo.getName()) : -1;
                if (target.isLinked()) {
                    child = this.createChildForLinkedResource(target);
                    ++workspaceIndex;
                    if (comp == 0) {
                        ++localIndex;
                    }
                } else if (comp == 0) {
                    child = localInfo.getAttribute(32) && localInfo.isDirectory() && this.isRecursiveLink(node.getStore(), localInfo) ? this.createNode(target, null, null, true) : this.createNode(target, null, localInfo, true);
                    ++localIndex;
                    ++workspaceIndex;
                } else if (comp > 0) {
                    child = localInfo.getAttribute(32) && localInfo.isDirectory() && this.isRecursiveLink(node.getStore(), localInfo) ? null : this.createChildNodeFromFileSystem(node, localInfo);
                    ++localIndex;
                } else {
                    child = this.createNode(target, null, null, true);
                    ++workspaceIndex;
                }
                if (child == null) continue;
                this.addChildToTree(node, child);
            }
        }
        this.addChildrenFromFileSystem(node, list, localIndex);
        if (unknown && (resourceInfo = parent.getResourceInfo(false, false)) != null) {
            resourceInfo.clear(0x100000);
        }
        if (node.getFirstChild() != null) {
            this.addChildrenMarker();
        }
    }

    protected void addChildrenFromFileSystem(UnifiedTreeNode node, IFileInfo[] childInfos, int index) {
        if (childInfos == null) {
            return;
        }
        int i = index;
        while (i < childInfos.length) {
            IFileInfo info = childInfos[i];
            if (!(info.getAttribute(32) && info.isDirectory() && this.isRecursiveLink(node.getStore(), info))) {
                this.addChildToTree(node, this.createChildNodeFromFileSystem(node, info));
            }
            ++i;
        }
    }

    protected void addChildrenMarker() {
        this.addElementToQueue(childrenMarker);
    }

    protected void addChildToTree(UnifiedTreeNode node, UnifiedTreeNode child) {
        if (node.getFirstChild() == null) {
            node.setFirstChild(child);
        }
        this.addElementToQueue(child);
    }

    protected void addElementToQueue(UnifiedTreeNode target) {
        this.queue.add(target);
    }

    protected void addNodeChildrenToQueue(UnifiedTreeNode node) {
        if (!this.childLevelValid || node.getFirstChild() != null) {
            return;
        }
        this.addChildren(node);
        if (this.queue.isEmpty()) {
            return;
        }
        UnifiedTreeNode nextNode = this.queue.peek();
        if (this.isChildrenMarker(nextNode)) {
            this.queue.remove();
        }
        if (this.isLevelMarker(nextNode = this.queue.peek())) {
            this.addElementToQueue(levelMarker);
        }
    }

    protected void addRootToQueue() {
        IFileInfo fileInfo;
        if (!this.root.getProject().isAccessible()) {
            return;
        }
        IFileStore store = ((Resource)this.root).getStore();
        UnifiedTreeNode node = this.createNode(this.root, store, fileInfo = this.fileTree != null ? this.fileTree.getFileInfo(store) : store.fetchInfo(), this.root.exists());
        if (node.existsInFileSystem() || node.existsInWorkspace()) {
            this.addElementToQueue(node);
        }
    }

    protected UnifiedTreeNode createChildForLinkedResource(IResource target) {
        IFileStore store = ((Resource)target).getStore();
        return this.createNode(target, store, store.fetchInfo(), true);
    }

    protected UnifiedTreeNode createChildNodeFromFileSystem(UnifiedTreeNode parent, IFileInfo info) {
        IPath childPath = parent.getResource().getFullPath().append(info.getName());
        int type = info.isDirectory() ? 2 : 1;
        Resource target = this.getWorkspace().newResource(childPath, type);
        return this.createNode(target, null, info, false);
    }

    protected UnifiedTreeNode createNode(IResource resource, IFileStore store, IFileInfo info, boolean existsWorkspace) {
        UnifiedTreeNode node = null;
        int size = this.freeNodes.size();
        if (size > 0) {
            node = this.freeNodes.remove(size - 1);
            node.reuse(this, resource, store, info, existsWorkspace);
            return node;
        }
        return new UnifiedTreeNode(this, resource, store, info, existsWorkspace);
    }

    protected Iterator<UnifiedTreeNode> getChildren(UnifiedTreeNode node) {
        UnifiedTreeNode child;
        if (node.getFirstChild() == null) {
            this.addNodeChildrenToQueue(node);
        }
        if (node.getFirstChild() == null) {
            return EMPTY_ITERATOR;
        }
        int index = this.queue.indexOf(node.getFirstChild());
        if (index == -1) {
            return EMPTY_ITERATOR;
        }
        ArrayList<UnifiedTreeNode> result = new ArrayList<UnifiedTreeNode>(10);
        while (!this.isChildrenMarker(child = this.queue.elementAt(index))) {
            result.add(child);
            index = this.queue.increment(index);
        }
        return result.iterator();
    }

    protected int getLevel() {
        return this.level;
    }

    protected IFileInfo[] getLocalList(UnifiedTreeNode node) {
        try {
            IFileStore store = node.getStore();
            IFileInfo[] list = this.fileTree != null && (this.fileTree.getTreeRoot().equals(store) || this.fileTree.getTreeRoot().isParentOf(store)) ? this.fileTree.getChildInfos(store) : store.childInfos(0, null);
            if (list == null || list.length == 0) {
                return NO_CHILDREN;
            }
            list = ((Resource)node.getResource()).filterChildren(list, false);
            int size = list.length;
            if (size > 1) {
                this.quickSort(list, 0, size - 1);
            }
            return list;
        }
        catch (CoreException coreException) {
            return NO_CHILDREN;
        }
    }

    protected Workspace getWorkspace() {
        return (Workspace)this.root.getWorkspace();
    }

    protected void initializeQueue() {
        if (this.queue == null) {
            this.queue = new Queue(100, false);
        } else {
            this.queue.reset();
        }
        if (this.freeNodes == null) {
            this.freeNodes = new ArrayList(100);
        } else {
            this.freeNodes.clear();
        }
        this.addRootToQueue();
        this.addElementToQueue(levelMarker);
    }

    protected boolean isChildrenMarker(UnifiedTreeNode node) {
        return node == childrenMarker;
    }

    protected boolean isLevelMarker(UnifiedTreeNode node) {
        return node == levelMarker;
    }

    protected void initLinkHistoriesIfNeeded() {
        block10: {
            if (this.pathPrefixHistory == null) {
                Job job = Job.getJobManager().currentJob();
                if (job instanceof RefreshJob) {
                    RefreshJob refreshJob = (RefreshJob)job;
                    this.pathPrefixHistory = refreshJob.getPathPrefixHistory();
                    this.rootPathHistory = refreshJob.getRootPathHistory();
                } else {
                    this.pathPrefixHistory = new PrefixPool(20);
                    this.rootPathHistory = new PrefixPool(20);
                }
            }
            if (this.rootPathHistory.size() == 0) {
                IFileStore rootStore = ((Resource)this.root).getStore();
                try {
                    File rootFile = rootStore.toLocalFile(0, null);
                    if (rootFile == null) break block10;
                    IPath rootProjPath = this.root.getProject().getLocation();
                    if (rootProjPath != null) {
                        try {
                            File rootProjFile = new File(rootProjPath.toOSString());
                            this.rootPathHistory.insertShorter(String.valueOf(rootProjFile.getCanonicalPath()) + '/');
                        }
                        catch (IOException iOException) {}
                    }
                    this.rootPathHistory.insertShorter(String.valueOf(rootFile.getCanonicalPath()) + '/');
                }
                catch (CoreException coreException) {
                }
                catch (IOException iOException) {}
            }
        }
    }

    private boolean isRecursiveLink(IFileStore parentStore, IFileInfo localInfo) {
        block10: {
            String childPath;
            block11: {
                block9: {
                    File parentFile;
                    block8: {
                        String linkTarget = localInfo.getStringAttribute(64);
                        if (linkTarget != null && PatternHolder.trivialSymlinkPattern.matcher(linkTarget).matches()) {
                            return true;
                        }
                        parentFile = parentStore.toLocalFile(0, null);
                        if (parentFile != null) break block8;
                        return false;
                    }
                    File childFile = new File(parentFile, localInfo.getName());
                    String parentPath = String.valueOf(parentFile.getCanonicalPath()) + '/';
                    childPath = String.valueOf(childFile.getCanonicalPath()) + '/';
                    this.initLinkHistoriesIfNeeded();
                    this.pathPrefixHistory.insertLonger(parentPath);
                    if (!this.pathPrefixHistory.containsAsPrefix(childPath)) break block9;
                    if (!this.rootPathHistory.insertShorter(childPath)) {
                        return true;
                    }
                    break block10;
                }
                if (!this.rootPathHistory.hasPrefixOf(childPath)) break block11;
                return false;
            }
            try {
                this.rootPathHistory.insertShorter(childPath);
            }
            catch (IOException iOException) {
            }
            catch (CoreException coreException) {}
        }
        return false;
    }

    protected boolean isValidLevel(int currentLevel, int depth) {
        switch (depth) {
            case 2: {
                return true;
            }
            case 1: {
                return currentLevel <= 1;
            }
            case 0: {
                return currentLevel == 0;
            }
        }
        return currentLevel + 1000 <= depth;
    }

    protected void quickSort(IFileInfo[] infos, int left, int right) {
        int originalLeft = left;
        int originalRight = right;
        IFileInfo mid = infos[(left + right) / 2];
        while (true) {
            if (mid.compareTo((Object)infos[left]) > 0) {
                ++left;
                continue;
            }
            while (infos[right].compareTo((Object)mid) > 0) {
                --right;
            }
            if (left <= right) {
                IFileInfo tmp = infos[left];
                infos[left] = infos[right];
                infos[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (originalLeft < right) {
            this.quickSort(infos, originalLeft, right);
        }
        if (left < originalRight) {
            this.quickSort(infos, left, originalRight);
        }
    }

    protected void removeNodeChildrenFromQueue(UnifiedTreeNode node) {
        UnifiedTreeNode first = node.getFirstChild();
        if (first == null) {
            return;
        }
        while (!first.equals(this.queue.removeTail())) {
        }
        node.setFirstChild(null);
    }

    protected boolean setLevel(int newLevel, int depth) {
        this.level = newLevel;
        this.childLevelValid = this.isValidLevel(this.level + 1, depth);
        return this.isValidLevel(this.level, depth);
    }

    private void setRoot(IResource root) {
        this.root = root;
    }

    private static class PatternHolder {
        public static Pattern trivialSymlinkPattern = Pattern.compile("\\.[./]*");

        private PatternHolder() {
        }
    }
}

