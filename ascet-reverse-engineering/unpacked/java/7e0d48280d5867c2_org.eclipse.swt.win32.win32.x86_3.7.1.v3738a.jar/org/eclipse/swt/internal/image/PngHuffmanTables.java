/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
import org.eclipse.swt.internal.image.PngHuffmanTable;

public class PngHuffmanTables {
    PngHuffmanTable literalTable;
    PngHuffmanTable distanceTable;
    static PngHuffmanTable FixedLiteralTable;
    static PngHuffmanTable FixedDistanceTable;
    static final int LiteralTableSize = 288;
    static final int[] FixedLiteralLengths;
    static final int DistanceTableSize = 32;
    static final int[] FixedDistanceLengths;
    static final int LengthCodeTableSize = 19;
    static final int[] LengthCodeOrder;

    static {
        FixedLiteralLengths = new int[]{8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8};
        FixedDistanceLengths = new int[]{5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};
        int[] nArray = new int[19];
        nArray[0] = 16;
        nArray[1] = 17;
        nArray[2] = 18;
        nArray[4] = 8;
        nArray[5] = 7;
        nArray[6] = 9;
        nArray[7] = 6;
        nArray[8] = 10;
        nArray[9] = 5;
        nArray[10] = 11;
        nArray[11] = 4;
        nArray[12] = 12;
        nArray[13] = 3;
        nArray[14] = 13;
        nArray[15] = 2;
        nArray[16] = 14;
        nArray[17] = 1;
        nArray[18] = 15;
        LengthCodeOrder = nArray;
    }

    static PngHuffmanTables getDynamicTables(PngDecodingDataStream stream) throws IOException {
        return new PngHuffmanTables(stream);
    }

    static PngHuffmanTables getFixedTables() {
        return new PngHuffmanTables();
    }

    private PngHuffmanTable getFixedLiteralTable() {
        if (FixedLiteralTable == null) {
            FixedLiteralTable = new PngHuffmanTable(FixedLiteralLengths);
        }
        return FixedLiteralTable;
    }

    private PngHuffmanTable getFixedDistanceTable() {
        if (FixedDistanceTable == null) {
            FixedDistanceTable = new PngHuffmanTable(FixedDistanceLengths);
        }
        return FixedDistanceTable;
    }

    private PngHuffmanTables() {
        this.literalTable = this.getFixedLiteralTable();
        this.distanceTable = this.getFixedDistanceTable();
    }

    private PngHuffmanTables(PngDecodingDataStream stream) throws IOException {
        int literals = 257 + stream.getNextIdatBits(5);
        int distances = 1 + stream.getNextIdatBits(5);
        int codeLengthCodes = 4 + stream.getNextIdatBits(4);
        if (codeLengthCodes > 19) {
            stream.error();
        }
        int[] lengthCodes = new int[19];
        int i = 0;
        while (i < codeLengthCodes) {
            lengthCodes[PngHuffmanTables.LengthCodeOrder[i]] = stream.getNextIdatBits(3);
            ++i;
        }
        PngHuffmanTable codeLengthsTable = new PngHuffmanTable(lengthCodes);
        int[] literalLengths = this.readLengths(stream, literals, codeLengthsTable, 288);
        int[] distanceLengths = this.readLengths(stream, distances, codeLengthsTable, 32);
        this.literalTable = new PngHuffmanTable(literalLengths);
        this.distanceTable = new PngHuffmanTable(distanceLengths);
    }

    private int[] readLengths(PngDecodingDataStream stream, int numLengths, PngHuffmanTable lengthsTable, int tableSize) throws IOException {
        int[] lengths = new int[tableSize];
        int index = 0;
        while (index < numLengths) {
            int i;
            int count;
            int value = lengthsTable.getNextValue(stream);
            if (value < 16) {
                lengths[index] = value;
                ++index;
                continue;
            }
            if (value == 16) {
                count = stream.getNextIdatBits(2) + 3;
                i = 0;
                while (i < count) {
                    lengths[index] = lengths[index - 1];
                    ++index;
                    ++i;
                }
                continue;
            }
            if (value == 17) {
                count = stream.getNextIdatBits(3) + 3;
                i = 0;
                while (i < count) {
                    lengths[index] = 0;
                    ++index;
                    ++i;
                }
                continue;
            }
            if (value == 18) {
                count = stream.getNextIdatBits(7) + 11;
                i = 0;
                while (i < count) {
                    lengths[index] = 0;
                    ++index;
                    ++i;
                }
                continue;
            }
            stream.error();
        }
        return lengths;
    }

    int getNextLiteralValue(PngDecodingDataStream stream) throws IOException {
        return this.literalTable.getNextValue(stream);
    }

    int getNextDistanceValue(PngDecodingDataStream stream) throws IOException {
        return this.distanceTable.getNextValue(stream);
    }
}

