/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.filesystem.provider;

import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileTree;

public abstract class FileTree
implements IFileTree {
    protected IFileStore treeRoot;

    public FileTree(IFileStore treeRoot) {
        this.treeRoot = treeRoot;
    }

    public IFileStore getTreeRoot() {
        return this.treeRoot;
    }

    public abstract IFileInfo[] getChildInfos(IFileStore var1);

    public abstract IFileInfo getFileInfo(IFileStore var1);

    public abstract IFileStore[] getChildStores(IFileStore var1);
}

