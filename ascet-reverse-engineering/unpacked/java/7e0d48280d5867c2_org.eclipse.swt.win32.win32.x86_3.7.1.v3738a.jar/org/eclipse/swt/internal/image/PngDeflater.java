/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.ByteArrayOutputStream;

public class PngDeflater {
    static final int BASE = 65521;
    static final int WINDOW = 32768;
    static final int MIN_LENGTH = 3;
    static final int MAX_MATCHES = 32;
    static final int HASH = 8209;
    byte[] in;
    int inLength;
    ByteArrayOutputStream bytes = new ByteArrayOutputStream(1024);
    int adler32 = 1;
    int buffer;
    int bitCount;
    Link[] hashtable = new Link[8209];
    Link[] window = new Link[32768];
    int nextWindow;
    static final short[] mirrorBytes;
    static final Code[] lengthCodes;
    static final Code[] distanceCodes;

    static {
        short[] sArray = new short[256];
        sArray[1] = 128;
        sArray[2] = 64;
        sArray[3] = 192;
        sArray[4] = 32;
        sArray[5] = 160;
        sArray[6] = 96;
        sArray[7] = 224;
        sArray[8] = 16;
        sArray[9] = 144;
        sArray[10] = 80;
        sArray[11] = 208;
        sArray[12] = 48;
        sArray[13] = 176;
        sArray[14] = 112;
        sArray[15] = 240;
        sArray[16] = 8;
        sArray[17] = 136;
        sArray[18] = 72;
        sArray[19] = 200;
        sArray[20] = 40;
        sArray[21] = 168;
        sArray[22] = 104;
        sArray[23] = 232;
        sArray[24] = 24;
        sArray[25] = 152;
        sArray[26] = 88;
        sArray[27] = 216;
        sArray[28] = 56;
        sArray[29] = 184;
        sArray[30] = 120;
        sArray[31] = 248;
        sArray[32] = 4;
        sArray[33] = 132;
        sArray[34] = 68;
        sArray[35] = 196;
        sArray[36] = 36;
        sArray[37] = 164;
        sArray[38] = 100;
        sArray[39] = 228;
        sArray[40] = 20;
        sArray[41] = 148;
        sArray[42] = 84;
        sArray[43] = 212;
        sArray[44] = 52;
        sArray[45] = 180;
        sArray[46] = 116;
        sArray[47] = 244;
        sArray[48] = 12;
        sArray[49] = 140;
        sArray[50] = 76;
        sArray[51] = 204;
        sArray[52] = 44;
        sArray[53] = 172;
        sArray[54] = 108;
        sArray[55] = 236;
        sArray[56] = 28;
        sArray[57] = 156;
        sArray[58] = 92;
        sArray[59] = 220;
        sArray[60] = 60;
        sArray[61] = 188;
        sArray[62] = 124;
        sArray[63] = 252;
        sArray[64] = 2;
        sArray[65] = 130;
        sArray[66] = 66;
        sArray[67] = 194;
        sArray[68] = 34;
        sArray[69] = 162;
        sArray[70] = 98;
        sArray[71] = 226;
        sArray[72] = 18;
        sArray[73] = 146;
        sArray[74] = 82;
        sArray[75] = 210;
        sArray[76] = 50;
        sArray[77] = 178;
        sArray[78] = 114;
        sArray[79] = 242;
        sArray[80] = 10;
        sArray[81] = 138;
        sArray[82] = 74;
        sArray[83] = 202;
        sArray[84] = 42;
        sArray[85] = 170;
        sArray[86] = 106;
        sArray[87] = 234;
        sArray[88] = 26;
        sArray[89] = 154;
        sArray[90] = 90;
        sArray[91] = 218;
        sArray[92] = 58;
        sArray[93] = 186;
        sArray[94] = 122;
        sArray[95] = 250;
        sArray[96] = 6;
        sArray[97] = 134;
        sArray[98] = 70;
        sArray[99] = 198;
        sArray[100] = 38;
        sArray[101] = 166;
        sArray[102] = 102;
        sArray[103] = 230;
        sArray[104] = 22;
        sArray[105] = 150;
        sArray[106] = 86;
        sArray[107] = 214;
        sArray[108] = 54;
        sArray[109] = 182;
        sArray[110] = 118;
        sArray[111] = 246;
        sArray[112] = 14;
        sArray[113] = 142;
        sArray[114] = 78;
        sArray[115] = 206;
        sArray[116] = 46;
        sArray[117] = 174;
        sArray[118] = 110;
        sArray[119] = 238;
        sArray[120] = 30;
        sArray[121] = 158;
        sArray[122] = 94;
        sArray[123] = 222;
        sArray[124] = 62;
        sArray[125] = 190;
        sArray[126] = 126;
        sArray[127] = 254;
        sArray[128] = 1;
        sArray[129] = 129;
        sArray[130] = 65;
        sArray[131] = 193;
        sArray[132] = 33;
        sArray[133] = 161;
        sArray[134] = 97;
        sArray[135] = 225;
        sArray[136] = 17;
        sArray[137] = 145;
        sArray[138] = 81;
        sArray[139] = 209;
        sArray[140] = 49;
        sArray[141] = 177;
        sArray[142] = 113;
        sArray[143] = 241;
        sArray[144] = 9;
        sArray[145] = 137;
        sArray[146] = 73;
        sArray[147] = 201;
        sArray[148] = 41;
        sArray[149] = 169;
        sArray[150] = 105;
        sArray[151] = 233;
        sArray[152] = 25;
        sArray[153] = 153;
        sArray[154] = 89;
        sArray[155] = 217;
        sArray[156] = 57;
        sArray[157] = 185;
        sArray[158] = 121;
        sArray[159] = 249;
        sArray[160] = 5;
        sArray[161] = 133;
        sArray[162] = 69;
        sArray[163] = 197;
        sArray[164] = 37;
        sArray[165] = 165;
        sArray[166] = 101;
        sArray[167] = 229;
        sArray[168] = 21;
        sArray[169] = 149;
        sArray[170] = 85;
        sArray[171] = 213;
        sArray[172] = 53;
        sArray[173] = 181;
        sArray[174] = 117;
        sArray[175] = 245;
        sArray[176] = 13;
        sArray[177] = 141;
        sArray[178] = 77;
        sArray[179] = 205;
        sArray[180] = 45;
        sArray[181] = 173;
        sArray[182] = 109;
        sArray[183] = 237;
        sArray[184] = 29;
        sArray[185] = 157;
        sArray[186] = 93;
        sArray[187] = 221;
        sArray[188] = 61;
        sArray[189] = 189;
        sArray[190] = 125;
        sArray[191] = 253;
        sArray[192] = 3;
        sArray[193] = 131;
        sArray[194] = 67;
        sArray[195] = 195;
        sArray[196] = 35;
        sArray[197] = 163;
        sArray[198] = 99;
        sArray[199] = 227;
        sArray[200] = 19;
        sArray[201] = 147;
        sArray[202] = 83;
        sArray[203] = 211;
        sArray[204] = 51;
        sArray[205] = 179;
        sArray[206] = 115;
        sArray[207] = 243;
        sArray[208] = 11;
        sArray[209] = 139;
        sArray[210] = 75;
        sArray[211] = 203;
        sArray[212] = 43;
        sArray[213] = 171;
        sArray[214] = 107;
        sArray[215] = 235;
        sArray[216] = 27;
        sArray[217] = 155;
        sArray[218] = 91;
        sArray[219] = 219;
        sArray[220] = 59;
        sArray[221] = 187;
        sArray[222] = 123;
        sArray[223] = 251;
        sArray[224] = 7;
        sArray[225] = 135;
        sArray[226] = 71;
        sArray[227] = 199;
        sArray[228] = 39;
        sArray[229] = 167;
        sArray[230] = 103;
        sArray[231] = 231;
        sArray[232] = 23;
        sArray[233] = 151;
        sArray[234] = 87;
        sArray[235] = 215;
        sArray[236] = 55;
        sArray[237] = 183;
        sArray[238] = 119;
        sArray[239] = 247;
        sArray[240] = 15;
        sArray[241] = 143;
        sArray[242] = 79;
        sArray[243] = 207;
        sArray[244] = 47;
        sArray[245] = 175;
        sArray[246] = 111;
        sArray[247] = 239;
        sArray[248] = 31;
        sArray[249] = 159;
        sArray[250] = 95;
        sArray[251] = 223;
        sArray[252] = 63;
        sArray[253] = 191;
        sArray[254] = 127;
        sArray[255] = 255;
        mirrorBytes = sArray;
        lengthCodes = new Code[]{new Code(257, 0, 3, 3), new Code(258, 0, 4, 4), new Code(259, 0, 5, 5), new Code(260, 0, 6, 6), new Code(261, 0, 7, 7), new Code(262, 0, 8, 8), new Code(263, 0, 9, 9), new Code(264, 0, 10, 10), new Code(265, 1, 11, 12), new Code(266, 1, 13, 14), new Code(267, 1, 15, 16), new Code(268, 1, 17, 18), new Code(269, 2, 19, 22), new Code(270, 2, 23, 26), new Code(271, 2, 27, 30), new Code(272, 2, 31, 34), new Code(273, 3, 35, 42), new Code(274, 3, 43, 50), new Code(275, 3, 51, 58), new Code(276, 3, 59, 66), new Code(277, 4, 67, 82), new Code(278, 4, 83, 98), new Code(279, 4, 99, 114), new Code(280, 4, 115, 130), new Code(281, 5, 131, 162), new Code(282, 5, 163, 194), new Code(283, 5, 195, 226), new Code(284, 5, 227, 257), new Code(285, 0, 258, 258)};
        distanceCodes = new Code[]{new Code(0, 0, 1, 1), new Code(1, 0, 2, 2), new Code(2, 0, 3, 3), new Code(3, 0, 4, 4), new Code(4, 1, 5, 6), new Code(5, 1, 7, 8), new Code(6, 2, 9, 12), new Code(7, 2, 13, 16), new Code(8, 3, 17, 24), new Code(9, 3, 25, 32), new Code(10, 4, 33, 48), new Code(11, 4, 49, 64), new Code(12, 5, 65, 96), new Code(13, 5, 97, 128), new Code(14, 6, 129, 192), new Code(15, 6, 193, 256), new Code(16, 7, 257, 384), new Code(17, 7, 385, 512), new Code(18, 8, 513, 768), new Code(19, 8, 769, 1024), new Code(20, 9, 1025, 1536), new Code(21, 9, 1537, 2048), new Code(22, 10, 2049, 3072), new Code(23, 10, 3073, 4096), new Code(24, 11, 4097, 6144), new Code(25, 11, 6145, 8192), new Code(26, 12, 8193, 12288), new Code(27, 12, 12289, 16384), new Code(28, 13, 16385, 24576), new Code(29, 13, 24577, 32768)};
    }

