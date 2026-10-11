/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.CharTrie;
import com.ibm.icu.impl.Trie;
import com.ibm.icu.text.RuleBasedBreakIterator;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

final class RBBIDataWrapper {
    RBBIDataHeader fHeader;
    short[] fFTable;
    short[] fRTable;
    short[] fSFTable;
    short[] fSRTable;
    CharTrie fTrie;
    String fRuleSource;
    int[] fStatusTable;
    static final int DH_SIZE = 24;
    static final int DH_MAGIC = 0;
    static final int DH_FORMATVERSION = 1;
    static final int DH_LENGTH = 2;
    static final int DH_CATCOUNT = 3;
    static final int DH_FTABLE = 4;
    static final int DH_FTABLELEN = 5;
    static final int DH_RTABLE = 6;
    static final int DH_RTABLELEN = 7;
    static final int DH_SFTABLE = 8;
    static final int DH_SFTABLELEN = 9;
    static final int DH_SRTABLE = 10;
    static final int DH_SRTABLELEN = 11;
    static final int DH_TRIE = 12;
    static final int DH_TRIELEN = 13;
    static final int DH_RULESOURCE = 14;
    static final int DH_RULESOURCELEN = 15;
    static final int DH_STATUSTABLE = 16;
    static final int DH_STATUSTABLELEN = 17;
    static final int ACCEPTING = 0;
    static final int LOOKAHEAD = 1;
    static final int TAGIDX = 2;
    static final int RESERVED = 3;
    static final int NEXTSTATES = 4;
    static final int NUMSTATES = 0;
    static final int ROWLEN = 2;
    static final int FLAGS = 4;
    static final int RESERVED_2 = 6;
    static final int ROW_DATA = 8;
    static final int RBBI_LOOKAHEAD_HARD_BREAK = 1;
    static final int RBBI_BOF_REQUIRED = 2;
    static TrieFoldingFunc fTrieFoldingFunc = new TrieFoldingFunc();

    int getRowIndex(int state) {
        return 8 + state * (this.fHeader.fCatCount + 4);
    }

    RBBIDataWrapper() {
    }

