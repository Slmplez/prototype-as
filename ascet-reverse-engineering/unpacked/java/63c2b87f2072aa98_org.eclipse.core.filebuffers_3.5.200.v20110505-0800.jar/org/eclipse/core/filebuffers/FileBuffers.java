/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.filebuffers;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.ResourceTextFileBufferManager;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public final class FileBuffers {
    private static final IWorkspaceRoot WORKSPACE_ROOT = ResourcesPlugin.getWorkspace().getRoot();
    public static final String PLUGIN_ID = "org.eclipse.core.filebuffers";

    private FileBuffers() {
    }

    public static ITextFileBufferManager getTextFileBufferManager() {
        FileBuffersPlugin plugin = FileBuffersPlugin.getDefault();
        return plugin != null ? plugin.getFileBufferManager() : null;
    }

    public static ITextFileBufferManager createTextFileBufferManager() {
        Bundle resourcesBundle = Platform.getBundle((String)"org.eclipse.core.resources");
        if (resourcesBundle != null) {
            return new ResourceTextFileBufferManager();
        }
        return new TextFileBufferManager();
    }

    public static IFile getWorkspaceFileAtLocation(IPath location) {
        return FileBuffers.getWorkspaceFileAtLocation(location, false);
    }

    public static IFile getWorkspaceFileAtLocation(IPath location, boolean isNormalized) {
        IFile file;
        IPath normalized = isNormalized ? location : FileBuffers.normalizeLocation(location);
        if (normalized.segmentCount() >= 2 && (file = WORKSPACE_ROOT.getFile(normalized)) != null && file.exists()) {
            return file;
        }
        return null;
    }

    public static IPath normalizeLocation(IPath pathOrLocation) {
        if (WORKSPACE_ROOT.exists(pathOrLocation)) {
            return pathOrLocation.makeAbsolute();
        }
        IFile file = WORKSPACE_ROOT.getFileForLocation(pathOrLocation);
        if (file != null && file.exists()) {
            return file.getFullPath();
        }
        return pathOrLocation.makeAbsolute();
    }

    public static IFileStore getFileStoreAtLocation(IPath location) {
        block4: {
            URI uri;
            block5: {
                if (location == null) {
                    return null;
                }
                IFile file = FileBuffers.getWorkspaceFileAtLocation(location);
                try {
                    if (file == null) break block4;
                    uri = file.getLocationURI();
                    if (uri != null) break block5;
                    return null;
                }
                catch (CoreException coreException) {}
            }
            return EFS.getStore((URI)uri);
        }
        return EFS.getLocalFileSystem().getStore(location);
    }

    public static File getSystemFileAtLocation(IPath location) {
        IFileStore store = FileBuffers.getFileStoreAtLocation(location);
        if (store != null) {
            try {
                return store.toLocalFile(0, null);
            }
            catch (CoreException coreException) {
                return null;
            }
        }
        return null;
    }
}

