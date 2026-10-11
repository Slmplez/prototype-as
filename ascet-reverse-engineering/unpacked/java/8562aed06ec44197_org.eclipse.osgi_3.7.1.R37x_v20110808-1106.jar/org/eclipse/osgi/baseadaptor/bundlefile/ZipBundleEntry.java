/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.ZipEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.ZipBundleFile;

public class ZipBundleEntry
extends BundleEntry {
    protected final ZipEntry zipEntry;
    protected final ZipBundleFile bundleFile;

    ZipBundleEntry(ZipEntry zipEntry, ZipBundleFile bundleFile) {
        this.zipEntry = zipEntry;
        this.bundleFile = bundleFile;
    }

    public InputStream getInputStream() throws IOException {
        ZipBundleFile zipBundleFile = this.bundleFile;
        if (!zipBundleFile.isMruEnabled()) {
            return this.bundleFile.getZipFile().getInputStream(this.zipEntry);
        }
        zipBundleFile.incrementReference();
        ZipBundleEntryInputStream result = null;
        try {
            ZipBundleEntryInputStream zipBundleEntryInputStream = result = new ZipBundleEntryInputStream(zipBundleFile.getZipFile().getInputStream(this.zipEntry));
            return zipBundleEntryInputStream;
        }
        finally {
            if (result == null) {
                zipBundleFile.decrementReference();
            }
        }
    }

    public long getSize() {
        return this.zipEntry.getSize();
    }

    public String getName() {
        return this.zipEntry.getName();
    }

    public long getTime() {
        return this.zipEntry.getTime();
    }

    public URL getLocalURL() {
        try {
            return new URL("jar:" + this.bundleFile.basefile.toURL() + "!/" + this.zipEntry.getName());
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public URL getFileURL() {
        try {
            File file = this.bundleFile.getFile(this.zipEntry.getName(), false);
            if (file != null) {
                return file.toURL();
            }
        }
        catch (MalformedURLException malformedURLException) {}
        return null;
    }

    private class ZipBundleEntryInputStream
    extends InputStream {
        private final InputStream stream;
        private boolean closed = false;

        public ZipBundleEntryInputStream(InputStream stream) {
            this.stream = stream;
        }

        public int available() throws IOException {
            return this.stream.available();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void close() throws IOException {
            try {
                this.stream.close();
            }
            catch (Throwable throwable) {
                ZipBundleEntryInputStream zipBundleEntryInputStream = this;
                synchronized (zipBundleEntryInputStream) {
                    if (this.closed) {
                        return;
                    }
                    this.closed = true;
                }
                ZipBundleEntry.this.bundleFile.decrementReference();
                throw throwable;
            }
            ZipBundleEntryInputStream zipBundleEntryInputStream = this;
            synchronized (zipBundleEntryInputStream) {
                if (this.closed) {
                    return;
                }
                this.closed = true;
            }
            ZipBundleEntry.this.bundleFile.decrementReference();
        }

        public void mark(int var0) {
            this.stream.mark(var0);
        }

        public boolean markSupported() {
            return this.stream.markSupported();
        }

        public int read() throws IOException {
            return this.stream.read();
        }

        public int read(byte[] var0, int var1, int var2) throws IOException {
            return this.stream.read(var0, var1, var2);
        }

        public int read(byte[] var0) throws IOException {
            return this.stream.read(var0);
        }

        public void reset() throws IOException {
            this.stream.reset();
        }

        public long skip(long var0) throws IOException {
            return this.stream.skip(var0);
        }
    }
}

