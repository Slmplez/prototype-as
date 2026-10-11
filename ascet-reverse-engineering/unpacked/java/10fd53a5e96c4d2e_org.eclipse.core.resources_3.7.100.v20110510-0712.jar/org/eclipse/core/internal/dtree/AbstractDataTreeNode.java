/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.DataDeltaNode;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IComparator;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.util.NLS;

public abstract class AbstractDataTreeNode {
    static final AbstractDataTreeNode[] NO_CHILDREN = new AbstractDataTreeNode[0];
    protected AbstractDataTreeNode[] children;
    protected String name;
    public static final int T_COMPLETE_NODE = 0;
    public static final int T_DELTA_NODE = 1;
    public static final int T_DELETED_NODE = 2;
    public static final int T_NO_DATA_DELTA_NODE = 3;

    AbstractDataTreeNode(String name, AbstractDataTreeNode[] children) {
        this.name = name;
        this.children = children == null || children.length == 0 ? NO_CHILDREN : children;
    }

    abstract AbstractDataTreeNode asBackwardDelta(DeltaDataTree var1, DeltaDataTree var2, IPath var3);

    AbstractDataTreeNode asReverseComparisonNode(IComparator comparator) {
        return this;
    }

    static AbstractDataTreeNode[] assembleWith(AbstractDataTreeNode[] oldNodes, AbstractDataTreeNode[] newNodes, boolean keepDeleted) {
        if (newNodes.length == 0) {
            return oldNodes;
        }
        AbstractDataTreeNode[] resultNodes = new AbstractDataTreeNode[oldNodes.length + newNodes.length];
        int oldIndex = 0;
        int newIndex = 0;
        int resultIndex = 0;
        while (oldIndex < oldNodes.length && newIndex < newNodes.length) {
            AbstractDataTreeNode node;
            int compare = oldNodes[oldIndex].name.compareTo(newNodes[newIndex].name);
            if (compare == 0) {
                if ((node = oldNodes[oldIndex++].assembleWith(newNodes[newIndex++])) == null || node.isDeleted() && !keepDeleted) continue;
                resultNodes[resultIndex++] = node;
                continue;
            }
            if (compare < 0) {
                resultNodes[resultIndex++] = oldNodes[oldIndex++];
                continue;
            }
            if (compare <= 0 || (node = newNodes[newIndex++]).isDeleted() && !keepDeleted) continue;
            resultNodes[resultIndex++] = node;
        }
        while (oldIndex < oldNodes.length) {
            resultNodes[resultIndex++] = oldNodes[oldIndex++];
        }
        while (newIndex < newNodes.length) {
            AbstractDataTreeNode resultNode;
            if ((resultNode = newNodes[newIndex++]).isDeleted() && !keepDeleted) continue;
            resultNodes[resultIndex++] = resultNode;
        }
        if (resultIndex < resultNodes.length) {
            AbstractDataTreeNode[] abstractDataTreeNodeArray = resultNodes;
            resultNodes = new AbstractDataTreeNode[resultIndex];
            System.arraycopy(abstractDataTreeNodeArray, 0, resultNodes, 0, resultIndex);
        }
        return resultNodes;
    }

    AbstractDataTreeNode assembleWith(AbstractDataTreeNode node) {
        if (!node.isDelta() || this.isDeleted()) {
            return node;
        }
        if (node.hasData()) {
            if (this.isDelta()) {
                AbstractDataTreeNode[] assembledChildren = AbstractDataTreeNode.assembleWith(this.children, node.children, true);
                return new DataDeltaNode(this.name, node.getData(), assembledChildren);
            }
            AbstractDataTreeNode[] assembledChildren = AbstractDataTreeNode.assembleWith(this.children, node.children, false);
            return new DataTreeNode(this.name, node.getData(), assembledChildren);
        }
        if (this.isDelta()) {
            AbstractDataTreeNode[] assembledChildren = AbstractDataTreeNode.assembleWith(this.children, node.children, true);
            if (this.hasData()) {
                return new DataDeltaNode(this.name, this.getData(), assembledChildren);
            }
            return new NoDataDeltaNode(this.name, assembledChildren);
        }
        AbstractDataTreeNode[] assembledChildren = AbstractDataTreeNode.assembleWith(this.children, node.children, false);
        return new DataTreeNode(this.name, this.getData(), assembledChildren);
    }

    AbstractDataTreeNode assembleWith(AbstractDataTreeNode node, IPath key, int keyIndex) {
        int keyLen = key.segmentCount();
        if (keyIndex == keyLen) {
            return this.assembleWith(node);
        }
        int childIndex = this.indexOfChild(key.segment(keyIndex));
        if (childIndex >= 0) {
            AbstractDataTreeNode copy = this.copy();
            copy.children[childIndex] = this.children[childIndex].assembleWith(node, key, keyIndex + 1);
            return copy;
        }
        int i = keyLen - 2;
        while (i >= keyIndex) {
            node = new NoDataDeltaNode(key.segment(i), node);
            --i;
        }
        node = new NoDataDeltaNode(this.name, node);
        return this.assembleWith(node);
    }

