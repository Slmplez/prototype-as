/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.reliablefile;

import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import org.eclipse.osgi.framework.internal.reliablefile.ReliableFile;

public class ReliableFileInputStream
extends FilterInputStream {
    private ReliableFile reliable;
    private int sigSize;
    private int readPos;
    private int length;

    public ReliableFileInputStream(String name) throws IOException {
        this(ReliableFile.getReliableFile(name), 0, 0);
    }

    public ReliableFileInputStream(File file) throws IOException {
        this(ReliableFile.getReliableFile(file), 0, 0);
    }

    public ReliableFileInputStream(File file, int generation, int openMask) throws IOException {
        this(ReliableFile.getReliableFile(file), generation, openMask);
    }

    private ReliableFileInputStream(ReliableFile reliable, int generation, int openMask) throws IOException {
        super(reliable.getInputStream(generation, openMask));
        this.reliable = reliable;
        this.sigSize = reliable.getSignatureSize();
        this.readPos = 0;
        this.length = super.available();
        this.length = this.sigSize > this.length ? 0 : (this.length -= this.sigSize);
    }

    public synchronized void close() throws IOException {
        if (this.reliable != null) {
            try {
                super.close();
            }
            finally {
                this.reliable.closeInputFile();
                this.reliable = null;
            }
        }
    }

    public synchronized int read(byte[] b, int off, int len) throws IOException {
        if (this.readPos >= this.length) {
            return -1;
        }
        int num = super.read(b, off, len);
        if (num != -1) {
            if (num + this.readPos > this.length) {
                num = this.length - this.readPos;
            }
            this.readPos += num;
        }
        return num;
    }

    public synchronized int read(byte[] b) throws IOException {
        return this.read(b, 0, b.length);
    }

    public synchronized int read() throws IOException {
        if (this.readPos >= this.length) {
            return -1;
        }
        int num = super.read();
        if (num != -1) {
            ++this.readPos;
        }
        return num;
    }

    public synchronized int available() throws IOException {
        if (this.readPos < this.length) {
            return this.length - this.readPos;
        }
        return 0;
    }

    public synchronized long skip(long n) throws IOException {
        long len = super.skip(n);
        if ((long)this.readPos + len > (long)this.length) {
            len = this.length - this.readPos;
        }
        this.readPos = (int)((long)this.readPos + len);
        return len;
    }

    public boolean markSupported() {
        return false;
    }

    public void mark(int readlimit) {
    }

    public void reset() throws IOException {
        throw new IOException("reset not supported.");
    }
}

