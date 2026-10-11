/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CharTrie;
import com.ibm.icu.impl.ICUData;
import com.ibm.icu.impl.Norm2AllModes;
import com.ibm.icu.impl.Normalizer2Impl;
import com.ibm.icu.impl.TrieIterator;
import com.ibm.icu.impl.UBiDiProps;
import com.ibm.icu.impl.UCaseProps;
import com.ibm.icu.impl.UCharacterPropertyReader;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.RangeValueIterator;
import com.ibm.icu.util.VersionInfo;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.MissingResourceException;

public final class UCharacterProperty {
    public static final UCharacterProperty INSTANCE;
    public CharTrie m_trie_;
    public char[] m_trieIndex_;
    public char[] m_trieData_;
    public int m_trieInitialValue_;
    public VersionInfo m_unicodeVersion_;
    public static final char LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_ = '\u0130';
    public static final char LATIN_SMALL_LETTER_DOTLESS_I_ = '\u0131';
    public static final char LATIN_SMALL_LETTER_I_ = 'i';
    public static final int TYPE_MASK = 31;
    public static final int SRC_NONE = 0;
    public static final int SRC_CHAR = 1;
    public static final int SRC_PROPSVEC = 2;
    public static final int SRC_NAMES = 3;
    public static final int SRC_CASE = 4;
    public static final int SRC_BIDI = 5;
    public static final int SRC_CHAR_AND_PROPSVEC = 6;
    public static final int SRC_CASE_AND_NORM = 7;
    public static final int SRC_NFC = 8;
    public static final int SRC_NFKC = 9;
    public static final int SRC_NFKC_CF = 10;
    public static final int SRC_NFC_CANON_ITER = 11;
    public static final int SRC_COUNT = 12;
    static final int MY_MASK = 30;
    private static final int GC_CN_MASK;
    private static final int GC_CC_MASK;
    private static final int GC_CS_MASK;
    private static final int GC_ZS_MASK;
    private static final int GC_ZL_MASK;
    private static final int GC_ZP_MASK;
    private static final int GC_Z_MASK;
    BinaryProperties[] binProps = new BinaryProperties[]{new BinaryProperties(1, 256), new BinaryProperties(1, 128), new BinaryProperties(5, 0), new BinaryProperties(5, 0), new BinaryProperties(1, 2), new BinaryProperties(1, 524288), new BinaryProperties(1, 0x100000), new BinaryProperties(1, 1024), new BinaryProperties(1, 2048), new BinaryProperties(8, 0), new BinaryProperties(1, 0x4000000), new BinaryProperties(1, 8192), new BinaryProperties(1, 16384), new BinaryProperties(1, 64), new BinaryProperties(1, 4), new BinaryProperties(1, 0x2000000), new BinaryProperties(1, 0x1000000), new BinaryProperties(1, 512), new BinaryProperties(1, 32768), new BinaryProperties(1, 65536), new BinaryProperties(5, 0), new BinaryProperties(1, 0x200000), new BinaryProperties(4, 0), new BinaryProperties(1, 32), new BinaryProperties(1, 4096), new BinaryProperties(1, 8), new BinaryProperties(1, 131072), new BinaryProperties(4, 0), new BinaryProperties(1, 16), new BinaryProperties(1, 262144), new BinaryProperties(4, 0), new BinaryProperties(1, 1), new BinaryProperties(1, 0x800000), new BinaryProperties(1, 0x400000), new BinaryProperties(4, 0), new BinaryProperties(1, 0x8000000), new BinaryProperties(1, 0x10000000), new BinaryProperties(8, 0), new BinaryProperties(9, 0), new BinaryProperties(8, 0), new BinaryProperties(9, 0), new BinaryProperties(11, 0), new BinaryProperties(1, 0x20000000), new BinaryProperties(1, 0x40000000), new BinaryProperties(6, 0), new BinaryProperties(1, 0), new BinaryProperties(1, 0), new BinaryProperties(1, 0), new BinaryProperties(1, 0), new BinaryProperties(4, 0), new BinaryProperties(4, 0), new BinaryProperties(4, 0), new BinaryProperties(4, 0), new BinaryProperties(4, 0), new BinaryProperties(7, 0), new BinaryProperties(4, 0), new BinaryProperties(10, 0)};
    CharTrie m_additionalTrie_;
    int[] m_additionalVectors_;
    int m_additionalColumnsCount_;
    int m_maxBlockScriptValue_;
    int m_maxJTGValue_;
    private static final String DATA_FILE_NAME_ = "data/icudt44b/uprops.icu";
    private static final int DATA_BUFFER_SIZE_ = 25000;
    private static final int LEAD_SURROGATE_SHIFT_ = 10;
    private static final int SURROGATE_OFFSET_ = -56613888;
    private static final int WHITE_SPACE_PROPERTY_ = 0;
    private static final int DASH_PROPERTY_ = 1;
    private static final int HYPHEN_PROPERTY_ = 2;
    private static final int QUOTATION_MARK_PROPERTY_ = 3;
    private static final int TERMINAL_PUNCTUATION_PROPERTY_ = 4;
    private static final int MATH_PROPERTY_ = 5;
    private static final int HEX_DIGIT_PROPERTY_ = 6;
    private static final int ASCII_HEX_DIGIT_PROPERTY_ = 7;
    private static final int ALPHABETIC_PROPERTY_ = 8;
    private static final int IDEOGRAPHIC_PROPERTY_ = 9;
    private static final int DIACRITIC_PROPERTY_ = 10;
    private static final int EXTENDER_PROPERTY_ = 11;
    private static final int NONCHARACTER_CODE_POINT_PROPERTY_ = 12;
    private static final int GRAPHEME_EXTEND_PROPERTY_ = 13;
    private static final int GRAPHEME_LINK_PROPERTY_ = 14;
    private static final int IDS_BINARY_OPERATOR_PROPERTY_ = 15;
    private static final int IDS_TRINARY_OPERATOR_PROPERTY_ = 16;
    private static final int RADICAL_PROPERTY_ = 17;
    private static final int UNIFIED_IDEOGRAPH_PROPERTY_ = 18;
    private static final int DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_ = 19;
    private static final int DEPRECATED_PROPERTY_ = 20;
    private static final int LOGICAL_ORDER_EXCEPTION_PROPERTY_ = 21;
    private static final int XID_START_PROPERTY_ = 22;
    private static final int XID_CONTINUE_PROPERTY_ = 23;
    private static final int ID_START_PROPERTY_ = 24;
    private static final int ID_CONTINUE_PROPERTY_ = 25;
    private static final int GRAPHEME_BASE_PROPERTY_ = 26;
    private static final int S_TERM_PROPERTY_ = 27;
    private static final int VARIATION_SELECTOR_PROPERTY_ = 28;
    private static final int PATTERN_SYNTAX = 29;
    private static final int PATTERN_WHITE_SPACE = 30;
    private static final int FIRST_NIBBLE_SHIFT_ = 4;
    private static final int LAST_NIBBLE_MASK_ = 15;
    private static final int AGE_SHIFT_ = 24;
    private static final int TAB = 9;
    private static final int CR = 13;
    private static final int U_A = 65;
    private static final int U_F = 70;
    private static final int U_Z = 90;
    private static final int U_a = 97;
    private static final int U_f = 102;
    private static final int U_z = 122;
    private static final int DEL = 127;
    private static final int NL = 133;
    private static final int NBSP = 160;
    private static final int CGJ = 847;
    private static final int FIGURESP = 8199;
    private static final int HAIRSP = 8202;
    private static final int RLM = 8207;
    private static final int NNBSP = 8239;
    private static final int WJ = 8288;
    private static final int INHSWAP = 8298;
    private static final int NOMDIG = 8303;
    private static final int U_FW_A = 65313;
    private static final int U_FW_F = 65318;
    private static final int U_FW_Z = 65338;
    private static final int U_FW_a = 65345;
    private static final int U_FW_f = 65350;
    private static final int U_FW_z = 65370;
    private static final int ZWNBSP = 65279;

