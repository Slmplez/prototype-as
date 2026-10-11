/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;

final class LEDataInputStream
extends InputStream {
    int position;
    InputStream in;
    protected byte[] buf;
    protected int pos;

    public LEDataInputStream(InputStream input) {
        this(input, 512);
    }

    public LEDataInputStream(InputStream input, int bufferSize) {
        this.in = input;
        if (bufferSize <= 0) {
            throw new IllegalArgumentException();
        }
        this.buf = new byte[bufferSize];
        this.pos = bufferSize;
    }

    public void close() throws IOException {
        this.buf = null;
        if (this.in != null) {
            this.in.close();
            this.in = null;
        }
    }

    public int getPosition() {
        return this.position;
    }

    public int available() throws IOException {
        if (this.buf == null) {
            throw new IOException();
        }
        return this.buf.length - this.pos + this.in.available();
    }

    public int read() throws IOException {
        if (this.buf == null) {
            throw new IOException();
        }
        if (this.pos < this.buf.length) {
            ++this.position;
            return this.buf[this.pos++] & 0xFF;
        }
        int c = this.in.read();
        if (c != -1) {
            ++this.position;
        }
        return c;
    }

    public int read(byte[] b, int off, int len) throws IOException {
        int count;
        int read = 0;
        while (read != len && (count = this.readData(b, off, len - read)) != -1) {
            off += count;
            read += count;
        }
        this.position += read;
        if (read == 0 && read != len) {
            return -1;
        }
        return read;
    }

    private int readData(byte[] buffer, int offset, int length) throws IOException {
        if (this.buf == null) {
            throw new IOException();
        }
        if (offset < 0 || offset > buffer.length || length < 0 || length > buffer.length - offset) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int cacheCopied = 0;
        int newOffset = offset;
        int available = this.buf.length - this.pos;
        if (available > 0) {
            cacheCopied = available >= length ? length : available;
            System.arraycopy(this.buf, this.pos, buffer, newOffset, cacheCopied);
            newOffset += cacheCopied;
            this.pos += cacheCopied;
        }
        if (cacheCopied == length) {
            return length;
        }
        int inCopied = this.in.read(buffer, newOffset, length - cacheCopied);
        if (inCopied > 0) {
            return inCopied + cacheCopied;
        }
        if (cacheCopied == 0) {
            return inCopied;
        }
        return cacheCopied;
    }

    public int readInt() throws IOException {
        byte[] buf = new byte[4];
        this.read(buf);
        return (buf[3] & 0xFF) << 24 | (buf[2] & 0xFF) << 16 | (buf[1] & 0xFF) << 8 | buf[0] & 0xFF;
    }

    public short readShort() throws IOException {
        byte[] buf = new byte[2];
        this.read(buf);
        return (short)((buf[1] & 0xFF) << 8 | buf[0] & 0xFF);
    }

    public void unread(byte[] b) throws IOException {
        int length = b.length;
        if (length > this.pos) {
            throw new IOException();
        }
        this.position -= length;
        this.pos -= length;
        System.arraycopy(b, 0, this.buf, this.pos, length);
    }
}

