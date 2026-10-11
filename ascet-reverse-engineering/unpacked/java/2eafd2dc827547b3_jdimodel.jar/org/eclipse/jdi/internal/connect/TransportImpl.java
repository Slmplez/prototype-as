/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.connect.Transport
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.connect.Transport;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class TransportImpl
implements Transport {
    private String fName;

    public TransportImpl(String name) {
        this.fName = name;
    }

    public String name() {
        return this.fName;
    }

    public abstract boolean isOpen();

    public abstract void close();

    public abstract InputStream getInputStream() throws IOException;

    public abstract OutputStream getOutputStream() throws IOException;
}

