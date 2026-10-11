/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;

final class TIFFModifiedHuffmanCodec {
    static final short[][][] BLACK_CODE;
    static final short[][][] WHITE_CODE;
    static final int BLACK_MIN_BITS = 2;
    static final int WHITE_MIN_BITS = 4;
    boolean isWhite;
    int whiteValue = 0;
    int blackValue = 1;
    byte[] src;
    byte[] dest;
    int byteOffsetSrc = 0;
    int bitOffsetSrc = 0;
    int byteOffsetDest = 0;
    int bitOffsetDest = 0;
    int code = 0;
    int nbrBits = 0;
    int rowSize;

    static {
        short[][][] sArrayArray = new short[12][][];
        sArrayArray[0] = new short[][]{{2, 3}, {3, 2}};
        sArrayArray[1] = new short[][]{{2, 1}, {3, 4}};
        sArrayArray[2] = new short[][]{{2, 6}, {3, 5}};
        sArrayArray[3] = new short[][]{{3, 7}};
        sArrayArray[4] = new short[][]{{4, 9}, {5, 8}};
        sArrayArray[5] = new short[][]{{4, 10}, {5, 11}, {7, 12}};
        sArrayArray[6] = new short[][]{{4, 13}, {7, 14}};
        sArrayArray[7] = new short[][]{{24, 15}};
        short[][] sArrayArray2 = new short[5][];
        sArrayArray2[0] = new short[]{8, 18};
        sArrayArray2[1] = new short[]{15, 64};
        sArrayArray2[2] = new short[]{23, 16};
        sArrayArray2[3] = new short[]{24, 17};
        short[] sArray = new short[2];
        sArray[0] = 55;
        sArrayArray2[4] = sArray;
        sArrayArray[8] = sArrayArray2;
        short[][] sArrayArray3 = new short[11][];
        short[] sArray2 = new short[2];
        sArray2[1] = -1;
        sArrayArray3[0] = sArray2;
        sArrayArray3[1] = new short[]{8, 1792};
        sArrayArray3[2] = new short[]{23, 24};
        sArrayArray3[3] = new short[]{24, 25};
        sArrayArray3[4] = new short[]{40, 23};
        sArrayArray3[5] = new short[]{55, 22};
        sArrayArray3[6] = new short[]{103, 19};
        sArrayArray3[7] = new short[]{104, 20};
        sArrayArray3[8] = new short[]{108, 21};
        sArrayArray3[9] = new short[]{12, 1856};
        sArrayArray3[10] = new short[]{13, 1920};
        sArrayArray[9] = sArrayArray3;
        sArrayArray[10] = new short[][]{{18, 1984}, {19, 2048}, {20, 2112}, {21, 2176}, {22, 2240}, {23, 2304}, {28, 2368}, {29, 2432}, {30, 2496}, {31, 2560}, {36, 52}, {39, 55}, {40, 56}, {43, 59}, {44, 60}, {51, 320}, {52, 384}, {53, 448}, {55, 53}, {56, 54}, {82, 50}, {83, 51}, {84, 44}, {85, 45}, {86, 46}, {87, 47}, {88, 57}, {89, 58}, {90, 61}, {91, 256}, {100, 48}, {101, 49}, {102, 62}, {103, 63}, {104, 30}, {105, 31}, {106, 32}, {107, 33}, {108, 40}, {109, 41}, {200, 128}, {201, 192}, {202, 26}, {203, 27}, {204, 28}, {205, 29}, {210, 34}, {211, 35}, {212, 36}, {213, 37}, {214, 38}, {215, 39}, {218, 42}, {219, 43}};
        sArrayArray[11] = new short[][]{{74, 640}, {75, 704}, {76, 768}, {77, 832}, {82, 1280}, {83, 1344}, {84, 1408}, {85, 1472}, {90, 1536}, {91, 1600}, {100, 1664}, {101, 1728}, {108, 512}, {109, 576}, {114, 896}, {115, 960}, {116, 1024}, {117, 1088}, {118, 1152}, {119, 1216}};
        BLACK_CODE = sArrayArray;
        short[][][] sArrayArray4 = new short[9][][];
        sArrayArray4[0] = new short[][]{{7, 2}, {8, 3}, {11, 4}, {12, 5}, {14, 6}, {15, 7}};
        sArrayArray4[1] = new short[][]{{7, 10}, {8, 11}, {18, 128}, {19, 8}, {20, 9}, {27, 64}};
        sArrayArray4[2] = new short[][]{{3, 13}, {7, 1}, {8, 12}, {23, 192}, {24, 1664}, {42, 16}, {43, 17}, {52, 14}, {53, 15}};
        sArrayArray4[3] = new short[][]{{3, 22}, {4, 23}, {8, 20}, {12, 19}, {19, 26}, {23, 21}, {24, 28}, {36, 27}, {39, 18}, {40, 24}, {43, 25}, {55, 256}};
        short[][] sArrayArray5 = new short[42][];
        sArrayArray5[0] = new short[]{2, 29};
        sArrayArray5[1] = new short[]{3, 30};
        sArrayArray5[2] = new short[]{4, 45};
        sArrayArray5[3] = new short[]{5, 46};
        sArrayArray5[4] = new short[]{10, 47};
        sArrayArray5[5] = new short[]{11, 48};
        sArrayArray5[6] = new short[]{18, 33};
        sArrayArray5[7] = new short[]{19, 34};
        sArrayArray5[8] = new short[]{20, 35};
        sArrayArray5[9] = new short[]{21, 36};
        sArrayArray5[10] = new short[]{22, 37};
        sArrayArray5[11] = new short[]{23, 38};
        sArrayArray5[12] = new short[]{26, 31};
        sArrayArray5[13] = new short[]{27, 32};
        sArrayArray5[14] = new short[]{36, 53};
        sArrayArray5[15] = new short[]{37, 54};
        sArrayArray5[16] = new short[]{40, 39};
        sArrayArray5[17] = new short[]{41, 40};
        sArrayArray5[18] = new short[]{42, 41};
        sArrayArray5[19] = new short[]{43, 42};
        sArrayArray5[20] = new short[]{44, 43};
        sArrayArray5[21] = new short[]{45, 44};
        sArrayArray5[22] = new short[]{50, 61};
        sArrayArray5[23] = new short[]{51, 62};
        sArrayArray5[24] = new short[]{52, 63};
        short[] sArray3 = new short[2];
        sArray3[0] = 53;
        sArrayArray5[25] = sArray3;
        sArrayArray5[26] = new short[]{54, 320};
        sArrayArray5[27] = new short[]{55, 384};
        sArrayArray5[28] = new short[]{74, 59};
        sArrayArray5[29] = new short[]{75, 60};
        sArrayArray5[30] = new short[]{82, 49};
        sArrayArray5[31] = new short[]{83, 50};
        sArrayArray5[32] = new short[]{84, 51};
        sArrayArray5[33] = new short[]{85, 52};
        sArrayArray5[34] = new short[]{88, 55};
        sArrayArray5[35] = new short[]{89, 56};
        sArrayArray5[36] = new short[]{90, 57};
        sArrayArray5[37] = new short[]{91, 58};
        sArrayArray5[38] = new short[]{100, 448};
        sArrayArray5[39] = new short[]{101, 512};
        sArrayArray5[40] = new short[]{103, 640};
        sArrayArray5[41] = new short[]{104, 576};
        sArrayArray4[4] = sArrayArray5;
        sArrayArray4[5] = new short[][]{{152, 1472}, {153, 1536}, {154, 1600}, {155, 1728}, {204, 704}, {205, 768}, {210, 832}, {211, 896}, {212, 960}, {213, 1024}, {214, 1088}, {215, 1152}, {216, 1216}, {217, 1280}, {218, 1344}, {219, 1408}};
        sArrayArray4[6] = new short[0][];
        sArrayArray4[7] = new short[][]{{8, 1792}, {12, 1856}, {13, 1920}};
        sArrayArray4[8] = new short[][]{{1, -1}, {18, 1984}, {19, 2048}, {20, 2112}, {21, 2176}, {22, 2240}, {23, 2304}, {28, 2368}, {29, 2432}, {30, 2496}, {31, 2560}};
        WHITE_CODE = sArrayArray4;
    }

