/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol.reference;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.eclipse.osgi.framework.internal.protocol.reference.ReferenceURLConnection;

public class Handler
extends URLStreamHandler {
    protected URLConnection openConnection(URL url) throws IOException {
        return new ReferenceURLConnection(url);
    }

    protected void parseURL(URL url, String str, int start, int end) {
        if (end < start) {
            return;
        }
        String reference = start < end ? str.substring(start, end) : url.getPath();
        this.setURL(url, url.getProtocol(), null, -1, null, null, reference, null, null);
    }
}

