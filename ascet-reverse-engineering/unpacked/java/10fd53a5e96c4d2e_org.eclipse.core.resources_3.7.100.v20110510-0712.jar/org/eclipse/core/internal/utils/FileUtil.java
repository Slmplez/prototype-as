/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.IFileSystem
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.utils;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class FileUtil {
    private static final byte[] buffer = new byte[8192];

    public static IFileInfo attributesToFileInfo(ResourceAttributes attributes) {
        IFileInfo fileInfo = EFS.createFileInfo();
        fileInfo.setAttribute(2, attributes.isReadOnly());
        fileInfo.setAttribute(4, attributes.isExecutable());
        fileInfo.setAttribute(8, attributes.isArchive());
        fileInfo.setAttribute(16, attributes.isHidden());
        fileInfo.setAttribute(32, attributes.isSymbolicLink());
        fileInfo.setAttribute(0x2000000, attributes.isSet(0x2000000));
        fileInfo.setAttribute(0x4000000, attributes.isSet(0x4000000));
        fileInfo.setAttribute(0x8000000, attributes.isSet(0x8000000));
        fileInfo.setAttribute(0x10000000, attributes.isSet(0x10000000));
        fileInfo.setAttribute(0x20000000, attributes.isSet(0x20000000));
        fileInfo.setAttribute(0x40000000, attributes.isSet(0x40000000));
        return fileInfo;
    }

    public static IPath canonicalPath(IPath path) {
        if (path == null) {
            return null;
        }
        try {
            String pathString = path.toOSString();
            String canonicalPath = new File(pathString).getCanonicalPath();
            if (canonicalPath.equals(pathString)) {
                return path;
            }
            return new Path(canonicalPath);
        }
        catch (IOException iOException) {
            return path;
        }
    }

    public static URI canonicalURI(URI uri) {
        if (uri == null) {
            return null;
        }
        if ("file".equals(uri.getScheme())) {
            IPath canonicalPath;
            IPath inputPath = URIUtil.toPath((URI)uri);
            if (inputPath == (canonicalPath = FileUtil.canonicalPath(inputPath))) {
                return uri;
            }
            return URIUtil.toURI((IPath)canonicalPath);
        }
        return uri;
    }

    private static boolean computeOverlap(IPath location1, IPath location2, boolean bothDirections) {
        IPath one = location1;
        IPath two = location2;
        if (!Workspace.caseSensitive) {
            one = new Path(location1.toOSString().toLowerCase());
            two = new Path(location2.toOSString().toLowerCase());
        }
        return one.isPrefixOf(two) || bothDirections && two.isPrefixOf(one);
    }

    private static boolean computeOverlap(URI location1, URI location2, boolean bothDirections) {
        IFileStore store2;
        if (location1.equals(location2)) {
            return true;
        }
        String scheme1 = location1.getScheme();
        String scheme2 = location2.getScheme();
        if (scheme1 == null ? scheme2 != null : !scheme1.equals(scheme2)) {
            return false;
        }
        if ("file".equals(scheme1) && "file".equals(scheme2)) {
            return FileUtil.computeOverlap(URIUtil.toPath((URI)location1), URIUtil.toPath((URI)location2), bothDirections);
        }
        IFileSystem system = null;
        try {
            system = EFS.getFileSystem((String)scheme1);
        }
        catch (CoreException coreException) {}
        if (system == null) {
            String string2;
            String string1 = location1.toString();
            return string1.startsWith(string2 = location2.toString()) || bothDirections && string2.startsWith(string1);
        }
        IFileStore store1 = system.getStore(location1);
        return store1.equals(store2 = system.getStore(location2)) || store1.isParentOf(store2) || bothDirections && store2.isParentOf(store1);
    }

    public static ResourceAttributes fileInfoToAttributes(IFileInfo fileInfo) {
        ResourceAttributes attributes = new ResourceAttributes();
        attributes.setReadOnly(fileInfo.getAttribute(2));
        attributes.setArchive(fileInfo.getAttribute(8));
        attributes.setExecutable(fileInfo.getAttribute(4));
        attributes.setHidden(fileInfo.getAttribute(16));
        attributes.setSymbolicLink(fileInfo.getAttribute(32));
        attributes.set(0x2000000, fileInfo.getAttribute(0x2000000));
        attributes.set(0x4000000, fileInfo.getAttribute(0x4000000));
        attributes.set(0x8000000, fileInfo.getAttribute(0x8000000));
        attributes.set(0x10000000, fileInfo.getAttribute(0x10000000));
        attributes.set(0x20000000, fileInfo.getAttribute(0x20000000));
        attributes.set(0x40000000, fileInfo.getAttribute(0x40000000));
        return attributes;
    }

    public static boolean isOverlapping(URI location1, URI location2) {
        return FileUtil.computeOverlap(location1, location2, true);
    }

    public static boolean isPrefixOf(IPath location1, IPath location2) {
        return FileUtil.computeOverlap(location1, location2, false);
    }

    public static boolean isPrefixOf(URI location1, URI location2) {
        return FileUtil.computeOverlap(location1, location2, false);
    }

    public static void safeClose(Closeable stream) {
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException iOException) {}
    }

    public static IPath toPath(URI uri) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || "file".equals(scheme)) {
            return new Path(uri.getSchemeSpecificPart());
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static final void transferStreams(InputStream source, OutputStream destination, String path, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            byte[] byArray = buffer;
            synchronized (buffer) {
                while (true) {
                    int bytesRead = -1;
                    try {
                        bytesRead = source.read(buffer);
                    }
                    catch (IOException e) {
                        String msg = NLS.bind((String)Messages.localstore_failedReadDuringWrite, (Object)path);
                        throw new ResourceException(271, (IPath)new Path(path), msg, e);
                    }
                    try {
                        if (bytesRead == -1) {
                            destination.close();
                            break;
                        }
                        destination.write(buffer, 0, bytesRead);
                    }
                    catch (IOException e) {
                        String msg = NLS.bind((String)Messages.localstore_couldNotWrite, (Object)path);
                        throw new ResourceException(272, (IPath)new Path(path), msg, e);
                    }
                    monitor.worked(1);
                }
                // ** MonitorExit[var4_4] (shouldn't be in output)
            }
        }
        finally {
            FileUtil.safeClose(source);
            FileUtil.safeClose(destination);
        }
        {
            return;
        }
    }

    private FileUtil() {
    }
}

