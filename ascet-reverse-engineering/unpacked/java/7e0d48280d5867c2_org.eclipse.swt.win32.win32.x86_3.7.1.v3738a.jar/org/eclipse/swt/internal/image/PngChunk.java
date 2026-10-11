/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.internal.image.PngIendChunk;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;
import org.eclipse.swt.internal.image.PngTrnsChunk;

class PngChunk {
    byte[] reference;
    static final int LENGTH_OFFSET = 0;
    static final int TYPE_OFFSET = 4;
    static final int DATA_OFFSET = 8;
    static final int TYPE_FIELD_LENGTH = 4;
    static final int LENGTH_FIELD_LENGTH = 4;
    static final int MIN_LENGTH = 12;
    static final int CHUNK_UNKNOWN = -1;
    static final int CHUNK_IHDR = 0;
    static final int CHUNK_PLTE = 1;
    static final int CHUNK_IDAT = 2;
    static final int CHUNK_IEND = 3;
    static final int CHUNK_tRNS = 5;
    static final byte[] TYPE_IHDR = new byte[]{73, 72, 68, 82};
    static final byte[] TYPE_PLTE = new byte[]{80, 76, 84, 69};
    static final byte[] TYPE_IDAT = new byte[]{73, 68, 65, 84};
    static final byte[] TYPE_IEND = new byte[]{73, 69, 78, 68};
    static final byte[] TYPE_tRNS = new byte[]{116, 82, 78, 83};
    static final int[] CRC_TABLE = new int[256];
    int length;

    static {
        int i = 0;
        while (i < 256) {
            PngChunk.CRC_TABLE[i] = i;
            int j = 0;
            while (j < 8) {
                PngChunk.CRC_TABLE[i] = (CRC_TABLE[i] & 1) == 0 ? CRC_TABLE[i] >> 1 & Integer.MAX_VALUE : 0xEDB88320 ^ CRC_TABLE[i] >> 1 & Integer.MAX_VALUE;
                ++j;
            }
            ++i;
        }
    }

    PngChunk(byte[] reference) {
        this.setReference(reference);
        if (reference.length < 4) {
            SWT.error(40);
        }
        this.length = this.getInt32(0);
    }

    PngChunk(int dataLength) {
        this(new byte[12 + dataLength]);
        this.setLength(dataLength);
    }

    byte[] getReference() {
        return this.reference;
    }

    void setReference(byte[] reference) {
        this.reference = reference;
    }

    int getInt16(int offset) {
        int answer = 0;
        answer |= (this.reference[offset] & 0xFF) << 8;
        return answer |= this.reference[offset + 1] & 0xFF;
    }

    void setInt16(int offset, int value) {
        this.reference[offset] = (byte)(value >> 8 & 0xFF);
        this.reference[offset + 1] = (byte)(value & 0xFF);
    }

    int getInt32(int offset) {
        int answer = 0;
        answer |= (this.reference[offset] & 0xFF) << 24;
        answer |= (this.reference[offset + 1] & 0xFF) << 16;
        answer |= (this.reference[offset + 2] & 0xFF) << 8;
        return answer |= this.reference[offset + 3] & 0xFF;
    }

    void setInt32(int offset, int value) {
        this.reference[offset] = (byte)(value >> 24 & 0xFF);
        this.reference[offset + 1] = (byte)(value >> 16 & 0xFF);
        this.reference[offset + 2] = (byte)(value >> 8 & 0xFF);
        this.reference[offset + 3] = (byte)(value & 0xFF);
    }

    int getLength() {
        return this.length;
    }

    void setLength(int value) {
        this.setInt32(0, value);
        this.length = value;
    }

    byte[] getTypeBytes() {
        byte[] type = new byte[4];
        System.arraycopy(this.reference, 4, type, 0, 4);
        return type;
    }

    void setType(byte[] value) {
        if (value.length != 4) {
            SWT.error(5);
        }
        System.arraycopy(value, 0, this.reference, 4, 4);
    }

    byte[] getData() {
        int dataLength = this.getLength();
        if (this.reference.length < 12 + dataLength) {
            SWT.error(6);
        }
        byte[] data = new byte[dataLength];
        System.arraycopy(this.reference, 8, data, 0, dataLength);
        return data;
    }