    TIFFModifiedHuffmanCodec() {
    }

    public int decode(byte[] src, byte[] dest, int offsetDest, int rowSize, int nRows) {
        this.src = src;
        this.dest = dest;
        this.rowSize = rowSize;
        this.byteOffsetSrc = 0;
        this.bitOffsetSrc = 0;
        this.byteOffsetDest = offsetDest;
        this.bitOffsetDest = 0;
        int cnt = 0;
        while (cnt < nRows && this.decodeRow()) {
            ++cnt;
            if (this.bitOffsetDest <= 0) continue;
            ++this.byteOffsetDest;
            this.bitOffsetDest = 0;
        }
        return this.byteOffsetDest - offsetDest;
    }

    boolean decodeRow() {
        this.isWhite = true;
        int n = 0;
        while (n < this.rowSize) {
            int runLength = this.decodeRunLength();
            if (runLength < 0) {
                return false;
            }
            n += runLength;
            this.setNextBits(this.isWhite ? this.whiteValue : this.blackValue, runLength);
            boolean bl = this.isWhite = !this.isWhite;
        }
        return true;
    }

    int decodeRunLength() {
        int runLength = 0;
        short partialRun = 0;
        short[][][] huffmanCode = this.isWhite ? WHITE_CODE : BLACK_CODE;
        while (true) {
            boolean found = false;
            this.nbrBits = this.isWhite ? 4 : 2;
            this.code = this.getNextBits(this.nbrBits);
            int i = 0;
            while (i < huffmanCode.length) {
                int j = 0;
                while (j < huffmanCode[i].length) {
                    if (huffmanCode[i][j][0] == this.code) {
                        found = true;
                        partialRun = huffmanCode[i][j][1];
                        if (partialRun == -1) {
                            if (this.byteOffsetSrc != this.src.length - 1) break;
                            return -1;
                        }
                        runLength += partialRun;
                        if (partialRun >= 64) break;
                        return runLength;
                    }
                    ++j;
                }
                if (found) break;
                this.code = this.code << 1 | this.getNextBit();
                ++i;
            }
            if (found) continue;
            SWT.error(40);
        }
    }

