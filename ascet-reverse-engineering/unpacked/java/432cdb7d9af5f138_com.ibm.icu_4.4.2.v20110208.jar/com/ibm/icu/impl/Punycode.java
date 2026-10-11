/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.StringPrepParseException;
import com.ibm.icu.text.UTF16;

public final class Punycode {
    private static final int BASE = 36;
    private static final int TMIN = 1;
    private static final int TMAX = 26;
    private static final int SKEW = 38;
    private static final int DAMP = 700;
    private static final int INITIAL_BIAS = 72;
    private static final int INITIAL_N = 128;
    private static final int HYPHEN = 45;
    private static final int DELIMITER = 45;
    private static final int ZERO = 48;
    private static final int SMALL_A = 97;
    private static final int SMALL_Z = 122;
    private static final int CAPITAL_A = 65;
    private static final int CAPITAL_Z = 90;
    private static final int MAX_CP_COUNT = 200;
    static final int[] basicToDigit;

    static {
        int[] nArray = new int[256];
        nArray[0] = -1;
        nArray[1] = -1;
        nArray[2] = -1;
        nArray[3] = -1;
        nArray[4] = -1;
        nArray[5] = -1;
        nArray[6] = -1;
        nArray[7] = -1;
        nArray[8] = -1;
        nArray[9] = -1;
        nArray[10] = -1;
        nArray[11] = -1;
        nArray[12] = -1;
        nArray[13] = -1;
        nArray[14] = -1;
        nArray[15] = -1;
        nArray[16] = -1;
        nArray[17] = -1;
        nArray[18] = -1;
        nArray[19] = -1;
        nArray[20] = -1;
        nArray[21] = -1;
        nArray[22] = -1;
        nArray[23] = -1;
        nArray[24] = -1;
        nArray[25] = -1;
        nArray[26] = -1;
        nArray[27] = -1;
        nArray[28] = -1;
        nArray[29] = -1;
        nArray[30] = -1;
        nArray[31] = -1;
        nArray[32] = -1;
        nArray[33] = -1;
        nArray[34] = -1;
        nArray[35] = -1;
        nArray[36] = -1;
        nArray[37] = -1;
        nArray[38] = -1;
        nArray[39] = -1;
        nArray[40] = -1;
        nArray[41] = -1;
        nArray[42] = -1;
        nArray[43] = -1;
        nArray[44] = -1;
        nArray[45] = -1;
        nArray[46] = -1;
        nArray[47] = -1;
        nArray[48] = 26;
        nArray[49] = 27;
        nArray[50] = 28;
        nArray[51] = 29;
        nArray[52] = 30;
        nArray[53] = 31;
        nArray[54] = 32;
        nArray[55] = 33;
        nArray[56] = 34;
        nArray[57] = 35;
        nArray[58] = -1;
        nArray[59] = -1;
        nArray[60] = -1;
        nArray[61] = -1;
        nArray[62] = -1;
        nArray[63] = -1;
        nArray[64] = -1;
        nArray[66] = 1;
        nArray[67] = 2;
        nArray[68] = 3;
        nArray[69] = 4;
        nArray[70] = 5;
        nArray[71] = 6;
        nArray[72] = 7;
        nArray[73] = 8;
        nArray[74] = 9;
        nArray[75] = 10;
        nArray[76] = 11;
        nArray[77] = 12;
        nArray[78] = 13;
        nArray[79] = 14;
        nArray[80] = 15;
        nArray[81] = 16;
        nArray[82] = 17;
        nArray[83] = 18;
        nArray[84] = 19;
        nArray[85] = 20;
        nArray[86] = 21;
        nArray[87] = 22;
        nArray[88] = 23;
        nArray[89] = 24;
        nArray[90] = 25;
        nArray[91] = -1;
        nArray[92] = -1;
        nArray[93] = -1;
        nArray[94] = -1;
        nArray[95] = -1;
        nArray[96] = -1;
        nArray[98] = 1;
        nArray[99] = 2;
        nArray[100] = 3;
        nArray[101] = 4;
        nArray[102] = 5;
        nArray[103] = 6;
        nArray[104] = 7;
        nArray[105] = 8;
        nArray[106] = 9;
        nArray[107] = 10;
        nArray[108] = 11;
        nArray[109] = 12;
        nArray[110] = 13;
        nArray[111] = 14;
        nArray[112] = 15;
        nArray[113] = 16;
        nArray[114] = 17;
        nArray[115] = 18;
        nArray[116] = 19;
        nArray[117] = 20;
        nArray[118] = 21;
        nArray[119] = 22;
        nArray[120] = 23;
        nArray[121] = 24;
        nArray[122] = 25;
        nArray[123] = -1;
        nArray[124] = -1;
        nArray[125] = -1;
        nArray[126] = -1;
        nArray[127] = -1;
        nArray[128] = -1;
        nArray[129] = -1;
        nArray[130] = -1;
        nArray[131] = -1;
        nArray[132] = -1;
        nArray[133] = -1;
        nArray[134] = -1;
        nArray[135] = -1;
        nArray[136] = -1;
        nArray[137] = -1;
        nArray[138] = -1;
        nArray[139] = -1;
        nArray[140] = -1;
        nArray[141] = -1;
        nArray[142] = -1;
        nArray[143] = -1;
        nArray[144] = -1;
        nArray[145] = -1;
        nArray[146] = -1;
        nArray[147] = -1;
        nArray[148] = -1;
        nArray[149] = -1;
        nArray[150] = -1;
        nArray[151] = -1;
        nArray[152] = -1;
        nArray[153] = -1;
        nArray[154] = -1;
        nArray[155] = -1;
        nArray[156] = -1;
        nArray[157] = -1;
        nArray[158] = -1;
        nArray[159] = -1;
        nArray[160] = -1;
        nArray[161] = -1;
        nArray[162] = -1;
        nArray[163] = -1;
        nArray[164] = -1;
        nArray[165] = -1;
        nArray[166] = -1;
        nArray[167] = -1;
        nArray[168] = -1;
        nArray[169] = -1;
        nArray[170] = -1;
        nArray[171] = -1;
        nArray[172] = -1;
        nArray[173] = -1;
        nArray[174] = -1;
        nArray[175] = -1;
        nArray[176] = -1;
        nArray[177] = -1;
        nArray[178] = -1;
        nArray[179] = -1;
        nArray[180] = -1;
        nArray[181] = -1;
        nArray[182] = -1;
        nArray[183] = -1;
        nArray[184] = -1;
        nArray[185] = -1;
        nArray[186] = -1;
        nArray[187] = -1;
        nArray[188] = -1;
        nArray[189] = -1;
        nArray[190] = -1;
        nArray[191] = -1;
        nArray[192] = -1;
        nArray[193] = -1;
        nArray[194] = -1;
        nArray[195] = -1;
        nArray[196] = -1;
        nArray[197] = -1;
        nArray[198] = -1;
        nArray[199] = -1;
        nArray[200] = -1;
        nArray[201] = -1;
        nArray[202] = -1;
        nArray[203] = -1;
        nArray[204] = -1;
        nArray[205] = -1;
        nArray[206] = -1;
        nArray[207] = -1;
        nArray[208] = -1;
        nArray[209] = -1;
        nArray[210] = -1;
        nArray[211] = -1;
        nArray[212] = -1;
        nArray[213] = -1;
        nArray[214] = -1;
        nArray[215] = -1;
        nArray[216] = -1;
        nArray[217] = -1;
        nArray[218] = -1;
        nArray[219] = -1;
        nArray[220] = -1;
        nArray[221] = -1;
        nArray[222] = -1;
        nArray[223] = -1;
        nArray[224] = -1;
        nArray[225] = -1;
        nArray[226] = -1;
        nArray[227] = -1;
        nArray[228] = -1;
        nArray[229] = -1;
        nArray[230] = -1;
        nArray[231] = -1;
        nArray[232] = -1;
        nArray[233] = -1;
        nArray[234] = -1;
        nArray[235] = -1;
        nArray[236] = -1;
        nArray[237] = -1;
        nArray[238] = -1;
        nArray[239] = -1;
        nArray[240] = -1;
        nArray[241] = -1;
        nArray[242] = -1;
        nArray[243] = -1;
        nArray[244] = -1;
        nArray[245] = -1;
        nArray[246] = -1;
        nArray[247] = -1;
        nArray[248] = -1;
        nArray[249] = -1;
        nArray[250] = -1;
        nArray[251] = -1;
        nArray[252] = -1;
        nArray[253] = -1;
        nArray[254] = -1;
        nArray[255] = -1;
        basicToDigit = nArray;
    }