    static RBBIDataWrapper get(InputStream is) throws IOException {
        DataInputStream dis = new DataInputStream(new BufferedInputStream(is));
        RBBIDataWrapper This = new RBBIDataWrapper();
        dis.skip(128L);
        This.fHeader = new RBBIDataHeader();
        This.fHeader.fMagic = dis.readInt();
        This.fHeader.fVersion = dis.readInt();
        This.fHeader.fFormatVersion[0] = (byte)(This.fHeader.fVersion >> 24);
        This.fHeader.fFormatVersion[1] = (byte)(This.fHeader.fVersion >> 16);
        This.fHeader.fFormatVersion[2] = (byte)(This.fHeader.fVersion >> 8);
        This.fHeader.fFormatVersion[3] = (byte)This.fHeader.fVersion;
        This.fHeader.fLength = dis.readInt();
        This.fHeader.fCatCount = dis.readInt();
        This.fHeader.fFTable = dis.readInt();
        This.fHeader.fFTableLen = dis.readInt();
        This.fHeader.fRTable = dis.readInt();
        This.fHeader.fRTableLen = dis.readInt();
        This.fHeader.fSFTable = dis.readInt();
        This.fHeader.fSFTableLen = dis.readInt();
        This.fHeader.fSRTable = dis.readInt();
        This.fHeader.fSRTableLen = dis.readInt();
        This.fHeader.fTrie = dis.readInt();
        This.fHeader.fTrieLen = dis.readInt();
        This.fHeader.fRuleSource = dis.readInt();
        This.fHeader.fRuleSourceLen = dis.readInt();
        This.fHeader.fStatusTable = dis.readInt();
        This.fHeader.fStatusTableLen = dis.readInt();
        dis.skip(24L);
        if (This.fHeader.fMagic != 45472 || This.fHeader.fVersion != 1 && This.fHeader.fFormatVersion[0] != 3) {
            throw new IOException("Break Iterator Rule Data Magic Number Incorrect, or unsupported data version.");
        }
        int pos = 96;
        if (This.fHeader.fFTable < pos || This.fHeader.fFTable > This.fHeader.fLength) {
            throw new IOException("Break iterator Rule data corrupt");
        }
        dis.skip(This.fHeader.fFTable - pos);
        pos = This.fHeader.fFTable;
        This.fFTable = new short[This.fHeader.fFTableLen / 2];
        int i = 0;
        while (i < This.fFTable.length) {
            This.fFTable[i] = dis.readShort();
            pos += 2;
            ++i;
        }
        dis.skip(This.fHeader.fRTable - pos);
        pos = This.fHeader.fRTable;
        This.fRTable = new short[This.fHeader.fRTableLen / 2];
        i = 0;
        while (i < This.fRTable.length) {
            This.fRTable[i] = dis.readShort();
            pos += 2;
            ++i;
        }
        if (This.fHeader.fSFTableLen > 0) {
            dis.skip(This.fHeader.fSFTable - pos);
            pos = This.fHeader.fSFTable;
            This.fSFTable = new short[This.fHeader.fSFTableLen / 2];
            i = 0;
            while (i < This.fSFTable.length) {
                This.fSFTable[i] = dis.readShort();
                pos += 2;
                ++i;
            }
        }
        if (This.fHeader.fSRTableLen > 0) {
            dis.skip(This.fHeader.fSRTable - pos);
            pos = This.fHeader.fSRTable;
            This.fSRTable = new short[This.fHeader.fSRTableLen / 2];
            i = 0;
            while (i < This.fSRTable.length) {
                This.fSRTable[i] = dis.readShort();
                pos += 2;
                ++i;
            }
        }
        dis.skip(This.fHeader.fTrie - pos);
        pos = This.fHeader.fTrie;
        dis.mark(This.fHeader.fTrieLen + 100);
        This.fTrie = new CharTrie(dis, fTrieFoldingFunc);
        dis.reset();
        if (pos > This.fHeader.fStatusTable) {
            throw new IOException("Break iterator Rule data corrupt");
        }
        dis.skip(This.fHeader.fStatusTable - pos);
        pos = This.fHeader.fStatusTable;
        This.fStatusTable = new int[This.fHeader.fStatusTableLen / 4];
        i = 0;
        while (i < This.fStatusTable.length) {
            This.fStatusTable[i] = dis.readInt();
            pos += 4;
            ++i;
        }
        if (pos > This.fHeader.fRuleSource) {
            throw new IOException("Break iterator Rule data corrupt");
        }
        dis.skip(This.fHeader.fRuleSource - pos);
        pos = This.fHeader.fRuleSource;
        StringBuilder sb = new StringBuilder(This.fHeader.fRuleSourceLen / 2);
        i = 0;
        while (i < This.fHeader.fRuleSourceLen) {
            sb.append(dis.readChar());
            pos += 2;
            i += 2;
        }
        This.fRuleSource = sb.toString();
        if (RuleBasedBreakIterator.fDebugEnv != null && RuleBasedBreakIterator.fDebugEnv.indexOf("data") >= 0) {
            This.dump();
        }
        return This;
    }

    static final int getNumStates(short[] table) {
        short hi = table[0];
        short lo = table[1];
        int val = (hi << 16) + (lo & 0xFFFF);
        return val;
    }

    void dump() {
        System.out.println("RBBI Data Wrapper dump ...");
        System.out.println();
        System.out.println("Forward State Table");
        this.dumpTable(this.fFTable);
        System.out.println("Reverse State Table");
        this.dumpTable(this.fRTable);
        System.out.println("Forward Safe Points Table");
        this.dumpTable(this.fSFTable);
        System.out.println("Reverse Safe Points Table");
        this.dumpTable(this.fSRTable);
        this.dumpCharCategories();
        System.out.println("Source Rules: " + this.fRuleSource);
    }

    public static String intToString(int n, int width) {
        StringBuilder dest = new StringBuilder(width);
        dest.append(n);
        while (dest.length() < width) {
            dest.insert(0, ' ');
        }
        return dest.toString();
    }

    public static String intToHexString(int n, int width) {
        StringBuilder dest = new StringBuilder(width);
        dest.append(Integer.toHexString(n));
        while (dest.length() < width) {
            dest.insert(0, ' ');
        }
        return dest.toString();
    }

