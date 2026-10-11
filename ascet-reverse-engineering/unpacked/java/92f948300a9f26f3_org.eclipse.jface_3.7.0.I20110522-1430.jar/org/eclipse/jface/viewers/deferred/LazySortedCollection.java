/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers.deferred;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.deferred.FastProgressReporter;
import org.eclipse.jface.viewers.deferred.IntHashMap;

public class LazySortedCollection {
    private final int MIN_CAPACITY = 8;
    private Object[] contents = new Object[8];
    private int[] leftSubTree = new int[8];
    private int[] rightSubTree = new int[8];
    private int[] nextUnsorted = new int[8];
    private int[] treeSize = new int[8];
    private int[] parentTree = new int[8];
    private int root = -1;
    private int lastNode = 0;
    private int firstUnusedNode = -1;
    private static final float loadFactor = 0.75f;
    private IntHashMap objectIndices;
    private Comparator comparator;
    private static int counter = 0;
    public boolean enableDebug = false;
    private Object lazyRemovalFlag = new Object(){

        public String toString() {
            return "Lazy removal flag";
        }
    };
    private static final int DIR_LEFT = 0;
    private static final int DIR_RIGHT = 1;
    private static final int DIR_UNSORTED = 2;
    private static final int DIR_ROOT = 3;
    private static final int DIR_UNUSED = 4;

    private void setRootNode(int node) {
        this.root = node;
        if (node != -1) {
            this.parentTree[node] = -1;
        }
    }

    public LazySortedCollection(Comparator c) {
        this.comparator = c;
    }

    public void testInvariants() {
        if (!this.enableDebug) {
            return;
        }
        this.testInvariants(this.root);
    }

    private void testInvariants(int node) {
        if (node == -1) {
            return;
        }
        int treeSize = this.getSubtreeSize(node);
        int left = this.leftSubTree[node];
        int right = this.rightSubTree[node];
        int unsorted = this.nextUnsorted[node];
        if (this.isUnsorted(node)) {
            Assert.isTrue((left == -1 ? 1 : 0) != 0, (String)"unsorted nodes shouldn't have a left subtree");
            Assert.isTrue((right == -1 ? 1 : 0) != 0, (String)"unsorted nodes shouldn't have a right subtree");
        }
        if (left != -1) {
            this.testInvariants(left);
            Assert.isTrue((this.parentTree[left] == node ? 1 : 0) != 0, (String)"left node has invalid parent pointer");
        }
        if (right != -1) {
            this.testInvariants(right);
            Assert.isTrue((this.parentTree[right] == node ? 1 : 0) != 0, (String)"right node has invalid parent pointer");
        }
        int previous = node;
        while (unsorted != -1) {
            int oldTreeSize = this.treeSize[unsorted];
            this.recomputeTreeSize(unsorted);
            Assert.isTrue((this.treeSize[unsorted] == oldTreeSize ? 1 : 0) != 0, (String)"Invalid node size for unsorted node");
            Assert.isTrue((this.leftSubTree[unsorted] == -1 ? 1 : 0) != 0, (String)"unsorted nodes shouldn't have left subtrees");
            Assert.isTrue((this.rightSubTree[unsorted] == -1 ? 1 : 0) != 0, (String)"unsorted nodes shouldn't have right subtrees");
            Assert.isTrue((this.parentTree[unsorted] == previous ? 1 : 0) != 0, (String)"unsorted node has invalid parent pointer");
            Assert.isTrue((this.contents[unsorted] != this.lazyRemovalFlag ? 1 : 0) != 0, (String)"unsorted nodes should not be lazily removed");
            previous = unsorted;
            unsorted = this.nextUnsorted[unsorted];
        }
        this.recomputeTreeSize(node);
        Assert.isTrue((treeSize == this.getSubtreeSize(node) ? 1 : 0) != 0, (String)"invalid tree size");
    }

    private boolean isUnsorted(int node) {
        int parent = this.parentTree[node];
        if (parent != -1) {
            return this.nextUnsorted[parent] == node;
        }
        return false;
    }

    private final boolean isLess(int element1, int element2) {
        return this.comparator.compare(this.contents[element1], this.contents[element2]) < 0;
    }

