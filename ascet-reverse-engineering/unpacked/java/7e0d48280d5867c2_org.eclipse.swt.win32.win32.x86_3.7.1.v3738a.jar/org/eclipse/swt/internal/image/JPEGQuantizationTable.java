/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGQuantizationTable
extends JPEGVariableSizeSegment {
    public static byte[] DefaultLuminanceQTable;
    public static byte[] DefaultChrominanceQTable;

    static {
        byte[] byArray = new byte[69];
        byArray[0] = -1;
        byArray[1] = -37;
        byArray[3] = 67;
        byArray[5] = 16;
        byArray[6] = 11;
        byArray[7] = 10;
        byArray[8] = 16;
        byArray[9] = 24;
        byArray[10] = 40;
        byArray[11] = 51;
        byArray[12] = 61;
        byArray[13] = 12;
        byArray[14] = 12;
        byArray[15] = 14;
        byArray[16] = 19;
        byArray[17] = 26;
        byArray[18] = 58;
        byArray[19] = 60;
        byArray[20] = 55;
        byArray[21] = 14;
        byArray[22] = 13;
        byArray[23] = 16;
        byArray[24] = 24;
        byArray[25] = 40;
        byArray[26] = 57;
        byArray[27] = 69;
        byArray[28] = 56;
        byArray[29] = 14;
        byArray[30] = 17;
        byArray[31] = 22;
        byArray[32] = 29;
        byArray[33] = 51;
        byArray[34] = 87;
        byArray[35] = 80;
        byArray[36] = 62;
        byArray[37] = 18;
        byArray[38] = 22;
        byArray[39] = 37;
        byArray[40] = 56;
        byArray[41] = 68;
        byArray[42] = 109;
        byArray[43] = 103;
        byArray[44] = 77;
        byArray[45] = 24;
        byArray[46] = 35;
        byArray[47] = 55;
        byArray[48] = 64;
        byArray[49] = 81;
        byArray[50] = 104;
        byArray[51] = 113;
        byArray[52] = 92;
        byArray[53] = 49;
        byArray[54] = 64;
        byArray[55] = 78;
        byArray[56] = 87;
        byArray[57] = 103;
        byArray[58] = 121;
        byArray[59] = 120;
        byArray[60] = 101;
        byArray[61] = 72;
        byArray[62] = 92;
        byArray[63] = 95;
        byArray[64] = 98;
        byArray[65] = 112;
        byArray[66] = 100;
        byArray[67] = 103;
        byArray[68] = 99;
        DefaultLuminanceQTable = byArray;
        byte[] byArray2 = new byte[69];
        byArray2[0] = -1;
        byArray2[1] = -37;
        byArray2[3] = 67;
        byArray2[4] = 1;
        byArray2[5] = 17;
        byArray2[6] = 18;
        byArray2[7] = 24;
        byArray2[8] = 47;
        byArray2[9] = 99;
        byArray2[10] = 99;
        byArray2[11] = 99;
        byArray2[12] = 99;
        byArray2[13] = 18;
        byArray2[14] = 21;
        byArray2[15] = 26;
        byArray2[16] = 66;
        byArray2[17] = 99;
        byArray2[18] = 99;
        byArray2[19] = 99;
        byArray2[20] = 99;
        byArray2[21] = 24;
        byArray2[22] = 26;
        byArray2[23] = 56;
        byArray2[24] = 99;
        byArray2[25] = 99;
        byArray2[26] = 99;
        byArray2[27] = 99;
        byArray2[28] = 99;
        byArray2[29] = 47;
        byArray2[30] = 66;
        byArray2[31] = 99;
        byArray2[32] = 99;
        byArray2[33] = 99;
        byArray2[34] = 99;
        byArray2[35] = 99;
        byArray2[36] = 99;
        byArray2[37] = 99;
        byArray2[38] = 99;
        byArray2[39] = 99;
        byArray2[40] = 99;
        byArray2[41] = 99;
        byArray2[42] = 99;
        byArray2[43] = 99;
        byArray2[44] = 99;
        byArray2[45] = 99;
        byArray2[46] = 99;
        byArray2[47] = 99;
        byArray2[48] = 99;
        byArray2[49] = 99;
        byArray2[50] = 99;
        byArray2[51] = 99;
        byArray2[52] = 99;
        byArray2[53] = 99;
        byArray2[54] = 99;
        byArray2[55] = 99;
        byArray2[56] = 99;
        byArray2[57] = 99;
        byArray2[58] = 99;
        byArray2[59] = 99;
        byArray2[60] = 99;
        byArray2[61] = 99;
        byArray2[62] = 99;
        byArray2[63] = 99;
        byArray2[64] = 99;
        byArray2[65] = 99;
        byArray2[66] = 99;
        byArray2[67] = 99;
        byArray2[68] = 99;
        DefaultChrominanceQTable = byArray2;
    }

    public JPEGQuantizationTable(byte[] reference) {
        super(reference);
    }

    public JPEGQuantizationTable(LEDataInputStream byteStream) {
        super(byteStream);
    }

    public static JPEGQuantizationTable defaultChrominanceTable() {
        byte[] data = new byte[DefaultChrominanceQTable.length];
        System.arraycopy(DefaultChrominanceQTable, 0, data, 0, data.length);
        return new JPEGQuantizationTable(data);
    }

    public static JPEGQuantizationTable defaultLuminanceTable() {
        byte[] data = new byte[DefaultLuminanceQTable.length];
        System.arraycopy(DefaultLuminanceQTable, 0, data, 0, data.length);
        return new JPEGQuantizationTable(data);
    }

    public int[] getQuantizationTablesKeys() {
        int[] keys = new int[4];
        int keysIndex = 0;
        int totalLength = this.getSegmentLength() - 2;
        int ofs = 4;
        while (totalLength > 64) {
            int tq = this.reference[ofs] & 0xF;
            int pq = (this.reference[ofs] & 0xFF) >> 4;
            if (pq == 0) {
                ofs += 65;
                totalLength -= 65;
            } else {
                ofs += 129;
                totalLength -= 129;
            }
            if (keysIndex >= keys.length) {
                int[] newKeys = new int[keys.length + 4];
                System.arraycopy(keys, 0, newKeys, 0, keys.length);
                keys = newKeys;
            }
            keys[keysIndex] = tq;
            ++keysIndex;
        }
        int[] newKeys = new int[keysIndex];
        System.arraycopy(keys, 0, newKeys, 0, keysIndex);
        return newKeys;
    }

    public int[][] getQuantizationTablesValues() {
        int[][] values = new int[4][];
        int valuesIndex = 0;
        int totalLength = this.getSegmentLength() - 2;
        int ofs = 4;
        while (totalLength > 64) {
            int i;
            int[] qk = new int[64];
            int pq = (this.reference[ofs] & 0xFF) >> 4;
            if (pq == 0) {
                i = 0;
                while (i < qk.length) {
                    qk[i] = this.reference[ofs + i + 1] & 0xFF;
                    ++i;
                }
                ofs += 65;
                totalLength -= 65;
            } else {
                i = 0;
                while (i < qk.length) {
                    int idx = (i - 1) * 2;
                    qk[i] = (this.reference[ofs + idx + 1] & 0xFF) * 256 + (this.reference[ofs + idx + 2] & 0xFF);
                    ++i;
                }
                ofs += 129;
                totalLength -= 129;
            }
            if (valuesIndex >= values.length) {
                int[][] newValues = new int[values.length + 4][];
                System.arraycopy(values, 0, newValues, 0, values.length);
                values = newValues;
            }
            values[valuesIndex] = qk;
            ++valuesIndex;
        }
        int[][] newValues = new int[valuesIndex][];
        System.arraycopy(values, 0, newValues, 0, valuesIndex);
        return newValues;
    }

    public void scaleBy(int qualityFactor) {
        int qFactor = qualityFactor;
        if (qFactor <= 0) {
            qFactor = 1;
        }
        if (qFactor > 100) {
            qFactor = 100;
        }
        qFactor = qFactor < 50 ? 5000 / qFactor : 200 - qFactor * 2;
        int totalLength = this.getSegmentLength() - 2;
        int ofs = 4;
        while (totalLength > 64) {
            int temp;
            int i;
            int pq = (this.reference[ofs] & 0xFF) >> 4;
            if (pq == 0) {
                i = ofs + 1;
                while (i <= ofs + 64) {
                    temp = ((this.reference[i] & 0xFF) * qFactor + 50) / 100;
                    if (temp <= 0) {
                        temp = 1;
                    }
                    if (temp > 255) {
                        temp = 255;
                    }
                    this.reference[i] = (byte)temp;
                    ++i;
                }
                ofs += 65;
                totalLength -= 65;
                continue;
            }
            i = ofs + 1;
            while (i <= ofs + 128) {
                temp = (((this.reference[i] & 0xFF) * 256 + (this.reference[i + 1] & 0xFF)) * qFactor + 50) / 100;
                if (temp <= 0) {
                    temp = 1;
                }
                if (temp > Short.MAX_VALUE) {
                    temp = Short.MAX_VALUE;
                }
                this.reference[i] = (byte)(temp >> 8);
                this.reference[i + 1] = (byte)(temp & 0xFF);
                i += 2;
            }
            ofs += 129;
            totalLength -= 129;
        }
    }

    public int signature() {
        return 65499;
    }
}

