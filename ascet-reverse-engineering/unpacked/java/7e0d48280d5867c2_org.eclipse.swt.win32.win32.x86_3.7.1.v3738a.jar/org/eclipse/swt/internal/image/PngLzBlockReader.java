/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
import org.eclipse.swt.internal.image.PngHuffmanTables;

public class PngLzBlockReader {
    boolean isLastBlock;
    byte compressionType;
    int uncompressedBytesRemaining;
    PngDecodingDataStream stream;
    PngHuffmanTables huffmanTables;
    byte[] window;
    int windowIndex;
    int copyIndex;
    int copyBytesRemaining;
    static final int UNCOMPRESSED = 0;
    static final int COMPRESSED_FIXED = 1;
    static final int COMPRESSED_DYNAMIC = 2;
    static final int END_OF_COMPRESSED_BLOCK = 256;
    static final int FIRST_LENGTH_CODE = 257;
    static final int LAST_LENGTH_CODE = 285;
    static final int FIRST_DISTANCE_CODE = 1;
    static final int LAST_DISTANCE_CODE = 29;
    static final int FIRST_CODE_LENGTH_CODE = 4;
    static final int LAST_CODE_LENGTH_CODE = 19;
    static final int[] lengthBases = new int[]{3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258};
    static final int[] extraLengthBits;
    static final int[] distanceBases;
    static final int[] extraDistanceBits;

    static {
        int[] nArray = new int[29];
        nArray[8] = 1;
        nArray[9] = 1;
        nArray[10] = 1;
        nArray[11] = 1;
        nArray[12] = 2;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 2;
        nArray[16] = 3;
        nArray[17] = 3;
        nArray[18] = 3;
        nArray[19] = 3;
        nArray[20] = 4;
        nArray[21] = 4;
        nArray[22] = 4;
        nArray[23] = 4;
        nArray[24] = 5;
        nArray[25] = 5;
        nArray[26] = 5;
        nArray[27] = 5;
        extraLengthBits = nArray;
        distanceBases = new int[]{1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577};
        int[] nArray2 = new int[30];
        nArray2[4] = 1;
        nArray2[5] = 1;
        nArray2[6] = 2;
        nArray2[7] = 2;
        nArray2[8] = 3;
        nArray2[9] = 3;
        nArray2[10] = 4;
        nArray2[11] = 4;
        nArray2[12] = 5;
        nArray2[13] = 5;
        nArray2[14] = 6;
        nArray2[15] = 6;
        nArray2[16] = 7;
        nArray2[17] = 7;
        nArray2[18] = 8;
        nArray2[19] = 8;
        nArray2[20] = 9;
        nArray2[21] = 9;
        nArray2[22] = 10;
        nArray2[23] = 10;
        nArray2[24] = 11;
        nArray2[25] = 11;
        nArray2[26] = 12;
        nArray2[27] = 12;
        nArray2[28] = 13;
        nArray2[29] = 13;
        extraDistanceBits = nArray2;
    }

    PngLzBlockReader(PngDecodingDataStream stream) {
        this.stream = stream;
        this.isLastBlock = false;
    }

    void setWindowSize(int windowSize) {
        this.window = new byte[windowSize];
    }

    void readNextBlockHeader() throws IOException {
        this.isLastBlock = this.stream.getNextIdatBit() != 0;
        this.compressionType = (byte)this.stream.getNextIdatBits(2);
        if (this.compressionType > 2) {
            this.stream.error();
        }
        if (this.compressionType == 0) {
            byte b1 = this.stream.getNextIdatByte();
            byte b2 = this.stream.getNextIdatByte();
            byte b3 = this.stream.getNextIdatByte();
            byte b4 = this.stream.getNextIdatByte();
            if (b1 != ~b3 || b2 != ~b4) {
                this.stream.error();
            }
            this.uncompressedBytesRemaining = b1 & 0xFF | (b2 & 0xFF) << 8;
        } else {
            this.huffmanTables = this.compressionType == 2 ? PngHuffmanTables.getDynamicTables(this.stream) : PngHuffmanTables.getFixedTables();
        }
    }

    byte getNextByte() throws IOException {
        if (this.compressionType == 0) {
            if (this.uncompressedBytesRemaining == 0) {
                this.readNextBlockHeader();
                return this.getNextByte();
            }
            --this.uncompressedBytesRemaining;
            return this.stream.getNextIdatByte();
        }
        return this.getNextCompressedByte();
    }

    private void assertBlockAtEnd() throws IOException {
        if (this.compressionType == 0) {
            if (this.uncompressedBytesRemaining > 0) {
                this.stream.error();
            }
        } else if (this.copyBytesRemaining > 0 || this.huffmanTables.getNextLiteralValue(this.stream) != 256) {
            this.stream.error();
        }
    }

    void assertCompressedDataAtEnd() throws IOException {
        this.assertBlockAtEnd();
        while (!this.isLastBlock) {
            this.readNextBlockHeader();
            this.assertBlockAtEnd();
        }
    }

    private byte getNextCompressedByte() throws IOException {
        if (this.copyBytesRemaining > 0) {
            byte value;
            this.window[this.windowIndex] = value = this.window[this.copyIndex];
            --this.copyBytesRemaining;
            ++this.copyIndex;
            ++this.windowIndex;
            if (this.copyIndex == this.window.length) {
                this.copyIndex = 0;
            }
            if (this.windowIndex == this.window.length) {
                this.windowIndex = 0;
            }
            return value;
        }
        int value = this.huffmanTables.getNextLiteralValue(this.stream);
        if (value < 256) {
            this.window[this.windowIndex] = (byte)value;
            ++this.windowIndex;
            if (this.windowIndex >= this.window.length) {
                this.windowIndex = 0;
            }
            return (byte)value;
        }
        if (value == 256) {
            this.readNextBlockHeader();
            return this.getNextByte();
        }
        if (value <= 285) {
            int extraBits = extraLengthBits[value - 257];
            int length = lengthBases[value - 257];
            if (extraBits > 0) {
                length += this.stream.getNextIdatBits(extraBits);
            }
            if ((value = this.huffmanTables.getNextDistanceValue(this.stream)) > 29) {
                this.stream.error();
            }
            extraBits = extraDistanceBits[value];
            int distance = distanceBases[value];
            if (extraBits > 0) {
                distance += this.stream.getNextIdatBits(extraBits);
            }
            this.copyIndex = this.windowIndex - distance;
            if (this.copyIndex < 0) {
                this.copyIndex += this.window.length;
            }
            this.copyBytesRemaining = length;
            return this.getNextCompressedByte();
        }
        this.stream.error();
        return 0;
    }
}

