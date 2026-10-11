/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.dtree;

import java.io.DataOutput;
import java.io.IOException;
import org.eclipse.core.internal.dtree.AbstractDataTree;
import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.IDataFlattener;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class DataTreeWriter {
    protected IDataFlattener flatener;
    protected DataOutput output;
    public static final int D_INFINITE = -1;

    public DataTreeWriter(IDataFlattener f) {
        this.flatener = f;
    }

    protected void writeNode(AbstractDataTreeNode node, IPath path, int depth) throws IOException {
        int type = node.type();
        String name = node.getName();
        if (name == null) {
            name = "";
        }
        this.output.writeUTF(name);
        this.writeNumber(type);
        if (node.hasData()) {
            Object data = node.getData();
            if (data == null) {
                this.writeNumber(0);
            } else {
                this.writeNumber(1);
                this.flatener.writeData(path, node.getData(), this.output);
            }
        }
        if (depth > 0 || depth == -1) {
            AbstractDataTreeNode[] children = node.getChildren();
            this.writeNumber(children.length);
            int newDepth = depth == -1 ? -1 : depth - 1;
            int i = 0;
            int imax = children.length;
            while (i < imax) {
                this.writeNode(children[i], path.append(children[i].getName()), newDepth);
                ++i;
            }
        } else {
            this.writeNumber(0);
        }
    }

    protected void writeNumber(int number) throws IOException {
        if (number >= 0 && number < 255) {
            this.output.writeByte(number);
        } else {
            this.output.writeByte(255);
            this.output.writeInt(number);
        }
    }

    protected void writeSingleNode(AbstractDataTreeNode node, IPath path) throws IOException {
        String name = node.getName();
        if (name == null) {
            name = "";
        }
        this.output.writeUTF(name);
        this.writeNumber(node.type());
        if (node.hasData()) {
            Object data = node.getData();
            if (data == null) {
                this.writeNumber(0);
            } else {
                this.writeNumber(1);
                this.flatener.writeData(path, node.getData(), this.output);
            }
        }
    }

    public void writeTree(AbstractDataTree tree, IPath path, int depth, DataOutput output) throws IOException {
        this.output = output;
        AbstractDataTreeNode node = tree.getRootNode();
        Path currentPath = Path.ROOT;
        String[] segments = path.segments();
        int i = 0;
        while (i < segments.length) {
            String nextSegment = segments[i];
            this.writeSingleNode(node, (IPath)currentPath);
            currentPath = currentPath.append(nextSegment);
            node = node.childAtOrNull(nextSegment);
            if (node == null) {
                this.writeNumber(0);
                return;
            }
            this.writeNumber(1);
            ++i;
        }
        Assert.isTrue((boolean)currentPath.equals((Object)path), (String)"dtree.navigationError");
        this.writeNode(node, path, depth);
    }
}