    int getNextBit() {
        int value = this.src[this.byteOffsetSrc] >>> 7 - this.bitOffsetSrc & 1;
        ++this.bitOffsetSrc;
        if (this.bitOffsetSrc > 7) {
            ++this.byteOffsetSrc;
            this.bitOffsetSrc = 0;
        }
        return value;
    }

    int getNextBits(int cnt) {
        int value = 0;
        int i = 0;
        while (i < cnt) {
            value = value << 1 | this.getNextBit();
            ++i;
        }
        return value;
    }

    void setNextBits(int value, int cnt) {
        int n = cnt;
        while (this.bitOffsetDest > 0 && this.bitOffsetDest <= 7 && n > 0) {
            this.dest[this.byteOffsetDest] = value == 1 ? (byte)(this.dest[this.byteOffsetDest] | 1 << 7 - this.bitOffsetDest) : (byte)(this.dest[this.byteOffsetDest] & ~(1 << 7 - this.bitOffsetDest));
            --n;
            ++this.bitOffsetDest;
        }
        if (this.bitOffsetDest == 8) {
            ++this.byteOffsetDest;
            this.bitOffsetDest = 0;
        }
        while (n >= 8) {
            this.dest[this.byteOffsetDest++] = (byte)(value == 1 ? 255 : 0);
            n -= 8;
        }
        while (n > 0) {
            this.dest[this.byteOffsetDest] = value == 1 ? (byte)(this.dest[this.byteOffsetDest] | 1 << 7 - this.bitOffsetDest) : (byte)(this.dest[this.byteOffsetDest] & ~(1 << 7 - this.bitOffsetDest));
            --n;
            ++this.bitOffsetDest;
        }
    }
}