    private final int addUnsorted(int subTree, int elementToAdd) {
        int oldNextUnsorted;
        if (elementToAdd == -1) {
            return subTree;
        }
        if (subTree == -1) {
            this.nextUnsorted[elementToAdd] = -1;
            this.treeSize[elementToAdd] = 1;
            return elementToAdd;
        }
        if (this.treeSize[subTree] == 0) {
            this.removeSubTree(subTree);
            this.nextUnsorted[elementToAdd] = -1;
            this.treeSize[elementToAdd] = 1;
            return elementToAdd;
        }
        if (!this.enableDebug && this.leftSubTree[subTree] == -1 && this.rightSubTree[subTree] == -1 && this.leftSubTree[elementToAdd] == -1 && this.rightSubTree[elementToAdd] == -1 && --counter % this.treeSize[subTree] == 0) {
            this.nextUnsorted[elementToAdd] = subTree;
            this.parentTree[elementToAdd] = this.parentTree[subTree];
            this.parentTree[subTree] = elementToAdd;
            this.treeSize[elementToAdd] = this.treeSize[subTree] + 1;
            return elementToAdd;
        }
        this.nextUnsorted[elementToAdd] = oldNextUnsorted = this.nextUnsorted[subTree];
        if (oldNextUnsorted == -1) {
            this.treeSize[elementToAdd] = 1;
        } else {
            this.treeSize[elementToAdd] = this.treeSize[oldNextUnsorted] + 1;
            this.parentTree[oldNextUnsorted] = elementToAdd;
        }
        this.parentTree[elementToAdd] = subTree;
        this.nextUnsorted[subTree] = elementToAdd;
        int n = subTree;
        this.treeSize[n] = this.treeSize[n] + 1;
        return subTree;
    }

    public int size() {
        int result = this.getSubtreeSize(this.root);
        this.testInvariants();
        return result;
    }

    private final int partition(int subTree, int toMove) {
        int result = this.nextUnsorted[toMove];
        if (this.isLess(toMove, subTree)) {
            int nextLeft;
            this.leftSubTree[subTree] = nextLeft = this.addUnsorted(this.leftSubTree[subTree], toMove);
            this.parentTree[nextLeft] = subTree;
        } else {
            int nextRight;
            this.rightSubTree[subTree] = nextRight = this.addUnsorted(this.rightSubTree[subTree], toMove);
            this.parentTree[nextRight] = subTree;
        }
        return result;
    }

    private final int partition(int subTree, FastProgressReporter mon) throws InterruptedException {
        if (subTree == -1) {
            return -1;
        }
        if (this.contents[subTree] == this.lazyRemovalFlag && (subTree = this.removeNode(subTree)) == -1) {
            return -1;
        }
        int idx = this.nextUnsorted[subTree];
        while (idx != -1) {
            this.nextUnsorted[subTree] = idx = this.partition(subTree, idx);
            if (idx != -1) {
                this.parentTree[idx] = subTree;
            }
            if (!mon.isCanceled()) continue;
            throw new InterruptedException();
        }
        this.nextUnsorted[subTree] = -1;
        return subTree;
    }

    private final int getSubtreeSize(int subTree) {
        if (subTree == -1) {
            return 0;
        }
        return this.treeSize[subTree];
    }

    public final void setCapacity(int newSize) {
        if (newSize > this.contents.length) {
            this.setArraySize(newSize);
        }
    }

    private final void setArraySize(int newCapacity) {
        Object[] newContents = new Object[newCapacity];
        System.arraycopy(this.contents, 0, newContents, 0, this.lastNode);
        this.contents = newContents;
        int[] newLeftSubTree = new int[newCapacity];
        System.arraycopy(this.leftSubTree, 0, newLeftSubTree, 0, this.lastNode);
        this.leftSubTree = newLeftSubTree;
        int[] newRightSubTree = new int[newCapacity];
        System.arraycopy(this.rightSubTree, 0, newRightSubTree, 0, this.lastNode);
        this.rightSubTree = newRightSubTree;
        int[] newNextUnsorted = new int[newCapacity];
        System.arraycopy(this.nextUnsorted, 0, newNextUnsorted, 0, this.lastNode);
        this.nextUnsorted = newNextUnsorted;
        int[] newTreeSize = new int[newCapacity];
        System.arraycopy(this.treeSize, 0, newTreeSize, 0, this.lastNode);
        this.treeSize = newTreeSize;
        int[] newParentTree = new int[newCapacity];
        System.arraycopy(this.parentTree, 0, newParentTree, 0, this.lastNode);
        this.parentTree = newParentTree;
    }