    void writeShortLSB(ByteArrayOutputStream baos, int theShort) {
        byte byte1 = (byte)(theShort & 0xFF);
        byte byte2 = (byte)(theShort >> 8 & 0xFF);
        byte[] temp = new byte[]{byte1, byte2};
        baos.write(temp, 0, 2);
    }

    void writeInt(ByteArrayOutputStream baos, int theInt) {
        byte byte1 = (byte)(theInt >> 24 & 0xFF);
        byte byte2 = (byte)(theInt >> 16 & 0xFF);
        byte byte3 = (byte)(theInt >> 8 & 0xFF);
        byte byte4 = (byte)(theInt & 0xFF);
        byte[] temp = new byte[]{byte1, byte2, byte3, byte4};
        baos.write(temp, 0, 4);
    }

    void updateAdler(byte value) {
        int low = this.adler32 & 0xFFFF;
        int high = this.adler32 >> 16 & 0xFFFF;
        int valueInt = value & 0xFF;
        low = (low + valueInt) % 65521;
        high = (low + high) % 65521;
        this.adler32 = high << 16 | low;
    }

    int hash(byte[] bytes) {
        int hash = ((bytes[0] & 0xFF) << 24 | (bytes[1] & 0xFF) << 16 | (bytes[2] & 0xFF) << 8) % 8209;
        if (hash < 0) {
            hash += 8209;
        }
        return hash;
    }

