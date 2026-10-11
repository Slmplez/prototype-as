/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTree;
import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataDeltaNode;
import org.eclipse.core.internal.dtree.DataTreeLookup;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeletedNode;
import org.eclipse.core.internal.dtree.IComparator;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class DeltaDataTree
extends AbstractDataTree {
    private AbstractDataTreeNode rootNode;
    private DeltaDataTree parent;

    public DeltaDataTree() {
        this.empty();
    }

    public DeltaDataTree(AbstractDataTreeNode rootNode) {
        this.rootNode = rootNode;
        this.parent = null;
    }

    protected DeltaDataTree(AbstractDataTreeNode rootNode, DeltaDataTree parent) {
        this.rootNode = rootNode;
        this.parent = parent;
    }

    protected void addChild(IPath parentKey, String localName, AbstractDataTreeNode childNode) {
        if (!this.includes(parentKey)) {
            DeltaDataTree.handleNotFound(parentKey);
        }
        childNode.setName(localName);
        this.assembleNode(parentKey, new NoDataDeltaNode(parentKey.lastSegment(), childNode));
    }

    DeltaDataTree asBackwardDelta() {
        if (this.getParent() == null) {
            return this.newEmptyDeltaTree();
        }
        return new DeltaDataTree(this.getRootNode().asBackwardDelta(this, this.getParent(), this.rootKey()), this);
    }

    public DeltaDataTree asReverseComparisonTree(IComparator comparator) {
        if (this.rootNode.getName() == null) {
            AbstractDataTreeNode[] children = this.rootNode.getChildren();
            int nextChild = 0;
            int i = 0;
            while (i < children.length) {
                AbstractDataTreeNode newChild = children[i].asReverseComparisonNode(comparator);
                if (newChild != null) {
                    children[nextChild++] = newChild;
                }
                ++i;
            }
            if (nextChild < children.length) {
                AbstractDataTreeNode[] newChildren = new AbstractDataTreeNode[nextChild];
                System.arraycopy(children, 0, newChildren, 0, nextChild);
                this.rootNode.setChildren(newChildren);
            }
        } else {
            this.rootNode.asReverseComparisonNode(comparator);
        }
        return this;
    }

    protected void assembleNode(IPath key, AbstractDataTreeNode deltaNode) {
        this.rootNode = this.rootNode.assembleWith(deltaNode, key, 0);
    }

    public DeltaDataTree assembleWithForwardDelta(DeltaDataTree deltaTree) {
        return new DeltaDataTree(this.getRootNode().assembleWith(deltaTree.getRootNode()), this);
    }

    protected DeltaDataTree basicCompare(DeltaDataTree other, IComparator comparator, IPath path) {
        DeltaDataTree newTree;
        if (this == other) {
            newTree = new DeltaDataTree();
            newTree.setData((IPath)Path.ROOT, new NodeComparison(null, null, 0, 0));
        } else if (other.hasAncestor(this)) {
            AbstractDataTreeNode assembled = other.searchNodeAt(path);
            DeltaDataTree tree = other;
            while ((tree = tree.getParent()) != this) {
                AbstractDataTreeNode treeNode = tree.searchNodeAt(path);
                if (treeNode == null) continue;
                assembled = treeNode.assembleWith(assembled);
            }
            AbstractDataTreeNode comparedRoot = assembled.compareWithParent(path, this, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        } else if (this.hasAncestor(other)) {
            AbstractDataTreeNode assembled = this.asBackwardDelta().searchNodeAt(path);
            DeltaDataTree tree = this;
            while ((tree = tree.getParent()) != other) {
                assembled = assembled.assembleWith(tree.asBackwardDelta().searchNodeAt(path));
            }
            AbstractDataTreeNode comparedRoot = assembled.compareWithParent(path, this, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        } else {
            DataTreeNode thisCompleteRoot = (DataTreeNode)this.copyCompleteSubtree(path);
            DataTreeNode otherCompleteRoot = (DataTreeNode)other.copyCompleteSubtree(path);
            AbstractDataTreeNode comparedRoot = thisCompleteRoot.compareWith(otherCompleteRoot, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        }
        newTree.immutable();
        return newTree;
    }

    public DeltaDataTree collapseTo(DeltaDataTree collapseTo, IComparator comparator) {
        if (this == collapseTo || this.getParent() == collapseTo) {
            return this;
        }
        DeltaDataTree c = collapseTo.forwardDeltaWith(this, comparator);
        this.parent = collapseTo;
        this.rootNode = c.rootNode;
        return this;
    }

    public DeltaDataTree compareWith(DeltaDataTree other, IComparator comparator) {
        DeltaDataTree newTree;
        if (this == other) {
            newTree = new DeltaDataTree();
            newTree.setData((IPath)Path.ROOT, new NodeComparison(null, null, 0, 0));
        } else if (other.hasAncestor(this)) {
            AbstractDataTreeNode assembled = other.getRootNode();
            DeltaDataTree tree = other;
            while ((tree = tree.getParent()) != this) {
                assembled = tree.getRootNode().assembleWith(assembled);
            }
            AbstractDataTreeNode comparedRoot = assembled.compareWithParent(this.rootKey(), this, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        } else if (this.hasAncestor(other)) {
            AbstractDataTreeNode assembled = this.asBackwardDelta().getRootNode();
            DeltaDataTree tree = this;
            while ((tree = tree.getParent()) != other) {
                assembled = assembled.assembleWith(tree.asBackwardDelta().getRootNode());
            }
            AbstractDataTreeNode comparedRoot = assembled.compareWithParent(this.rootKey(), this, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        } else {
            DataTreeNode thisCompleteRoot = (DataTreeNode)this.copyCompleteSubtree(this.rootKey());
            DataTreeNode otherCompleteRoot = (DataTreeNode)other.copyCompleteSubtree(this.rootKey());
            AbstractDataTreeNode comparedRoot = thisCompleteRoot.compareWith(otherCompleteRoot, comparator);
            newTree = new DeltaDataTree(comparedRoot);
        }
        newTree.immutable();
        return newTree;
    }

    public DeltaDataTree compareWith(DeltaDataTree other, IComparator comparator, IPath path) {
        if (this.includes(path)) {
            if (other.includes(path)) {
                return this.basicCompare(other, comparator, path);
            }
            return new DeltaDataTree(AbstractDataTreeNode.convertToRemovedComparisonNode(this.copyCompleteSubtree(path), comparator.compare(this.getData(path), null)));
        }
        if (other.includes(path)) {
            return new DeltaDataTree(AbstractDataTreeNode.convertToAddedComparisonNode(other.copyCompleteSubtree(path), comparator.compare(null, other.getData(path))));
        }
        return DeltaDataTree.createEmptyDelta();
    }

    protected AbstractDataTree copy() {
        return new DeltaDataTree(this.rootNode, this.parent);
    }

    public AbstractDataTreeNode copyCompleteSubtree(IPath key) {
        AbstractDataTreeNode node = this.searchNodeAt(key);
        if (node == null) {
            DeltaDataTree.handleNotFound(key);
            return null;
        }
        if (node.isDelta()) {
            return this.naiveCopyCompleteSubtree(key);
        }
        return node.copy();
    }

    public void createChild(IPath parentKey, String localName) {
        this.createChild(parentKey, localName, null);
    }

    public void createChild(IPath parentKey, String localName, Object data) {
        if (this.isImmutable()) {
            DeltaDataTree.handleImmutableTree();
        }
        this.addChild(parentKey, localName, new DataTreeNode(localName, data));
    }

    static DeltaDataTree createEmptyDelta() {
        DeltaDataTree newTree = new DeltaDataTree();
        newTree.emptyDelta();
        return newTree;
    }

    protected AbstractDataTree createInstance() {
        return new DeltaDataTree();
    }

    public void createSubtree(IPath key, AbstractDataTreeNode node) {
        if (this.isImmutable()) {
            DeltaDataTree.handleImmutableTree();
        }
        if (key.isRoot()) {
            this.setParent(null);
            this.setRootNode(node);
        } else {
            this.addChild(key.removeLastSegments(1), key.lastSegment(), node);
        }
    }

    public void deleteChild(IPath parentKey, String localName) {
        IPath childKey;
        if (this.isImmutable()) {
            DeltaDataTree.handleImmutableTree();
        }
        if (!this.includes(childKey = parentKey.append(localName))) {
            DeltaDataTree.handleNotFound(childKey);
        }
        this.assembleNode(parentKey, new NoDataDeltaNode(parentKey.lastSegment(), new DeletedNode(localName)));
    }

    public void empty() {
        this.rootNode = new DataTreeNode(null, (Object)null);
        this.parent = null;
    }

    void emptyDelta() {
        this.rootNode = new NoDataDeltaNode(null);
    }

    public AbstractDataTreeNode findNodeAt(IPath key) {
        AbstractDataTreeNode node = this.rootNode;
        int segmentCount = key.segmentCount();
        int i = 0;
        while (i < segmentCount) {
            if ((node = node.childAtOrNull(key.segment(i))) == null) {
                return null;
            }
            ++i;
        }
        return node;
    }

    public DeltaDataTree forwardDeltaWith(DeltaDataTree sourceTree, IComparator comparer) {
        DeltaDataTree newTree;
        if (this == sourceTree) {
            newTree = this.newEmptyDeltaTree();
        } else if (sourceTree.hasAncestor(this)) {
            AbstractDataTreeNode assembled = sourceTree.getRootNode();
            DeltaDataTree treeParent = sourceTree;
            while ((treeParent = treeParent.getParent()) != this) {
                assembled = treeParent.getRootNode().assembleWith(assembled);
            }
            newTree = new DeltaDataTree(assembled, this);
            newTree.simplify(comparer);
        } else if (this.hasAncestor(sourceTree)) {
            newTree = sourceTree.forwardDeltaWith(this, comparer);
            newTree = newTree.asBackwardDelta();
        } else {
            DataTreeNode thisCompleteRoot = (DataTreeNode)this.copyCompleteSubtree(this.rootKey());
            DataTreeNode sourceTreeCompleteRoot = (DataTreeNode)sourceTree.copyCompleteSubtree(this.rootKey());
            AbstractDataTreeNode deltaRoot = thisCompleteRoot.forwardDeltaWith(sourceTreeCompleteRoot, comparer);
            newTree = new DeltaDataTree(deltaRoot, this);
        }
        newTree.immutable();
        return newTree;
    }

    public int getChildCount(IPath parentKey) {
        return this.getChildNodes(parentKey).length;
    }

    protected AbstractDataTreeNode[] getChildNodes(IPath parentKey) {
        AbstractDataTreeNode[] childNodes = null;
        int keyLength = parentKey.segmentCount();
        DeltaDataTree tree = this;
        while (tree != null) {
            AbstractDataTreeNode node = tree.rootNode;
            boolean complete = !node.isDelta();
            int i = 0;
            while (i < keyLength) {
                if ((node = node.childAtOrNull(parentKey.segment(i))) == null) break;
                if (!node.isDelta()) {
                    complete = true;
                }
                ++i;
            }
            if (node != null) {
                if (node.isDeleted()) break;
                childNodes = childNodes == null ? node.children : AbstractDataTreeNode.assembleWith(node.children, childNodes, !complete);
            }
            if (complete) {
                if (childNodes == null) break;
                return childNodes;
            }
            tree = tree.parent;
        }
        if (childNodes != null) {
            Assert.isTrue((boolean)false, (String)Messages.dtree_malformedTree);
        }
        DeltaDataTree.handleNotFound(parentKey);
        return null;
    }

    public IPath[] getChildren(IPath parentKey) {
        AbstractDataTreeNode[] childNodes = this.getChildNodes(parentKey);
        int len = childNodes.length;
        if (len == 0) {
            return NO_CHILDREN;
        }
        IPath[] answer = new IPath[len];
        int i = 0;
        while (i < len) {
            answer[i] = parentKey.append(childNodes[i].name);
            ++i;
        }
        return answer;
    }

    public Object getData(IPath key) {
        int keyLength = key.segmentCount();
        DeltaDataTree tree = this;
        while (tree != null) {
            AbstractDataTreeNode node = tree.rootNode;
            boolean complete = !node.isDelta();
            int i = 0;
            while (i < keyLength) {
                if ((node = node.childAtOrNull(key.segment(i))) == null) break;
                if (!node.isDelta()) {
                    complete = true;
                }
                ++i;
            }
            if (node != null) {
                if (node.hasData()) {
                    return node.getData();
                }
                if (node.isDeleted()) break;
            }
            if (complete) break;
            tree = tree.parent;
        }
        DeltaDataTree.handleNotFound(key);
        return null;
    }

    public String getNameOfChild(IPath parentKey, int index) {
        AbstractDataTreeNode[] childNodes = this.getChildNodes(parentKey);
        return childNodes[index].name;
    }

    public String[] getNamesOfChildren(IPath parentKey) {
        AbstractDataTreeNode[] childNodes = this.getChildNodes(parentKey);
        int len = childNodes.length;
        String[] namesOfChildren = new String[len];
        int i = 0;
        while (i < len) {
            namesOfChildren[i] = childNodes[i].name;
            ++i;
        }
        return namesOfChildren;
    }

    public DeltaDataTree getParent() {
        return this.parent;
    }

    protected AbstractDataTreeNode getRootNode() {
        return this.rootNode;
    }

    protected boolean hasAncestor(DeltaDataTree ancestor) {
        DeltaDataTree myParent = this;
        while ((myParent = myParent.getParent()) != null) {
            if (myParent != ancestor) continue;
            return true;
        }
        return false;
    }

    public boolean includes(IPath key) {
        return this.searchNodeAt(key) != null;
    }

    public boolean isEmptyDelta() {
        return this.rootNode.getChildren().length == 0;
    }

    public DataTreeLookup lookup(IPath key) {
        int keyLength = key.segmentCount();
        DeltaDataTree tree = this;
        while (tree != null) {
            AbstractDataTreeNode node = tree.rootNode;
            boolean complete = !node.isDelta();
            int i = 0;
            while (i < keyLength) {
                if ((node = node.childAtOrNull(key.segment(i))) == null) break;
                complete |= !node.isDelta();
                ++i;
            }
            if (node != null) {
                if (node.hasData()) {
                    return DataTreeLookup.newLookup(key, true, node.getData(), tree == this);
                }
                if (node.isDeleted()) break;
            }
            if (complete) break;
            tree = tree.parent;
        }
        return DataTreeLookup.newLookup(key, false, null);
    }

    public DataTreeLookup lookupIgnoreCase(IPath key) {
        int keyLength = key.segmentCount();
        DeltaDataTree tree = this;
        while (tree != null) {
            AbstractDataTreeNode node = tree.rootNode;
            boolean complete = !node.isDelta();
            int i = 0;
            while (i < keyLength) {
                if ((node = node.childAtIgnoreCase(key.segment(i))) == null) break;
                complete |= !node.isDelta();
                ++i;
            }
            if (node != null) {
                if (node.hasData()) {
                    return DataTreeLookup.newLookup(key, true, node.getData(), tree == this);
                }
                if (node.isDeleted()) break;
            }
            if (complete) break;
            tree = tree.parent;
        }
        return DataTreeLookup.newLookup(key, false, null);
    }

    public void makeComplete() {
        AbstractDataTreeNode assembled = this.getRootNode();
        DeltaDataTree myParent = this.getParent();
        while (myParent != null) {
            assembled = myParent.getRootNode().assembleWith(assembled);
            myParent = myParent.getParent();
        }
        this.setRootNode(assembled);
        this.setParent(null);
    }

    protected AbstractDataTreeNode naiveCopyCompleteSubtree(IPath key) {
        AbstractDataTreeNode[] childNodes;
        String[] childNames = this.getNamesOfChildren(key);
        int numChildren = childNames.length;
        if (numChildren == 0) {
            childNodes = AbstractDataTreeNode.NO_CHILDREN;
        } else {
            childNodes = new AbstractDataTreeNode[numChildren];
            int i = numChildren;
            while (--i >= 0) {
                childNodes[i] = this.copyCompleteSubtree(key.append(childNames[i]));
            }
        }
        return new DataTreeNode(key.lastSegment(), this.getData(key), childNodes);
    }

    public DeltaDataTree newEmptyDeltaTree() {
        if (!this.isImmutable()) {
            throw new IllegalArgumentException(Messages.dtree_notImmutable);
        }
        DeltaDataTree newTree = (DeltaDataTree)this.copy();
        newTree.setParent(this);
        newTree.emptyDelta();
        return newTree;
    }

    public DeltaDataTree reroot() {
        this.reroot(this);
        return this;
    }

    protected void reroot(DeltaDataTree sourceTree) {
        DeltaDataTree sourceParent;
        if (!sourceTree.isImmutable()) {
            DeltaDataTree.handleImmutableTree();
        }
        if ((sourceParent = sourceTree.getParent()) == null) {
            return;
        }
        this.reroot(sourceParent);
        DeltaDataTree backwardDelta = sourceTree.asBackwardDelta();
        DeltaDataTree complete = sourceParent.assembleWithForwardDelta(sourceTree);
        sourceTree.setRootNode(complete.getRootNode());
        sourceTree.setParent(null);
        sourceParent.setRootNode(backwardDelta.getRootNode());
        sourceParent.setParent(sourceTree);
    }

    public AbstractDataTreeNode safeCopyCompleteSubtree(IPath key) {
        AbstractDataTreeNode node = this.searchNodeAt(key);
        if (node == null) {
            return null;
        }
        if (node.isDelta()) {
            return this.safeNaiveCopyCompleteSubtree(key);
        }
        return node.copy();
    }

    protected AbstractDataTreeNode safeNaiveCopyCompleteSubtree(IPath key) {
        try {
            AbstractDataTreeNode[] childNodes;
            String[] childNames = this.getNamesOfChildren(key);
            int numChildren = childNames.length;
            if (numChildren == 0) {
                childNodes = AbstractDataTreeNode.NO_CHILDREN;
            } else {
                childNodes = new AbstractDataTreeNode[numChildren];
                int actualChildCount = 0;
                int i = numChildren;
                while (--i >= 0) {
                    childNodes[i] = this.safeCopyCompleteSubtree(key.append(childNames[i]));
                    if (childNodes[i] == null) continue;
                    ++actualChildCount;
                }
                if (actualChildCount < numChildren) {
                    AbstractDataTreeNode[] actualChildNodes = new AbstractDataTreeNode[actualChildCount];
                    int iOld = 0;
                    int iNew = 0;
                    while (iOld < numChildren) {
                        if (childNodes[iOld] != null) {
                            actualChildNodes[iNew++] = childNodes[iOld];
                        }
                        ++iOld;
                    }
                    childNodes = actualChildNodes;
                }
            }
            return new DataTreeNode(key.lastSegment(), this.getData(key), childNodes);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            return null;
        }
    }

    protected AbstractDataTreeNode searchNodeAt(IPath key) {
        int keyLength = key.segmentCount();
        DeltaDataTree tree = this;
        while (tree != null) {
            AbstractDataTreeNode node = tree.rootNode;
            boolean complete = !node.isDelta();
            int i = 0;
            while (i < keyLength) {
                if ((node = node.childAtOrNull(key.segment(i))) == null) break;
                if (!node.isDelta()) {
                    complete = true;
                }
                ++i;
            }
            if (node != null) {
                if (node.isDeleted()) break;
                return node;
            }
            if (complete) break;
            tree = tree.parent;
        }
        return null;
    }

    public void setData(IPath key, Object data) {
        if (this.isImmutable()) {
            DeltaDataTree.handleImmutableTree();
        }
        if (!this.includes(key)) {
            DeltaDataTree.handleNotFound(key);
        }
        this.assembleNode(key, new DataDeltaNode(key.lastSegment(), data));
    }

    protected void setParent(DeltaDataTree aTree) {
        this.parent = aTree;
    }

    void setRootNode(AbstractDataTreeNode aNode) {
        this.rootNode = aNode;
    }

    protected void simplify(IComparator comparer) {
        if (this.parent == null) {
            return;
        }
        this.setRootNode(this.rootNode.simplifyWithParent(this.rootKey(), this.parent, comparer));
    }

    public void storeStrings(StringPool set) {
        AbstractDataTreeNode root = null;
        DeltaDataTree dad = this;
        while (dad != null) {
            root = dad.getRootNode();
            if (root != null) {
                root.storeStrings(set);
            }
            dad = dad.getParent();
        }
    }
}