    private static int adaptBias(int delta, int length, boolean firstTime) {
        delta = firstTime ? (delta /= 700) : (delta /= 2);
        delta += delta / length;
        int count = 0;
        while (delta > 455) {
            delta /= 35;
            count += 36;
        }
        return count + 36 * delta / (delta + 38);
    }

    private static char asciiCaseMap(char b, boolean uppercase) {
        if (uppercase) {
            if ('a' <= b && b <= 'z') {
                b = (char)(b - 32);
            }
        } else if ('A' <= b && b <= 'Z') {
            b = (char)(b + 32);
        }
        return b;
    }

    private static char digitToBasic(int digit, boolean uppercase) {
        if (digit < 26) {
            if (uppercase) {
                return (char)(65 + digit);
            }
            return (char)(97 + digit);
        }
        return (char)(22 + digit);
    }

    public static StringBuffer encode(StringBuffer src, boolean[] caseFlags) throws StringPrepParseException {
        int n;
        int[] cpBuffer = new int[200];
        int srcLength = src.length();
        int destCapacity = 200;
        char[] dest = new char[destCapacity];
        StringBuffer result = new StringBuffer();
        int destLength = 0;
        int srcCPCount = 0;
        int j = 0;
        while (j < srcLength) {
            if (srcCPCount == 200) {
                throw new IndexOutOfBoundsException();
            }
            char c = src.charAt(j);
            if (Punycode.isBasic(c)) {
                if (destLength < destCapacity) {
                    cpBuffer[srcCPCount++] = 0;
                    dest[destLength] = caseFlags != null ? Punycode.asciiCaseMap(c, caseFlags[j]) : c;
                }
                ++destLength;
            } else {
                char c2;
                n = (caseFlags != null && caseFlags[j] ? 1 : 0) << 31;
                if (!UTF16.isSurrogate(c)) {
                    n |= c;
                } else if (UTF16.isLeadSurrogate(c) && j + 1 < srcLength && UTF16.isTrailSurrogate(c2 = src.charAt(j + 1))) {
                    ++j;
                    n |= UCharacter.getCodePoint(c, c2);
                } else {
                    throw new StringPrepParseException("Illegal char found", 1);
                }
                cpBuffer[srcCPCount++] = n;
            }
            ++j;
        }
        int basicLength = destLength;
        if (basicLength > 0) {
            if (destLength < destCapacity) {
                dest[destLength] = 45;
            }
            ++destLength;
        }
        n = 128;
        int delta = 0;
        int bias = 72;
        int handledCPCount = basicLength;
        while (handledCPCount < srcCPCount) {
            int q;
            int m = Integer.MAX_VALUE;
            j = 0;
            while (j < srcCPCount) {
                q = cpBuffer[j] & Integer.MAX_VALUE;
                if (n <= q && q < m) {
                    m = q;
                }
                ++j;
            }
            if (m - n > (0x7FFFFF37 - delta) / (handledCPCount + 1)) {
                throw new IllegalStateException("Internal program error");
            }
            delta += (m - n) * (handledCPCount + 1);
            n = m;
            j = 0;
            while (j < srcCPCount) {
                q = cpBuffer[j] & Integer.MAX_VALUE;
                if (q < n) {
                    ++delta;
                } else if (q == n) {
                    q = delta;
                    int k = 36;
                    while (true) {
                        int t;
                        if ((t = k - bias) < 1) {
                            t = 1;
                        } else if (k >= bias + 26) {
                            t = 26;
                        }
                        if (q < t) break;
                        if (destLength < destCapacity) {
                            dest[destLength++] = Punycode.digitToBasic(t + (q - t) % (36 - t), false);
                        }
                        q = (q - t) / (36 - t);
                        k += 36;
                    }
                    if (destLength < destCapacity) {
                        dest[destLength++] = Punycode.digitToBasic(q, cpBuffer[j] < 0);
                    }
                    bias = Punycode.adaptBias(delta, handledCPCount + 1, handledCPCount == basicLength);
                    delta = 0;
                    ++handledCPCount;
                }
                ++j;
            }
            ++delta;
            ++n;
        }
        return result.append(dest, 0, destLength);
    }