    void writeBits(int value, int count) {
        this.buffer |= value << this.bitCount;
        this.bitCount += count;
        if (this.bitCount >= 16) {
            this.bytes.write((byte)this.buffer);
            this.bytes.write((byte)(this.buffer >>> 8));
            this.buffer >>>= 16;
            this.bitCount -= 16;
        }
    }

    void alignToByte() {
        if (this.bitCount > 0) {
            this.bytes.write((byte)this.buffer);
            if (this.bitCount > 8) {
                this.bytes.write((byte)(this.buffer >>> 8));
            }
        }
        this.buffer = 0;
        this.bitCount = 0;
    }

    void outputLiteral(byte literal) {
        int i = literal & 0xFF;
        if (i <= 143) {
            this.writeBits(mirrorBytes[48 + i], 8);
        } else {
            this.writeBits(1 + 2 * mirrorBytes[0 + i], 9);
        }
    }

    Code findCode(int value, Code[] codes) {
        int k;
        int i = -1;
        int j = codes.length;
        while (true) {
            k = (j + i) / 2;
            if (value < codes[k].min) {
                j = k;
                continue;
            }
            if (value <= codes[k].max) break;
            i = k;
        }
        return codes[k];
    }

    void outputMatch(int length, int distance) {
        while (length > 0) {
            int thisLength = length > 260 ? 258 : (length <= 258 ? length : length - 3);
            length -= thisLength;
            Code l = this.findCode(thisLength, lengthCodes);
            if (l.code <= 279) {
                this.writeBits(mirrorBytes[(l.code - 256) * 2], 7);
            } else {
                this.writeBits(mirrorBytes[-88 + l.code], 8);
            }
            if (l.extraBits != 0) {
                this.writeBits(thisLength - l.min, l.extraBits);
            }
            Code d = this.findCode(distance, distanceCodes);
            this.writeBits(mirrorBytes[d.code * 8], 5);
            if (d.extraBits == 0) continue;
            this.writeBits(distance - d.min, d.extraBits);
        }
    }

