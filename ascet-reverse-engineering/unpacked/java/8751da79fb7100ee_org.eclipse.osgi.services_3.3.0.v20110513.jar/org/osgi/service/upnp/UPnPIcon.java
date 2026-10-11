/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

import java.io.IOException;
import java.io.InputStream;

public interface UPnPIcon {
    public String getMimeType();

    public int getWidth();

    public int getHeight();

    public int getSize();

    public int getDepth();

    public InputStream getInputStream() throws IOException;
}