    private static boolean isBasic(int ch) {
        return ch < 128;
    }

    private static boolean isBasicUpperCase(int ch) {
        return 65 <= ch && ch >= 90;
    }

    private static boolean isSurrogate(int ch) {
        return (ch & 0xFFFFF800) == 55296;
    }

    public static StringBuffer decode(StringBuffer src, boolean[] caseFlags) throws StringPrepParseException {
        int destCPCount;
        int srcLength = src.length();
        StringBuffer result = new StringBuffer();
        int destCapacity = 200;
        char[] dest = new char[destCapacity];
        int j = srcLength;
        while (j > 0) {
            if (src.charAt(--j) == '-') break;
        }
        int basicLength = destCPCount = j;
        int destLength = destCPCount;
        while (j > 0) {
            char b;
            if (!Punycode.isBasic(b = src.charAt(--j))) {
                throw new StringPrepParseException("Illegal char found", 0);
            }
            if (j >= destCapacity) continue;
            dest[j] = b;
            if (caseFlags == null) continue;
            caseFlags[j] = Punycode.isBasicUpperCase(b);
        }
        int n = 128;
        int i = 0;
        int bias = 72;
        int firstSupplementaryIndex = 1000000000;
        int in = basicLength > 0 ? basicLength + 1 : 0;
        while (in < srcLength) {
            int oldi = i;
            int w = 1;
            int k = 36;
            while (true) {
                int digit;
                if (in >= srcLength) {
                    throw new StringPrepParseException("Illegal char found", 1);
                }
                if ((digit = basicToDigit[src.charAt(in++) & 0xFF]) < 0) {
                    throw new StringPrepParseException("Invalid char found", 0);
                }
                if (digit > (Integer.MAX_VALUE - i) / w) {
                    throw new StringPrepParseException("Illegal char found", 1);
                }
                i += digit * w;
                int t = k - bias;
                if (t < 1) {
                    t = 1;
                } else if (k >= bias + 26) {
                    t = 26;
                }
                if (digit < t) break;
                if (w > Integer.MAX_VALUE / (36 - t)) {
                    throw new StringPrepParseException("Illegal char found", 1);
                }
                w *= 36 - t;
                k += 36;
            }
            bias = Punycode.adaptBias(i - oldi, ++destCPCount, oldi == 0);
            if (i / destCPCount > Integer.MAX_VALUE - n) {
                throw new StringPrepParseException("Illegal char found", 1);
            }
            n += i / destCPCount;
            i %= destCPCount;
            if (n > 0x10FFFF || Punycode.isSurrogate(n)) {
                throw new StringPrepParseException("Illegal char found", 1);
            }
            int cpLength = UTF16.getCharCount(n);
            if (destLength + cpLength < destCapacity) {
                int codeUnitIndex;
                if (i <= firstSupplementaryIndex) {
                    codeUnitIndex = i;
                    firstSupplementaryIndex = cpLength > 1 ? codeUnitIndex : ++firstSupplementaryIndex;
                } else {
                    codeUnitIndex = firstSupplementaryIndex;
                    codeUnitIndex = UTF16.moveCodePointOffset(dest, 0, destLength, codeUnitIndex, i - codeUnitIndex);
                }
                if (codeUnitIndex < destLength) {
                    System.arraycopy(dest, codeUnitIndex, dest, codeUnitIndex + cpLength, destLength - codeUnitIndex);
                    if (caseFlags != null) {
                        System.arraycopy(caseFlags, codeUnitIndex, caseFlags, codeUnitIndex + cpLength, destLength - codeUnitIndex);
                    }
                }
                if (cpLength == 1) {
                    dest[codeUnitIndex] = (char)n;
                } else {
                    dest[codeUnitIndex] = UTF16.getLeadSurrogate(n);
                    dest[codeUnitIndex + 1] = UTF16.getTrailSurrogate(n);
                }
                if (caseFlags != null) {
                    caseFlags[codeUnitIndex] = Punycode.isBasicUpperCase(src.charAt(in - 1));
                    if (cpLength == 2) {
                        caseFlags[codeUnitIndex + 1] = false;
                    }
                }
            }
            destLength += cpLength;
            ++i;
        }
        result.append(dest, 0, destLength);
        return result;
    }
}

