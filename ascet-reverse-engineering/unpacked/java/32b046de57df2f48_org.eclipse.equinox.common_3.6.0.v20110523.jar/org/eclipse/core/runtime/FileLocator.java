/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.urlconversion.URLConverter
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Map;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.FindSupport;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.service.urlconversion.URLConverter;
import org.osgi.framework.Bundle;

public final class FileLocator {
    private FileLocator() {
    }

    public static URL find(Bundle bundle, IPath path, Map override) {
        return FindSupport.find(bundle, path, override);
    }

    public static URL[] findEntries(Bundle bundle, IPath path, Map override) {
        return FindSupport.findEntries(bundle, path, override);
    }

    public static URL find(URL url) {
        return FindSupport.find(url);
    }

    public static URL[] findEntries(Bundle bundle, IPath path) {
        return FindSupport.findEntries(bundle, path);
    }

    public static InputStream openStream(Bundle bundle, IPath file, boolean substituteArgs) throws IOException {
        return FindSupport.openStream(bundle, file, substituteArgs);
    }

    public static URL toFileURL(URL url) throws IOException {
        URLConverter converter = Activator.getURLConverter(url);
        return converter == null ? url : converter.toFileURL(url);
    }

    public static URL resolve(URL url) throws IOException {
        URLConverter converter = Activator.getURLConverter(url);
        return converter == null ? url : converter.resolve(url);
    }

    public static File getBundleFile(Bundle bundle) throws IOException {
        String path;
        URL rootEntry = bundle.getEntry("/");
        if ("file".equals((rootEntry = FileLocator.resolve(rootEntry)).getProtocol())) {
            return new File(rootEntry.getPath());
        }
        if ("jar".equals(rootEntry.getProtocol()) && (path = rootEntry.getPath()).startsWith("file:")) {
            path = path.substring(5, path.length() - 2);
            return new File(path);
        }
        throw new IOException("Unknown protocol");
    }
}