    Match findLongestMatch(int position, Link firstPosition) {
        Link link = firstPosition;
        int numberOfMatches = 0;
        Match bestMatch = new Match(-1, -1);
        do {
            int matchPosition;
            if (position - (matchPosition = link.value) >= 32768 || matchPosition == 0) continue;
            int i = 1;
            while (position + i < this.inLength) {
                if (this.in[position + i] != this.in[matchPosition + i]) break;
                ++i;
            }
            if (i < 3) continue;
            if (i > bestMatch.length) {
                bestMatch.length = i;
                bestMatch.distance = position - matchPosition;
            }
            if (++numberOfMatches == 32) break;
        } while ((link = link.next) != null);
        if (bestMatch.length < 3 || bestMatch.distance < 1 || bestMatch.distance > 32768) {
            return null;
        }
        return bestMatch;
    }

    void updateHashtable(int to, int from) {
        byte[] data = new byte[3];
        int i = to;
        while (i < from) {
            if (i + 3 > this.inLength) break;
            data[0] = this.in[i];
            data[1] = this.in[i + 1];
            data[2] = this.in[i + 2];
            int hash = this.hash(data);
            if (this.window[this.nextWindow].previous != null) {
                this.window[this.nextWindow].previous.next = null;
            } else if (this.window[this.nextWindow].hash != 0) {
                this.hashtable[this.window[this.nextWindow].hash].next = null;
            }
            this.window[this.nextWindow].hash = hash;
            this.window[this.nextWindow].value = i;
            this.window[this.nextWindow].previous = null;
            Link temp = this.window[this.nextWindow].next = this.hashtable[hash].next;
            this.hashtable[hash].next = this.window[this.nextWindow];
            if (temp != null) {
                temp.previous = this.window[this.nextWindow];
            }
            ++this.nextWindow;
            if (this.nextWindow == 32768) {
                this.nextWindow = 0;
            }
            ++i;
        }
    }

