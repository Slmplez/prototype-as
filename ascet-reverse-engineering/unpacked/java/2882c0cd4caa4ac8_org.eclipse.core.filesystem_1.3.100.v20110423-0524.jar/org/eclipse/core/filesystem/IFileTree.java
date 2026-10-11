/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.filesystem;

import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;

public interface IFileTree {
    public IFileInfo[] getChildInfos(IFileStore var1);

    public IFileStore[] getChildStores(IFileStore var1);

    public IFileInfo getFileInfo(IFileStore var1);

    public IFileStore getTreeRoot();
}