    void setData(byte[] data) {
        this.setLength(data.length);
        System.arraycopy(data, 0, this.reference, 8, data.length);
        this.setCRC(this.computeCRC());
    }

    int getCRC() {
        int crcOffset = 8 + this.getLength();
        return this.getInt32(crcOffset);
    }

    void setCRC(int value) {
        int crcOffset = 8 + this.getLength();
        this.setInt32(crcOffset, value);
    }

    int getSize() {
        return 12 + this.getLength();
    }

    boolean checkCRC() {
        int storedCRC;
        int crc = this.computeCRC();
        return crc == (storedCRC = this.getCRC());
    }

    int computeCRC() {
        int crc = -1;
        int start = 4;
        int stop = 8 + this.getLength();
        int i = start;
        while (i < stop) {
            int index = (crc ^ this.reference[i]) & 0xFF;
            crc = CRC_TABLE[index] ^ crc >> 8 & 0xFFFFFF;
            ++i;
        }
        return ~crc;
    }

    boolean typeMatchesArray(byte[] array) {
        int i = 0;
        while (i < 4) {
            if (this.reference[4 + i] != array[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    boolean isCritical() {
        char c = (char)this.getTypeBytes()[0];
        return 'A' <= c && c <= 'Z';
    }

    int getChunkType() {
        if (this.typeMatchesArray(TYPE_IHDR)) {
            return 0;
        }
        if (this.typeMatchesArray(TYPE_PLTE)) {
            return 1;
        }
        if (this.typeMatchesArray(TYPE_IDAT)) {
            return 2;
        }
        if (this.typeMatchesArray(TYPE_IEND)) {
            return 3;
        }
        if (this.typeMatchesArray(TYPE_tRNS)) {
            return 5;
        }
        return -1;
    }

    static PngChunk readNextFromStream(LEDataInputStream stream) {
        byte[] chunk;
        PngChunk tempChunk;
        block12: {
            int result;
            byte[] headerBytes;
            block11: {
                try {
                    int headerLength = 8;
                    headerBytes = new byte[headerLength];
                    result = stream.read(headerBytes, 0, headerLength);
                    stream.unread(headerBytes);
                    if (result == headerLength) break block11;
                    return null;
                }
                catch (IOException iOException) {
                    return null;
                }
            }
            tempChunk = new PngChunk(headerBytes);
            int chunkLength = tempChunk.getSize();
            chunk = new byte[chunkLength];
            result = stream.read(chunk, 0, chunkLength);
            if (result == chunkLength) break block12;
            return null;
        }
        switch (tempChunk.getChunkType()) {
            case 0: {
                return new PngIhdrChunk(chunk);
            }
            case 1: {
                return new PngPlteChunk(chunk);
            }
            case 2: {
                return new PngIdatChunk(chunk);
            }
            case 3: {
                return new PngIendChunk(chunk);
            }
            case 5: {
                return new PngTrnsChunk(chunk);
            }
        }
        return new PngChunk(chunk);
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk) {
        byte[] type;
        char c;
        if (this.reference.length < 12) {
            SWT.error(40);
        }
        if ('A' > (c = (char)(type = this.getTypeBytes())[2]) || c > 'Z') {
            SWT.error(40);
        }
        int i = 0;
        while (i < 4) {
            c = (char)type[i];
            if (!('a' <= c && c <= 'z' || 'A' <= c && c <= 'Z')) {
                SWT.error(40);
            }
            ++i;
        }
        if (!this.checkCRC()) {
            SWT.error(40);
        }
    }

    void contributeToString(StringBuffer buffer) {
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("{");
        buffer.append("\n\tLength: ");
        buffer.append(this.getLength());
        buffer.append("\n\tType: ");
        byte[] type = this.getTypeBytes();
        int i = 0;
        while (i < type.length) {
            buffer.append((char)type[i]);
            ++i;
        }
        this.contributeToString(buffer);
        buffer.append("\n\tCRC: ");
        buffer.append(Integer.toHexString(this.getCRC()));
        buffer.append("\n}");
        return buffer.toString();
    }
}

