/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.net.URL;
import org.eclipse.osgi.framework.internal.protocol.URLStreamHandlerProxy;

public class URLStreamHandlerSetter
implements org.osgi.service.url.URLStreamHandlerSetter {
    protected URLStreamHandlerProxy handlerProxy;

    public URLStreamHandlerSetter(URLStreamHandlerProxy handler) {
        this.handlerProxy = handler;
    }

    public void setURL(URL url, String protocol, String host, int port, String file, String ref) {
        this.handlerProxy.setURL(url, protocol, host, port, file, ref);
    }

    public void setURL(URL url, String protocol, String host, int port, String authority, String userInfo, String path, String query, String ref) {
        this.handlerProxy.setURL(url, protocol, host, port, authority, userInfo, path, query, ref);
    }
}