    AbstractDataTreeNode childAt(String localName) {
        AbstractDataTreeNode node = this.childAtOrNull(localName);
        if (node != null) {
            return node;
        }
        throw new ObjectNotFoundException(NLS.bind((String)Messages.dtree_missingChild, (Object)localName));
    }

    AbstractDataTreeNode childAtOrNull(String localName) {
        int index = this.indexOfChild(localName);
        return index >= 0 ? this.children[index] : null;
    }

    AbstractDataTreeNode childAtIgnoreCase(String localName) {
        AbstractDataTreeNode result = null;
        int i = 0;
        while (i < this.children.length) {
            if (this.children[i].getName().equalsIgnoreCase(localName)) {
                if (this.children[i].isDeleted()) {
                    result = this.children[i];
                } else {
                    return this.children[i];
                }
            }
            ++i;
        }
        return result;
    }

    protected static AbstractDataTreeNode[] compareWith(AbstractDataTreeNode[] oldNodes, AbstractDataTreeNode[] newNodes, IComparator comparator) {
        DataTreeNode oldNode;
        int oldLen = oldNodes.length;
        int newLen = newNodes.length;
        int oldIndex = 0;
        int newIndex = 0;
        AbstractDataTreeNode[] comparedNodes = new AbstractDataTreeNode[oldLen + newLen];
        int count = 0;
        while (oldIndex < oldLen && newIndex < newLen) {
            oldNode = (DataTreeNode)oldNodes[oldIndex];
            DataTreeNode newNode = (DataTreeNode)newNodes[newIndex];
            int compare = oldNode.name.compareTo(newNode.name);
            if (compare < 0) {
                int userComparison = comparator.compare(oldNode.getData(), null);
                if (userComparison != 0) {
                    comparedNodes[count++] = AbstractDataTreeNode.convertToRemovedComparisonNode(oldNode, userComparison);
                }
                ++oldIndex;
                continue;
            }
            if (compare > 0) {
                int userComparison = comparator.compare(null, newNode.getData());
                if (userComparison != 0) {
                    comparedNodes[count++] = AbstractDataTreeNode.convertToAddedComparisonNode(newNode, userComparison);
                }
                ++newIndex;
                continue;
            }
            AbstractDataTreeNode comparedNode = oldNode.compareWith(newNode, comparator);
            NodeComparison comparison = (NodeComparison)comparedNode.getData();
            if (!comparison.isUnchanged() || comparedNode.size() != 0) {
                comparedNodes[count++] = comparedNode;
            }
            ++oldIndex;
            ++newIndex;
        }
        while (oldIndex < oldLen) {
            int userComparison;
            if ((userComparison = comparator.compare((oldNode = (DataTreeNode)oldNodes[oldIndex++]).getData(), null)) == 0) continue;
            comparedNodes[count++] = AbstractDataTreeNode.convertToRemovedComparisonNode(oldNode, userComparison);
        }
        while (newIndex < newLen) {
            DataTreeNode newNode;
            int userComparison;
            if ((userComparison = comparator.compare(null, (newNode = (DataTreeNode)newNodes[newIndex++]).getData())) == 0) continue;
            comparedNodes[count++] = AbstractDataTreeNode.convertToAddedComparisonNode(newNode, userComparison);
        }
        if (count == 0) {
            return NO_CHILDREN;
        }
        if (count < comparedNodes.length) {
            AbstractDataTreeNode[] abstractDataTreeNodeArray = comparedNodes;
            comparedNodes = new AbstractDataTreeNode[count];
            System.arraycopy(abstractDataTreeNodeArray, 0, comparedNodes, 0, count);
        }
        return comparedNodes;
    }

    protected static AbstractDataTreeNode[] compareWithParent(AbstractDataTreeNode[] nodes, IPath key, DeltaDataTree parent, IComparator comparator) {
        AbstractDataTreeNode[] comparedNodes = new AbstractDataTreeNode[nodes.length];
        int count = 0;
        int i = 0;
        while (i < nodes.length) {
            AbstractDataTreeNode node = nodes[i];
            AbstractDataTreeNode comparedNode = node.compareWithParent(key.append(node.getName()), parent, comparator);
            NodeComparison comparison = (NodeComparison)comparedNode.getData();
            if (!comparison.isUnchanged() || comparedNode.size() != 0) {
                comparedNodes[count++] = comparedNode;
            }
            ++i;
        }
        if (count == 0) {
            return NO_CHILDREN;
        }
        if (count < comparedNodes.length) {
            AbstractDataTreeNode[] abstractDataTreeNodeArray = comparedNodes;
            comparedNodes = new AbstractDataTreeNode[count];
            System.arraycopy(abstractDataTreeNodeArray, 0, comparedNodes, 0, count);
        }
        return comparedNodes;
    }

    abstract AbstractDataTreeNode compareWithParent(IPath var1, DeltaDataTree var2, IComparator var3);

