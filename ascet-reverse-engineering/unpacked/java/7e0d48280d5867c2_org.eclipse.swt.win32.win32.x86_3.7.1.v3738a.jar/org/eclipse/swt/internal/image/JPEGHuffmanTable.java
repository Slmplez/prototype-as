/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGHuffmanTable
extends JPEGVariableSizeSegment {
    JPEGHuffmanTable[] allTables;
    int tableClass;
    int tableIdentifier;
    int[] dhMaxCodes;
    int[] dhMinCodes;
    int[] dhValPtrs;
    int[] dhValues;
    int[] ehCodes;
    byte[] ehCodeLengths;
    static byte[] DCLuminanceTable;
    static byte[] DCChrominanceTable;
    static byte[] ACLuminanceTable;
    static byte[] ACChrominanceTable;

    static {
        byte[] byArray = new byte[33];
        byArray[0] = -1;
        byArray[1] = -60;
        byArray[3] = 31;
        byArray[6] = 1;
        byArray[7] = 5;
        byArray[8] = 1;
        byArray[9] = 1;
        byArray[10] = 1;
        byArray[11] = 1;
        byArray[12] = 1;
        byArray[13] = 1;
        byArray[22] = 1;
        byArray[23] = 2;
        byArray[24] = 3;
        byArray[25] = 4;
        byArray[26] = 5;
        byArray[27] = 6;
        byArray[28] = 7;
        byArray[29] = 8;
        byArray[30] = 9;
        byArray[31] = 10;
        byArray[32] = 11;
        DCLuminanceTable = byArray;
        byte[] byArray2 = new byte[33];
        byArray2[0] = -1;
        byArray2[1] = -60;
        byArray2[3] = 31;
        byArray2[4] = 1;
        byArray2[6] = 3;
        byArray2[7] = 1;
        byArray2[8] = 1;
        byArray2[9] = 1;
        byArray2[10] = 1;
        byArray2[11] = 1;
        byArray2[12] = 1;
        byArray2[13] = 1;
        byArray2[14] = 1;
        byArray2[15] = 1;
        byArray2[22] = 1;
        byArray2[23] = 2;
        byArray2[24] = 3;
        byArray2[25] = 4;
        byArray2[26] = 5;
        byArray2[27] = 6;
        byArray2[28] = 7;
        byArray2[29] = 8;
        byArray2[30] = 9;
        byArray2[31] = 10;
        byArray2[32] = 11;
        DCChrominanceTable = byArray2;
        byte[] byArray3 = new byte[183];
        byArray3[0] = -1;
        byArray3[1] = -60;
        byArray3[3] = -75;
        byArray3[4] = 16;
        byArray3[6] = 2;
        byArray3[7] = 1;
        byArray3[8] = 3;
        byArray3[9] = 3;
        byArray3[10] = 2;
        byArray3[11] = 4;
        byArray3[12] = 3;
        byArray3[13] = 5;
        byArray3[14] = 5;
        byArray3[15] = 4;
        byArray3[16] = 4;
        byArray3[19] = 1;
        byArray3[20] = 125;
        byArray3[21] = 1;
        byArray3[22] = 2;
        byArray3[23] = 3;
        byArray3[25] = 4;
        byArray3[26] = 17;
        byArray3[27] = 5;
        byArray3[28] = 18;
        byArray3[29] = 33;
        byArray3[30] = 49;
        byArray3[31] = 65;
        byArray3[32] = 6;
        byArray3[33] = 19;
        byArray3[34] = 81;
        byArray3[35] = 97;
        byArray3[36] = 7;
        byArray3[37] = 34;
        byArray3[38] = 113;
        byArray3[39] = 20;
        byArray3[40] = 50;
        byArray3[41] = -127;
        byArray3[42] = -111;
        byArray3[43] = -95;
        byArray3[44] = 8;
        byArray3[45] = 35;
        byArray3[46] = 66;
        byArray3[47] = -79;
        byArray3[48] = -63;
        byArray3[49] = 21;
        byArray3[50] = 82;
        byArray3[51] = -47;
        byArray3[52] = -16;
        byArray3[53] = 36;
        byArray3[54] = 51;
        byArray3[55] = 98;
        byArray3[56] = 114;
        byArray3[57] = -126;
        byArray3[58] = 9;
        byArray3[59] = 10;
        byArray3[60] = 22;
        byArray3[61] = 23;
        byArray3[62] = 24;
        byArray3[63] = 25;
        byArray3[64] = 26;
        byArray3[65] = 37;
        byArray3[66] = 38;
        byArray3[67] = 39;
        byArray3[68] = 40;
        byArray3[69] = 41;
        byArray3[70] = 42;
        byArray3[71] = 52;
        byArray3[72] = 53;
        byArray3[73] = 54;
        byArray3[74] = 55;
        byArray3[75] = 56;
        byArray3[76] = 57;
        byArray3[77] = 58;
        byArray3[78] = 67;
        byArray3[79] = 68;
        byArray3[80] = 69;
        byArray3[81] = 70;
        byArray3[82] = 71;
        byArray3[83] = 72;
        byArray3[84] = 73;
        byArray3[85] = 74;
        byArray3[86] = 83;
        byArray3[87] = 84;
        byArray3[88] = 85;
        byArray3[89] = 86;
        byArray3[90] = 87;
        byArray3[91] = 88;
        byArray3[92] = 89;
        byArray3[93] = 90;
        byArray3[94] = 99;
        byArray3[95] = 100;
        byArray3[96] = 101;
        byArray3[97] = 102;
        byArray3[98] = 103;
        byArray3[99] = 104;
        byArray3[100] = 105;
        byArray3[101] = 106;
        byArray3[102] = 115;
        byArray3[103] = 116;
        byArray3[104] = 117;
        byArray3[105] = 118;
        byArray3[106] = 119;
        byArray3[107] = 120;
        byArray3[108] = 121;
        byArray3[109] = 122;
        byArray3[110] = -125;
        byArray3[111] = -124;
        byArray3[112] = -123;
        byArray3[113] = -122;
        byArray3[114] = -121;
        byArray3[115] = -120;
        byArray3[116] = -119;
        byArray3[117] = -118;
        byArray3[118] = -110;
        byArray3[119] = -109;
        byArray3[120] = -108;
        byArray3[121] = -107;
        byArray3[122] = -106;
        byArray3[123] = -105;
        byArray3[124] = -104;
        byArray3[125] = -103;
        byArray3[126] = -102;
        byArray3[127] = -94;
        byArray3[128] = -93;
        byArray3[129] = -92;
        byArray3[130] = -91;
        byArray3[131] = -90;
        byArray3[132] = -89;
        byArray3[133] = -88;
        byArray3[134] = -87;
        byArray3[135] = -86;
        byArray3[136] = -78;
        byArray3[137] = -77;
        byArray3[138] = -76;
        byArray3[139] = -75;
        byArray3[140] = -74;
        byArray3[141] = -73;
        byArray3[142] = -72;
        byArray3[143] = -71;
        byArray3[144] = -70;
        byArray3[145] = -62;
        byArray3[146] = -61;
        byArray3[147] = -60;
        byArray3[148] = -59;
        byArray3[149] = -58;
        byArray3[150] = -57;
        byArray3[151] = -56;
        byArray3[152] = -55;
        byArray3[153] = -54;
        byArray3[154] = -46;
        byArray3[155] = -45;
        byArray3[156] = -44;
        byArray3[157] = -43;
        byArray3[158] = -42;
        byArray3[159] = -41;
        byArray3[160] = -40;
        byArray3[161] = -39;
        byArray3[162] = -38;
        byArray3[163] = -31;
        byArray3[164] = -30;
        byArray3[165] = -29;
        byArray3[166] = -28;
        byArray3[167] = -27;
        byArray3[168] = -26;
        byArray3[169] = -25;
        byArray3[170] = -24;
        byArray3[171] = -23;
        byArray3[172] = -22;
        byArray3[173] = -15;
        byArray3[174] = -14;
        byArray3[175] = -13;
        byArray3[176] = -12;
        byArray3[177] = -11;
        byArray3[178] = -10;
        byArray3[179] = -9;
        byArray3[180] = -8;
        byArray3[181] = -7;
        byArray3[182] = -6;
        ACLuminanceTable = byArray3;
        byte[] byArray4 = new byte[183];
        byArray4[0] = -1;
        byArray4[1] = -60;
        byArray4[3] = -75;
        byArray4[4] = 17;
        byArray4[6] = 2;
        byArray4[7] = 1;
        byArray4[8] = 2;
        byArray4[9] = 4;
        byArray4[10] = 4;
        byArray4[11] = 3;
        byArray4[12] = 4;
        byArray4[13] = 7;
        byArray4[14] = 5;
        byArray4[15] = 4;
        byArray4[16] = 4;
        byArray4[18] = 1;
        byArray4[19] = 2;
        byArray4[20] = 119;
        byArray4[22] = 1;
        byArray4[23] = 2;
        byArray4[24] = 3;
        byArray4[25] = 17;
        byArray4[26] = 4;
        byArray4[27] = 5;
        byArray4[28] = 33;
        byArray4[29] = 49;
        byArray4[30] = 6;
        byArray4[31] = 18;
        byArray4[32] = 65;
        byArray4[33] = 81;
        byArray4[34] = 7;
        byArray4[35] = 97;
        byArray4[36] = 113;
        byArray4[37] = 19;
        byArray4[38] = 34;
        byArray4[39] = 50;
        byArray4[40] = -127;
        byArray4[41] = 8;
        byArray4[42] = 20;
        byArray4[43] = 66;
        byArray4[44] = -111;
        byArray4[45] = -95;
        byArray4[46] = -79;
        byArray4[47] = -63;
        byArray4[48] = 9;
        byArray4[49] = 35;
        byArray4[50] = 51;
        byArray4[51] = 82;
        byArray4[52] = -16;
        byArray4[53] = 21;
        byArray4[54] = 98;
        byArray4[55] = 114;
        byArray4[56] = -47;
        byArray4[57] = 10;
        byArray4[58] = 22;
        byArray4[59] = 36;
        byArray4[60] = 52;
        byArray4[61] = -31;
        byArray4[62] = 37;
        byArray4[63] = -15;
        byArray4[64] = 23;
        byArray4[65] = 24;
        byArray4[66] = 25;
        byArray4[67] = 26;
        byArray4[68] = 38;
        byArray4[69] = 39;
        byArray4[70] = 40;
        byArray4[71] = 41;
        byArray4[72] = 42;
        byArray4[73] = 53;
        byArray4[74] = 54;
        byArray4[75] = 55;
        byArray4[76] = 56;
        byArray4[77] = 57;
        byArray4[78] = 58;
        byArray4[79] = 67;
        byArray4[80] = 68;
        byArray4[81] = 69;
        byArray4[82] = 70;
        byArray4[83] = 71;
        byArray4[84] = 72;
        byArray4[85] = 73;
        byArray4[86] = 74;
        byArray4[87] = 83;
        byArray4[88] = 84;
        byArray4[89] = 85;
        byArray4[90] = 86;
        byArray4[91] = 87;
        byArray4[92] = 88;
        byArray4[93] = 89;
        byArray4[94] = 90;
        byArray4[95] = 99;
        byArray4[96] = 100;
        byArray4[97] = 101;
        byArray4[98] = 102;
        byArray4[99] = 103;
        byArray4[100] = 104;
        byArray4[101] = 105;
        byArray4[102] = 106;
        byArray4[103] = 115;
        byArray4[104] = 116;
        byArray4[105] = 117;
        byArray4[106] = 118;
        byArray4[107] = 119;
        byArray4[108] = 120;
        byArray4[109] = 121;
        byArray4[110] = 122;
        byArray4[111] = -126;
        byArray4[112] = -125;
        byArray4[113] = -124;
        byArray4[114] = -123;
        byArray4[115] = -122;
        byArray4[116] = -121;
        byArray4[117] = -120;
        byArray4[118] = -119;
        byArray4[119] = -118;
        byArray4[120] = -110;
        byArray4[121] = -109;
        byArray4[122] = -108;
        byArray4[123] = -107;
        byArray4[124] = -106;
        byArray4[125] = -105;
        byArray4[126] = -104;
        byArray4[127] = -103;
        byArray4[128] = -102;
        byArray4[129] = -94;
        byArray4[130] = -93;
        byArray4[131] = -92;
        byArray4[132] = -91;
        byArray4[133] = -90;
        byArray4[134] = -89;
        byArray4[135] = -88;
        byArray4[136] = -87;
        byArray4[137] = -86;
        byArray4[138] = -78;
        byArray4[139] = -77;
        byArray4[140] = -76;
        byArray4[141] = -75;
        byArray4[142] = -74;
        byArray4[143] = -73;
        byArray4[144] = -72;
        byArray4[145] = -71;
        byArray4[146] = -70;
        byArray4[147] = -62;
        byArray4[148] = -61;
        byArray4[149] = -60;
        byArray4[150] = -59;
        byArray4[151] = -58;
        byArray4[152] = -57;
        byArray4[153] = -56;
        byArray4[154] = -55;
        byArray4[155] = -54;
        byArray4[156] = -46;
        byArray4[157] = -45;
        byArray4[158] = -44;
        byArray4[159] = -43;
        byArray4[160] = -42;
        byArray4[161] = -41;
        byArray4[162] = -40;
        byArray4[163] = -39;
        byArray4[164] = -38;
        byArray4[165] = -30;
        byArray4[166] = -29;
        byArray4[167] = -28;
        byArray4[168] = -27;
        byArray4[169] = -26;
        byArray4[170] = -25;
        byArray4[171] = -24;
        byArray4[172] = -23;
        byArray4[173] = -22;
        byArray4[174] = -14;
        byArray4[175] = -13;
        byArray4[176] = -12;
        byArray4[177] = -11;
        byArray4[178] = -10;
        byArray4[179] = -9;
        byArray4[180] = -8;
        byArray4[181] = -7;
        byArray4[182] = -6;
        ACChrominanceTable = byArray4;
    }

    public JPEGHuffmanTable(byte[] reference) {
        super(reference);
    }

    public JPEGHuffmanTable(LEDataInputStream byteStream) {
        super(byteStream);
        this.initialize();
    }

    public JPEGHuffmanTable[] getAllTables() {
        return this.allTables;
    }

    public static JPEGHuffmanTable getDefaultACChrominanceTable() {
        JPEGHuffmanTable result = new JPEGHuffmanTable(ACChrominanceTable);
        result.initialize();
        return result;
    }

    public static JPEGHuffmanTable getDefaultACLuminanceTable() {
        JPEGHuffmanTable result = new JPEGHuffmanTable(ACLuminanceTable);
        result.initialize();
        return result;
    }

    public static JPEGHuffmanTable getDefaultDCChrominanceTable() {
        JPEGHuffmanTable result = new JPEGHuffmanTable(DCChrominanceTable);
        result.initialize();
        return result;
    }

    public static JPEGHuffmanTable getDefaultDCLuminanceTable() {
        JPEGHuffmanTable result = new JPEGHuffmanTable(DCLuminanceTable);
        result.initialize();
        return result;
    }

    public int[] getDhMaxCodes() {
        return this.dhMaxCodes;
    }

    public int[] getDhMinCodes() {
        return this.dhMinCodes;
    }

    public int[] getDhValPtrs() {
        return this.dhValPtrs;
    }

    public int[] getDhValues() {
        return this.dhValues;
    }

    public int getTableClass() {
        return this.tableClass;
    }

    public int getTableIdentifier() {
        return this.tableIdentifier;
    }

    /*
     * Unable to fully structure code
     */
    void initialize() {
        totalLength = this.getSegmentLength() - 2;
        ofs = 4;
        bits = new int[16];
        huffTables = new JPEGHuffmanTable[8];
        huffTableCount = 0;
        while (totalLength > 0) {
            tc = (this.reference[ofs] & 255) >> 4;
            tid = this.reference[ofs] & 15;
            ++ofs;
            count = 0;
            i = 0;
            while (i < bits.length) {
                bits[i] = bCount = this.reference[ofs + i] & 255;
                count += bCount;
                ++i;
            }
            ofs += 16;
            totalLength -= 17;
            huffVals = new int[count];
            i = 0;
            while (i < count) {
                huffVals[i] = this.reference[ofs + i] & 255;
                ++i;
            }
            ofs += count;
            totalLength -= count;
            huffCodeLengths = new int[50];
            huffCodeLengthsIndex = 0;
            i = 0;
            while (i < 16) {
                j = 0;
                while (j < bits[i]) {
                    if (huffCodeLengthsIndex >= huffCodeLengths.length) {
                        newHuffCodeLengths = new int[huffCodeLengths.length + 50];
                        System.arraycopy(huffCodeLengths, 0, newHuffCodeLengths, 0, huffCodeLengths.length);
                        huffCodeLengths = newHuffCodeLengths;
                    }
                    huffCodeLengths[huffCodeLengthsIndex] = i + 1;
                    ++huffCodeLengthsIndex;
                    ++j;
                }
                ++i;
            }
            if (huffCodeLengthsIndex < huffCodeLengths.length) {
                newHuffCodeLengths = new int[huffCodeLengthsIndex];
                System.arraycopy(huffCodeLengths, 0, newHuffCodeLengths, 0, huffCodeLengthsIndex);
                huffCodeLengths = newHuffCodeLengths;
            }
            huffCodes = new int[50];
            huffCodesIndex = 0;
            k = 1;
            code = 0;
            si = huffCodeLengths[0];
            p = 0;
            ** GOTO lbl65
            {
                if (huffCodesIndex >= huffCodes.length) {
                    newHuffCodes = new int[huffCodes.length + 50];
                    System.arraycopy(huffCodes, 0, newHuffCodes, 0, huffCodes.length);
                    huffCodes = newHuffCodes;
                }
                huffCodes[huffCodesIndex] = code++;
                ++huffCodesIndex;
                ++p;
                do {
                    if (p < huffCodeLengthsIndex && huffCodeLengths[p] == si) continue block5;
                    code *= 2;
                    ++si;
lbl65:
                    // 2 sources

                } while (p < huffCodeLengthsIndex);
            }
            if (huffCodesIndex < huffCodes.length) {
                newHuffCodes = new int[huffCodesIndex];
                System.arraycopy(huffCodes, 0, newHuffCodes, 0, huffCodesIndex);
                huffCodes = newHuffCodes;
            }
            k = 0;
            maxCodes = new int[16];
            minCodes = new int[16];
            valPtrs = new int[16];
            i = 0;
            while (i < 16) {
                bSize = bits[i];
                if (bSize == 0) {
                    maxCodes[i] = -1;
                } else {
                    valPtrs[i] = k;
                    minCodes[i] = huffCodes[k];
                    maxCodes[i] = huffCodes[(k += bSize) - 1];
                }
                ++i;
            }
            eHuffCodes = new int[256];
            eHuffSize = new byte[256];
            i = 0;
            while (i < huffCodesIndex) {
                eHuffCodes[huffVals[i]] = huffCodes[i];
                eHuffSize[huffVals[i]] = (byte)huffCodeLengths[i];
                ++i;
            }
            dhtTable = new JPEGHuffmanTable(this.reference);
            dhtTable.tableClass = tc;
            dhtTable.tableIdentifier = tid;
            dhtTable.dhValues = huffVals;
            dhtTable.dhMinCodes = minCodes;
            dhtTable.dhMaxCodes = maxCodes;
            dhtTable.dhValPtrs = valPtrs;
            dhtTable.ehCodes = eHuffCodes;
            dhtTable.ehCodeLengths = eHuffSize;
            huffTables[huffTableCount] = dhtTable;
            ++huffTableCount;
        }
        this.allTables = new JPEGHuffmanTable[huffTableCount];
        System.arraycopy(huffTables, 0, this.allTables, 0, huffTableCount);
    }

    public int signature() {
        return 65476;
    }
}