    private final int createNode(Object value) {
        int result = -1;
        if (this.firstUnusedNode == -1) {
            result = this.lastNode;
            if (this.contents.length <= this.lastNode) {
                this.setCapacity(this.lastNode * 2);
            }
            ++this.lastNode;
        } else {
            result = this.firstUnusedNode;
            this.firstUnusedNode = this.nextUnsorted[result];
        }
        this.contents[result] = value;
        this.treeSize[result] = 1;
        this.leftSubTree[result] = -1;
        this.rightSubTree[result] = -1;
        this.nextUnsorted[result] = -1;
        if (this.objectIndices != null) {
            this.objectIndices.put(value, result);
        }
        return result;
    }

    private int getObjectIndex(Object value) {
        if (this.objectIndices == null) {
            int result = -1;
            this.objectIndices = new IntHashMap((int)((float)this.contents.length / 0.75f) + 1, 0.75f);
            int i = 0;
            while (i < this.lastNode) {
                Object element = this.contents[i];
                if (element != null && element != this.lazyRemovalFlag) {
                    this.objectIndices.put(element, i);
                    if (value == element) {
                        result = i;
                    }
                }
                ++i;
            }
            return result;
        }
        return this.objectIndices.get(value, -1);
    }

    private void replaceNode(int nodeToReplace, int replacementNode) {
        int parent = this.parentTree[nodeToReplace];
        if (parent == -1) {
            if (this.root == nodeToReplace) {
                this.setRootNode(replacementNode);
            }
        } else {
            if (this.leftSubTree[parent] == nodeToReplace) {
                this.leftSubTree[parent] = replacementNode;
            } else if (this.rightSubTree[parent] == nodeToReplace) {
                this.rightSubTree[parent] = replacementNode;
            } else if (this.nextUnsorted[parent] == nodeToReplace) {
                this.nextUnsorted[parent] = replacementNode;
            }
            if (replacementNode != -1) {
                this.parentTree[replacementNode] = parent;
            }
        }
    }

    private void recomputeAncestorTreeSizes(int node) {
        while (node != -1) {
            int oldSize = this.treeSize[node];
            this.recomputeTreeSize(node);
            if (this.treeSize[node] == oldSize) break;
            node = this.parentTree[node];
        }
    }

    private void recomputeTreeSize(int node) {
        if (node == -1) {
            return;
        }
        this.treeSize[node] = this.getSubtreeSize(this.leftSubTree[node]) + this.getSubtreeSize(this.rightSubTree[node]) + this.getSubtreeSize(this.nextUnsorted[node]) + (this.contents[node] == this.lazyRemovalFlag ? 0 : 1);
    }

    private void forceRecomputeTreeSize(int toRecompute, int whereToStop) {
        while (toRecompute != -1 && toRecompute != whereToStop) {
            this.recomputeTreeSize(toRecompute);
            toRecompute = this.parentTree[toRecompute];
        }
    }

    private void destroyNode(int nodeToDestroy) {
        Object oldContents;
        if (this.objectIndices != null && (oldContents = this.contents[nodeToDestroy]) != this.lazyRemovalFlag) {
            this.objectIndices.remove(oldContents);
        }
        this.contents[nodeToDestroy] = null;
        this.leftSubTree[nodeToDestroy] = -1;
        this.rightSubTree[nodeToDestroy] = -1;
        if (this.firstUnusedNode == -1) {
            this.treeSize[nodeToDestroy] = 1;
        } else {
            this.treeSize[nodeToDestroy] = this.treeSize[this.firstUnusedNode] + 1;
            this.parentTree[this.firstUnusedNode] = nodeToDestroy;
        }
        this.nextUnsorted[nodeToDestroy] = this.firstUnusedNode;
        this.firstUnusedNode = nodeToDestroy;
    }

