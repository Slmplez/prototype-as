/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;

public class BundleSource
extends URLConnection {
    private InputStream in;

    protected BundleSource(InputStream in) {
        super(null);
        this.in = in;
    }

    public void connect() throws IOException {
        this.connected = true;
    }

    public InputStream getInputStream() throws IOException {
        return this.in;
    }
}

