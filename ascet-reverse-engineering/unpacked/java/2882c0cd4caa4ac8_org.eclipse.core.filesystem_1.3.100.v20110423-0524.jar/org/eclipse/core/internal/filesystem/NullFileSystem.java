/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.filesystem;

import java.net.URI;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileSystem;
import org.eclipse.core.internal.filesystem.NullFileStore;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class NullFileSystem
extends FileSystem {
    private static IFileSystem instance;

    public static IFileSystem getInstance() {
        return instance;
    }

    public NullFileSystem() {
        instance = this;
    }

    public IFileStore getStore(IPath path) {
        return new NullFileStore(path);
    }

    public IFileStore getStore(URI uri) {
        return new NullFileStore((IPath)new Path(uri.getPath()));
    }
}