    private final void pack() {
        if (this.firstUnusedNode == -1) {
            return;
        }
        int reusableNodes = this.getSubtreeSize(this.firstUnusedNode);
        int nonPackableNodes = this.lastNode - reusableNodes;
        if (this.contents.length < 8 || nonPackableNodes > this.contents.length / 4) {
            return;
        }
        this.objectIndices = null;
        int[] mapNewIdxOntoOld = new int[this.contents.length];
        int[] mapOldIdxOntoNew = new int[this.contents.length];
        int nextNewIdx = 0;
        int oldIdx = 0;
        while (oldIdx < this.lastNode) {
            if (this.contents[oldIdx] != null) {
                mapOldIdxOntoNew[oldIdx] = nextNewIdx;
                mapNewIdxOntoOld[nextNewIdx] = oldIdx;
                ++nextNewIdx;
            } else {
                mapOldIdxOntoNew[oldIdx] = -1;
            }
            ++oldIdx;
        }
        int newNodes = nextNewIdx;
        int newCapacity = Math.max(newNodes * 2, 8);
        Object[] newContents = new Object[newCapacity];
        int[] newTreeSize = new int[newCapacity];
        int[] newNextUnsorted = new int[newCapacity];
        int[] newLeftSubTree = new int[newCapacity];
        int[] newRightSubTree = new int[newCapacity];
        int[] newParentTree = new int[newCapacity];
        int newIdx = 0;
        while (newIdx < newNodes) {
            int oldIdx2 = mapNewIdxOntoOld[newIdx];
            newContents[newIdx] = this.contents[oldIdx2];
            newTreeSize[newIdx] = this.treeSize[oldIdx2];
            int left = this.leftSubTree[oldIdx2];
            newLeftSubTree[newIdx] = left == -1 ? -1 : mapOldIdxOntoNew[left];
            int right = this.rightSubTree[oldIdx2];
            newRightSubTree[newIdx] = right == -1 ? -1 : mapOldIdxOntoNew[right];
            int unsorted = this.nextUnsorted[oldIdx2];
            newNextUnsorted[newIdx] = unsorted == -1 ? -1 : mapOldIdxOntoNew[unsorted];
            int parent = this.parentTree[oldIdx2];
            newParentTree[newIdx] = parent == -1 ? -1 : mapOldIdxOntoNew[parent];
            ++newIdx;
        }
        this.contents = newContents;
        this.nextUnsorted = newNextUnsorted;
        this.treeSize = newTreeSize;
        this.leftSubTree = newLeftSubTree;
        this.rightSubTree = newRightSubTree;
        this.parentTree = newParentTree;
        if (this.root != -1) {
            this.root = mapOldIdxOntoNew[this.root];
        }
        this.firstUnusedNode = -1;
        this.lastNode = newNodes;
    }

    public final void add(Object toAdd) {
        Assert.isNotNull((Object)toAdd);
        int newIdx = this.createNode(toAdd);
        this.setRootNode(this.addUnsorted(this.root, newIdx));
        this.testInvariants();
    }

    public final void addAll(Collection toAdd) {
        Assert.isNotNull((Object)toAdd);
        Iterator iter = toAdd.iterator();
        while (iter.hasNext()) {
            this.add(iter.next());
        }
        this.testInvariants();
    }

    public final void addAll(Object[] toAdd) {
        Assert.isNotNull((Object)toAdd);
        int i = 0;
        while (i < toAdd.length) {
            Object object = toAdd[i];
            this.add(object);
            ++i;
        }
        this.testInvariants();
    }

    public final boolean isEmpty() {
        boolean result = this.root == -1;
        this.testInvariants();
        return result;
    }

    public final void remove(Object toRemove) {
        this.internalRemove(toRemove);
        this.pack();
        this.testInvariants();
    }

    private void internalRemove(Object toRemove) {
        int objectIndex = this.getObjectIndex(toRemove);
        if (objectIndex != -1) {
            int parent = this.parentTree[objectIndex];
            this.lazyRemoveNode(objectIndex);
            this.recomputeAncestorTreeSizes(parent);
        }
    }

    public final void removeAll(Object[] toRemove) {
        Assert.isNotNull((Object)toRemove);
        int i = 0;
        while (i < toRemove.length) {
            Object object = toRemove[i];
            this.internalRemove(object);
            ++i;
        }
        this.pack();
    }

