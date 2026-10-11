/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.filesystem;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class URIUtil {
    public static boolean equals(URI one, URI two) {
        try {
            return EFS.getStore(one).equals(EFS.getStore(two));
        }
        catch (CoreException coreException) {
            return one.equals(two);
        }
    }

    public static IPath toPath(URI uri) {
        File file;
        block7: {
            IFileStore store;
            block6: {
                Assert.isNotNull((Object)uri);
                if ("file".equals(uri.getScheme())) {
                    return new Path(uri.getSchemeSpecificPart());
                }
                if (uri.getScheme() == null) {
                    return new Path(uri.getPath());
                }
                try {
                    store = EFS.getStore(uri);
                    if (store != null) break block6;
                    return null;
                }
                catch (CoreException coreException) {
                    return null;
                }
            }
            file = store.toLocalFile(0, null);
            if (file != null) break block7;
            return null;
        }
        return new Path(file.getAbsolutePath());
    }

    public static URI toURI(IPath path) {
        if (path == null) {
            return null;
        }
        if (path.isAbsolute()) {
            return URIUtil.toURI(path.toFile().getAbsolutePath(), true);
        }
        URI base = URIUtil.toURI(Path.ROOT.setDevice(path.getDevice()));
        return base.relativize(URIUtil.toURI(path.makeAbsolute()));
    }

    public static URI toURI(String pathString) {
        Path path = new Path(pathString);
        return URIUtil.toURI((IPath)path);
    }

    public static URI toURI(String pathString, boolean forceAbsolute) {
        if (File.separatorChar != '/') {
            pathString = pathString.replace(File.separatorChar, '/');
        }
        int length = pathString.length();
        StringBuffer pathBuf = new StringBuffer(length + 1);
        if (length > 0 && pathString.charAt(0) != '/' && forceAbsolute) {
            pathBuf.append('/');
        }
        if (pathString.startsWith("//")) {
            pathBuf.append('/').append('/');
        }
        pathBuf.append(pathString);
        try {
            String scheme = null;
            if (length > 0 && pathBuf.charAt(0) == '/') {
                scheme = "file";
            }
            return new URI(scheme, null, pathBuf.toString(), null);
        }
        catch (URISyntaxException uRISyntaxException) {
            return new File(pathString).toURI();
        }
    }

    public static String toDecodedString(URI uri) {
        String scheme = uri.getScheme();
        String part = uri.getSchemeSpecificPart();
        if (scheme == null) {
            return part;
        }
        return String.valueOf(scheme) + ':' + part;
    }

    private URIUtil() {
    }
}

