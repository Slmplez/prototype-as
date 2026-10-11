/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.net.ContentHandler;
import java.net.URLConnection;
import org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory;

public class MultiplexingContentHandler
extends ContentHandler {
    private String contentType;
    private ContentHandlerFactory factory;

    public MultiplexingContentHandler(String contentType, ContentHandlerFactory factory) {
        this.contentType = contentType;
        this.factory = factory;
    }

    public Object getContent(URLConnection uConn) throws IOException {
        ContentHandler handler = this.factory.findAuthorizedContentHandler(this.contentType);
        if (handler != null) {
            return handler.getContent(uConn);
        }
        return uConn.getInputStream();
    }
}

