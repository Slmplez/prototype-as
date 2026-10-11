/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class BufferedRandomInputStream
extends InputStream {
    private RandomAccessFile inputFile;
    private String filePath;
    private int buffer_size;
    private int buffer_pos;
    private long buffer_start = 0L;
    private long file_pointer;
    private byte[] buffer;

    public BufferedRandomInputStream(File file) throws IOException {
        this(file, 2048);
    }

    public BufferedRandomInputStream(File file, int bufferSize) throws IOException {
        this.filePath = file.getCanonicalPath();
        this.inputFile = new RandomAccessFile(file, "r");
        this.buffer = new byte[bufferSize];
        this.file_pointer = 0L;
        this.resetBuffer();
    }

    private void resetBuffer() {
        this.buffer_pos = 0;
        this.buffer_size = 0;
        this.buffer_start = 0L;
    }

    private int fillBuffer() throws IOException {
        this.buffer_pos = 0;
        this.buffer_start = this.file_pointer;
        this.buffer_size = this.inputFile.read(this.buffer, 0, this.buffer.length);
        this.file_pointer += (long)this.buffer_size;
        return this.buffer_size;
    }

    public int read() throws IOException {
        if (this.buffer_pos >= this.buffer_size && this.fillBuffer() <= 0) {
            return -1;
        }
        return this.buffer[this.buffer_pos++] & 0xFF;
    }

    public int read(byte[] b, int off, int len) throws IOException {
        int available = this.buffer_size - this.buffer_pos;
        if (available < 0) {
            return -1;
        }
        if (len <= available) {
            System.arraycopy(this.buffer, this.buffer_pos, b, off, len);
            this.buffer_pos += len;
            return len;
        }
        System.arraycopy(this.buffer, this.buffer_pos, b, off, available);
        if (this.fillBuffer() <= 0) {
            return available;
        }
        return available + this.read(b, off + available, len - available);
    }

    public long skip(long n) throws IOException {
        if (n <= 0L) {
            return 0L;
        }
        int available = this.buffer_size - this.buffer_pos;
        if (n <= (long)available) {
            this.buffer_pos = (int)((long)this.buffer_pos + n);
            return n;
        }
        this.resetBuffer();
        int skipped = this.inputFile.skipBytes((int)(n - (long)available));
        this.file_pointer += (long)skipped;
        return available + skipped;
    }

    public int available() throws IOException {
        return this.buffer_size - this.buffer_pos;
    }

    public void close() throws IOException {
        this.inputFile.close();
        this.inputFile = null;
        this.buffer = null;
    }

    public String toString() {
        return this.filePath;
    }

    public void seek(long pos) throws IOException {
        if (pos >= this.buffer_start && pos < this.buffer_start + (long)this.buffer_size) {
            this.buffer_pos = (int)(pos - this.buffer_start);
        } else {
            this.inputFile.seek(pos);
            this.file_pointer = pos;
            this.resetBuffer();
        }
    }

    public long length() throws IOException {
        return this.inputFile.length();
    }
}