    final void retainFirst(int n, FastProgressReporter mon) throws InterruptedException {
        int sz = this.size();
        if (n >= sz) {
            return;
        }
        this.removeRange(n, sz - n, mon);
        this.testInvariants();
    }

    public final void retainFirst(int n) {
        try {
            this.retainFirst(n, new FastProgressReporter());
        }
        catch (InterruptedException interruptedException) {}
        this.testInvariants();
    }

    public final void removeRange(int first, int length) {
        try {
            this.removeRange(first, length, new FastProgressReporter());
        }
        catch (InterruptedException interruptedException) {}
        this.testInvariants();
    }

    final void removeRange(int first, int length, FastProgressReporter mon) throws InterruptedException {
        this.removeRange(this.root, first, length, mon);
        this.pack();
        this.testInvariants();
    }

    private final void removeRange(int node, int rangeStart, int rangeLength, FastProgressReporter mon) throws InterruptedException {
        if (rangeLength == 0) {
            return;
        }
        int size = this.getSubtreeSize(node);
        if (size <= rangeStart) {
            return;
        }
        if (rangeStart == 0 && rangeLength >= size) {
            this.removeSubTree(node);
            return;
        }
        try {
            node = this.partition(node, mon);
            int left = this.leftSubTree[node];
            int leftSize = this.getSubtreeSize(left);
            int toRemoveFromLeft = Math.min(leftSize - rangeStart, rangeLength);
            if (toRemoveFromLeft >= 0) {
                this.removeRange(this.leftSubTree[node], rangeStart, toRemoveFromLeft, mon);
                int toRemoveFromRight = rangeStart + rangeLength - leftSize - 1;
                if (toRemoveFromRight >= 0) {
                    this.removeRange(this.rightSubTree[node], 0, toRemoveFromRight, mon);
                    this.removeNode(node);
                    return;
                }
            } else {
                this.removeRange(this.rightSubTree[node], rangeStart - leftSize - 1, rangeLength, mon);
            }
        }
        finally {
            this.recomputeTreeSize(node);
        }
    }

    private final void removeSubTree(int subTree) {
        if (subTree == -1) {
            return;
        }
        int next = this.nextUnsorted[subTree];
        while (next != -1) {
            int current = next;
            next = this.nextUnsorted[next];
            this.destroyNode(current);
        }
        this.removeSubTree(this.leftSubTree[subTree]);
        this.removeSubTree(this.rightSubTree[subTree]);
        this.replaceNode(subTree, -1);
        this.destroyNode(subTree);
    }

    private final int lazyRemoveNode(int subTree) {
        int left = this.leftSubTree[subTree];
        int right = this.rightSubTree[subTree];
        if (left == -1 && right == -1) {
            int result = this.nextUnsorted[subTree];
            this.replaceNode(subTree, result);
            this.destroyNode(subTree);
            return result;
        }
        Object value = this.contents[subTree];
        this.contents[subTree] = this.lazyRemovalFlag;
        int n = subTree;
        this.treeSize[n] = this.treeSize[n] - 1;
        if (this.objectIndices != null) {
            this.objectIndices.remove(value);
        }
        return subTree;
    }