    static {
        try {
            INSTANCE = new UCharacterProperty();
        }
        catch (IOException e) {
            throw new MissingResourceException(e.getMessage(), "", "");
        }
        GC_CN_MASK = UCharacterProperty.getMask(0);
        GC_CC_MASK = UCharacterProperty.getMask(15);
        GC_CS_MASK = UCharacterProperty.getMask(18);
        GC_ZS_MASK = UCharacterProperty.getMask(12);
        GC_ZL_MASK = UCharacterProperty.getMask(13);
        GC_ZP_MASK = UCharacterProperty.getMask(14);
        GC_Z_MASK = GC_ZS_MASK | GC_ZL_MASK | GC_ZP_MASK;
    }

    public void setIndexData(CharTrie.FriendAgent friendagent) {
        this.m_trieIndex_ = friendagent.getPrivateIndex();
        this.m_trieData_ = friendagent.getPrivateData();
        this.m_trieInitialValue_ = friendagent.getPrivateInitialValue();
    }

    public final int getProperty(int ch) {
        if (ch < 55296 || ch > 56319 && ch < 65536) {
            try {
                return this.m_trieData_[(this.m_trieIndex_[ch >> 5] << 2) + (ch & 0x1F)];
            }
            catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                return this.m_trieInitialValue_;
            }
        }
        if (ch <= 56319) {
            return this.m_trieData_[(this.m_trieIndex_[320 + (ch >> 5)] << 2) + (ch & 0x1F)];
        }
        if (ch <= 0x10FFFF) {
            return this.m_trie_.getSurrogateValue(UTF16.getLeadSurrogate(ch), (char)(ch & 0x3FF));
        }
        return this.m_trieInitialValue_;
    }

    public int getAdditional(int codepoint, int column) {
        if (column == -1) {
            return this.getProperty(codepoint);
        }
        if (column < 0 || column >= this.m_additionalColumnsCount_) {
            return 0;
        }
        return this.m_additionalVectors_[this.m_additionalTrie_.getCodePointValue(codepoint) + column];
    }

    public VersionInfo getAge(int codepoint) {
        int version = this.getAdditional(codepoint, 0) >> 24;
        return VersionInfo.getInstance(version >> 4 & 0xF, version & 0xF, 0, 0);
    }

    private static final boolean isgraphPOSIX(int c) {
        return (UCharacterProperty.getMask(UCharacter.getType(c)) & (GC_CC_MASK | GC_CS_MASK | GC_CN_MASK | GC_Z_MASK)) == 0;
    }

    public boolean hasBinaryProperty(int c, int which) {
        if (which < 0 || 57 <= which) {
            return false;
        }
        int mask = this.binProps[which].mask;
        int column = this.binProps[which].column;
        if (mask != 0) {
            return (this.getAdditional(c, column) & mask) != 0;
        }
        if (column == 4) {
            try {
                return UCaseProps.getSingleton().hasBinaryProperty(c, which);
            }
            catch (IOException iOException) {
                return false;
            }
        }
        if (column == 8) {
            switch (which) {
                case 9: {
                    Normalizer2Impl impl = Norm2AllModes.getNFCInstance().impl;
                    return impl.isCompNo(impl.getNorm16(c));
                }
            }
            return Norm2AllModes.getN2WithImpl(which - 37).isInert(c);
        }
        if (column == 9) {
            return Norm2AllModes.getN2WithImpl(which - 37).isInert(c);
        }
        if (column == 10) {
            Normalizer2Impl kcf = Norm2AllModes.getNFKC_CFInstance().impl;
            String src = UTF16.valueOf(c);
            StringBuilder dest = new StringBuilder();
            Normalizer2Impl.ReorderingBuffer buffer = new Normalizer2Impl.ReorderingBuffer(kcf, dest, 5);
            kcf.compose(src, 0, src.length(), false, true, buffer);
            return !Normalizer2Impl.UTF16Plus.equal(dest, src);
        }
        if (column == 11) {
            return Norm2AllModes.getNFCInstance().impl.ensureCanonIterData().isCanonSegmentStarter(c);
        }
        if (column == 5) {
            UBiDiProps bdp;
            try {
                bdp = UBiDiProps.getSingleton();
            }
            catch (IOException iOException) {
                return false;
            }
            switch (which) {
                case 3: {
                    return bdp.isMirrored(c);
                }
                case 2: {
                    return bdp.isBidiControl(c);
                }
                case 20: {
                    return bdp.isJoinControl(c);
                }
            }
        } else if (column == 1) {
            switch (which) {
                case 45: {
                    if (c <= 159) {
                        return c == 9 || c == 32;
                    }
                    return UCharacter.getType(c) == 12;
                }
                case 46: {
                    return UCharacterProperty.isgraphPOSIX(c);
                }
                case 47: {
                    return UCharacter.getType(c) == 12 || UCharacterProperty.isgraphPOSIX(c);
                }
                case 48: {
                    if (c <= 102 && c >= 65 && (c <= 70 || c >= 97) || c >= 65313 && c <= 65350 && (c <= 65318 || c >= 65345)) {
                        return true;
                    }
                    return UCharacter.getType(c) == 9;
                }
            }
        } else if (column == 6) {
            switch (which) {
                case 44: {
                    return UCharacter.isUAlphabetic(c) || UCharacter.isDigit(c);
                }
            }
        } else if (column == 7) {
            switch (which) {
                case 54: {
                    String nfd = Norm2AllModes.getNFCInstance().impl.getDecomposition(c);
                    if (nfd != null) {
                        c = nfd.codePointAt(0);
                        if (Character.charCount(c) != nfd.length()) {
                            c = -1;
                        }
                    } else if (c < 0) {
                        return false;
                    }
                    if (c >= 0) {
                        try {
                            UCaseProps csp = UCaseProps.getSingleton();
                            UCaseProps.dummyStringBuffer.setLength(0);
                            return csp.toFullFolding(c, UCaseProps.dummyStringBuffer, 0) >= 0;
                        }
                        catch (IOException iOException) {
                            return false;
                        }
                    }
                    String folded = UCharacter.foldCase(nfd, true);
                    return !folded.equals(nfd);
                }
            }
        }
        return false;
    }

    public final int getSource(int which) {
        if (which < 0) {
            return 0;
        }
        if (which < 57) {
            if (this.binProps[which].mask != 0) {
                return 2;
            }
            return this.binProps[which].column;
        }
        if (which < 4096) {
            return 0;
        }
        if (which < 4117) {
            switch (which) {
                case 4101: 
                case 4105: {
                    return 1;
                }
                case 4098: 
                case 4108: 
                case 4110: 
                case 4112: 
                case 4113: {
                    return 8;
                }
                case 4109: 
                case 4111: {
                    return 9;
                }
                case 4096: 
                case 4102: 
                case 4103: {
                    return 5;
                }
            }
            return 2;
        }
        if (which < 16384) {
            switch (which) {
                case 8192: 
                case 12288: {
                    return 1;
                }
            }
            return 0;
        }
        if (which < 16397) {
            switch (which) {
                case 16384: {
                    return 2;
                }
                case 16385: {
                    return 5;
                }
                case 16386: 
                case 16388: 
                case 16390: 
                case 16391: 
                case 16392: 
                case 16393: 
                case 16394: 
                case 16396: {
                    return 4;
                }
                case 16387: 
                case 16389: 
                case 16395: {
                    return 3;
                }
            }
            return 0;
        }
        return 0;
    }

    public static int getRawSupplementary(char lead, char trail) {
        return (lead << 10) + trail + -56613888;
    }

    public static boolean isRuleWhiteSpace(int c) {
        return c >= 9 && c <= 8233 && (c <= 13 || c == 32 || c == 133 || c == 8206 || c == 8207 || c >= 8232);
    }

    public int getMaxValues(int column) {
        switch (column) {
            case 0: {
                return this.m_maxBlockScriptValue_;
            }
            case 2: {
                return this.m_maxJTGValue_;
            }
        }
        return 0;
    }

    public static final int getMask(int type) {
        return 1 << type;
    }

    private UCharacterProperty() throws IOException {
        InputStream is = ICUData.getRequiredStream(DATA_FILE_NAME_);
        BufferedInputStream b = new BufferedInputStream(is, 25000);
        UCharacterPropertyReader reader = new UCharacterPropertyReader(b);
        reader.read(this);
        b.close();
        this.m_trie_.putIndexData(this);
    }

    public UnicodeSet addPropertyStarts(UnicodeSet set) {
        TrieIterator propsIter = new TrieIterator(this.m_trie_);
        RangeValueIterator.Element propsResult = new RangeValueIterator.Element();
        while (propsIter.next(propsResult)) {
            set.add(propsResult.start);
        }
        set.add(9);
        set.add(10);
        set.add(14);
        set.add(28);
        set.add(32);
        set.add(133);
        set.add(134);
        set.add(127);
        set.add(8202);
        set.add(8208);
        set.add(8298);
        set.add(8304);
        set.add(65279);
        set.add(65280);
        set.add(160);
        set.add(161);
        set.add(8199);
        set.add(8200);
        set.add(8239);
        set.add(8240);
        set.add(12295);
        set.add(12296);
        set.add(19968);
        set.add(19969);
        set.add(20108);
        set.add(20109);
        set.add(19977);
        set.add(19978);
        set.add(22235);
        set.add(22236);
        set.add(20116);
        set.add(20117);
        set.add(20845);
        set.add(20846);
        set.add(19971);
        set.add(19972);
        set.add(20843);
        set.add(20844);
        set.add(20061);
        set.add(20062);
        set.add(97);
        set.add(123);
        set.add(65);
        set.add(91);
        set.add(65345);
        set.add(65371);
        set.add(65313);
        set.add(65339);
        set.add(103);
        set.add(71);
        set.add(65351);
        set.add(65319);
        set.add(8288);
        set.add(65520);
        set.add(65532);
        set.add(917504);
        set.add(921600);
        set.add(847);
        set.add(848);
        return set;
    }

    public void upropsvec_addPropertyStarts(UnicodeSet set) {
        if (this.m_additionalColumnsCount_ > 0) {
            TrieIterator propsVectorsIter = new TrieIterator(this.m_additionalTrie_);
            RangeValueIterator.Element propsVectorsResult = new RangeValueIterator.Element();
            while (propsVectorsIter.next(propsVectorsResult)) {
                set.add(propsVectorsResult.start);
            }
        }
    }

    private static final class BinaryProperties {
        int column;
        int mask;

        public BinaryProperties(int column, int mask) {
            this.column = column;
            this.mask = mask;
        }
    }
}

