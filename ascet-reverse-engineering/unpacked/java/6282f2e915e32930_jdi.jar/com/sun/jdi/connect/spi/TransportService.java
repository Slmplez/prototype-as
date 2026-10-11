/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect.spi;

import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;

public abstract class TransportService {
    public abstract Connection accept(ListenKey var1, long var2, long var4) throws IOException;

    public abstract Connection attach(String var1, long var2, long var4) throws IOException;

    public abstract Capabilities capabilities();

    public abstract String description();

    public abstract String name();

    public abstract ListenKey startListening() throws IOException;

    public abstract ListenKey startListening(String var1) throws IOException;

    public abstract void stopListening(ListenKey var1) throws IOException;

    public static abstract class Capabilities {
        public abstract boolean supportsAcceptTimeout();

        public abstract boolean supportsAttachTimeout();

        public abstract boolean supportsHandshakeTimeout();

        public abstract boolean supportsMultipleConnections();
    }

    public static abstract class ListenKey {
        public abstract String address();
    }
}

