/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTree;
import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeLookup;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.runtime.IPath;

public class DataTree
extends AbstractDataTree {
    private DataTreeNode rootNode;

    public DataTree() {
        this.empty();
    }

    public AbstractDataTreeNode copyCompleteSubtree(IPath key) {
        DataTreeNode node = this.findNodeAt(key);
        if (node == null) {
            DataTree.handleNotFound(key);
        }
        return this.copyHierarchy(node);
    }

    DataTreeNode copyHierarchy(DataTreeNode node) {
        DataTreeNode newNode;
        int size = node.size();
        if (size == 0) {
            newNode = new DataTreeNode(node.getName(), node.getData());
        } else {
            AbstractDataTreeNode[] children = node.getChildren();
            AbstractDataTreeNode[] newChildren = new DataTreeNode[size];
            int i = size;
            while (--i >= 0) {
                newChildren[i] = this.copyHierarchy((DataTreeNode)children[i]);
            }
            newNode = new DataTreeNode(node.getName(), node.getData(), newChildren);
        }
        return newNode;
    }

    public void createChild(IPath parentKey, String localName) {
        this.createChild(parentKey, localName, null);
    }

    public void createChild(IPath parentKey, String localName, Object data) {
        DataTreeNode node = this.findNodeAt(parentKey);
        if (node == null) {
            DataTree.handleNotFound(parentKey);
        }
        if (this.isImmutable()) {
            DataTree.handleImmutableTree();
        }
        if (node.includesChild(localName)) {
            node.replaceChild(localName, new DataTreeNode(localName, data));
        } else {
            this.replaceNode(parentKey, node.copyWithNewChild(localName, new DataTreeNode(localName, data)));
        }
    }

    protected AbstractDataTree createInstance() {
        return new DataTree();
    }

    public void createSubtree(IPath key, AbstractDataTreeNode subtree) {
        DataTreeNode newNode = this.copyHierarchy((DataTreeNode)subtree);
        if (this.isImmutable()) {
            DataTree.handleImmutableTree();
        }
        if (key.isRoot()) {
            this.setRootNode(newNode);
        } else {
            String localName = key.lastSegment();
            newNode.setName(localName);
            IPath parentKey = key.removeLastSegments(1);
            DataTreeNode node = this.findNodeAt(parentKey);
            if (node == null) {
                DataTree.handleNotFound(parentKey);
            }
            if (node.includesChild(localName)) {
                node.replaceChild(localName, newNode);
            }
            this.replaceNode(parentKey, node.copyWithNewChild(localName, newNode));
        }
    }

    public void deleteChild(IPath parentKey, String localName) {
        DataTreeNode node;
        if (this.isImmutable()) {
            DataTree.handleImmutableTree();
        }
        if ((node = this.findNodeAt(parentKey)) == null || !node.includesChild(localName)) {
            DataTree.handleNotFound(node == null ? parentKey : parentKey.append(localName));
        } else {
            this.replaceNode(parentKey, node.copyWithoutChild(localName));
        }
    }

    public void empty() {
        this.setRootNode(new DataTreeNode(null, (Object)null));
    }

    public DataTreeNode findNodeAt(IPath key) {
        AbstractDataTreeNode node = this.getRootNode();
        int keyLength = key.segmentCount();
        int i = 0;
        while (i < keyLength) {
            try {
                node = node.childAt(key.segment(i));
            }
            catch (ObjectNotFoundException objectNotFoundException) {
                return null;
            }
            ++i;
        }
        return (DataTreeNode)node;
    }

    public Object getData(IPath key) {
        DataTreeNode node = this.findNodeAt(key);
        if (node == null) {
            DataTree.handleNotFound(key);
            return null;
        }
        return node.getData();
    }

    public String[] getNamesOfChildren(IPath parentKey) {
        DataTreeNode parentNode = this.findNodeAt(parentKey);
        if (parentNode == null) {
            DataTree.handleNotFound(parentKey);
            return null;
        }
        return parentNode.namesOfChildren();
    }

    AbstractDataTreeNode getRootNode() {
        return this.rootNode;
    }

    public boolean includes(IPath key) {
        return this.findNodeAt(key) != null;
    }

    public DataTreeLookup lookup(IPath key) {
        DataTreeNode node = this.findNodeAt(key);
        if (node == null) {
            return DataTreeLookup.newLookup(key, false, null);
        }
        return DataTreeLookup.newLookup(key, true, node.getData());
    }

    protected void replaceNode(IPath key, DataTreeNode node) {
        if (key.isRoot()) {
            this.setRootNode(node);
        } else {
            DataTreeNode found = this.findNodeAt(key.removeLastSegments(1));
            found.replaceChild(key.lastSegment(), node);
        }
    }

    public void setData(IPath key, Object data) {
        DataTreeNode node = this.findNodeAt(key);
        if (this.isImmutable()) {
            DataTree.handleImmutableTree();
        }
        if (node == null) {
            DataTree.handleNotFound(key);
        } else {
            node.setData(data);
        }
    }

    void setRootNode(DataTreeNode aNode) {
        this.rootNode = aNode;
    }
}

