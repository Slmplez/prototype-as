/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.watson;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import org.eclipse.core.internal.dtree.DataTreeWriter;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IDataFlattener;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.IElementComparator;
import org.eclipse.core.internal.watson.IElementInfoFlattener;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class ElementTreeWriter {
    public static final int CURRENT_FORMAT = 1;
    public static final int D_INFINITE = -1;
    protected DataTreeWriter dataTreeWriter;

    public ElementTreeWriter(final IElementInfoFlattener flattener) {
        IDataFlattener f = new IDataFlattener(){

            public void writeData(IPath path, Object data, DataOutput output) throws IOException {
                if (!Path.ROOT.equals((Object)path)) {
                    flattener.writeElement(path, data, output);
                }
            }

            public Object readData(IPath path, DataInput input) {
                return null;
            }
        };
        this.dataTreeWriter = new DataTreeWriter(f);
    }

    protected ElementTree[] sortTrees(ElementTree[] trees, DataOutput output) throws IOException {
        int numTrees = trees.length;
        ElementTree[] sorted = new ElementTree[numTrees];
        int[] order = new int[numTrees];
        HashMap<ElementTree, ArrayList<Integer>> table = new HashMap<ElementTree, ArrayList<Integer>>(numTrees * 2 + 1);
        int i = 0;
        while (i < trees.length) {
            ArrayList<Integer> indices = (ArrayList<Integer>)table.get(trees[i]);
            if (indices == null) {
                indices = new ArrayList<Integer>();
                table.put(trees[i], indices);
            }
            indices.add(new Integer(i));
            ++i;
        }
        ElementTree oldest = trees[ElementTree.findOldest(trees)];
        int i2 = numTrees - 1;
        while (i2 >= 0) {
            List indices = (List)table.remove(oldest);
            Enumeration e = Collections.enumeration(indices);
            while (e.hasMoreElements()) {
                Integer next = (Integer)e.nextElement();
                sorted[i2] = oldest;
                order[i2] = next;
                --i2;
            }
            if (i2 < 0) continue;
            ElementTree parent = oldest.getParent();
            while (table.get(parent) == null) {
                parent = parent.getParent();
            }
            oldest = parent;
        }
        i2 = 0;
        while (i2 < numTrees) {
            this.writeNumber(order[i2], output);
            ++i2;
        }
        return sorted;
    }

    public void writeDelta(ElementTree olderTree, ElementTree newerTree, IPath path, int depth, DataOutput output, IElementComparator comparator) throws IOException {
        this.writeNumber(1, output);
        DeltaDataTree completeTree = newerTree.getDataTree();
        DeltaDataTree derivedTree = olderTree.getDataTree();
        DeltaDataTree deltaToWrite = null;
        deltaToWrite = completeTree.forwardDeltaWith(derivedTree, comparator);
        Assert.isTrue((boolean)deltaToWrite.isImmutable());
        this.dataTreeWriter.writeTree(deltaToWrite, path, depth, output);
    }

    public void writeDeltaChain(ElementTree[] trees, IPath path, int depth, DataOutput output, IElementComparator comparator) throws IOException {
        this.writeNumber(1, output);
        int treeCount = trees.length;
        this.writeNumber(treeCount, output);
        if (treeCount <= 0) {
            return;
        }
        ElementTree[] sortedTrees = this.sortTrees(trees, output);
        this.writeTree(sortedTrees[0], path, depth, output);
        int i = 1;
        while (i < treeCount) {
            this.writeDelta(sortedTrees[i], sortedTrees[i - 1], path, depth, output, comparator);
            ++i;
        }
    }

    protected void writeNumber(int number, DataOutput output) throws IOException {
        if (number >= 0 && number < 255) {
            output.writeByte(number);
        } else {
            output.writeByte(255);
            output.writeInt(number);
        }
    }

    public void writeTree(ElementTree tree, IPath path, int depth, DataOutput output) throws IOException {
        this.writeNumber(1, output);
        DeltaDataTree subtree = new DeltaDataTree(tree.getDataTree().copyCompleteSubtree((IPath)Path.ROOT));
        this.dataTreeWriter.writeTree(subtree, path, depth, output);
    }
}

