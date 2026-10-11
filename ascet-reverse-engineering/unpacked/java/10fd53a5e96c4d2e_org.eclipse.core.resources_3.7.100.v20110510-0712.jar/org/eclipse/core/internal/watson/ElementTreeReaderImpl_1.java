/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.watson;

import java.io.DataInput;
import java.io.IOException;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeReader;
import org.eclipse.core.internal.watson.IElementInfoFlattener;
import org.eclipse.core.internal.watson.IElementTreeData;

class ElementTreeReaderImpl_1
extends ElementTreeReader {
    ElementTreeReaderImpl_1(IElementInfoFlattener factory) {
        super(factory);
    }

    public ElementTree readDelta(ElementTree parentTree, DataInput input) throws IOException {
        DeltaDataTree complete = parentTree.getDataTree();
        DeltaDataTree delta = this.dataTreeReader.readTree(complete, input, "");
        if (delta.isEmptyDelta()) {
            return parentTree;
        }
        ElementTree tree = new ElementTree(delta);
        IElementTreeData data = parentTree.getTreeData();
        if (data != null) {
            tree.setTreeData((IElementTreeData)data.clone());
        }
        delta.immutable();
        return tree;
    }

    public ElementTree[] readDeltaChain(DataInput input, String newProjectName) throws IOException {
        int treeCount = ElementTreeReaderImpl_1.readNumber(input);
        ElementTree[] results = new ElementTree[treeCount];
        if (treeCount <= 0) {
            return results;
        }
        int[] order = new int[treeCount];
        int i = 0;
        while (i < treeCount) {
            order[i] = ElementTreeReaderImpl_1.readNumber(input);
            ++i;
        }
        results[order[0]] = super.readTree(input, newProjectName);
        i = 1;
        while (i < treeCount) {
            results[order[i]] = super.readDelta(results[order[i - 1]], input);
            ++i;
        }
        return results;
    }

    public ElementTree readTree(DataInput input, String newProjectName) throws IOException {
        ElementTree result = new ElementTree(this.dataTreeReader.readTree(null, input, newProjectName));
        return result;
    }
}

