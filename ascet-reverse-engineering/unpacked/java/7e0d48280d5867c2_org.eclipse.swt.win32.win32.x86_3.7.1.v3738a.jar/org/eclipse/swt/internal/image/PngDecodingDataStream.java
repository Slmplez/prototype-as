/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngLzBlockReader;

public class PngDecodingDataStream
extends InputStream {
    InputStream stream;
    byte currentByte;
    int nextBitIndex;
    PngLzBlockReader lzBlockReader;
    int adlerValue;
    static final int PRIME = 65521;
    static final int MAX_BIT = 7;

    PngDecodingDataStream(InputStream stream) throws IOException {
        this.stream = stream;
        this.nextBitIndex = 8;
        this.adlerValue = 1;
        this.lzBlockReader = new PngLzBlockReader(this);
        this.readCompressedDataHeader();
        this.lzBlockReader.readNextBlockHeader();
    }

    void assertImageDataAtEnd() throws IOException {
        this.lzBlockReader.assertCompressedDataAtEnd();
    }

    public void close() throws IOException {
        this.assertImageDataAtEnd();
        this.checkAdler();
    }

    int getNextIdatBits(int length) throws IOException {
        int value = 0;
        int i = 0;
        while (i < length) {
            value |= this.getNextIdatBit() << i;
            ++i;
        }
        return value;
    }

    int getNextIdatBit() throws IOException {
        if (this.nextBitIndex > 7) {
            this.currentByte = this.getNextIdatByte();
            this.nextBitIndex = 0;
        }
        return (this.currentByte & 1 << this.nextBitIndex) >> this.nextBitIndex++;
    }

    byte getNextIdatByte() throws IOException {
        byte nextByte = (byte)this.stream.read();
        this.nextBitIndex = 8;
        return nextByte;
    }

    void updateAdler(byte value) {
        int low = this.adlerValue & 0xFFFF;
        int high = this.adlerValue >> 16 & 0xFFFF;
        int valueInt = value & 0xFF;
        low = (low + valueInt) % 65521;
        high = (low + high) % 65521;
        this.adlerValue = high << 16 | low;
    }

    public int read() throws IOException {
        byte nextDecodedByte = this.lzBlockReader.getNextByte();
        this.updateAdler(nextDecodedByte);
        return nextDecodedByte & 0xFF;
    }

    public int read(byte[] buffer, int off, int len) throws IOException {
        int i = 0;
        while (i < len) {
            int b = this.read();
            if (b == -1) {
                return i;
            }
            buffer[off + i] = (byte)b;
            ++i;
        }
        return len;
    }

    void error() {
        SWT.error(40);
    }

    private void readCompressedDataHeader() throws IOException {
        int windowSizeHint;
        int compressionMethod;
        byte headerByte2;
        byte headerByte1 = this.getNextIdatByte();
        int number = (headerByte1 & 0xFF) << 8 | (headerByte2 = this.getNextIdatByte()) & 0xFF;
        if (number % 31 != 0) {
            this.error();
        }
        if ((compressionMethod = headerByte1 & 0xF) != 8) {
            this.error();
        }
        if ((windowSizeHint = (headerByte1 & 0xF0) >> 4) > 7) {
            this.error();
        }
        int windowSize = 1 << windowSizeHint + 8;
        this.lzBlockReader.setWindowSize(windowSize);
        int dictionary = headerByte2 & 0x20;
        if (dictionary != 0) {
            this.error();
        }
    }

    void checkAdler() throws IOException {
        int storedAdler = (this.getNextIdatByte() & 0xFF) << 24 | (this.getNextIdatByte() & 0xFF) << 16 | (this.getNextIdatByte() & 0xFF) << 8 | this.getNextIdatByte() & 0xFF;
        if (storedAdler != this.adlerValue) {
            this.error();
        }
    }
}