    static AbstractDataTreeNode convertToAddedComparisonNode(AbstractDataTreeNode newNode, int userComparison) {
        AbstractDataTreeNode[] convertedChildren;
        AbstractDataTreeNode[] children = newNode.getChildren();
        int n = children.length;
        if (n == 0) {
            convertedChildren = NO_CHILDREN;
        } else {
            convertedChildren = new AbstractDataTreeNode[n];
            int i = 0;
            while (i < n) {
                convertedChildren[i] = AbstractDataTreeNode.convertToAddedComparisonNode(children[i], userComparison);
                ++i;
            }
        }
        return new DataTreeNode(newNode.name, new NodeComparison(null, newNode.getData(), 1, userComparison), convertedChildren);
    }

    static AbstractDataTreeNode convertToRemovedComparisonNode(AbstractDataTreeNode oldNode, int userComparison) {
        AbstractDataTreeNode[] convertedChildren;
        AbstractDataTreeNode[] children = oldNode.getChildren();
        int n = children.length;
        if (n == 0) {
            convertedChildren = NO_CHILDREN;
        } else {
            convertedChildren = new AbstractDataTreeNode[n];
            int i = 0;
            while (i < n) {
                convertedChildren[i] = AbstractDataTreeNode.convertToRemovedComparisonNode(children[i], userComparison);
                ++i;
            }
        }
        return new DataTreeNode(oldNode.name, new NodeComparison(oldNode.getData(), null, 2, userComparison), convertedChildren);
    }

    abstract AbstractDataTreeNode copy();

    protected void copyChildren(int from, int to, AbstractDataTreeNode otherNode, int start) {
        int other = start;
        int i = from;
        while (i <= to) {
            this.children[i] = otherNode.children[other];
            ++i;
            ++other;
        }
    }

    public AbstractDataTreeNode[] getChildren() {
        return this.children;
    }

    Object getData() {
        throw new AbstractMethodError(Messages.dtree_subclassImplement);
    }

    public String getName() {
        return this.name;
    }

    boolean hasData() {
        return false;
    }

    boolean includesChild(String localName) {
        return this.indexOfChild(localName) != -1;
    }

    protected int indexOfChild(String localName) {
        AbstractDataTreeNode[] nodes = this.children;
        int left = 0;
        int right = nodes.length - 1;
        while (left <= right) {
            int mid = (left + right) / 2;
            int compare = localName.compareTo(nodes[mid].name);
            if (compare < 0) {
                right = mid - 1;
                continue;
            }
            if (compare > 0) {
                left = mid + 1;
                continue;
            }
            return mid;
        }
        return -1;
    }

    boolean isDeleted() {
        return false;
    }

    boolean isDelta() {
        return false;
    }

    boolean isEmptyDelta() {
        return false;
    }

    String[] namesOfChildren() {
        String[] names = new String[this.children.length];
        int i = this.children.length;
        while (--i >= 0) {
            names[i] = this.children[i].getName();
        }
        return names;
    }

    void replaceChild(String localName, DataTreeNode node) {
        int i = this.indexOfChild(localName);
        if (i < 0) {
            throw new ObjectNotFoundException(NLS.bind((String)Messages.dtree_missingChild, (Object)localName));
        }
        this.children[i] = node;
    }

    protected void setChildren(AbstractDataTreeNode[] newChildren) {
        this.children = newChildren;
    }

    void setName(String s) {
        this.name = s;
    }

    protected static AbstractDataTreeNode[] simplifyWithParent(AbstractDataTreeNode[] nodes, IPath key, DeltaDataTree parent, IComparator comparer) {
        AbstractDataTreeNode[] simplifiedNodes = new AbstractDataTreeNode[nodes.length];
        int simplifiedCount = 0;
        int i = 0;
        while (i < nodes.length) {
            AbstractDataTreeNode node = nodes[i];
            AbstractDataTreeNode simplifiedNode = node.simplifyWithParent(key.append(node.getName()), parent, comparer);
            if (!simplifiedNode.isEmptyDelta()) {
                simplifiedNodes[simplifiedCount++] = simplifiedNode;
            }
            ++i;
        }
        if (simplifiedCount == 0) {
            return NO_CHILDREN;
        }
        if (simplifiedCount < simplifiedNodes.length) {
            AbstractDataTreeNode[] abstractDataTreeNodeArray = simplifiedNodes;
            simplifiedNodes = new AbstractDataTreeNode[simplifiedCount];
            System.arraycopy(abstractDataTreeNodeArray, 0, simplifiedNodes, 0, simplifiedCount);
        }
        return simplifiedNodes;
    }

    abstract AbstractDataTreeNode simplifyWithParent(IPath var1, DeltaDataTree var2, IComparator var3);

    int size() {
        return this.children.length;
    }

    public void storeStrings(StringPool set) {
        this.name = set.add(this.name);
        AbstractDataTreeNode[] nodes = this.children;
        if (nodes != null) {
            int i = nodes.length;
            while (--i >= 0) {
                nodes[i].storeStrings(set);
            }
        }
    }

    public String toString() {
        return "an AbstractDataTreeNode(" + this.getName() + ") with " + this.getChildren().length + " children.";
    }

    abstract int type();
}

