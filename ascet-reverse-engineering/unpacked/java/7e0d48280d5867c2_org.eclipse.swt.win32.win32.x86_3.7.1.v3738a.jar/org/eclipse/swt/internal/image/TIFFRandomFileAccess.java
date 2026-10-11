/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class TIFFRandomFileAccess {
    LEDataInputStream inputStream;
    int start;
    int current;
    int next;
    byte[][] buffers;
    static final int CHUNK_SIZE = 8192;
    static final int LIST_SIZE = 128;

    public TIFFRandomFileAccess(LEDataInputStream stream) {
        this.inputStream = stream;
        this.current = this.next = this.inputStream.getPosition();
        this.start = this.next;
        this.buffers = new byte[128][];
    }

    void seek(int pos) throws IOException {
        if (pos == this.current) {
            return;
        }
        if (pos < this.start) {
            throw new IOException();
        }
        this.current = pos;
        if (this.current > this.next) {
            int n = this.current - this.next;
            int index = this.next / 8192;
            int offset = this.next % 8192;
            while (n > 0) {
                if (index >= this.buffers.length) {
                    byte[][] oldBuffers = this.buffers;
                    this.buffers = new byte[Math.max(index + 1, oldBuffers.length + 128)][];
                    System.arraycopy(oldBuffers, 0, this.buffers, 0, oldBuffers.length);
                }
                if (this.buffers[index] == null) {
                    this.buffers[index] = new byte[8192];
                }
                int cnt = this.inputStream.read(this.buffers[index], offset, Math.min(n, 8192 - offset));
                n -= cnt;
                this.next += cnt;
                ++index;
                offset = 0;
            }
        }
    }

    void read(byte[] b) throws IOException {
        int cnt;
        int offset;
        int index;
        int size = b.length;
        int nCached = Math.min(size, this.next - this.current);
        int nMissing = size - this.next + this.current;
        int destNext = 0;
        if (nCached > 0) {
            index = this.current / 8192;
            offset = this.current % 8192;
            while (nCached > 0) {
                cnt = Math.min(nCached, 8192 - offset);
                System.arraycopy(this.buffers[index], offset, b, destNext, cnt);
                nCached -= cnt;
                destNext += cnt;
                ++index;
                offset = 0;
            }
        }
        if (nMissing > 0) {
            index = this.next / 8192;
            offset = this.next % 8192;
            while (nMissing > 0) {
                if (index >= this.buffers.length) {
                    byte[][] oldBuffers = this.buffers;
                    this.buffers = new byte[Math.max(index, oldBuffers.length + 128)][];
                    System.arraycopy(oldBuffers, 0, this.buffers, 0, oldBuffers.length);
                }
                if (this.buffers[index] == null) {
                    this.buffers[index] = new byte[8192];
                }
                cnt = this.inputStream.read(this.buffers[index], offset, Math.min(nMissing, 8192 - offset));
                System.arraycopy(this.buffers[index], offset, b, destNext, cnt);
                nMissing -= cnt;
                this.next += cnt;
                destNext += cnt;
                ++index;
                offset = 0;
            }
        }
        this.current += size;
    }
}

