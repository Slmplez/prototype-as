/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CharTrie;
import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.ICUData;
import com.ibm.icu.impl.TrieIterator;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.RangeValueIterator;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class UBiDiProps {
    private int[] indexes;
    private int[] mirrors;
    private byte[] jgArray;
    private CharTrie trie;
    private static final String DATA_NAME = "ubidi";
    private static final String DATA_TYPE = "icu";
    private static final String DATA_FILE_NAME = "ubidi.icu";
    private static final byte[] FMT;
    private static final int IX_INDEX_TOP = 0;
    private static final int IX_MIRROR_LENGTH = 3;
    private static final int IX_JG_START = 4;
    private static final int IX_JG_LIMIT = 5;
    private static final int IX_MAX_VALUES = 15;
    private static final int IX_TOP = 16;
    private static final int JT_SHIFT = 5;
    private static final int JOIN_CONTROL_SHIFT = 10;
    private static final int BIDI_CONTROL_SHIFT = 11;
    private static final int IS_MIRRORED_SHIFT = 12;
    private static final int MIRROR_DELTA_SHIFT = 13;
    private static final int MAX_JG_SHIFT = 16;
    private static final int CLASS_MASK = 31;
    private static final int JT_MASK = 224;
    private static final int MAX_JG_MASK = 0xFF0000;
    private static final int ESC_MIRROR_DELTA = -4;
    private static final int MIRROR_INDEX_SHIFT = 21;
    public static final UBiDiProps INSTANCE;
    private static volatile UBiDiProps FULL_INSTANCE;
    private static volatile UBiDiProps DUMMY_INSTANCE;

    static {
        UBiDiProps bp;
        FMT = new byte[]{66, 105, 68, 105};
        try {
            FULL_INSTANCE = bp = new UBiDiProps();
        }
        catch (IOException iOException) {
            DUMMY_INSTANCE = bp = new UBiDiProps(true);
        }
        INSTANCE = bp;
    }

    private UBiDiProps() throws IOException {
        InputStream is = ICUData.getStream("data/icudt44b/ubidi.icu");
        BufferedInputStream b = new BufferedInputStream(is, 4096);
        this.readData(b);
        b.close();
        is.close();
    }

    private UBiDiProps(boolean makeDummy) {
        this.indexes = new int[16];
        this.indexes[0] = 16;
        this.trie = new CharTrie(0, 0, null);
    }

    private void readData(InputStream is) throws IOException {
        DataInputStream inputStream = new DataInputStream(is);
        ICUBinary.readHeader(inputStream, FMT, new IsAcceptable());
        int count = inputStream.readInt();
        if (count < 0) {
            throw new IOException("indexes[0] too small in ubidi.icu");
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
            this.mirrors = new int[count];
            i = 0;
            while (i < count) {
                this.mirrors[i] = inputStream.readInt();
                ++i;
            }
        }
        count = this.indexes[5] - this.indexes[4];
        this.jgArray = new byte[count];
        i = 0;
        while (i < count) {
            this.jgArray[i] = inputStream.readByte();
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static UBiDiProps getSingleton() throws IOException {
        if (FULL_INSTANCE != null) return FULL_INSTANCE;
        Class<UBiDiProps> clazz = UBiDiProps.class;
        synchronized (UBiDiProps.class) {
            if (FULL_INSTANCE != null) return FULL_INSTANCE;
            FULL_INSTANCE = new UBiDiProps();
            // ** MonitorExit[var0] (shouldn't be in output)
            return FULL_INSTANCE;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static UBiDiProps getDummy() {
        if (DUMMY_INSTANCE != null) return DUMMY_INSTANCE;
        Class<UBiDiProps> clazz = UBiDiProps.class;
        synchronized (UBiDiProps.class) {
            if (DUMMY_INSTANCE != null) return DUMMY_INSTANCE;
            DUMMY_INSTANCE = new UBiDiProps(true);
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
        int length = this.indexes[3];
        int i = 0;
        while (i < length) {
            int c = UBiDiProps.getMirrorCodePoint(this.mirrors[i]);
            set.add(c, c + 1);
            ++i;
        }
        int start = this.indexes[4];
        int limit = this.indexes[5];
        length = limit - start;
        byte prev = 0;
        i = 0;
        while (i < length) {
            byte jg = this.jgArray[i];
            if (jg != prev) {
                set.add(start);
                prev = jg;
            }
            ++start;
            ++i;
        }
        if (prev != 0) {
            set.add(limit);
        }
    }

    public final int getMaxValue(int which) {
        int max = this.indexes[15];
        switch (which) {
            case 4096: {
                return max & 0x1F;
            }
            case 4102: {
                return (max & 0xFF0000) >> 16;
            }
            case 4103: {
                return (max & 0xE0) >> 5;
            }
        }
        return -1;
    }

    public final int getClass(int c) {
        return UBiDiProps.getClassFromProps(this.trie.getCodePointValue(c));
    }

    public final boolean isMirrored(int c) {
        return UBiDiProps.getFlagFromProps(this.trie.getCodePointValue(c), 12);
    }

    public final int getMirror(int c) {
        char props = this.trie.getCodePointValue(c);
        int delta = (short)props >> 13;
        if (delta != -4) {
            return c + delta;
        }
        int length = this.indexes[3];
        int i = 0;
        while (i < length) {
            int m = this.mirrors[i];
            int c2 = UBiDiProps.getMirrorCodePoint(m);
            if (c == c2) {
                return UBiDiProps.getMirrorCodePoint(this.mirrors[UBiDiProps.getMirrorIndex(m)]);
            }
            if (c < c2) break;
            ++i;
        }
        return c;
    }

    public final boolean isBidiControl(int c) {
        return UBiDiProps.getFlagFromProps(this.trie.getCodePointValue(c), 11);
    }

    public final boolean isJoinControl(int c) {
        return UBiDiProps.getFlagFromProps(this.trie.getCodePointValue(c), 10);
    }

    public final int getJoiningType(int c) {
        return (this.trie.getCodePointValue(c) & 0xE0) >> 5;
    }

    public final int getJoiningGroup(int c) {
        int start = this.indexes[4];
        int limit = this.indexes[5];
        if (start <= c && c < limit) {
            return this.jgArray[c - start] & 0xFF;
        }
        return 0;
    }

    private static final int getClassFromProps(int props) {
        return props & 0x1F;
    }

    private static final boolean getFlagFromProps(int props, int shift) {
        return (props >> shift & 1) != 0;
    }

    private static final int getMirrorCodePoint(int m) {
        return m & 0x1FFFFF;
    }

    private static final int getMirrorIndex(int m) {
        return m >>> 21;
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

