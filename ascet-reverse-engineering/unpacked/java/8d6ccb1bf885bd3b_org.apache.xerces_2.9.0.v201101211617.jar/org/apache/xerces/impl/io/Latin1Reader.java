/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

public class Latin1Reader
extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 2048;
    protected final InputStream fInputStream;
    protected final byte[] fBuffer;

    public Latin1Reader(InputStream inputStream) {
        this(inputStream, 2048);
    }

    public Latin1Reader(InputStream inputStream, int n) {
        this(inputStream, new byte[n]);
    }

    public Latin1Reader(InputStream inputStream, byte[] byArray) {
        this.fInputStream = inputStream;
        this.fBuffer = byArray;
    }

    public int read() throws IOException {
        return this.fInputStream.read();
    }

    public int read(char[] cArray, int n, int n2) throws IOException {
        if (n2 > this.fBuffer.length) {
            n2 = this.fBuffer.length;
        }
        int n3 = this.fInputStream.read(this.fBuffer, 0, n2);
        int n4 = 0;
        while (n4 < n3) {
            cArray[n + n4] = (char)(this.fBuffer[n4] & 0xFF);
            ++n4;
        }
        return n3;
    }

    public long skip(long l) throws IOException {
        return this.fInputStream.skip(l);
    }

    public boolean ready() throws IOException {
        return false;
    }

    public boolean markSupported() {
        return this.fInputStream.markSupported();
    }

    public void mark(int n) throws IOException {
        this.fInputStream.mark(n);
    }

    public void reset() throws IOException {
        this.fInputStream.reset();
    }

    public void close() throws IOException {
        this.fInputStream.close();
    }
}

