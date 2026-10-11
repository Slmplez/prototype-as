/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;

public class FileBundleEntry
extends BundleEntry {
    private final File file;
    private final String name;

    FileBundleEntry(File file, String name) {
        boolean endsInSlash;
        this.file = file;
        boolean bl = endsInSlash = name.length() > 0 && name.charAt(name.length() - 1) == '/';
        if (BundleFile.secureAction.isDirectory(file)) {
            if (!endsInSlash) {
                name = String.valueOf(name) + '/';
            }
        } else if (endsInSlash) {
            name = name.substring(0, name.length() - 1);
        }
        this.name = name;
    }

    public InputStream getInputStream() throws IOException {
        return BundleFile.secureAction.getFileInputStream(this.file);
    }

    public long getSize() {
        return BundleFile.secureAction.length(this.file);
    }

    public String getName() {
        return this.name;
    }

    public long getTime() {
        return BundleFile.secureAction.lastModified(this.file);
    }

    public URL getLocalURL() {
        return this.getFileURL();
    }

    public URL getFileURL() {
        try {
            return this.file.toURL();
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }
}

