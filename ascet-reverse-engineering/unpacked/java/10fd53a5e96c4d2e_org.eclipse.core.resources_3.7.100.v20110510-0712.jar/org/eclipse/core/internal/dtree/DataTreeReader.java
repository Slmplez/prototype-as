/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.dtree;

import java.io.DataInput;
import java.io.IOException;
import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataDeltaNode;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeletedNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IDataFlattener;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class DataTreeReader {
    protected IDataFlattener flatener;
    protected DataInput input;

    public DataTreeReader(IDataFlattener f) {
        this.flatener = f;
    }

    protected boolean hasData(int nodeType) {
        switch (nodeType) {
            case 0: 
            case 1: {
                return true;
            }
        }
        return false;
    }

    protected AbstractDataTreeNode readNode(IPath parentPath, String newProjectName) throws IOException {
        AbstractDataTreeNode[] children;
        int childCount;
        int dataFlag;
        Path path;
        String name = this.input.readUTF();
        int nodeType = this.readNumber();
        if (parentPath != null) {
            if (parentPath.equals((Object)Path.ROOT) && newProjectName.length() > 0 && name.length() > 0) {
                name = newProjectName;
            }
            path = parentPath.append(name);
        } else {
            path = Path.ROOT;
        }
        Object data = null;
        if (this.hasData(nodeType) && (dataFlag = this.readNumber()) != 0) {
            data = this.flatener.readData((IPath)path, this.input);
        }
        if ((childCount = this.readNumber()) == 0) {
            children = AbstractDataTreeNode.NO_CHILDREN;
        } else {
            children = new AbstractDataTreeNode[childCount];
            int i = 0;
            while (i < childCount) {
                children[i] = this.readNode((IPath)path, newProjectName);
                ++i;
            }
        }
        switch (nodeType) {
            case 0: {
                return new DataTreeNode(name, data, children);
            }
            case 1: {
                return new DataDeltaNode(name, data, children);
            }
            case 2: {
                return new DeletedNode(name);
            }
            case 3: {
                return new NoDataDeltaNode(name, children);
            }
        }
        Assert.isTrue((boolean)false, (String)Messages.dtree_switchError);
        return null;
    }

    protected int readNumber() throws IOException {
        byte b = this.input.readByte();
        int number = b & 0xFF;
        if (number == 255) {
            number = this.input.readInt();
        }
        return number;
    }

    public DeltaDataTree readTree(DeltaDataTree parent, DataInput input, String newProjectName) throws IOException {
        this.input = input;
        AbstractDataTreeNode root = this.readNode((IPath)Path.ROOT, newProjectName);
        return new DeltaDataTree(root, parent);
    }
}

