/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.watson;

import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class ElementTreeIterator
implements IPathRequestor {
    private String[] segments = new String[10];
    private int nextFreeSegment;
    private ElementTree tree;
    private IPath path;
    private DataTreeNode treeRoot;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ElementTreeIterator(ElementTree tree, IPath path) {
        this.tree = tree;
        this.path = path;
        ElementTree elementTree = tree;
        synchronized (elementTree) {
            this.treeRoot = (DataTreeNode)tree.getDataTree().safeCopyCompleteSubtree(path);
        }
    }

    private void doIteration(DataTreeNode node, IElementContentVisitor visitor) {
        if (this.nextFreeSegment >= this.segments.length) {
            this.grow();
        }
        this.segments[this.nextFreeSegment++] = node.getName();
        if (visitor.visitElement(this.tree, this, node.getData())) {
            AbstractDataTreeNode[] children = node.getChildren();
            int i = children.length;
            while (--i >= 0) {
                this.doIteration((DataTreeNode)children[i], visitor);
            }
        }
        --this.nextFreeSegment;
        if (this.nextFreeSegment < 0) {
            this.nextFreeSegment = 0;
        }
    }

    private void grow() {
        int oldLen = this.segments.length;
        String[] newPaths = new String[oldLen * 2];
        System.arraycopy(this.segments, 0, newPaths, 0, oldLen);
        this.segments = newPaths;
    }

    public void iterate(IElementContentVisitor visitor) {
        if (this.path.isRoot()) {
            if (visitor.visitElement(this.tree, this, this.tree.getTreeData())) {
                if (this.treeRoot == null) {
                    return;
                }
                AbstractDataTreeNode[] children = this.treeRoot.getChildren();
                int i = children.length;
                while (--i >= 0) {
                    this.doIteration((DataTreeNode)children[i], visitor);
                }
            }
        } else {
            if (this.treeRoot == null) {
                return;
            }
            this.push(this.path, this.path.segmentCount() - 1);
            this.doIteration(this.treeRoot, visitor);
        }
    }

    private void push(IPath pathToPush, int toPush) {
        if (toPush <= 0) {
            return;
        }
        int i = 0;
        while (i < toPush) {
            if (this.nextFreeSegment >= this.segments.length) {
                this.grow();
            }
            this.segments[this.nextFreeSegment++] = pathToPush.segment(i);
            ++i;
        }
    }

    public String requestName() {
        if (this.nextFreeSegment == 0) {
            return "";
        }
        return this.segments[this.nextFreeSegment - 1];
    }

    public IPath requestPath() {
        if (this.nextFreeSegment == 0) {
            return Path.ROOT;
        }
        int length = this.nextFreeSegment;
        int i = 0;
        while (i < this.nextFreeSegment) {
            length += this.segments[i].length();
            ++i;
        }
        StringBuffer pathBuf = new StringBuffer(length);
        int i2 = 0;
        while (i2 < this.nextFreeSegment) {
            pathBuf.append('/');
            pathBuf.append(this.segments[i2]);
            ++i2;
        }
        return new Path(null, pathBuf.toString());
    }
}

