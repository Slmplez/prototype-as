/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import org.osgi.service.url.URLStreamHandlerService;
import org.osgi.service.url.URLStreamHandlerSetter;

public class NullURLStreamHandlerService
implements URLStreamHandlerService {
    public URLConnection openConnection(URL u) throws IOException {
        throw new MalformedURLException();
    }

    public boolean equals(URL url1, URL url2) {
        throw new IllegalStateException();
    }

    public int getDefaultPort() {
        throw new IllegalStateException();
    }

    public InetAddress getHostAddress(URL url) {
        throw new IllegalStateException();
    }

    public int hashCode(URL url) {
        throw new IllegalStateException();
    }

    public boolean hostsEqual(URL url1, URL url2) {
        throw new IllegalStateException();
    }

    public boolean sameFile(URL url1, URL url2) {
        throw new IllegalStateException();
    }

    public void setURL(URL u, String protocol, String host, int port, String authority, String userInfo, String file, String query, String ref) {
        throw new IllegalStateException();
    }

    public void setURL(URL u, String protocol, String host, int port, String file, String ref) {
        throw new IllegalStateException();
    }

    public String toExternalForm(URL url) {
        throw new IllegalStateException();
    }

    public void parseURL(URLStreamHandlerSetter realHandler, URL u, String spec, int start, int limit) {
        throw new IllegalStateException();
    }
}

