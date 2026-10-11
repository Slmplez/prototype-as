/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.connect.spi;

import java.io.IOException;

public abstract class Connection {
    public abstract void close() throws IOException;

    public abstract boolean isOpen();

    public abstract byte[] readPacket() throws IOException;

    public abstract void writePacket(byte[] var1) throws IOException;
}

