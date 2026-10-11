/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.url;

import java.io.IOException;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.osgi.service.url.URLStreamHandlerService;
import org.osgi.service.url.URLStreamHandlerSetter;

public abstract class AbstractURLStreamHandlerService
extends URLStreamHandler
implements URLStreamHandlerService {
    protected volatile URLStreamHandlerSetter realHandler;

    public abstract URLConnection openConnection(URL var1) throws IOException;

    public void parseURL(URLStreamHandlerSetter realHandler, URL u, String spec, int start, int limit) {
        this.realHandler = realHandler;
        this.parseURL(u, spec, start, limit);
    }

    public String toExternalForm(URL u) {
        return super.toExternalForm(u);
    }

    public boolean equals(URL u1, URL u2) {
        return super.equals(u1, u2);
    }

    public int getDefaultPort() {
        return super.getDefaultPort();
    }

    public InetAddress getHostAddress(URL u) {
        return super.getHostAddress(u);
    }

    public int hashCode(URL u) {
        return super.hashCode(u);
    }

    public boolean hostsEqual(URL u1, URL u2) {
        return super.hostsEqual(u1, u2);
    }

    public boolean sameFile(URL u1, URL u2) {
        return super.sameFile(u1, u2);
    }

    protected void setURL(URL u, String proto, String host, int port, String file, String ref) {
        this.realHandler.setURL(u, proto, host, port, file, ref);
    }

    protected void setURL(URL u, String proto, String host, int port, String auth, String user, String path, String query, String ref) {
        this.realHandler.setURL(u, proto, host, port, auth, user, path, query, ref);
    }
}

