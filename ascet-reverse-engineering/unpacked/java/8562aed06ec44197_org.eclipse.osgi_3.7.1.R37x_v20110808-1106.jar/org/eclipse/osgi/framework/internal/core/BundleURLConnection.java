/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.util.NLS;

public class BundleURLConnection
extends URLConnection {
    protected final BundleEntry bundleEntry;
    protected InputStream in;
    protected String contentType;

    public BundleURLConnection(URL url, BundleEntry bundleEntry) {
        super(url);
        this.bundleEntry = bundleEntry;
        this.in = null;
        this.contentType = null;
    }

    public synchronized void connect() throws IOException {
        if (!this.connected) {
            if (this.bundleEntry != null) {
                this.in = this.bundleEntry.getInputStream();
                this.connected = true;
            } else {
                throw new IOException(NLS.bind(AdaptorMsg.RESOURCE_NOT_FOUND_EXCEPTION, this.url));
            }
        }
    }

    public int getContentLength() {
        return (int)this.bundleEntry.getSize();
    }

    public String getContentType() {
        if (this.contentType == null) {
            this.contentType = BundleURLConnection.guessContentTypeFromName(this.bundleEntry.getName());
            if (this.contentType == null) {
                if (!this.connected) {
                    try {
                        this.connect();
                    }
                    catch (IOException iOException) {
                        return null;
                    }
                }
                try {
                    if (this.in.markSupported()) {
                        this.contentType = BundleURLConnection.guessContentTypeFromStream(this.in);
                    }
                }
                catch (IOException iOException) {}
            }
        }
        return this.contentType;
    }

    public boolean getDoInput() {
        return true;
    }

    public boolean getDoOutput() {
        return false;
    }

    public InputStream getInputStream() throws IOException {
        if (!this.connected) {
            this.connect();
        }
        return this.in;
    }

    public long getLastModified() {
        long lastModified = this.bundleEntry.getTime();
        if (lastModified == -1L) {
            return 0L;
        }
        return lastModified;
    }

    public URL getLocalURL() {
        return this.bundleEntry.getLocalURL();
    }

    public URL getFileURL() {
        return this.bundleEntry.getFileURL();
    }
}

