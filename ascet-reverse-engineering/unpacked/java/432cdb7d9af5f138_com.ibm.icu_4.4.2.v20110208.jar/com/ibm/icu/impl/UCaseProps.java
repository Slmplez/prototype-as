/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CharTrie;
import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.ICUData;
import com.ibm.icu.impl.TrieIterator;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.RangeValueIterator;
import com.ibm.icu.util.ULocale;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class UCaseProps {
    private static final byte[] flagsOffset;
    public static final int MAX_STRING_LENGTH = 31;
    private static final int LOC_UNKNOWN = 0;
    private static final int LOC_ROOT = 1;
    private static final int LOC_TURKISH = 2;
    private static final int LOC_LITHUANIAN = 3;
    private static final String iDot = "i\u0307";
    private static final String jDot = "j\u0307";
    private static final String iOgonekDot = "\u012f\u0307";
    private static final String iDotGrave = "i\u0307\u0300";
    private static final String iDotAcute = "i\u0307\u0301";
    private static final String iDotTilde = "i\u0307\u0303";
    private static final int FOLD_CASE_OPTIONS_MASK = 255;
    private static final int[] rootLocCache;
    public static final StringBuffer dummyStringBuffer;
    private int[] indexes;
    private char[] exceptions;
    private char[] unfold;
    private CharTrie trie;
    private static final String DATA_NAME = "ucase";
    private static final String DATA_TYPE = "icu";
    private static final String DATA_FILE_NAME = "ucase.icu";
    private static final byte[] FMT;
    private static final int IX_INDEX_TOP = 0;
    private static final int IX_EXC_LENGTH = 3;
    private static final int IX_UNFOLD_LENGTH = 4;
    private static final int IX_TOP = 16;
    public static final int TYPE_MASK = 3;
    public static final int NONE = 0;
    public static final int LOWER = 1;
    public static final int UPPER = 2;
    public static final int TITLE = 3;
    private static final int SENSITIVE = 4;
    private static final int EXCEPTION = 8;
    private static final int DOT_MASK = 48;
    private static final int SOFT_DOTTED = 16;
    private static final int ABOVE = 32;
    private static final int OTHER_ACCENT = 48;
    private static final int DELTA_SHIFT = 6;
    private static final int CASE_IGNORABLE = 64;
    private static final int EXC_SHIFT = 4;
    private static final int EXC_LOWER = 0;
    private static final int EXC_FOLD = 1;
    private static final int EXC_UPPER = 2;
    private static final int EXC_TITLE = 3;
    private static final int EXC_CLOSURE = 6;
    private static final int EXC_FULL_MAPPINGS = 7;
    private static final int EXC_DOUBLE_SLOTS = 256;
    private static final int EXC_CASE_IGNORABLE = 2048;
    private static final int EXC_DOT_SHIFT = 8;
    private static final int EXC_CONDITIONAL_SPECIAL = 16384;
    private static final int EXC_CONDITIONAL_FOLD = 32768;
    private static final int FULL_LOWER = 15;
    private static final int CLOSURE_MAX_LENGTH = 15;
    private static final int UNFOLD_ROWS = 0;
    private static final int UNFOLD_ROW_WIDTH = 1;
    private static final int UNFOLD_STRING_WIDTH = 2;
    public static final UCaseProps INSTANCE;
    private static volatile UCaseProps FULL_INSTANCE;
    private static volatile UCaseProps DUMMY_INSTANCE;

    static {
        UCaseProps cp;
        byte[] byArray = new byte[256];
        byArray[1] = 1;
        byArray[2] = 1;
        byArray[3] = 2;
        byArray[4] = 1;
        byArray[5] = 2;
        byArray[6] = 2;
        byArray[7] = 3;
        byArray[8] = 1;
        byArray[9] = 2;
        byArray[10] = 2;
        byArray[11] = 3;
        byArray[12] = 2;
        byArray[13] = 3;
        byArray[14] = 3;
        byArray[15] = 4;
        byArray[16] = 1;
        byArray[17] = 2;
        byArray[18] = 2;
        byArray[19] = 3;
        byArray[20] = 2;
        byArray[21] = 3;
        byArray[22] = 3;
        byArray[23] = 4;
        byArray[24] = 2;
        byArray[25] = 3;
        byArray[26] = 3;
        byArray[27] = 4;
        byArray[28] = 3;
        byArray[29] = 4;
        byArray[30] = 4;
        byArray[31] = 5;
        byArray[32] = 1;
        byArray[33] = 2;
        byArray[34] = 2;
        byArray[35] = 3;
        byArray[36] = 2;
        byArray[37] = 3;
        byArray[38] = 3;
        byArray[39] = 4;
        byArray[40] = 2;
        byArray[41] = 3;
        byArray[42] = 3;
        byArray[43] = 4;
        byArray[44] = 3;
        byArray[45] = 4;
        byArray[46] = 4;
        byArray[47] = 5;
        byArray[48] = 2;
        byArray[49] = 3;
        byArray[50] = 3;
        byArray[51] = 4;
        byArray[52] = 3;
        byArray[53] = 4;
        byArray[54] = 4;
        byArray[55] = 5;
        byArray[56] = 3;
        byArray[57] = 4;
        byArray[58] = 4;
        byArray[59] = 5;
        byArray[60] = 4;
        byArray[61] = 5;
        byArray[62] = 5;
        byArray[63] = 6;
        byArray[64] = 1;
        byArray[65] = 2;
        byArray[66] = 2;
        byArray[67] = 3;
        byArray[68] = 2;
        byArray[69] = 3;
        byArray[70] = 3;
        byArray[71] = 4;
        byArray[72] = 2;
        byArray[73] = 3;
        byArray[74] = 3;
        byArray[75] = 4;
        byArray[76] = 3;
        byArray[77] = 4;
        byArray[78] = 4;
        byArray[79] = 5;
        byArray[80] = 2;
        byArray[81] = 3;
        byArray[82] = 3;
        byArray[83] = 4;
        byArray[84] = 3;
        byArray[85] = 4;
        byArray[86] = 4;
        byArray[87] = 5;
        byArray[88] = 3;
        byArray[89] = 4;
        byArray[90] = 4;
        byArray[91] = 5;
        byArray[92] = 4;
        byArray[93] = 5;
        byArray[94] = 5;
        byArray[95] = 6;
        byArray[96] = 2;
        byArray[97] = 3;
        byArray[98] = 3;
        byArray[99] = 4;
        byArray[100] = 3;
        byArray[101] = 4;
        byArray[102] = 4;
        byArray[103] = 5;
        byArray[104] = 3;
        byArray[105] = 4;
        byArray[106] = 4;
        byArray[107] = 5;
        byArray[108] = 4;
        byArray[109] = 5;
        byArray[110] = 5;
        byArray[111] = 6;
        byArray[112] = 3;
        byArray[113] = 4;
        byArray[114] = 4;
        byArray[115] = 5;
        byArray[116] = 4;
        byArray[117] = 5;
        byArray[118] = 5;
        byArray[119] = 6;
        byArray[120] = 4;
        byArray[121] = 5;
        byArray[122] = 5;
        byArray[123] = 6;
        byArray[124] = 5;
        byArray[125] = 6;
        byArray[126] = 6;
        byArray[127] = 7;
        byArray[128] = 1;
        byArray[129] = 2;
        byArray[130] = 2;
        byArray[131] = 3;
        byArray[132] = 2;
        byArray[133] = 3;
        byArray[134] = 3;
        byArray[135] = 4;
        byArray[136] = 2;
        byArray[137] = 3;
        byArray[138] = 3;
        byArray[139] = 4;
        byArray[140] = 3;
        byArray[141] = 4;
        byArray[142] = 4;
        byArray[143] = 5;
        byArray[144] = 2;
        byArray[145] = 3;
        byArray[146] = 3;
        byArray[147] = 4;
        byArray[148] = 3;
        byArray[149] = 4;
        byArray[150] = 4;
        byArray[151] = 5;
        byArray[152] = 3;
        byArray[153] = 4;
        byArray[154] = 4;
        byArray[155] = 5;
        byArray[156] = 4;
        byArray[157] = 5;
        byArray[158] = 5;
        byArray[159] = 6;
        byArray[160] = 2;
        byArray[161] = 3;
        byArray[162] = 3;
        byArray[163] = 4;
        byArray[164] = 3;
        byArray[165] = 4;
        byArray[166] = 4;
        byArray[167] = 5;
        byArray[168] = 3;
        byArray[169] = 4;
        byArray[170] = 4;
        byArray[171] = 5;
        byArray[172] = 4;
        byArray[173] = 5;
        byArray[174] = 5;
        byArray[175] = 6;
        byArray[176] = 3;
        byArray[177] = 4;
        byArray[178] = 4;
        byArray[179] = 5;
        byArray[180] = 4;
        byArray[181] = 5;
        byArray[182] = 5;
        byArray[183] = 6;
        byArray[184] = 4;
        byArray[185] = 5;
        byArray[186] = 5;
        byArray[187] = 6;
        byArray[188] = 5;
        byArray[189] = 6;
        byArray[190] = 6;
        byArray[191] = 7;
        byArray[192] = 2;
        byArray[193] = 3;
        byArray[194] = 3;
        byArray[195] = 4;
        byArray[196] = 3;
        byArray[197] = 4;
        byArray[198] = 4;
        byArray[199] = 5;
        byArray[200] = 3;
        byArray[201] = 4;
        byArray[202] = 4;
        byArray[203] = 5;
        byArray[204] = 4;
        byArray[205] = 5;
        byArray[206] = 5;
        byArray[207] = 6;
        byArray[208] = 3;
        byArray[209] = 4;
        byArray[210] = 4;
        byArray[211] = 5;
        byArray[212] = 4;
        byArray[213] = 5;
        byArray[214] = 5;
        byArray[215] = 6;
        byArray[216] = 4;
        byArray[217] = 5;
        byArray[218] = 5;
        byArray[219] = 6;
        byArray[220] = 5;
        byArray[221] = 6;
        byArray[222] = 6;
        byArray[223] = 7;
        byArray[224] = 3;
        byArray[225] = 4;
        byArray[226] = 4;
        byArray[227] = 5;
        byArray[228] = 4;
        byArray[229] = 5;
        byArray[230] = 5;
        byArray[231] = 6;
        byArray[232] = 4;
        byArray[233] = 5;
        byArray[234] = 5;
        byArray[235] = 6;
        byArray[236] = 5;
        byArray[237] = 6;
        byArray[238] = 6;
        byArray[239] = 7;
        byArray[240] = 4;
        byArray[241] = 5;
        byArray[242] = 5;
        byArray[243] = 6;
        byArray[244] = 5;
        byArray[245] = 6;
        byArray[246] = 6;
        byArray[247] = 7;
        byArray[248] = 5;
        byArray[249] = 6;
        byArray[250] = 6;
        byArray[251] = 7;
        byArray[252] = 6;
        byArray[253] = 7;
        byArray[254] = 7;
        byArray[255] = 8;
        flagsOffset = byArray;
        rootLocCache = new int[]{1};
        dummyStringBuffer = new StringBuffer();
        FMT = new byte[]{99, 65, 83, 69};
        try {
            FULL_INSTANCE = cp = new UCaseProps();
        }
        catch (IOException iOException) {
            DUMMY_INSTANCE = cp = new UCaseProps(true);
        }
        INSTANCE = cp;
    }

    private UCaseProps() throws IOException {
        InputStream is = ICUData.getRequiredStream("data/icudt44b/ucase.icu");
        BufferedInputStream b = new BufferedInputStream(is, 4096);
        this.readData(b);
        b.close();
        is.close();
    }

    private UCaseProps(boolean makeDummy) {
        this.indexes = new int[16];
        this.indexes[0] = 16;
        this.trie = new CharTrie(0, 0, null);
    }

    private final void readData(InputStream is) throws IOException {
        DataInputStream inputStream = new DataInputStream(is);
        ICUBinary.readHeader(inputStream, FMT, new IsAcceptable());
        int count = inputStream.readInt();
        if (count < 0) {
            throw new IOException("indexes[0] too small in ucase.icu");
        }
        this.indexes = new int[count];
        this.indexes[0] = count;
        int i = 1;
        while (i < count) {
            this.indexes[i] = inputStream.readInt();
            ++i;
        }
        this.trie = new CharTrie(inputStream, null);
        count = this.indexes[3];
        if (count > 0) {
            this.exceptions = new char[count];
            i = 0;
            while (i < count) {
                this.exceptions[i] = inputStream.readChar();
                ++i;
            }
        }
        if ((count = this.indexes[4]) > 0) {
            this.unfold = new char[count];
            i = 0;
            while (i < count) {
                this.unfold[i] = inputStream.readChar();
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static UCaseProps getSingleton() throws IOException {
        if (FULL_INSTANCE != null) return FULL_INSTANCE;
        Class<UCaseProps> clazz = UCaseProps.class;
        synchronized (UCaseProps.class) {
            if (FULL_INSTANCE != null) return FULL_INSTANCE;
            FULL_INSTANCE = new UCaseProps();
            // ** MonitorExit[var0] (shouldn't be in output)
            return FULL_INSTANCE;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static UCaseProps getDummy() {
        if (DUMMY_INSTANCE != null) return DUMMY_INSTANCE;
        Class<UCaseProps> clazz = UCaseProps.class;
        synchronized (UCaseProps.class) {
            if (DUMMY_INSTANCE != null) return DUMMY_INSTANCE;
            DUMMY_INSTANCE = new UCaseProps(true);
            // ** MonitorExit[var0] (shouldn't be in output)
            return DUMMY_INSTANCE;
        }
    }

    public final void addPropertyStarts(UnicodeSet set) {
        TrieIterator iter = new TrieIterator(this.trie);
        RangeValueIterator.Element element = new RangeValueIterator.Element();
        while (iter.next(element)) {
            set.add(element.start);
        }
    }

    private static final int getExceptionsOffset(int props) {
        return props >> 4;
    }

    private static final boolean propsHasException(int props) {
        return (props & 8) != 0;
    }

    private static final boolean hasSlot(int flags, int index) {
        return (flags & 1 << index) != 0;
    }

    private static final byte slotOffset(int flags, int index) {
        return flagsOffset[flags & (1 << index) - 1];
    }

    private final long getSlotValueAndOffset(int excWord, int index, int excOffset) {
        long value;
        if ((excWord & 0x100) == 0) {
            value = this.exceptions[excOffset += UCaseProps.slotOffset(excWord, index)];
        } else {
            excOffset += 2 * UCaseProps.slotOffset(excWord, index);
            value = this.exceptions[excOffset++];
            value = value << 16 | (long)this.exceptions[excOffset];
        }
        return value | (long)excOffset << 32;
    }

    private final int getSlotValue(int excWord, int index, int excOffset) {
        int value;
        if ((excWord & 0x100) == 0) {
            value = this.exceptions[excOffset += UCaseProps.slotOffset(excWord, index)];
        } else {
            excOffset += 2 * UCaseProps.slotOffset(excWord, index);
            value = this.exceptions[excOffset++];
            value = value << 16 | this.exceptions[excOffset];
        }
        return value;
    }

    public final int tolower(int c) {
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) >= 2) {
                c += UCaseProps.getDelta(props);
            }
        } else {
            char excWord;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            if (UCaseProps.hasSlot(excWord = this.exceptions[excOffset++], 0)) {
                c = this.getSlotValue(excWord, 0, excOffset);
            }
        }
        return c;
    }

    public final int toupper(int c) {
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) == 1) {
                c += UCaseProps.getDelta(props);
            }
        } else {
            char excWord;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            if (UCaseProps.hasSlot(excWord = this.exceptions[excOffset++], 2)) {
                c = this.getSlotValue(excWord, 2, excOffset);
            }
        }
        return c;
    }

    public final int totitle(int c) {
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) == 1) {
                c += UCaseProps.getDelta(props);
            }
        } else {
            int index;
            char excWord;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            if (UCaseProps.hasSlot(excWord = this.exceptions[excOffset++], 3)) {
                index = 3;
            } else if (UCaseProps.hasSlot(excWord, 2)) {
                index = 2;
            } else {
                return c;
            }
            c = this.getSlotValue(excWord, index, excOffset);
        }
        return c;
    }

    public final void addCaseClosure(int c, UnicodeSet set) {
        switch (c) {
            case 73: {
                set.add(105);
                return;
            }
            case 105: {
                set.add(73);
                return;
            }
            case 304: {
                set.add(iDot);
                return;
            }
            case 305: {
                return;
            }
        }
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            int delta;
            if (UCaseProps.getTypeFromProps(props) != 0 && (delta = UCaseProps.getDelta(props)) != 0) {
                set.add(c + delta);
            }
        } else {
            int closureOffset;
            int closureLength;
            long value;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            char excWord = this.exceptions[excOffset++];
            int excOffset0 = excOffset;
            int index = 0;
            while (index <= 3) {
                if (UCaseProps.hasSlot(excWord, index)) {
                    excOffset = excOffset0;
                    c = this.getSlotValue(excWord, index, excOffset);
                    set.add(c);
                }
                ++index;
            }
            if (UCaseProps.hasSlot(excWord, 6)) {
                excOffset = excOffset0;
                value = this.getSlotValueAndOffset(excWord, 6, excOffset);
                closureLength = (int)value & 0xF;
                closureOffset = (int)(value >> 32) + 1;
            } else {
                closureLength = 0;
                closureOffset = 0;
            }
            if (UCaseProps.hasSlot(excWord, 7)) {
                excOffset = excOffset0;
                value = this.getSlotValueAndOffset(excWord, 7, excOffset);
                int fullLength = (int)value;
                excOffset = (int)(value >> 32) + 1;
                excOffset += (fullLength &= 0xFFFF) & 0xF;
                int length = (fullLength >>= 4) & 0xF;
                if (length != 0) {
                    set.add(new String(this.exceptions, excOffset, length));
                    excOffset += length;
                }
                excOffset += (fullLength >>= 4) & 0xF;
                closureOffset = excOffset += (fullLength >>= 4);
            }
            index = 0;
            while (index < closureLength) {
                c = UTF16.charAt(this.exceptions, closureOffset, this.exceptions.length, index);
                set.add(c);
                index += UTF16.getCharCount(c);
            }
        }
    }

    private final int strcmpMax(String s, int unfoldOffset, int max) {
        int length = s.length();
        max -= length;
        int i1 = 0;
        do {
            char c2;
            int c1 = s.charAt(i1++);
            if ((c2 = this.unfold[unfoldOffset++]) == '\u0000') {
                return 1;
            }
            if ((c1 -= c2) == 0) continue;
            return c1;
        } while (--length > 0);
        if (max == 0 || this.unfold[unfoldOffset] == '\u0000') {
            return 0;
        }
        return -max;
    }

    public final boolean addStringCaseClosure(String s, UnicodeSet set) {
        if (this.unfold == null || s == null) {
            return false;
        }
        int length = s.length();
        if (length <= 1) {
            return false;
        }
        int unfoldRows = this.unfold[0];
        char unfoldRowWidth = this.unfold[1];
        int unfoldStringWidth = this.unfold[2];
        if (length > unfoldStringWidth) {
            return false;
        }
        int start = 0;
        int limit = unfoldRows;
        while (start < limit) {
            int i = (start + limit) / 2;
            int unfoldOffset = (i + 1) * unfoldRowWidth;
            int result = this.strcmpMax(s, unfoldOffset, unfoldStringWidth);
            if (result == 0) {
                i = unfoldStringWidth;
                while (i < unfoldRowWidth && this.unfold[unfoldOffset + i] != '\u0000') {
                    int c = UTF16.charAt(this.unfold, unfoldOffset, this.unfold.length, i);
                    set.add(c);
                    this.addCaseClosure(c, set);
                    i += UTF16.getCharCount(c);
                }
                return true;
            }
            if (result < 0) {
                limit = i;
                continue;
            }
            start = i + 1;
        }
        return false;
    }

    public final int getType(int c) {
        return UCaseProps.getTypeFromProps(this.trie.getCodePointValue(c));
    }

    public final int getTypeOrIgnorable(int c) {
        char props = this.trie.getCodePointValue(c);
        int type = UCaseProps.getTypeFromProps(props);
        if (UCaseProps.propsHasException(props)) {
            if ((this.exceptions[UCaseProps.getExceptionsOffset(props)] & 0x800) != 0) {
                type |= 4;
            }
        } else if (type == 0 && (props & 0x40) != 0) {
            type |= 4;
        }
        return type;
    }

    public final int getDotType(int c) {
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            return props & 0x30;
        }
        return this.exceptions[UCaseProps.getExceptionsOffset(props)] >> 8 & 0x30;
    }

    public final boolean isSoftDotted(int c) {
        return this.getDotType(c) == 16;
    }

    public final boolean isCaseSensitive(int c) {
        return (this.trie.getCodePointValue(c) & 4) != 0;
    }

    private static final int getCaseLocale(ULocale locale, int[] locCache) {
        int result;
        if (locCache != null && (result = locCache[0]) != 0) {
            return result;
        }
        result = 1;
        String language = locale.getLanguage();
        if (language.equals("tr") || language.equals("tur") || language.equals("az") || language.equals("aze")) {
            result = 2;
        } else if (language.equals("lt") || language.equals("lit")) {
            result = 3;
        }
        if (locCache != null) {
            locCache[0] = result;
        }
        return result;
    }

    private final boolean isFollowedByCasedLetter(ContextIterator iter, int dir) {
        int c;
        if (iter == null) {
            return false;
        }
        iter.reset(dir);
        while ((c = iter.next()) >= 0) {
            int type = this.getTypeOrIgnorable(c);
            if ((type & 4) != 0) continue;
            return type != 0;
        }
        return false;
    }

    private final boolean isPrecededBySoftDotted(ContextIterator iter) {
        int c;
        if (iter == null) {
            return false;
        }
        iter.reset(-1);
        while ((c = iter.next()) >= 0) {
            int dotType = this.getDotType(c);
            if (dotType == 16) {
                return true;
            }
            if (dotType == 48) continue;
            return false;
        }
        return false;
    }

    private final boolean isPrecededBy_I(ContextIterator iter) {
        int c;
        if (iter == null) {
            return false;
        }
        iter.reset(-1);
        while ((c = iter.next()) >= 0) {
            if (c == 73) {
                return true;
            }
            int dotType = this.getDotType(c);
            if (dotType == 48) continue;
            return false;
        }
        return false;
    }

    private final boolean isFollowedByMoreAbove(ContextIterator iter) {
        int c;
        if (iter == null) {
            return false;
        }
        iter.reset(1);
        while ((c = iter.next()) >= 0) {
            int dotType = this.getDotType(c);
            if (dotType == 32) {
                return true;
            }
            if (dotType == 48) continue;
            return false;
        }
        return false;
    }

    private final boolean isFollowedByDotAbove(ContextIterator iter) {
        int c;
        if (iter == null) {
            return false;
        }
        iter.reset(1);
        while ((c = iter.next()) >= 0) {
            if (c == 775) {
                return true;
            }
            int dotType = this.getDotType(c);
            if (dotType == 48) continue;
            return false;
        }
        return false;
    }

    public final int toFullLower(int c, ContextIterator iter, StringBuffer out, ULocale locale, int[] locCache) {
        int result = c;
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) >= 2) {
                result = c + UCaseProps.getDelta(props);
            }
        } else {
            long value;
            int full;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            char excWord = this.exceptions[excOffset++];
            int excOffset2 = excOffset;
            if ((excWord & 0x4000) != 0) {
                int loc = UCaseProps.getCaseLocale(locale, locCache);
                if (loc == 3 && ((c == 73 || c == 74 || c == 302) && this.isFollowedByMoreAbove(iter) || c == 204 || c == 205 || c == 296)) {
                    switch (c) {
                        case 73: {
                            out.append(iDot);
                            return 2;
                        }
                        case 74: {
                            out.append(jDot);
                            return 2;
                        }
                        case 302: {
                            out.append(iOgonekDot);
                            return 2;
                        }
                        case 204: {
                            out.append(iDotGrave);
                            return 3;
                        }
                        case 205: {
                            out.append(iDotAcute);
                            return 3;
                        }
                        case 296: {
                            out.append(iDotTilde);
                            return 3;
                        }
                    }
                    return 0;
                }
                if (loc == 2 && c == 304) {
                    return 105;
                }
                if (loc == 2 && c == 775 && this.isPrecededBy_I(iter)) {
                    return 0;
                }
                if (loc == 2 && c == 73 && !this.isFollowedByDotAbove(iter)) {
                    return 305;
                }
                if (c == 304) {
                    out.append(iDot);
                    return 2;
                }
                if (c == 931 && !this.isFollowedByCasedLetter(iter, 1) && this.isFollowedByCasedLetter(iter, -1)) {
                    return 962;
                }
            } else if (UCaseProps.hasSlot(excWord, 7) && (full = (int)(value = this.getSlotValueAndOffset(excWord, 7, excOffset)) & 0xF) != 0) {
                excOffset = (int)(value >> 32) + 1;
                out.append(this.exceptions, excOffset, full);
                return full;
            }
            if (UCaseProps.hasSlot(excWord, 0)) {
                result = this.getSlotValue(excWord, 0, excOffset2);
            }
        }
        return result == c ? ~result : result;
    }

    private final int toUpperOrTitle(int c, ContextIterator iter, StringBuffer out, ULocale locale, int[] locCache, boolean upperNotTitle) {
        int result = c;
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) == 1) {
                result = c + UCaseProps.getDelta(props);
            }
        } else {
            int index;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            char excWord = this.exceptions[excOffset++];
            int excOffset2 = excOffset;
            if ((excWord & 0x4000) != 0) {
                int loc = UCaseProps.getCaseLocale(locale, locCache);
                if (loc == 2 && c == 105) {
                    return 304;
                }
                if (loc == 3 && c == 775 && this.isPrecededBySoftDotted(iter)) {
                    return 0;
                }
            } else if (UCaseProps.hasSlot(excWord, 7)) {
                long value = this.getSlotValueAndOffset(excWord, 7, excOffset);
                int full = (int)value & 0xFFFF;
                excOffset = (int)(value >> 32) + 1;
                excOffset += full & 0xF;
                excOffset += (full >>= 4) & 0xF;
                full >>= 4;
                if (upperNotTitle) {
                    full &= 0xF;
                } else {
                    excOffset += full & 0xF;
                    full = full >> 4 & 0xF;
                }
                if (full != 0) {
                    out.append(this.exceptions, excOffset, full);
                    return full;
                }
            }
            if (!upperNotTitle && UCaseProps.hasSlot(excWord, 3)) {
                index = 3;
            } else if (UCaseProps.hasSlot(excWord, 2)) {
                index = 2;
            } else {
                return ~c;
            }
            result = this.getSlotValue(excWord, index, excOffset2);
        }
        return result == c ? ~result : result;
    }

    public final int toFullUpper(int c, ContextIterator iter, StringBuffer out, ULocale locale, int[] locCache) {
        return this.toUpperOrTitle(c, iter, out, locale, locCache, true);
    }

    public final int toFullTitle(int c, ContextIterator iter, StringBuffer out, ULocale locale, int[] locCache) {
        return this.toUpperOrTitle(c, iter, out, locale, locCache, false);
    }

    public final int fold(int c, int options) {
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) >= 2) {
                c += UCaseProps.getDelta(props);
            }
        } else {
            int index;
            char excWord;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            if (((excWord = this.exceptions[excOffset++]) & 0x8000) != 0) {
                if ((options & 0xFF) == 0) {
                    if (c == 73) {
                        return 105;
                    }
                    if (c == 304) {
                        return c;
                    }
                } else {
                    if (c == 73) {
                        return 305;
                    }
                    if (c == 304) {
                        return 105;
                    }
                }
            }
            if (UCaseProps.hasSlot(excWord, 1)) {
                index = 1;
            } else if (UCaseProps.hasSlot(excWord, 0)) {
                index = 0;
            } else {
                return c;
            }
            c = this.getSlotValue(excWord, index, excOffset);
        }
        return c;
    }

    public final int toFullFolding(int c, StringBuffer out, int options) {
        int result = c;
        char props = this.trie.getCodePointValue(c);
        if (!UCaseProps.propsHasException(props)) {
            if (UCaseProps.getTypeFromProps(props) >= 2) {
                result = c + UCaseProps.getDelta(props);
            }
        } else {
            int index;
            int excOffset = UCaseProps.getExceptionsOffset(props);
            char excWord = this.exceptions[excOffset++];
            int excOffset2 = excOffset;
            if ((excWord & 0x8000) != 0) {
                if ((options & 0xFF) == 0) {
                    if (c == 73) {
                        return 105;
                    }
                    if (c == 304) {
                        out.append(iDot);
                        return 2;
                    }
                } else {
                    if (c == 73) {
                        return 305;
                    }
                    if (c == 304) {
                        return 105;
                    }
                }
            } else if (UCaseProps.hasSlot(excWord, 7)) {
                long value = this.getSlotValueAndOffset(excWord, 7, excOffset);
                int full = (int)value & 0xFFFF;
                excOffset = (int)(value >> 32) + 1;
                excOffset += full & 0xF;
                if ((full = full >> 4 & 0xF) != 0) {
                    out.append(this.exceptions, excOffset, full);
                    return full;
                }
            }
            if (UCaseProps.hasSlot(excWord, 1)) {
                index = 1;
            } else if (UCaseProps.hasSlot(excWord, 0)) {
                index = 0;
            } else {
                return ~c;
            }
            result = this.getSlotValue(excWord, index, excOffset2);
        }
        return result == c ? ~result : result;
    }

    public final boolean hasBinaryProperty(int c, int which) {
        switch (which) {
            case 22: {
                return 1 == this.getType(c);
            }
            case 30: {
                return 2 == this.getType(c);
            }
            case 27: {
                return this.isSoftDotted(c);
            }
            case 34: {
                return this.isCaseSensitive(c);
            }
            case 49: {
                return this.getType(c) != 0;
            }
            case 50: {
                return this.getTypeOrIgnorable(c) >> 2 != 0;
            }
            case 51: {
                dummyStringBuffer.setLength(0);
                return this.toFullLower(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0;
            }
            case 52: {
                dummyStringBuffer.setLength(0);
                return this.toFullUpper(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0;
            }
            case 53: {
                dummyStringBuffer.setLength(0);
                return this.toFullTitle(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0;
            }
            case 55: {
                dummyStringBuffer.setLength(0);
                return this.toFullLower(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0 || this.toFullUpper(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0 || this.toFullTitle(c, null, dummyStringBuffer, ULocale.ROOT, rootLocCache) >= 0;
            }
        }
        return false;
    }

    private static final int getTypeFromProps(int props) {
        return props & 3;
    }

    private static final int getDelta(int props) {
        return (short)props >> 6;
    }

    public static interface ContextIterator {
        public void reset(int var1);

        public int next();
    }

    private final class IsAcceptable
    implements ICUBinary.Authenticate {
        private IsAcceptable() {
        }

        public boolean isDataVersionAcceptable(byte[] version) {
            return version[0] == 1 && version[2] == 5 && version[3] == 2;
        }
    }
}

