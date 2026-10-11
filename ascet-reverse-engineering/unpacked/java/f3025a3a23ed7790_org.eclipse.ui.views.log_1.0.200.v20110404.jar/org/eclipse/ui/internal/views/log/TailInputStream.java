/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.views.log;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class TailInputStream
extends InputStream {
    private RandomAccessFile fRaf;
    private long fTail;

    public TailInputStream(File file, long maxLength) throws IOException {
        this.fTail = maxLength;
        this.fRaf = new RandomAccessFile(file, "r");
        this.skipHead(file);
    }

    private void skipHead(File file) throws IOException {
        if (file.length() > this.fTail) {
            this.fRaf.seek(file.length() - this.fTail);
            int c = this.read();
            while (c != 10 && c != 114 && c != -1) {
                c = this.read();
            }
        }
    }

    public int read() throws IOException {
        byte[] b = new byte[1];
        int len = this.fRaf.read(b, 0, 1);
        if (len < 0) {
            return len;
        }
        return b[0];
    }

    public int read(byte[] b) throws IOException {
        return this.fRaf.read(b, 0, b.length);
    }

    public int read(byte[] b, int off, int len) throws IOException {
        return this.fRaf.read(b, off, len);
    }

    public void close() throws IOException {
        this.fRaf.close();
    }
}