    private final int removeNode(int subTree) {
        int target;
        Edge unsorted;
        int rightSize;
        int left = this.leftSubTree[subTree];
        int right = this.rightSubTree[subTree];
        if (left == -1 || right == -1) {
            int result = -1;
            if (left == -1 && right == -1) {
                result = this.nextUnsorted[subTree];
            } else {
                result = left == -1 ? right : left;
                try {
                    result = this.partition(result, new FastProgressReporter());
                }
                catch (InterruptedException interruptedException) {}
                if (result == -1) {
                    result = this.nextUnsorted[subTree];
                } else {
                    int unsorted2;
                    this.nextUnsorted[result] = unsorted2 = this.nextUnsorted[subTree];
                    int additionalNodes = 0;
                    if (unsorted2 != -1) {
                        this.parentTree[unsorted2] = result;
                        additionalNodes = this.treeSize[unsorted2];
                    }
                    int n = result;
                    this.treeSize[n] = this.treeSize[n] + additionalNodes;
                }
            }
            this.replaceNode(subTree, result);
            this.destroyNode(subTree);
            return result;
        }
        Edge nextSmallest = new Edge(subTree, 0);
        while (!nextSmallest.isNull()) {
            nextSmallest.advance(1);
        }
        Edge nextLargest = new Edge(subTree, 1);
        while (!nextLargest.isNull()) {
            nextLargest.advance(0);
        }
        int replacementNode = -1;
        int leftSize = this.getSubtreeSize(left);
        if (leftSize > (rightSize = this.getSubtreeSize(right))) {
            replacementNode = nextSmallest.getStart();
            unsorted = new Edge(replacementNode, 2);
            while (!unsorted.isNull()) {
                target = unsorted.getTarget();
                if (!this.isLess(target, replacementNode)) {
                    unsorted.setTarget(this.nextUnsorted[target]);
                    nextLargest.setTarget(this.addUnsorted(nextLargest.getTarget(), target));
                    continue;
                }
                unsorted.advance(2);
            }
            this.forceRecomputeTreeSize(unsorted.getStart(), replacementNode);
            this.forceRecomputeTreeSize(nextLargest.getStart(), subTree);
        } else {
            replacementNode = nextLargest.getStart();
            unsorted = new Edge(replacementNode, 2);
            while (!unsorted.isNull()) {
                target = unsorted.getTarget();
                if (this.isLess(target, replacementNode)) {
                    unsorted.setTarget(this.nextUnsorted[target]);
                    nextSmallest.setTarget(this.addUnsorted(nextSmallest.getTarget(), target));
                    continue;
                }
                unsorted.advance(2);
            }
            this.forceRecomputeTreeSize(unsorted.getStart(), replacementNode);
            this.forceRecomputeTreeSize(nextSmallest.getStart(), subTree);
        }
        Object replacementContent = this.contents[replacementNode];
        this.contents[replacementNode] = this.contents[subTree];
        this.contents[subTree] = replacementContent;
        if (this.objectIndices != null) {
            this.objectIndices.put(replacementContent, subTree);
        }
        int replacementParent = this.parentTree[replacementNode];
        this.replaceNode(replacementNode, this.removeNode(replacementNode));
        this.forceRecomputeTreeSize(replacementParent, subTree);
        this.recomputeTreeSize(subTree);
        return subTree;
    }

    public final void clear() {
        this.lastNode = 0;
        this.setArraySize(8);
        this.root = -1;
        this.firstUnusedNode = -1;
        this.objectIndices = null;
        this.testInvariants();
    }

    public Comparator getComparator() {
        return this.comparator;
    }

    final int getFirst(Object[] result, boolean sorted, FastProgressReporter mon) throws InterruptedException {
        int returnValue = this.getRange(result, 0, sorted, mon);
        this.testInvariants();
        return returnValue;
    }

    public final int getFirst(Object[] result, boolean sorted) {
        int returnValue = 0;
        try {
            returnValue = this.getFirst(result, sorted, new FastProgressReporter());
        }
        catch (InterruptedException interruptedException) {}
        this.testInvariants();
        return returnValue;
    }

    final int getRange(Object[] result, int rangeStart, boolean sorted, FastProgressReporter mon) throws InterruptedException {
        return this.getRange(result, 0, rangeStart, this.root, sorted, mon);
    }

    public final int getRange(Object[] result, int rangeStart, boolean sorted) {
        int returnValue = 0;
        try {
            returnValue = this.getRange(result, rangeStart, sorted, new FastProgressReporter());
        }
        catch (InterruptedException interruptedException) {}
        this.testInvariants();
        return returnValue;
    }

    public final Object getItem(int index) {
        Object[] result = new Object[1];
        try {
            this.getRange(result, index, false, new FastProgressReporter());
        }
        catch (InterruptedException interruptedException) {}
        Object returnValue = result[0];
        this.testInvariants();
        return returnValue;
    }

    public final Object[] getItems(boolean sorted) {
        Object[] result = new Object[this.size()];
        this.getRange(result, 0, sorted);
        return result;
    }