    private void dumpTable(short[] table) {
        if (table == null) {
            System.out.println("  -- null -- ");
        } else {
            String header = " Row  Acc Look  Tag";
            int n = 0;
            while (n < this.fHeader.fCatCount) {
                header = String.valueOf(header) + RBBIDataWrapper.intToString(n, 5);
                ++n;
            }
            System.out.println(header);
            n = 0;
            while (n < header.length()) {
                System.out.print("-");
                ++n;
            }
            System.out.println();
            int state = 0;
            while (state < RBBIDataWrapper.getNumStates(table)) {
                this.dumpRow(table, state);
                ++state;
            }
            System.out.println();
        }
    }

    private void dumpRow(short[] table, int state) {
        StringBuilder dest = new StringBuilder(this.fHeader.fCatCount * 5 + 20);
        dest.append(RBBIDataWrapper.intToString(state, 4));
        int row = this.getRowIndex(state);
        if (table[row + 0] != 0) {
            dest.append(RBBIDataWrapper.intToString(table[row + 0], 5));
        } else {
            dest.append("     ");
        }
        if (table[row + 1] != 0) {
            dest.append(RBBIDataWrapper.intToString(table[row + 1], 5));
        } else {
            dest.append("     ");
        }
        dest.append(RBBIDataWrapper.intToString(table[row + 2], 5));
        int col = 0;
        while (col < this.fHeader.fCatCount) {
            dest.append(RBBIDataWrapper.intToString(table[row + 4 + col], 5));
            ++col;
        }
        System.out.println(dest);
    }

    private void dumpCharCategories() {
        int n = this.fHeader.fCatCount;
        String[] catStrings = new String[n + 1];
        int rangeStart = 0;
        int rangeEnd = 0;
        int lastCat = -1;
        int[] lastNewline = new int[n + 1];
        int category = 0;
        while (category <= this.fHeader.fCatCount) {
            catStrings[category] = "";
            ++category;
        }
        System.out.println("\nCharacter Categories");
        System.out.println("--------------------");
        int char32 = 0;
        while (char32 <= 0x10FFFF) {
            category = this.fTrie.getCodePointValue(char32);
            if ((category &= 0xFFFFBFFF) < 0 || category > this.fHeader.fCatCount) {
                System.out.println("Error, bad category " + Integer.toHexString(category) + " for char " + Integer.toHexString(char32));
                break;
            }
            if (category == lastCat) {
                rangeEnd = char32;
            } else {
                if (lastCat >= 0) {
                    if (catStrings[lastCat].length() > lastNewline[lastCat] + 70) {
                        lastNewline[lastCat] = catStrings[lastCat].length() + 10;
                        int n2 = lastCat;
                        catStrings[n2] = String.valueOf(catStrings[n2]) + "\n       ";
                    }
                    int n3 = lastCat;
                    catStrings[n3] = String.valueOf(catStrings[n3]) + " " + Integer.toHexString(rangeStart);
                    if (rangeEnd != rangeStart) {
                        int n4 = lastCat;
                        catStrings[n4] = String.valueOf(catStrings[n4]) + "-" + Integer.toHexString(rangeEnd);
                    }
                }
                lastCat = category;
                rangeStart = rangeEnd = char32;
            }
            ++char32;
        }
        int n5 = lastCat;
        catStrings[n5] = String.valueOf(catStrings[n5]) + " " + Integer.toHexString(rangeStart);
        if (rangeEnd != rangeStart) {
            int n6 = lastCat;
            catStrings[n6] = String.valueOf(catStrings[n6]) + "-" + Integer.toHexString(rangeEnd);
        }
        category = 0;
        while (category <= this.fHeader.fCatCount) {
            System.out.println(String.valueOf(RBBIDataWrapper.intToString(category, 5)) + "  " + catStrings[category]);
            ++category;
        }
        System.out.println();
    }

    static final class RBBIDataHeader {
        int fMagic = 0;
        int fVersion;
        byte[] fFormatVersion = new byte[4];
        int fLength;
        int fCatCount;
        int fFTable;
        int fFTableLen;
        int fRTable;
        int fRTableLen;
        int fSFTable;
        int fSFTableLen;
        int fSRTable;
        int fSRTableLen;
        int fTrie;
        int fTrieLen;
        int fRuleSource;
        int fRuleSourceLen;
        int fStatusTable;
        int fStatusTableLen;
    }

    static class TrieFoldingFunc
    implements Trie.DataManipulate {
        TrieFoldingFunc() {
        }

        public int getFoldingOffset(int data) {
            if ((data & 0x8000) != 0) {
                return data & Short.MAX_VALUE;
            }
            return 0;
        }
    }
}