    void compress() {
        byte[] data = new byte[3];
        int i = 0;
        while (i < 8209) {
            this.hashtable[i] = new Link();
            ++i;
        }
        i = 0;
        while (i < 32768) {
            this.window[i] = new Link();
            ++i;
        }
        this.nextWindow = 0;
        int deferredPosition = -1;
        Match deferredMatch = null;
        this.writeBits(1, 1);
        this.writeBits(1, 2);
        this.outputLiteral(this.in[0]);
        int position = 1;
        while (position < this.inLength) {
            int newPosition;
            if (this.inLength - position < 3) {
                this.outputLiteral(this.in[position]);
                ++position;
                continue;
            }
            data[0] = this.in[position];
            data[1] = this.in[position + 1];
            data[2] = this.in[position + 2];
            int hash = this.hash(data);
            Link firstPosition = this.hashtable[hash];
            Match match = this.findLongestMatch(position, firstPosition);
            this.updateHashtable(position, position + 1);
            if (match != null) {
                if (deferredMatch != null) {
                    if (match.length > deferredMatch.length + 1) {
                        this.outputLiteral(this.in[deferredPosition]);
                        deferredPosition = position++;
                        deferredMatch = match;
                        continue;
                    }
                    this.outputMatch(deferredMatch.length, deferredMatch.distance);
                    newPosition = deferredPosition + deferredMatch.length;
                    deferredPosition = -1;
                    deferredMatch = null;
                    this.updateHashtable(position + 1, newPosition);
                    position = newPosition;
                    continue;
                }
                deferredPosition = position++;
                deferredMatch = match;
                continue;
            }
            if (deferredMatch != null) {
                this.outputMatch(deferredMatch.length, deferredMatch.distance);
                newPosition = deferredPosition + deferredMatch.length;
                deferredPosition = -1;
                deferredMatch = null;
                this.updateHashtable(position + 1, newPosition);
                position = newPosition;
                continue;
            }
            this.outputLiteral(this.in[position]);
            ++position;
        }
        this.writeBits(0, 7);
        this.alignToByte();
    }

    void compressHuffmanOnly() {
        this.writeBits(1, 1);
        this.writeBits(1, 2);
        int position = 0;
        while (position < this.inLength) {
            this.outputLiteral(this.in[position]);
            ++position;
        }
        this.writeBits(0, 7);
        this.alignToByte();
    }

    void store() {
        int start = 0;
        int length = this.inLength;
        boolean BFINAL = false;
        while (length > 0) {
            int blockLength;
            if (length < 65535) {
                blockLength = length;
                BFINAL = true;
            } else {
                blockLength = 65535;
                BFINAL = false;
            }
            this.bytes.write((byte)(BFINAL ? 1 : 0));
            this.writeShortLSB(this.bytes, blockLength);
            this.writeShortLSB(this.bytes, blockLength ^ 0xFFFF);
            this.bytes.write(this.in, start, blockLength);
            length -= blockLength;
            start += blockLength;
        }
    }

    public byte[] deflate(byte[] input) {
        this.in = input;
        this.inLength = input.length;
        this.bytes.write(120);
        this.bytes.write(-100);
        int i = 0;
        while (i < this.inLength) {
            this.updateAdler(this.in[i]);
            ++i;
        }
        this.compress();
        this.writeInt(this.bytes, this.adler32);
        return this.bytes.toByteArray();
    }

    static class Code {
        int code;
        int extraBits;
        int min;
        int max;

        Code(int code, int extraBits, int min, int max) {
            this.code = code;
            this.extraBits = extraBits;
            this.min = min;
            this.max = max;
        }
    }

    static class Link {
        int hash = 0;
        int value = 0;
        Link previous = null;
        Link next = null;

        Link() {
        }
    }

    static class Match {
        int length;
        int distance;

        Match(int length, int distance) {
            this.length = length;
            this.distance = distance;
        }
    }
}