    private final int getRange(Object[] result, int resultIdx, int rangeStart, int node, boolean sorted, FastProgressReporter mon) throws InterruptedException {
        if (node == -1) {
            return 0;
        }
        int availableSpace = result.length - resultIdx;
        if (rangeStart == 0 && this.treeSize[node] <= availableSpace) {
            return this.getChildren(result, resultIdx, node, sorted, mon);
        }
        if ((node = this.partition(node, mon)) == -1) {
            return 0;
        }
        int inserted = 0;
        int numberLessThanNode = this.getSubtreeSize(this.leftSubTree[node]);
        if (rangeStart < numberLessThanNode && inserted < availableSpace) {
            inserted += this.getRange(result, resultIdx, rangeStart, this.leftSubTree[node], sorted, mon);
        }
        if (rangeStart <= numberLessThanNode && inserted < availableSpace) {
            result[resultIdx + inserted] = this.contents[node];
            ++inserted;
        }
        if (inserted < availableSpace) {
            inserted += this.getRange(result, resultIdx + inserted, Math.max(rangeStart - numberLessThanNode - 1, 0), this.rightSubTree[node], sorted, mon);
        }
        return inserted;
    }

    private final int getChildren(Object[] result, int resultIdx, int node, boolean sorted, FastProgressReporter mon) throws InterruptedException {
        Object value;
        if (node == -1) {
            return 0;
        }
        int tempIdx = resultIdx;
        if (sorted && (node = this.partition(node, mon)) == -1) {
            return 0;
        }
        if (tempIdx < result.length) {
            tempIdx += this.getChildren(result, tempIdx, this.leftSubTree[node], sorted, mon);
        }
        if (tempIdx < result.length && (value = this.contents[node]) != this.lazyRemovalFlag) {
            result[tempIdx++] = value;
        }
        if (tempIdx < result.length) {
            tempIdx += this.getChildren(result, tempIdx, this.rightSubTree[node], sorted, mon);
        }
        int unsortedNode = this.nextUnsorted[node];
        while (unsortedNode != -1 && tempIdx < result.length) {
            result[tempIdx++] = this.contents[unsortedNode];
            unsortedNode = this.nextUnsorted[unsortedNode];
        }
        return tempIdx - resultIdx;
    }

    public boolean contains(Object item) {
        Assert.isNotNull((Object)item);
        boolean returnValue = this.getObjectIndex(item) != -1;
        this.testInvariants();
        return returnValue;
    }

    private final class Edge {
        private int startNode;
        private int direction;

        private Edge() {
            this.startNode = -1;
            this.direction = -1;
        }

        private Edge(int node, int dir) {
            this.startNode = node;
            this.direction = dir;
        }

        private int getStart() {
            return this.startNode;
        }

        private int getTarget() {
            if (this.startNode == -1) {
                if (this.direction == 2) {
                    return LazySortedCollection.this.firstUnusedNode;
                }
                if (this.direction == 3) {
                    return LazySortedCollection.this.root;
                }
                return -1;
            }
            if (this.direction == 0) {
                return LazySortedCollection.this.leftSubTree[this.startNode];
            }
            if (this.direction == 1) {
                return LazySortedCollection.this.rightSubTree[this.startNode];
            }
            return LazySortedCollection.this.nextUnsorted[this.startNode];
        }

        private boolean isNull() {
            return this.getTarget() == -1;
        }

        private void setTarget(int newNode) {
            if (this.direction == 0) {
                ((LazySortedCollection)LazySortedCollection.this).leftSubTree[this.startNode] = newNode;
            } else if (this.direction == 1) {
                ((LazySortedCollection)LazySortedCollection.this).rightSubTree[this.startNode] = newNode;
            } else if (this.direction == 2) {
                ((LazySortedCollection)LazySortedCollection.this).nextUnsorted[this.startNode] = newNode;
            } else if (this.direction == 3) {
                LazySortedCollection.this.root = newNode;
            } else if (this.direction == 4) {
                LazySortedCollection.this.firstUnusedNode = newNode;
            }
            if (newNode != -1) {
                ((LazySortedCollection)LazySortedCollection.this).parentTree[newNode] = this.startNode;
            }
        }

        private void advance(int direction) {
            this.startNode = this.getTarget();
            this.direction = direction;
        }
    }
}

