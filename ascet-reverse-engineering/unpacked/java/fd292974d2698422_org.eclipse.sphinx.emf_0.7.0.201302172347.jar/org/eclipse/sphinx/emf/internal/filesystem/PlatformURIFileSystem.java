/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.provider.FileSystem
 */
package org.eclipse.sphinx.emf.internal.filesystem;

import java.net.URI;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.provider.FileSystem;
import org.eclipse.sphinx.emf.internal.filesystem.PlatformURIFileStore;

public class PlatformURIFileSystem
extends FileSystem {
    public IFileStore getStore(URI uri) {
        return new PlatformURIFileStore(uri);
    }
}

