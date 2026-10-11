/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.ZipBundleFile;

public class DirZipBundleEntry
extends BundleEntry {
    private ZipBundleFile bundleFile;
    String name;

    public DirZipBundleEntry(ZipBundleFile bundleFile, String name) {
        this.name = name.length() > 0 && name.charAt(0) == '/' ? name.substring(1) : name;
        this.bundleFile = bundleFile;
    }

    public InputStream getInputStream() throws IOException {
        return new ByteArrayInputStream(new byte[0]);
    }

    public long getSize() {
        return 0L;
    }

    public String getName() {
        return this.name;
    }

    public long getTime() {
        return 0L;
    }

    public URL getLocalURL() {
        try {
            return new URL("jar:" + this.bundleFile.basefile.toURL() + "!/" + this.name);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public URL getFileURL() {
        try {
            return this.bundleFile.extractDirectory(this.name).toURL();
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }
}

