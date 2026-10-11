/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.IntTrieBuilder;
import com.ibm.icu.impl.Norm2AllModes;
import com.ibm.icu.impl.Normalizer2Impl;
import com.ibm.icu.impl.TrieBuilder;
import com.ibm.icu.impl.TrieIterator;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.CanonicalIterator;
import com.ibm.icu.text.CollationElementIterator;
import com.ibm.icu.text.CollationRuleParser;
import com.ibm.icu.text.CollatorReader;
import com.ibm.icu.text.Normalizer;
import com.ibm.icu.text.RuleBasedCollator;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.util.RangeValueIterator;
import com.ibm.icu.util.VersionInfo;
import java.io.IOException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class CollationParsedRuleBuilder {
    static final InverseUCA INVERSE_UCA_;
    private static final String INV_UCA_VERSION_MISMATCH_ = "UCA versions of UCA and inverse UCA should match";
    private static final String UCA_NOT_INSTANTIATED_ = "UCA is not instantiated!";
    private static final int CE_BASIC_STRENGTH_LIMIT_ = 3;
    private static final int CE_STRENGTH_LIMIT_ = 16;
    private static final int[] STRENGTH_MASK_;
    private static final int CE_NOT_FOUND_ = -268435456;
    private static final int CE_NOT_FOUND_TAG_ = 0;
    private static final int CE_EXPANSION_TAG_ = 1;
    private static final int CE_CONTRACTION_TAG_ = 2;
    private static final int CE_SURROGATE_TAG_ = 5;
    private static final int CE_IMPLICIT_TAG_ = 10;
    private static final int CE_SPEC_PROC_TAG_ = 11;
    private static final int CE_LONG_PRIMARY_TAG_ = 12;
    private static final int UNSAFECP_TABLE_SIZE_ = 1056;
    private static final int UNSAFECP_TABLE_MASK_ = 8191;
    private static final int UPPER_CASE_ = 128;
    private static final int MIXED_CASE_ = 64;
    private static final int LOWER_CASE_ = 0;
    private static final int CONTRACTION_TABLE_NEW_ELEMENT_ = 0xFFFFFF;
    private CollationRuleParser m_parser_;
    private CollationElementIterator m_utilColEIter_;
    private CEGenerator[] m_utilGens_ = new CEGenerator[]{new CEGenerator(), new CEGenerator(), new CEGenerator()};
    private int[] m_utilCEBuffer_ = new int[3];
    private int[] m_utilIntBuffer_ = new int[16];
    private Elements m_utilElement_ = new Elements();
    private Elements m_utilElement2_ = new Elements();
    private CollationRuleParser.Token m_utilToken_ = new CollationRuleParser.Token();
    private int[] m_utilCountBuffer_ = new int[6];
    private long[] m_utilLongBuffer_ = new long[5];
    private WeightRange[] m_utilLowerWeightRange_ = new WeightRange[]{new WeightRange(), new WeightRange(), new WeightRange(), new WeightRange(), new WeightRange()};
    private WeightRange[] m_utilUpperWeightRange_ = new WeightRange[]{new WeightRange(), new WeightRange(), new WeightRange(), new WeightRange(), new WeightRange()};
    private WeightRange m_utilWeightRange_ = new WeightRange();
    private final Normalizer2Impl m_nfcImpl_;
    private CanonicalIterator m_utilCanIter_;
    private StringBuilder m_utilStringBuffer_;
    private static boolean buildCMTabFlag;

    static {
        InverseUCA temp = null;
        try {
            temp = CollatorReader.getInverseUCA();
        }
        catch (IOException iOException) {}
        if (temp != null && RuleBasedCollator.UCA_ != null) {
            if (!temp.m_UCA_version_.equals(RuleBasedCollator.UCA_.m_UCA_version_)) {
                throw new RuntimeException(INV_UCA_VERSION_MISMATCH_);
            }
        } else {
            throw new RuntimeException(UCA_NOT_INSTANTIATED_);
        }
        INVERSE_UCA_ = temp;
        STRENGTH_MASK_ = new int[]{-65536, -256, -1};
        buildCMTabFlag = false;
    }

    CollationParsedRuleBuilder(String rules) throws ParseException {
        this.m_nfcImpl_ = Norm2AllModes.getNFCInstance().impl;
        this.m_utilCanIter_ = new CanonicalIterator("");
        this.m_utilStringBuffer_ = new StringBuilder("");
        this.m_parser_ = new CollationRuleParser(rules);
        this.m_parser_.assembleTokenList();
        this.m_utilColEIter_ = RuleBasedCollator.UCA_.getCollationElementIterator("");
    }

    void setRules(RuleBasedCollator collator) throws Exception {
        if (this.m_parser_.m_resultLength_ > 0 || this.m_parser_.m_removeSet_ != null) {
            this.assembleTailoringTable(collator);
        } else {
            collator.setWithUCATables();
        }
        this.m_parser_.setDefaultOptionsInCollator(collator);
    }

    private void copyRangeFromUCA(BuildTable t, int start, int end) {
        int u = 0;
        u = start;
        while (u <= end) {
            int CE = t.m_mapping_.getValue(u);
            if (CE == -268435456 || CollationParsedRuleBuilder.isContractionTableElement(CE) && CollationParsedRuleBuilder.getCE(t.m_contractions_, CE, 0) == -268435456) {
                this.m_utilElement_.m_cPoints_ = this.m_utilElement_.m_uchars_ = UCharacter.toString(u);
                this.m_utilElement_.m_prefix_ = 0;
                this.m_utilElement_.m_CELength_ = 0;
                this.m_utilElement_.m_prefixChars_ = null;
                this.m_utilColEIter_.setText(this.m_utilElement_.m_uchars_);
                while (CE != -1) {
                    CE = this.m_utilColEIter_.next();
                    if (CE == -1) continue;
                    this.m_utilElement_.m_CEs_[this.m_utilElement_.m_CELength_++] = CE;
                }
                this.addAnElement(t, this.m_utilElement_);
            }
            ++u;
        }
    }

    void assembleTailoringTable(RuleBasedCollator collator) throws Exception {
        int i = 0;
        while (i < this.m_parser_.m_resultLength_) {
            if (this.m_parser_.m_listHeader_[i].m_first_ != null) {
                this.initBuffers(this.m_parser_.m_listHeader_[i]);
            }
            ++i;
        }
        if (this.m_parser_.m_variableTop_ != null) {
            this.m_parser_.m_options_.m_variableTopValue_ = this.m_parser_.m_variableTop_.m_CE_[0] >>> 16;
            if (this.m_parser_.m_variableTop_.m_listHeader_.m_first_ == this.m_parser_.m_variableTop_) {
                this.m_parser_.m_variableTop_.m_listHeader_.m_first_ = this.m_parser_.m_variableTop_.m_next_;
            }
            if (this.m_parser_.m_variableTop_.m_listHeader_.m_last_ == this.m_parser_.m_variableTop_) {
                this.m_parser_.m_variableTop_.m_listHeader_.m_last_ = this.m_parser_.m_variableTop_.m_previous_;
            }
            if (this.m_parser_.m_variableTop_.m_next_ != null) {
                this.m_parser_.m_variableTop_.m_next_.m_previous_ = this.m_parser_.m_variableTop_.m_previous_;
            }
            if (this.m_parser_.m_variableTop_.m_previous_ != null) {
                this.m_parser_.m_variableTop_.m_previous_.m_next_ = this.m_parser_.m_variableTop_.m_next_;
            }
        }
        BuildTable t = new BuildTable(this.m_parser_);
        int i2 = 0;
        while (i2 < this.m_parser_.m_resultLength_) {
            this.createElements(t, this.m_parser_.m_listHeader_[i2]);
            ++i2;
        }
        this.m_utilElement_.clear();
        StringBuilder str = new StringBuilder();
        this.copyRangeFromUCA(t, 0, 255);
        if (this.m_parser_.m_copySet_ != null) {
            int i3 = 0;
            i3 = 0;
            while (i3 < this.m_parser_.m_copySet_.getRangeCount()) {
                this.copyRangeFromUCA(t, this.m_parser_.m_copySet_.getRangeStart(i3), this.m_parser_.m_copySet_.getRangeEnd(i3));
                ++i3;
            }
        }
        char[] conts = RuleBasedCollator.UCA_CONTRACTIONS_;
        int offset = 0;
        while (conts[offset] != '\u0000') {
            int tailoredCE = t.m_mapping_.getValue(conts[offset]);
            Elements prefixElm = null;
            if (tailoredCE != -268435456) {
                boolean needToAdd = true;
                if (CollationParsedRuleBuilder.isContractionTableElement(tailoredCE) && CollationParsedRuleBuilder.isTailored(t.m_contractions_, tailoredCE, conts, offset + 1)) {
                    needToAdd = false;
                }
                if (!needToAdd && CollationParsedRuleBuilder.isPrefix(tailoredCE) && conts[offset + 1] == '\u0000') {
                    Elements elm = new Elements();
                    elm.m_cPoints_ = this.m_utilElement_.m_uchars_;
                    elm.m_CELength_ = 0;
                    elm.m_uchars_ = UCharacter.toString(conts[offset]);
                    elm.m_prefixChars_ = UCharacter.toString(conts[offset + 2]);
                    elm.m_prefix_ = 0;
                    prefixElm = t.m_prefixLookup_.get(elm);
                    if (prefixElm == null || prefixElm.m_prefixChars_.charAt(0) != conts[offset + 2]) {
                        needToAdd = true;
                    }
                }
                if (this.m_parser_.m_removeSet_ != null && this.m_parser_.m_removeSet_.contains(conts[offset])) {
                    needToAdd = false;
                }
                if (needToAdd) {
                    int CE;
                    if (conts[offset + 1] != '\u0000') {
                        this.m_utilElement_.m_prefix_ = 0;
                        this.m_utilElement_.m_prefixChars_ = null;
                        this.m_utilElement_.m_cPoints_ = this.m_utilElement_.m_uchars_;
                        str.delete(0, str.length());
                        str.append(conts[offset]);
                        str.append(conts[offset + 1]);
                        if (conts[offset + 2] != '\u0000') {
                            str.append(conts[offset + 2]);
                        }
                        this.m_utilElement_.m_uchars_ = str.toString();
                        this.m_utilElement_.m_CELength_ = 0;
                        this.m_utilColEIter_.setText(this.m_utilElement_.m_uchars_);
                    } else {
                        int preKeyLen = 0;
                        str.delete(0, str.length());
                        this.m_utilElement_.m_cPoints_ = UCharacter.toString(conts[offset]);
                        this.m_utilElement_.m_CELength_ = 0;
                        this.m_utilElement_.m_uchars_ = UCharacter.toString(conts[offset]);
                        this.m_utilElement_.m_prefixChars_ = UCharacter.toString(conts[offset + 2]);
                        this.m_utilElement_.m_prefix_ = prefixElm == null ? 0 : this.m_utilElement_.m_prefix_;
                        this.m_utilColEIter_.setText(this.m_utilElement_.m_prefixChars_);
                        while (this.m_utilColEIter_.next() != -1) {
                            ++preKeyLen;
                        }
                        str.append(conts[offset + 2]);
                        str.append(conts[offset]);
                        this.m_utilColEIter_.setText(str.toString());
                        while (preKeyLen-- > 0 && this.m_utilColEIter_.next() != -1) {
                        }
                    }
                    while ((CE = this.m_utilColEIter_.next()) != -1) {
                        this.m_utilElement_.m_CEs_[this.m_utilElement_.m_CELength_++] = CE;
                    }
                    this.addAnElement(t, this.m_utilElement_);
                }
            } else if (this.m_parser_.m_removeSet_ != null && this.m_parser_.m_removeSet_.contains(conts[offset])) {
                this.copyRangeFromUCA(t, conts[offset], conts[offset]);
            }
            offset += 3;
        }
        this.processUCACompleteIgnorables(t);
        this.canonicalClosure(t);
        this.assembleTable(t, collator);
    }

    private void initBuffers(CollationRuleParser.TokenListHeader listheader) throws Exception {
        CollationRuleParser.Token token = listheader.m_last_;
        Arrays.fill(this.m_utilIntBuffer_, 0, 16, 0);
        token.m_toInsert_ = 1;
        this.m_utilIntBuffer_[token.m_strength_] = 1;
        while (token.m_previous_ != null) {
            if (token.m_previous_.m_strength_ < token.m_strength_) {
                this.m_utilIntBuffer_[token.m_strength_] = 0;
                int n = token.m_previous_.m_strength_;
                this.m_utilIntBuffer_[n] = this.m_utilIntBuffer_[n] + 1;
            } else if (token.m_previous_.m_strength_ > token.m_strength_) {
                this.m_utilIntBuffer_[token.m_previous_.m_strength_] = 1;
            } else {
                int n = token.m_strength_;
                this.m_utilIntBuffer_[n] = this.m_utilIntBuffer_[n] + 1;
            }
            token = token.m_previous_;
            token.m_toInsert_ = this.m_utilIntBuffer_[token.m_strength_];
        }
        token.m_toInsert_ = this.m_utilIntBuffer_[token.m_strength_];
        INVERSE_UCA_.getInverseGapPositions(listheader);
        token = listheader.m_first_;
        int fstrength = 15;
        int initstrength = 15;
        this.m_utilCEBuffer_[0] = CollationParsedRuleBuilder.mergeCE(listheader.m_baseCE_, listheader.m_baseContCE_, 0);
        this.m_utilCEBuffer_[1] = CollationParsedRuleBuilder.mergeCE(listheader.m_baseCE_, listheader.m_baseContCE_, 1);
        this.m_utilCEBuffer_[2] = CollationParsedRuleBuilder.mergeCE(listheader.m_baseCE_, listheader.m_baseContCE_, 2);
        while (token != null) {
            fstrength = token.m_strength_;
            if (fstrength < initstrength) {
                initstrength = fstrength;
                if (listheader.m_pos_[fstrength] == -1) {
                    while (listheader.m_pos_[fstrength] == -1 && fstrength > 0) {
                        --fstrength;
                    }
                    if (listheader.m_pos_[fstrength] == -1) {
                        throw new Exception("Internal program error");
                    }
                }
                if (initstrength == 2) {
                    this.m_utilCEBuffer_[0] = listheader.m_gapsLo_[fstrength * 3];
                    this.m_utilCEBuffer_[1] = listheader.m_gapsLo_[fstrength * 3 + 1];
                    this.m_utilCEBuffer_[2] = this.getCEGenerator(this.m_utilGens_[2], listheader.m_gapsLo_, listheader.m_gapsHi_, token, fstrength);
                } else if (initstrength == 1) {
                    this.m_utilCEBuffer_[0] = listheader.m_gapsLo_[fstrength * 3];
                    this.m_utilCEBuffer_[1] = this.getCEGenerator(this.m_utilGens_[1], listheader.m_gapsLo_, listheader.m_gapsHi_, token, fstrength);
                    this.m_utilCEBuffer_[2] = this.getSimpleCEGenerator(this.m_utilGens_[2], token, 2);
                } else {
                    this.m_utilCEBuffer_[0] = this.getCEGenerator(this.m_utilGens_[0], listheader.m_gapsLo_, listheader.m_gapsHi_, token, fstrength);
                    this.m_utilCEBuffer_[1] = this.getSimpleCEGenerator(this.m_utilGens_[1], token, 1);
                    this.m_utilCEBuffer_[2] = this.getSimpleCEGenerator(this.m_utilGens_[2], token, 2);
                }
            } else if (token.m_strength_ == 2) {
                this.m_utilCEBuffer_[2] = this.getNextGenerated(this.m_utilGens_[2]);
            } else if (token.m_strength_ == 1) {
                this.m_utilCEBuffer_[1] = this.getNextGenerated(this.m_utilGens_[1]);
                this.m_utilCEBuffer_[2] = this.getSimpleCEGenerator(this.m_utilGens_[2], token, 2);
            } else if (token.m_strength_ == 0) {
                this.m_utilCEBuffer_[0] = this.getNextGenerated(this.m_utilGens_[0]);
                this.m_utilCEBuffer_[1] = this.getSimpleCEGenerator(this.m_utilGens_[1], token, 1);
                this.m_utilCEBuffer_[2] = this.getSimpleCEGenerator(this.m_utilGens_[2], token, 2);
            }
            this.doCE(this.m_utilCEBuffer_, token);
            token = token.m_next_;
        }
    }

    private int getNextGenerated(CEGenerator g) {
        g.m_current_ = CollationParsedRuleBuilder.nextWeight(g);
        return g.m_current_;
    }

    private int getSimpleCEGenerator(CEGenerator g, CollationRuleParser.Token token, int strength) throws Exception {
        int high;
        int low;
        int maxbyte;
        int count = 1;
        int n = maxbyte = strength == 2 ? 63 : 255;
        if (strength == 1) {
            low = -2046820352;
            high = -1;
            count = 121;
        } else {
            low = 0x5000000;
            high = 0x40000000;
            count = 59;
        }
        if (token.m_next_ != null && token.m_next_.m_strength_ == strength) {
            count = token.m_next_.m_toInsert_;
        }
        g.m_rangesLength_ = this.allocateWeights(low, high, count, maxbyte, g.m_ranges_);
        g.m_current_ = 0x5000000;
        if (g.m_rangesLength_ == 0) {
            throw new Exception("Internal program error");
        }
        return g.m_current_;
    }

    private static int mergeCE(int ce1, int ce2, int strength) {
        int mask = 255;
        if (strength == 1) {
            mask = 65280;
        } else if (strength == 0) {
            mask = -65536;
        }
        ce1 &= mask;
        ce2 &= mask;
        switch (strength) {
            case 0: {
                return ce1 | ce2 >>> 16;
            }
            case 1: {
                return ce1 << 16 | ce2 << 8;
            }
        }
        return ce1 << 24 | ce2 << 16;
    }

    private int getCEGenerator(CEGenerator g, int[] lows, int[] highs, CollationRuleParser.Token token, int fstrength) throws Exception {
        int count;
        int maxbyte;
        int high;
        int low;
        int strength;
        block12: {
            strength = token.m_strength_;
            low = lows[fstrength * 3 + strength];
            high = highs[fstrength * 3 + strength];
            maxbyte = 0;
            maxbyte = strength == 2 ? 63 : (strength == 0 ? 254 : 255);
            count = token.m_toInsert_;
            if (Utility.compareUnsigned(low, high) >= 0 && strength > 0) {
                int s = strength;
                do {
                    if (lows[fstrength * 3 + --s] == highs[fstrength * 3 + s]) continue;
                    if (strength == 1) {
                        if (low < -2046820352) {
                            low = -2046820352;
                        }
                        high = -1;
                    } else {
                        if (low < 0x5000000) {
                            low = 0x5000000;
                        }
                        high = 0x40000000;
                    }
                    break block12;
                } while (s >= 0);
                throw new Exception("Internal program error");
            }
        }
        if (low == 0) {
            low = 0x1000000;
        }
        if (strength == 1) {
            if (Utility.compareUnsigned(low, 0x5000000) >= 0 && Utility.compareUnsigned(low, -2046820352) < 0) {
                low = -2046820352;
            }
            if (Utility.compareUnsigned(high, 0x5000000) > 0 && Utility.compareUnsigned(high, -2046820352) < 0) {
                high = -2046820352;
            }
            if (Utility.compareUnsigned(low, 0x5000000) < 0) {
                g.m_rangesLength_ = this.allocateWeights(0x3000000, high, count, maxbyte, g.m_ranges_);
                g.m_current_ = CollationParsedRuleBuilder.nextWeight(g);
                return g.m_current_;
            }
        }
        g.m_rangesLength_ = this.allocateWeights(low, high, count, maxbyte, g.m_ranges_);
        if (g.m_rangesLength_ == 0) {
            throw new Exception("Internal program error");
        }
        g.m_current_ = CollationParsedRuleBuilder.nextWeight(g);
        return g.m_current_;
    }

    private void doCE(int[] ceparts, CollationRuleParser.Token token) throws Exception {
        int i = 0;
        while (i < 3) {
            this.m_utilIntBuffer_[i] = CollationParsedRuleBuilder.countBytes(ceparts[i]);
            ++i;
        }
        int cei = 0;
        int value = 0;
        while (cei << 1 < this.m_utilIntBuffer_[0] || cei < this.m_utilIntBuffer_[1] || cei < this.m_utilIntBuffer_[2]) {
            value = cei > 0 ? 192 : 0;
            if (cei << 1 < this.m_utilIntBuffer_[0]) {
                value |= (ceparts[0] >> 32 - (cei + 1 << 4) & 0xFFFF) << 16;
            }
            if (cei < this.m_utilIntBuffer_[1]) {
                value |= (ceparts[1] >> 32 - (cei + 1 << 3) & 0xFF) << 8;
            }
            if (cei < this.m_utilIntBuffer_[2]) {
                value |= ceparts[2] >> 32 - (cei + 1 << 3) & 0x3F;
            }
            token.m_CE_[cei] = value;
            ++cei;
        }
        if (cei == 0) {
            token.m_CELength_ = 1;
            token.m_CE_[0] = 0;
        } else {
            token.m_CELength_ = cei;
        }
        if (token.m_CE_[0] != 0) {
            int startoftokenrule = token.m_source_ & 0xFF;
            if (token.m_source_ >>> 24 > 1) {
                int length = token.m_source_ >>> 24;
                String tokenstr = token.m_rules_.substring(startoftokenrule, startoftokenrule + length);
                token.m_CE_[0] = token.m_CE_[0] | this.getCaseBits(tokenstr);
            } else {
                int caseCE = this.getFirstCE(token.m_rules_.charAt(startoftokenrule));
                token.m_CE_[0] = token.m_CE_[0] | caseCE & 0xC0;
            }
        }
    }

    private static final int countBytes(int ce) {
        int mask = -1;
        int result = 0;
        while (mask != 0) {
            if ((ce & mask) != 0) {
                ++result;
            }
            mask >>>= 8;
        }
        return result;
    }

    private void createElements(BuildTable t, CollationRuleParser.TokenListHeader lh) {
        CollationRuleParser.Token tok = lh.m_first_;
        this.m_utilElement_.clear();
        while (tok != null) {
            if (tok.m_expansion_ != 0) {
                int len;
                int currentSequenceLen = len = tok.m_expansion_ >>> 24;
                int expOffset = tok.m_expansion_ & 0xFFFFFF;
                this.m_utilToken_.m_source_ = currentSequenceLen | expOffset;
                this.m_utilToken_.m_rules_ = this.m_parser_.m_source_;
                while (len > 0) {
                    int order;
                    currentSequenceLen = len;
                    while (currentSequenceLen > 0) {
                        this.m_utilToken_.m_source_ = currentSequenceLen << 24 | expOffset;
                        CollationRuleParser.Token expt = this.m_parser_.m_hashTable_.get(this.m_utilToken_);
                        if (expt != null && expt.m_strength_ != -559038737) {
                            int noOfCEsToCopy = expt.m_CELength_;
                            int j = 0;
                            while (j < noOfCEsToCopy) {
                                tok.m_expCE_[tok.m_expCELength_ + j] = expt.m_CE_[j];
                                ++j;
                            }
                            tok.m_expCELength_ += noOfCEsToCopy;
                            expOffset += currentSequenceLen;
                            len -= currentSequenceLen;
                            break;
                        }
                        --currentSequenceLen;
                    }
                    if (currentSequenceLen != 0) continue;
                    this.m_utilColEIter_.setText(this.m_parser_.m_source_.substring(expOffset, expOffset + 1));
                    while ((order = this.m_utilColEIter_.next()) != -1) {
                        tok.m_expCE_[tok.m_expCELength_++] = order;
                    }
                    ++expOffset;
                    --len;
                }
            } else {
                tok.m_expCELength_ = 0;
            }
            this.m_utilElement_.m_CELength_ = tok.m_CELength_ + tok.m_expCELength_;
            System.arraycopy(tok.m_CE_, 0, this.m_utilElement_.m_CEs_, 0, tok.m_CELength_);
            System.arraycopy(tok.m_expCE_, 0, this.m_utilElement_.m_CEs_, tok.m_CELength_, tok.m_expCELength_);
            this.m_utilElement_.m_prefix_ = 0;
            this.m_utilElement_.m_cPointsOffset_ = 0;
            if (tok.m_prefix_ != 0) {
                int size = tok.m_prefix_ >> 24;
                int offset = tok.m_prefix_ & 0xFFFFFF;
                this.m_utilElement_.m_prefixChars_ = this.m_parser_.m_source_.substring(offset, offset + size);
                size = (tok.m_source_ >> 24) - (tok.m_prefix_ >> 24);
                offset = (tok.m_source_ & 0xFFFFFF) + (tok.m_prefix_ >> 24);
                this.m_utilElement_.m_uchars_ = this.m_parser_.m_source_.substring(offset, offset + size);
            } else {
                this.m_utilElement_.m_prefixChars_ = null;
                int offset = tok.m_source_ & 0xFFFFFF;
                int size = tok.m_source_ >>> 24;
                this.m_utilElement_.m_uchars_ = this.m_parser_.m_source_.substring(offset, offset + size);
            }
            this.m_utilElement_.m_cPoints_ = this.m_utilElement_.m_uchars_;
            boolean containCombinMarks = false;
            int i = 0;
            while (i < this.m_utilElement_.m_cPoints_.length() - this.m_utilElement_.m_cPointsOffset_) {
                if (CollationParsedRuleBuilder.isJamo(this.m_utilElement_.m_cPoints_.charAt(i))) {
                    t.m_collator_.m_isJamoSpecial_ = true;
                    break;
                }
                if (!buildCMTabFlag) {
                    int fcd = this.m_nfcImpl_.getFCD16FromSingleLead(this.m_utilElement_.m_cPoints_.charAt(i));
                    containCombinMarks = (fcd & 0xFF) != 0;
                }
                ++i;
            }
            if (!buildCMTabFlag && containCombinMarks) {
                buildCMTabFlag = true;
            }
            this.addAnElement(t, this.m_utilElement_);
            tok = tok.m_next_;
        }
    }

    private final int getCaseBits(String src) throws Exception {
        int uCount = 0;
        int lCount = 0;
        src = Normalizer.decompose(src, true);
        this.m_utilColEIter_.setText(src);
        int i = 0;
        while (i < src.length()) {
            this.m_utilColEIter_.setText(src.substring(i, i + 1));
            int order = this.m_utilColEIter_.next();
            if (RuleBasedCollator.isContinuation(order)) {
                throw new Exception("Internal program error");
            }
            if ((order & 0xC0) == 128) {
                ++uCount;
            } else {
                char ch = src.charAt(i);
                if (UCharacter.isLowerCase(ch)) {
                    ++lCount;
                } else if (CollationParsedRuleBuilder.toSmallKana(ch) == ch && CollationParsedRuleBuilder.toLargeKana(ch) != ch) {
                    ++lCount;
                }
            }
            ++i;
        }
        if (uCount != 0 && lCount != 0) {
            return 64;
        }
        if (uCount != 0) {
            return 128;
        }
        return 0;
    }

    private static final char toLargeKana(char ch) {
        if ('\u3042' < ch && ch < '\u30ef') {
            switch (ch - 12288) {
                case 65: 
                case 67: 
                case 69: 
                case 71: 
                case 73: 
                case 99: 
                case 131: 
                case 133: 
                case 142: 
                case 161: 
                case 163: 
                case 165: 
                case 167: 
                case 169: 
                case 195: 
                case 227: 
                case 229: 
                case 238: {
                    ch = (char)(ch + '\u0001');
                    break;
                }
                case 245: {
                    ch = (char)12459;
                    break;
                }
                case 246: {
                    ch = (char)12465;
                }
            }
        }
        return ch;
    }

    private static final char toSmallKana(char ch) {
        if ('\u3042' < ch && ch < '\u30ef') {
            switch (ch - 12288) {
                case 66: 
                case 68: 
                case 70: 
                case 72: 
                case 74: 
                case 100: 
                case 132: 
                case 134: 
                case 143: 
                case 162: 
                case 164: 
                case 166: 
                case 168: 
                case 170: 
                case 196: 
                case 228: 
                case 230: 
                case 239: {
                    ch = (char)(ch - '\u0001');
                    break;
                }
                case 171: {
                    ch = (char)12533;
                    break;
                }
                case 177: {
                    ch = (char)12534;
                }
            }
        }
        return ch;
    }

    private int getFirstCE(char ch) {
        this.m_utilColEIter_.setText(UCharacter.toString(ch));
        return this.m_utilColEIter_.next();
    }

    private int addAnElement(BuildTable t, Elements element) {
        Vector<Integer> expansions = t.m_expansions_;
        element.m_mapCE_ = 0;
        if (element.m_CELength_ == 1) {
            element.m_mapCE_ = element.m_CEs_[0];
        } else if (element.m_CELength_ == 2 && RuleBasedCollator.isContinuation(element.m_CEs_[1]) && (element.m_CEs_[1] & 0xFFFF3F) == 0 && (element.m_CEs_[0] >> 8 & 0xFF) == 5 && (element.m_CEs_[0] & 0xFF) == 5) {
            element.m_mapCE_ = 0xFC000000 | element.m_CEs_[0] >> 8 & 0xFFFF00 | element.m_CEs_[1] >> 24 & 0xFF;
        } else {
            int expansion = 0xF1000000 | CollationParsedRuleBuilder.addExpansion(expansions, element.m_CEs_[0]) << 4 & 0xFFFFF0;
            int i = 1;
            while (i < element.m_CELength_) {
                CollationParsedRuleBuilder.addExpansion(expansions, element.m_CEs_[i]);
                ++i;
            }
            if (element.m_CELength_ <= 15) {
                expansion |= element.m_CELength_;
            } else {
                CollationParsedRuleBuilder.addExpansion(expansions, 0);
            }
            element.m_mapCE_ = expansion;
            CollationParsedRuleBuilder.setMaxExpansion(element.m_CEs_[element.m_CELength_ - 1], (byte)element.m_CELength_, t.m_maxExpansions_);
            if (CollationParsedRuleBuilder.isJamo(element.m_cPoints_.charAt(0))) {
                t.m_collator_.m_isJamoSpecial_ = true;
                CollationParsedRuleBuilder.setMaxJamoExpansion(element.m_cPoints_.charAt(0), element.m_CEs_[element.m_CELength_ - 1], (byte)element.m_CELength_, t.m_maxJamoExpansions_);
            }
        }
        int uniChar = 0;
        if (element.m_uchars_.length() == 2 && UTF16.isLeadSurrogate(element.m_uchars_.charAt(0))) {
            uniChar = UCharacterProperty.getRawSupplementary(element.m_uchars_.charAt(0), element.m_uchars_.charAt(1));
        } else if (element.m_uchars_.length() == 1) {
            uniChar = element.m_uchars_.charAt(0);
        }
        if (uniChar != 0 && UCharacter.isDigit(uniChar)) {
            int expansion = -50331647;
            expansion = element.m_mapCE_ != 0 ? (expansion |= CollationParsedRuleBuilder.addExpansion(expansions, element.m_mapCE_) << 4) : (expansion |= CollationParsedRuleBuilder.addExpansion(expansions, element.m_CEs_[0]) << 4);
            element.m_mapCE_ = expansion;
        }
        if (element.m_prefixChars_ != null && element.m_prefixChars_.length() - element.m_prefix_ > 0) {
            this.m_utilElement2_.m_caseBit_ = element.m_caseBit_;
            this.m_utilElement2_.m_CELength_ = element.m_CELength_;
            this.m_utilElement2_.m_CEs_ = element.m_CEs_;
            this.m_utilElement2_.m_mapCE_ = element.m_mapCE_;
            this.m_utilElement2_.m_sizePrim_ = element.m_sizePrim_;
            this.m_utilElement2_.m_sizeSec_ = element.m_sizeSec_;
            this.m_utilElement2_.m_sizeTer_ = element.m_sizeTer_;
            this.m_utilElement2_.m_variableTop_ = element.m_variableTop_;
            this.m_utilElement2_.m_prefix_ = element.m_prefix_;
            this.m_utilElement2_.m_prefixChars_ = Normalizer.compose(element.m_prefixChars_, false);
            this.m_utilElement2_.m_uchars_ = element.m_uchars_;
            this.m_utilElement2_.m_cPoints_ = element.m_cPoints_;
            this.m_utilElement2_.m_cPointsOffset_ = 0;
            if (t.m_prefixLookup_ != null) {
                Elements uCE = t.m_prefixLookup_.get(element);
                if (uCE != null) {
                    element.m_mapCE_ = this.addPrefix(t, uCE.m_mapCE_, element);
                } else {
                    element.m_mapCE_ = this.addPrefix(t, -268435456, element);
                    uCE = new Elements(element);
                    uCE.m_cPoints_ = uCE.m_uchars_;
                    t.m_prefixLookup_.put(uCE, uCE);
                }
                if (this.m_utilElement2_.m_prefixChars_.length() != element.m_prefixChars_.length() - element.m_prefix_ || !this.m_utilElement2_.m_prefixChars_.regionMatches(0, element.m_prefixChars_, element.m_prefix_, this.m_utilElement2_.m_prefixChars_.length())) {
                    this.m_utilElement2_.m_mapCE_ = this.addPrefix(t, element.m_mapCE_, this.m_utilElement2_);
                }
            }
        }
        if (!(element.m_cPoints_.length() - element.m_cPointsOffset_ <= 1 || element.m_cPoints_.length() - element.m_cPointsOffset_ == 2 && UTF16.isLeadSurrogate(element.m_cPoints_.charAt(0)) && UTF16.isTrailSurrogate(element.m_cPoints_.charAt(1)))) {
            this.m_utilCanIter_.setSource(element.m_cPoints_);
            String source = this.m_utilCanIter_.next();
            while (source != null && source.length() > 0) {
                if (Normalizer.quickCheck(source, Normalizer.FCD, 0) != Normalizer.NO) {
                    element.m_cPoints_ = element.m_uchars_ = source;
                    CollationParsedRuleBuilder.finalizeAddition(t, element);
                }
                source = this.m_utilCanIter_.next();
            }
            return element.m_mapCE_;
        }
        return CollationParsedRuleBuilder.finalizeAddition(t, element);
    }

    private static final int addExpansion(Vector<Integer> expansions, int value) {
        expansions.add(new Integer(value));
        return expansions.size() - 1;
    }

    private static int setMaxExpansion(int endexpansion, byte expansionsize, MaxExpansionTable maxexpansion) {
        int start = 0;
        int limit = maxexpansion.m_endExpansionCE_.size();
        long unsigned = endexpansion;
        unsigned &= 0xFFFFFFFFL;
        int result = -1;
        while (start < limit - 1) {
            int mid = start + (limit - start >> 1);
            long unsignedce = maxexpansion.m_endExpansionCE_.get(mid).intValue();
            if (unsigned <= (unsignedce &= 0xFFFFFFFFL)) {
                limit = mid;
                continue;
            }
            start = mid;
        }
        if (maxexpansion.m_endExpansionCE_.get(start) == endexpansion) {
            result = start;
        } else if (maxexpansion.m_endExpansionCE_.get(limit) == endexpansion) {
            result = limit;
        }
        if (result > -1) {
            Byte currentsize = maxexpansion.m_expansionCESize_.get(result);
            if (currentsize < expansionsize) {
                maxexpansion.m_expansionCESize_.set(result, new Byte(expansionsize));
            }
        } else {
            maxexpansion.m_endExpansionCE_.insertElementAt(new Integer(endexpansion), start + 1);
            maxexpansion.m_expansionCESize_.insertElementAt(new Byte(expansionsize), start + 1);
        }
        return maxexpansion.m_endExpansionCE_.size();
    }

    private static int setMaxJamoExpansion(char ch, int endexpansion, byte expansionsize, MaxJamoExpansionTable maxexpansion) {
        boolean isV = true;
        if (ch >= '\u1100' && ch <= '\u1112') {
            if (maxexpansion.m_maxLSize_ < expansionsize) {
                maxexpansion.m_maxLSize_ = expansionsize;
            }
            return maxexpansion.m_endExpansionCE_.size();
        }
        if (ch >= '\u1161' && ch <= '\u1175' && maxexpansion.m_maxVSize_ < expansionsize) {
            maxexpansion.m_maxVSize_ = expansionsize;
        }
        if (ch >= '\u11a8' && ch <= '\u11c2') {
            isV = false;
            if (maxexpansion.m_maxTSize_ < expansionsize) {
                maxexpansion.m_maxTSize_ = expansionsize;
            }
        }
        int pos = maxexpansion.m_endExpansionCE_.size();
        while (pos > 0) {
            if (maxexpansion.m_endExpansionCE_.get(--pos) != endexpansion) continue;
            return maxexpansion.m_endExpansionCE_.size();
        }
        maxexpansion.m_endExpansionCE_.add(new Integer(endexpansion));
        maxexpansion.m_isV_.add(isV ? Boolean.TRUE : Boolean.FALSE);
        return maxexpansion.m_endExpansionCE_.size();
    }

    private int addPrefix(BuildTable t, int CE, Elements element) {
        ContractionTable contractions = t.m_contractions_;
        String oldCP = element.m_cPoints_;
        int oldCPOffset = element.m_cPointsOffset_;
        contractions.m_currentTag_ = 11;
        int size = element.m_prefixChars_.length() - element.m_prefix_;
        int j = 1;
        while (j < size) {
            char ch = element.m_prefixChars_.charAt(j + element.m_prefix_);
            if (!UTF16.isTrailSurrogate(ch)) {
                CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, ch);
            }
            ++j;
        }
        this.m_utilStringBuffer_.delete(0, this.m_utilStringBuffer_.length());
        j = 0;
        while (j < size) {
            int offset = element.m_prefixChars_.length() - j - 1;
            this.m_utilStringBuffer_.append(element.m_prefixChars_.charAt(offset));
            ++j;
        }
        element.m_prefixChars_ = this.m_utilStringBuffer_.toString();
        element.m_prefix_ = 0;
        if (!UTF16.isTrailSurrogate(element.m_cPoints_.charAt(0))) {
            CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, element.m_cPoints_.charAt(0));
        }
        element.m_cPoints_ = element.m_prefixChars_;
        element.m_cPointsOffset_ = element.m_prefix_;
        if (!UTF16.isTrailSurrogate(element.m_cPoints_.charAt(element.m_cPoints_.length() - 1))) {
            CollationParsedRuleBuilder.ContrEndCPSet(t.m_contrEndCP_, element.m_cPoints_.charAt(element.m_cPoints_.length() - 1));
        }
        if (CollationParsedRuleBuilder.isJamo(element.m_prefixChars_.charAt(element.m_prefix_))) {
            t.m_collator_.m_isJamoSpecial_ = true;
        }
        if (!CollationParsedRuleBuilder.isPrefix(CE)) {
            int firstContractionOffset = CollationParsedRuleBuilder.addContraction(contractions, 0xFFFFFF, '\u0000', CE);
            int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
            CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, element.m_prefixChars_.charAt(element.m_prefix_), newCE);
            CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, '\uffff', CE);
            CE = CollationParsedRuleBuilder.constructSpecialCE(11, firstContractionOffset);
        } else {
            char ch = element.m_prefixChars_.charAt(element.m_prefix_);
            int position = CollationParsedRuleBuilder.findCP(contractions, CE, ch);
            if (position > 0) {
                int eCE = CollationParsedRuleBuilder.getCE(contractions, CE, position);
                int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, eCE);
                CollationParsedRuleBuilder.setContraction(contractions, CE, position, ch, newCE);
            } else {
                CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
                CollationParsedRuleBuilder.insertContraction(contractions, CE, ch, element.m_mapCE_);
            }
        }
        element.m_cPoints_ = oldCP;
        element.m_cPointsOffset_ = oldCPOffset;
        return CE;
    }

    private static final boolean isContraction(int CE) {
        return CollationParsedRuleBuilder.isSpecial(CE) && CollationParsedRuleBuilder.getCETag(CE) == 2;
    }

    private static final boolean isPrefix(int CE) {
        return CollationParsedRuleBuilder.isSpecial(CE) && CollationParsedRuleBuilder.getCETag(CE) == 11;
    }

    private static final boolean isSpecial(int CE) {
        return (CE & 0xF0000000) == -268435456;
    }

    private static final int getCETag(int CE) {
        return (CE & 0xF000000) >>> 24;
    }

    private static final int getCE(ContractionTable table, int element, int position) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element &= 0xFFFFFF);
        if (tbl == null) {
            return -268435456;
        }
        if (position > tbl.m_CEs_.size() || position == -1) {
            return -268435456;
        }
        return tbl.m_CEs_.get(position);
    }

    private static final void unsafeCPSet(byte[] table, char c) {
        int hash = c;
        if (hash >= 8448) {
            if (hash >= 55296 && hash <= 63743) {
                return;
            }
            hash = (hash & 0x1FFF) + 256;
        }
        int n = hash >> 3;
        table[n] = (byte)(table[n] | 1 << (hash & 7));
    }

    private static final void ContrEndCPSet(byte[] table, char c) {
        int hash = c;
        if (hash >= 8448) {
            hash = (hash & 0x1FFF) + 256;
        }
        int n = hash >> 3;
        table[n] = (byte)(table[n] | 1 << (hash & 7));
    }

    private static int addContraction(ContractionTable table, int element, char codePoint, int value) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element);
        if (tbl == null) {
            tbl = CollationParsedRuleBuilder.addAContractionElement(table);
            element = table.m_elements_.size() - 1;
        }
        tbl.m_CEs_.add(new Integer(value));
        tbl.m_codePoints_.append(codePoint);
        return CollationParsedRuleBuilder.constructSpecialCE(table.m_currentTag_, element);
    }

    private static BasicContractionTable addAContractionElement(ContractionTable table) {
        BasicContractionTable result = new BasicContractionTable();
        table.m_elements_.add(result);
        return result;
    }

    private static final int constructSpecialCE(int tag, int CE) {
        return 0xF0000000 | tag << 24 | CE & 0xFFFFFF;
    }

    private static int processContraction(ContractionTable contractions, Elements element, int existingCE) {
        int firstContractionOffset = 0;
        if (element.m_cPoints_.length() - element.m_cPointsOffset_ == 1) {
            if (CollationParsedRuleBuilder.isContractionTableElement(existingCE) && CollationParsedRuleBuilder.getCETag(existingCE) == contractions.m_currentTag_) {
                CollationParsedRuleBuilder.changeContraction(contractions, existingCE, '\u0000', element.m_mapCE_);
                CollationParsedRuleBuilder.changeContraction(contractions, existingCE, '\uffff', element.m_mapCE_);
                return existingCE;
            }
            return element.m_mapCE_;
        }
        ++element.m_cPointsOffset_;
        if (!CollationParsedRuleBuilder.isContractionTableElement(existingCE)) {
            firstContractionOffset = CollationParsedRuleBuilder.addContraction(contractions, 0xFFFFFF, '\u0000', existingCE);
            int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
            CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
            CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, '\uffff', existingCE);
            existingCE = CollationParsedRuleBuilder.constructSpecialCE(contractions.m_currentTag_, firstContractionOffset);
        } else {
            int position = CollationParsedRuleBuilder.findCP(contractions, existingCE, element.m_cPoints_.charAt(element.m_cPointsOffset_));
            if (position > 0) {
                int eCE = CollationParsedRuleBuilder.getCE(contractions, existingCE, position);
                int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, eCE);
                CollationParsedRuleBuilder.setContraction(contractions, existingCE, position, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
            } else {
                int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
                CollationParsedRuleBuilder.insertContraction(contractions, existingCE, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
            }
        }
        --element.m_cPointsOffset_;
        return existingCE;
    }

    private static final boolean isContractionTableElement(int CE) {
        return CollationParsedRuleBuilder.isSpecial(CE) && (CollationParsedRuleBuilder.getCETag(CE) == 2 || CollationParsedRuleBuilder.getCETag(CE) == 11);
    }

    private static int findCP(ContractionTable table, int element, char codePoint) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element);
        if (tbl == null) {
            return -1;
        }
        int position = 0;
        while (codePoint > tbl.m_codePoints_.charAt(position)) {
            if (++position <= tbl.m_codePoints_.length()) continue;
            return -1;
        }
        if (codePoint == tbl.m_codePoints_.charAt(position)) {
            return position;
        }
        return -1;
    }

    private static final BasicContractionTable getBasicContractionTable(ContractionTable table, int offset) {
        if ((offset &= 0xFFFFFF) == 0xFFFFFF) {
            return null;
        }
        return table.m_elements_.get(offset);
    }

    private static final int changeContraction(ContractionTable table, int element, char codePoint, int newCE) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element);
        if (tbl == null) {
            return 0;
        }
        int position = 0;
        while (codePoint > tbl.m_codePoints_.charAt(position)) {
            if (++position <= tbl.m_codePoints_.length()) continue;
            return -268435456;
        }
        if (codePoint == tbl.m_codePoints_.charAt(position)) {
            tbl.m_CEs_.set(position, new Integer(newCE));
            return element & 0xFFFFFF;
        }
        return -268435456;
    }

    private static final int setContraction(ContractionTable table, int element, int offset, char codePoint, int value) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element &= 0xFFFFFF);
        if (tbl == null) {
            tbl = CollationParsedRuleBuilder.addAContractionElement(table);
            element = table.m_elements_.size() - 1;
        }
        tbl.m_CEs_.set(offset, new Integer(value));
        tbl.m_codePoints_.setCharAt(offset, codePoint);
        return CollationParsedRuleBuilder.constructSpecialCE(table.m_currentTag_, element);
    }

    private static final int insertContraction(ContractionTable table, int element, char codePoint, int value) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element &= 0xFFFFFF);
        if (tbl == null) {
            tbl = CollationParsedRuleBuilder.addAContractionElement(table);
            element = table.m_elements_.size() - 1;
        }
        int offset = 0;
        while (tbl.m_codePoints_.charAt(offset) < codePoint && offset < tbl.m_codePoints_.length()) {
            ++offset;
        }
        tbl.m_CEs_.insertElementAt(new Integer(value), offset);
        tbl.m_codePoints_.insert(offset, codePoint);
        return CollationParsedRuleBuilder.constructSpecialCE(table.m_currentTag_, element);
    }

    private static final int finalizeAddition(BuildTable t, Elements element) {
        int CE = -268435456;
        if (element.m_mapCE_ == 0) {
            int i = 0;
            while (i < element.m_cPoints_.length()) {
                char ch = element.m_cPoints_.charAt(i);
                if (!UTF16.isTrailSurrogate(ch)) {
                    CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, ch);
                }
                ++i;
            }
        }
        if (element.m_cPoints_.length() - element.m_cPointsOffset_ > 1) {
            int cp = UTF16.charAt(element.m_cPoints_, element.m_cPointsOffset_);
            CE = t.m_mapping_.getValue(cp);
            CE = CollationParsedRuleBuilder.addContraction(t, CE, element);
        } else {
            CE = t.m_mapping_.getValue(element.m_cPoints_.charAt(element.m_cPointsOffset_));
            if (CE != -268435456) {
                if (CollationParsedRuleBuilder.isContractionTableElement(CE)) {
                    if (!CollationParsedRuleBuilder.isPrefix(element.m_mapCE_)) {
                        CollationParsedRuleBuilder.setContraction(t.m_contractions_, CE, 0, '\u0000', element.m_mapCE_);
                        CollationParsedRuleBuilder.changeLastCE(t.m_contractions_, CE, element.m_mapCE_);
                    }
                } else {
                    t.m_mapping_.setValue(element.m_cPoints_.charAt(element.m_cPointsOffset_), element.m_mapCE_);
                    if (element.m_prefixChars_ != null && element.m_prefixChars_.length() > 0 && CollationParsedRuleBuilder.getCETag(CE) != 10) {
                        Elements origElem = new Elements();
                        origElem.m_prefixChars_ = null;
                        origElem.m_cPoints_ = origElem.m_uchars_ = element.m_cPoints_;
                        origElem.m_CEs_[0] = CE;
                        origElem.m_mapCE_ = CE;
                        origElem.m_CELength_ = 1;
                        CollationParsedRuleBuilder.finalizeAddition(t, origElem);
                    }
                }
            } else {
                t.m_mapping_.setValue(element.m_cPoints_.charAt(element.m_cPointsOffset_), element.m_mapCE_);
            }
        }
        return CE;
    }

    private static int addContraction(BuildTable t, int CE, Elements element) {
        ContractionTable contractions = t.m_contractions_;
        contractions.m_currentTag_ = 2;
        int cp = UTF16.charAt(element.m_cPoints_, 0);
        int cpsize = 1;
        if (UCharacter.isSupplementary(cp)) {
            cpsize = 2;
        }
        if (cpsize < element.m_cPoints_.length()) {
            int size = element.m_cPoints_.length() - element.m_cPointsOffset_;
            int j = 1;
            while (j < size) {
                if (!UTF16.isTrailSurrogate(element.m_cPoints_.charAt(element.m_cPointsOffset_ + j))) {
                    CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, element.m_cPoints_.charAt(element.m_cPointsOffset_ + j));
                }
                ++j;
            }
            if (!UTF16.isTrailSurrogate(element.m_cPoints_.charAt(element.m_cPoints_.length() - 1))) {
                CollationParsedRuleBuilder.ContrEndCPSet(t.m_contrEndCP_, element.m_cPoints_.charAt(element.m_cPoints_.length() - 1));
            }
            if (CollationParsedRuleBuilder.isJamo(element.m_cPoints_.charAt(element.m_cPointsOffset_))) {
                t.m_collator_.m_isJamoSpecial_ = true;
            }
            element.m_cPointsOffset_ += cpsize;
            if (!CollationParsedRuleBuilder.isContraction(CE)) {
                int firstContractionOffset = CollationParsedRuleBuilder.addContraction(contractions, 0xFFFFFF, '\u0000', CE);
                int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
                CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
                CollationParsedRuleBuilder.addContraction(contractions, firstContractionOffset, '\uffff', CE);
                CE = CollationParsedRuleBuilder.constructSpecialCE(2, firstContractionOffset);
            } else {
                int position = CollationParsedRuleBuilder.findCP(contractions, CE, element.m_cPoints_.charAt(element.m_cPointsOffset_));
                if (position > 0) {
                    int eCE = CollationParsedRuleBuilder.getCE(contractions, CE, position);
                    int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, eCE);
                    CollationParsedRuleBuilder.setContraction(contractions, CE, position, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
                } else {
                    int newCE = CollationParsedRuleBuilder.processContraction(contractions, element, -268435456);
                    CollationParsedRuleBuilder.insertContraction(contractions, CE, element.m_cPoints_.charAt(element.m_cPointsOffset_), newCE);
                }
            }
            element.m_cPointsOffset_ -= cpsize;
            t.m_mapping_.setValue(cp, CE);
        } else if (!CollationParsedRuleBuilder.isContraction(CE)) {
            t.m_mapping_.setValue(cp, element.m_mapCE_);
        } else {
            CollationParsedRuleBuilder.changeContraction(contractions, CE, '\u0000', element.m_mapCE_);
            CollationParsedRuleBuilder.changeContraction(contractions, CE, '\uffff', element.m_mapCE_);
        }
        return CE;
    }

    private static final int changeLastCE(ContractionTable table, int element, int value) {
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element);
        if (tbl == null) {
            return 0;
        }
        tbl.m_CEs_.set(tbl.m_CEs_.size() - 1, new Integer(value));
        return CollationParsedRuleBuilder.constructSpecialCE(table.m_currentTag_, element & 0xFFFFFF);
    }

    private static int nextWeight(CEGenerator cegenerator) {
        if (cegenerator.m_rangesLength_ > 0) {
            int maxByte = cegenerator.m_ranges_[0].m_count_;
            int weight = cegenerator.m_ranges_[0].m_start_;
            if (weight == cegenerator.m_ranges_[0].m_end_) {
                --cegenerator.m_rangesLength_;
                if (cegenerator.m_rangesLength_ > 0) {
                    System.arraycopy(cegenerator.m_ranges_, 1, cegenerator.m_ranges_, 0, cegenerator.m_rangesLength_);
                    cegenerator.m_ranges_[0].m_count_ = maxByte;
                }
            } else {
                cegenerator.m_ranges_[0].m_start_ = CollationParsedRuleBuilder.incWeight(weight, cegenerator.m_ranges_[0].m_length2_, maxByte);
            }
            return weight;
        }
        return -1;
    }

    private static final int incWeight(int weight, int length, int maxByte) {
        int b;
        while ((b = CollationParsedRuleBuilder.getWeightByte(weight, length)) >= maxByte) {
            weight = CollationParsedRuleBuilder.setWeightByte(weight, length, 4);
            --length;
        }
        return CollationParsedRuleBuilder.setWeightByte(weight, length, b + 1);
    }

    private static final int getWeightByte(int weight, int index) {
        return weight >> (4 - index << 3) & 0xFF;
    }

    private static final int setWeightByte(int weight, int index, int b) {
        int mask = -1 >>> (index <<= 3);
        index = 32 - index;
        return weight & (mask |= -256 << index) | b << index;
    }

    private int allocateWeights(int lowerLimit, int upperLimit, int n, int maxByte, WeightRange[] ranges) {
        int countBytes = maxByte - 4 + 1;
        this.m_utilLongBuffer_[0] = 1L;
        this.m_utilLongBuffer_[1] = countBytes;
        this.m_utilLongBuffer_[2] = this.m_utilLongBuffer_[1] * (long)countBytes;
        this.m_utilLongBuffer_[3] = this.m_utilLongBuffer_[2] * (long)countBytes;
        this.m_utilLongBuffer_[4] = this.m_utilLongBuffer_[3] * (long)countBytes;
        int rangeCount = this.getWeightRanges(lowerLimit, upperLimit, maxByte, countBytes, ranges);
        if (rangeCount <= 0) {
            return 0;
        }
        long maxCount = 0L;
        int i = 0;
        while (i < rangeCount) {
            maxCount += (long)ranges[i].m_count_ * this.m_utilLongBuffer_[4 - ranges[i].m_length_];
            ++i;
        }
        if (maxCount < (long)n) {
            return 0;
        }
        i = 0;
        while (i < rangeCount) {
            ranges[i].m_length2_ = ranges[i].m_length_;
            ranges[i].m_count2_ = ranges[i].m_count_;
            ++i;
        }
        block2: while (true) {
            int minLength = ranges[0].m_length2_;
            Arrays.fill(this.m_utilCountBuffer_, 0);
            int i2 = 0;
            while (i2 < rangeCount) {
                int n2 = ranges[i2].m_length2_;
                this.m_utilCountBuffer_[n2] = this.m_utilCountBuffer_[n2] + ranges[i2].m_count2_;
                ++i2;
            }
            if (n <= this.m_utilCountBuffer_[minLength] + this.m_utilCountBuffer_[minLength + 1]) {
                maxCount = 0L;
                rangeCount = 0;
                while ((long)n > (maxCount += (long)ranges[++rangeCount].m_count2_)) {
                }
                break;
            }
            if (n <= ranges[0].m_count2_ * countBytes) {
                rangeCount = 1;
                long power_1 = this.m_utilLongBuffer_[minLength - ranges[0].m_length_];
                long power = power_1 * (long)countBytes;
                int count2 = (int)(((long)n + power - 1L) / power);
                int count1 = ranges[0].m_count_ - count2;
                if (count1 < 1) {
                    CollationParsedRuleBuilder.lengthenRange(ranges, 0, maxByte, countBytes);
                    break;
                }
                rangeCount = 2;
                ranges[1].m_end_ = ranges[0].m_end_;
                ranges[1].m_length_ = ranges[0].m_length_;
                ranges[1].m_length2_ = minLength;
                int i3 = ranges[0].m_length_;
                int b = CollationParsedRuleBuilder.getWeightByte(ranges[0].m_start_, i3) + count1 - 1;
                ranges[0].m_end_ = b <= maxByte ? CollationParsedRuleBuilder.setWeightByte(ranges[0].m_start_, i3, b) : CollationParsedRuleBuilder.setWeightByte(CollationParsedRuleBuilder.incWeight(ranges[0].m_start_, i3 - 1, maxByte), i3, b - countBytes);
                b = maxByte << 24 | maxByte << 16 | maxByte << 8 | maxByte;
                ranges[0].m_end_ = CollationParsedRuleBuilder.truncateWeight(ranges[0].m_end_, i3) | b >>> (i3 << 3) & b << (4 - minLength << 3);
                ranges[1].m_start_ = CollationParsedRuleBuilder.incWeight(ranges[0].m_end_, minLength, maxByte);
                ranges[0].m_count_ = count1;
                ranges[1].m_count_ = count2;
                ranges[0].m_count2_ = (int)((long)count1 * power_1);
                ranges[1].m_count2_ = (int)((long)count2 * power_1);
                CollationParsedRuleBuilder.lengthenRange(ranges, 1, maxByte, countBytes);
                break;
            }
            i2 = 0;
            while (true) {
                if (ranges[i2].m_length2_ != minLength) continue block2;
                CollationParsedRuleBuilder.lengthenRange(ranges, i2, maxByte, countBytes);
                ++i2;
            }
            break;
        }
        if (rangeCount > 1) {
            Arrays.sort(ranges, 0, rangeCount);
        }
        ranges[0].m_count_ = maxByte;
        return rangeCount;
    }

    private static final int lengthenRange(WeightRange[] range, int offset, int maxByte, int countBytes) {
        int length = range[offset].m_length2_ + 1;
        range[offset].m_start_ = CollationParsedRuleBuilder.setWeightTrail(range[offset].m_start_, length, 4);
        range[offset].m_end_ = CollationParsedRuleBuilder.setWeightTrail(range[offset].m_end_, length, maxByte);
        range[offset].m_count2_ *= countBytes;
        range[offset].m_length2_ = length;
        return length;
    }

    private static final int setWeightTrail(int weight, int length, int trail) {
        length = 4 - length << 3;
        return weight & -256 << length | trail << length;
    }

    private int getWeightRanges(int lowerLimit, int upperLimit, int maxByte, int countBytes, WeightRange[] ranges) {
        int trail;
        int lowerLength = CollationParsedRuleBuilder.lengthOfWeight(lowerLimit);
        int upperLength = CollationParsedRuleBuilder.lengthOfWeight(upperLimit);
        if (Utility.compareUnsigned(lowerLimit, upperLimit) >= 0) {
            return 0;
        }
        if (lowerLength < upperLength && lowerLimit == CollationParsedRuleBuilder.truncateWeight(upperLimit, lowerLength)) {
            return 0;
        }
        int length = 0;
        while (length < 5) {
            this.m_utilLowerWeightRange_[length].clear();
            this.m_utilUpperWeightRange_[length].clear();
            ++length;
        }
        this.m_utilWeightRange_.clear();
        int weight = lowerLimit;
        int length2 = lowerLength;
        while (length2 >= 2) {
            this.m_utilLowerWeightRange_[length2].clear();
            trail = CollationParsedRuleBuilder.getWeightByte(weight, length2);
            if (trail < maxByte) {
                this.m_utilLowerWeightRange_[length2].m_start_ = CollationParsedRuleBuilder.incWeightTrail(weight, length2);
                this.m_utilLowerWeightRange_[length2].m_end_ = CollationParsedRuleBuilder.setWeightTrail(weight, length2, maxByte);
                this.m_utilLowerWeightRange_[length2].m_length_ = length2;
                this.m_utilLowerWeightRange_[length2].m_count_ = maxByte - trail;
            }
            weight = CollationParsedRuleBuilder.truncateWeight(weight, length2 - 1);
            --length2;
        }
        this.m_utilWeightRange_.m_start_ = CollationParsedRuleBuilder.incWeightTrail(weight, 1);
        weight = upperLimit;
        length2 = upperLength;
        while (length2 >= 2) {
            trail = CollationParsedRuleBuilder.getWeightByte(weight, length2);
            if (trail > 4) {
                this.m_utilUpperWeightRange_[length2].m_start_ = CollationParsedRuleBuilder.setWeightTrail(weight, length2, 4);
                this.m_utilUpperWeightRange_[length2].m_end_ = CollationParsedRuleBuilder.decWeightTrail(weight, length2);
                this.m_utilUpperWeightRange_[length2].m_length_ = length2;
                this.m_utilUpperWeightRange_[length2].m_count_ = trail - 4;
            }
            weight = CollationParsedRuleBuilder.truncateWeight(weight, length2 - 1);
            --length2;
        }
        this.m_utilWeightRange_.m_end_ = CollationParsedRuleBuilder.decWeightTrail(weight, 1);
        this.m_utilWeightRange_.m_length_ = 1;
        if (Utility.compareUnsigned(this.m_utilWeightRange_.m_end_, this.m_utilWeightRange_.m_start_) >= 0) {
            this.m_utilWeightRange_.m_count_ = (this.m_utilWeightRange_.m_end_ - this.m_utilWeightRange_.m_start_ >>> 24) + 1;
        } else {
            this.m_utilWeightRange_.m_count_ = 0;
            length2 = 4;
            while (length2 >= 2) {
                int start;
                int end;
                if (this.m_utilLowerWeightRange_[length2].m_count_ > 0 && this.m_utilUpperWeightRange_[length2].m_count_ > 0 && ((end = this.m_utilLowerWeightRange_[length2].m_end_) >= (start = this.m_utilUpperWeightRange_[length2].m_start_) || CollationParsedRuleBuilder.incWeight(end, length2, maxByte) == start)) {
                    start = this.m_utilLowerWeightRange_[length2].m_start_;
                    end = this.m_utilLowerWeightRange_[length2].m_end_ = this.m_utilUpperWeightRange_[length2].m_end_;
                    this.m_utilLowerWeightRange_[length2].m_count_ = CollationParsedRuleBuilder.getWeightByte(end, length2) - CollationParsedRuleBuilder.getWeightByte(start, length2) + 1 + countBytes * (CollationParsedRuleBuilder.getWeightByte(end, length2 - 1) - CollationParsedRuleBuilder.getWeightByte(start, length2 - 1));
                    this.m_utilUpperWeightRange_[length2].m_count_ = 0;
                    while (--length2 >= 2) {
                        this.m_utilUpperWeightRange_[length2].m_count_ = 0;
                        this.m_utilLowerWeightRange_[length2].m_count_ = 0;
                    }
                    break;
                }
                --length2;
            }
        }
        int rangeCount = 0;
        if (this.m_utilWeightRange_.m_count_ > 0) {
            ranges[0] = new WeightRange(this.m_utilWeightRange_);
            rangeCount = 1;
        }
        int length3 = 2;
        while (length3 <= 4) {
            if (this.m_utilUpperWeightRange_[length3].m_count_ > 0) {
                ranges[rangeCount] = new WeightRange(this.m_utilUpperWeightRange_[length3]);
                ++rangeCount;
            }
            if (this.m_utilLowerWeightRange_[length3].m_count_ > 0) {
                ranges[rangeCount] = new WeightRange(this.m_utilLowerWeightRange_[length3]);
                ++rangeCount;
            }
            ++length3;
        }
        return rangeCount;
    }

    private static final int truncateWeight(int weight, int length) {
        return weight & -1 << (4 - length << 3);
    }

    private static final int lengthOfWeight(int weight) {
        if ((weight & 0xFFFFFF) == 0) {
            return 1;
        }
        if ((weight & 0xFFFF) == 0) {
            return 2;
        }
        if ((weight & 0xFF) == 0) {
            return 3;
        }
        return 4;
    }

    private static final int incWeightTrail(int weight, int length) {
        return weight + (1 << (4 - length << 3));
    }

    private static int decWeightTrail(int weight, int length) {
        return weight - (1 << (4 - length << 3));
    }

    private static int findCP(BasicContractionTable tbl, char codePoint) {
        int position = 0;
        while (codePoint > tbl.m_codePoints_.charAt(position)) {
            if (++position <= tbl.m_codePoints_.length()) continue;
            return -1;
        }
        if (codePoint == tbl.m_codePoints_.charAt(position)) {
            return position;
        }
        return -1;
    }

    private static int findCE(ContractionTable table, int element, char ch) {
        if (table == null) {
            return -268435456;
        }
        BasicContractionTable tbl = CollationParsedRuleBuilder.getBasicContractionTable(table, element);
        if (tbl == null) {
            return -268435456;
        }
        int position = CollationParsedRuleBuilder.findCP(tbl, ch);
        if (position > tbl.m_CEs_.size() || position < 0) {
            return -268435456;
        }
        return tbl.m_CEs_.get(position);
    }

    private static boolean isTailored(ContractionTable table, int element, char[] array, int offset) {
        while (array[offset] != '\u0000') {
            if ((element = CollationParsedRuleBuilder.findCE(table, element, array[offset])) == -268435456) {
                return false;
            }
            if (!CollationParsedRuleBuilder.isContractionTableElement(element)) {
                return true;
            }
            ++offset;
        }
        return CollationParsedRuleBuilder.getCE(table, element, 0) != -268435456;
    }

    private void assembleTable(BuildTable t, RuleBasedCollator collator) {
        IntTrieBuilder mapping = t.m_mapping_;
        Vector<Integer> expansions = t.m_expansions_;
        ContractionTable contractions = t.m_contractions_;
        MaxExpansionTable maxexpansion = t.m_maxExpansions_;
        collator.m_contractionOffset_ = 0;
        int contractionsSize = this.constructTable(contractions);
        CollationParsedRuleBuilder.getMaxExpansionJamo(mapping, maxexpansion, t.m_maxJamoExpansions_, collator.m_isJamoSpecial_);
        CollationParsedRuleBuilder.setAttributes(collator, t.m_options_);
        int size = expansions.size();
        collator.m_expansion_ = new int[size];
        int i = 0;
        while (i < size) {
            collator.m_expansion_[i] = expansions.get(i);
            ++i;
        }
        if (contractionsSize != 0) {
            collator.m_contractionIndex_ = new char[contractionsSize];
            contractions.m_codePoints_.getChars(0, contractionsSize, collator.m_contractionIndex_, 0);
            collator.m_contractionCE_ = new int[contractionsSize];
            i = 0;
            while (i < contractionsSize) {
                collator.m_contractionCE_[i] = contractions.m_CEs_.get(i);
                ++i;
            }
        }
        collator.m_trie_ = mapping.serialize(t, RuleBasedCollator.DataManipulate.getInstance());
        collator.m_expansionOffset_ = 0;
        size = maxexpansion.m_endExpansionCE_.size();
        collator.m_expansionEndCE_ = new int[size - 1];
        i = 1;
        while (i < size) {
            collator.m_expansionEndCE_[i - 1] = maxexpansion.m_endExpansionCE_.get(i);
            ++i;
        }
        collator.m_expansionEndCEMaxSize_ = new byte[size - 1];
        i = 1;
        while (i < size) {
            collator.m_expansionEndCEMaxSize_[i - 1] = maxexpansion.m_expansionCESize_.get(i);
            ++i;
        }
        this.unsafeCPAddCCNZ(t);
        i = 0;
        while (i < 1056) {
            int n = i;
            t.m_unsafeCP_[n] = (byte)(t.m_unsafeCP_[n] | RuleBasedCollator.UCA_.m_unsafe_[i]);
            ++i;
        }
        collator.m_unsafe_ = t.m_unsafeCP_;
        i = 0;
        while (i < 1056) {
            int n = i;
            t.m_contrEndCP_[n] = (byte)(t.m_contrEndCP_[n] | RuleBasedCollator.UCA_.m_contractionEnd_[i]);
            ++i;
        }
        collator.m_contractionEnd_ = t.m_contrEndCP_;
    }

    private static final void setAttributes(RuleBasedCollator collator, CollationRuleParser.OptionSet option) {
        collator.latinOneFailed_ = true;
        collator.m_caseFirst_ = option.m_caseFirst_;
        collator.setDecomposition(option.m_decomposition_);
        collator.setAlternateHandlingShifted(option.m_isAlternateHandlingShifted_);
        collator.setCaseLevel(option.m_isCaseLevel_);
        collator.setFrenchCollation(option.m_isFrenchCollation_);
        collator.m_isHiragana4_ = option.m_isHiragana4_;
        collator.setStrength(option.m_strength_);
        collator.m_variableTopValue_ = option.m_variableTopValue_;
        collator.latinOneFailed_ = false;
    }

    private int constructTable(ContractionTable table) {
        int tsize = table.m_elements_.size();
        if (tsize == 0) {
            return 0;
        }
        table.m_offsets_.clear();
        int position = 0;
        int i = 0;
        while (i < tsize) {
            table.m_offsets_.add(new Integer(position));
            position += table.m_elements_.get((int)i).m_CEs_.size();
            ++i;
        }
        table.m_CEs_.clear();
        table.m_codePoints_.delete(0, table.m_codePoints_.length());
        StringBuilder cpPointer = table.m_codePoints_;
        Vector<Integer> CEPointer = table.m_CEs_;
        int i2 = 0;
        while (i2 < tsize) {
            BasicContractionTable bct = table.m_elements_.get(i2);
            int size = bct.m_CEs_.size();
            char ccMax = '\u0000';
            char ccMin = '\u00ff';
            int offset = CEPointer.size();
            CEPointer.add(bct.m_CEs_.get(0));
            int j = 1;
            while (j < size) {
                char ch = bct.m_codePoints_.charAt(j);
                char cc = (char)(UCharacter.getCombiningClass(ch) & 0xFF);
                if (cc > ccMax) {
                    ccMax = cc;
                }
                if (cc < ccMin) {
                    ccMin = cc;
                }
                cpPointer.append(ch);
                CEPointer.add(bct.m_CEs_.get(j));
                ++j;
            }
            cpPointer.insert(offset, (char)((ccMin == ccMax ? 1 : 0) | ccMax));
            j = 0;
            while (j < size) {
                if (CollationParsedRuleBuilder.isContractionTableElement(CEPointer.get(offset + j))) {
                    int ce = CEPointer.get(offset + j);
                    CEPointer.set(offset + j, new Integer(CollationParsedRuleBuilder.constructSpecialCE(CollationParsedRuleBuilder.getCETag(ce), table.m_offsets_.get(CollationParsedRuleBuilder.getContractionOffset(ce)))));
                }
                ++j;
            }
            ++i2;
        }
        i2 = 0;
        while (i2 <= 0x10FFFF) {
            int CE = table.m_mapping_.getValue(i2);
            if (CollationParsedRuleBuilder.isContractionTableElement(CE)) {
                CE = CollationParsedRuleBuilder.constructSpecialCE(CollationParsedRuleBuilder.getCETag(CE), table.m_offsets_.get(CollationParsedRuleBuilder.getContractionOffset(CE)));
                table.m_mapping_.setValue(i2, CE);
            }
            ++i2;
        }
        return position;
    }

    private static final int getContractionOffset(int ce) {
        return ce & 0xFFFFFF;
    }

    private static void getMaxExpansionJamo(IntTrieBuilder mapping, MaxExpansionTable maxexpansion, MaxJamoExpansionTable maxjamoexpansion, boolean jamospecial) {
        int ce;
        int VBASE = 4449;
        int TBASE = 4520;
        int VCOUNT = 21;
        int TCOUNT = 28;
        int v = VBASE + VCOUNT - 1;
        int t = TBASE + TCOUNT - 1;
        while (v >= VBASE) {
            ce = mapping.getValue(v);
            if ((ce & 0xF0000000) != -268435456) {
                CollationParsedRuleBuilder.setMaxExpansion(ce, (byte)2, maxexpansion);
            }
            --v;
        }
        while (t >= TBASE) {
            ce = mapping.getValue(t);
            if ((ce & 0xF0000000) != -268435456) {
                CollationParsedRuleBuilder.setMaxExpansion(ce, (byte)3, maxexpansion);
            }
            --t;
        }
        if (jamospecial) {
            int count = maxjamoexpansion.m_endExpansionCE_.size();
            byte maxTSize = (byte)(maxjamoexpansion.m_maxLSize_ + maxjamoexpansion.m_maxVSize_ + maxjamoexpansion.m_maxTSize_);
            byte maxVSize = (byte)(maxjamoexpansion.m_maxLSize_ + maxjamoexpansion.m_maxVSize_);
            while (count > 0) {
                if (maxjamoexpansion.m_isV_.get(--count).booleanValue()) {
                    CollationParsedRuleBuilder.setMaxExpansion(maxjamoexpansion.m_endExpansionCE_.get(count), maxVSize, maxexpansion);
                    continue;
                }
                CollationParsedRuleBuilder.setMaxExpansion(maxjamoexpansion.m_endExpansionCE_.get(count), maxTSize, maxexpansion);
            }
        }
    }

    private final void unsafeCPAddCCNZ(BuildTable t) {
        boolean buildCMTable = buildCMTabFlag & t.cmLookup == null;
        char[] cm = null;
        int[] index = new int[256];
        int count = 0;
        if (buildCMTable) {
            cm = new char[65536];
        }
        char c = '\u0000';
        while (c < '\uffff') {
            int fcd = this.m_nfcImpl_.getFCD16FromSingleLead(c);
            if (fcd >= 256 || UTF16.isLeadSurrogate(c) && fcd != 0) {
                CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, c);
                if (buildCMTable && fcd != 0) {
                    int cc = fcd & 0xFF;
                    int pos = (cc << 8) + index[cc];
                    cm[pos] = c;
                    int n = cc;
                    index[n] = index[n] + 1;
                    ++count;
                }
            }
            c = (char)(c + '\u0001');
        }
        if (t.m_prefixLookup_ != null) {
            Enumeration<Elements> els = t.m_prefixLookup_.elements();
            while (els.hasMoreElements()) {
                Elements e = els.nextElement();
                String comp = Normalizer.compose(e.m_cPoints_, false);
                CollationParsedRuleBuilder.unsafeCPSet(t.m_unsafeCP_, comp.charAt(0));
            }
        }
        if (buildCMTable) {
            t.cmLookup = new CombinClassTable();
            t.cmLookup.generate(cm, count, index);
        }
    }

    private boolean enumCategoryRangeClosureCategory(BuildTable t, RuleBasedCollator collator, CollationElementIterator colEl, int start, int limit, int type) {
        if (type != 0 && type != 17) {
            int u32 = start;
            while (u32 < limit) {
                String comp;
                String decomp = this.m_nfcImpl_.getDecomposition(u32);
                if (decomp != null && !collator.equals(comp = UCharacter.toString(u32), decomp)) {
                    this.m_utilElement_.m_cPoints_ = decomp;
                    this.m_utilElement_.m_prefix_ = 0;
                    Elements prefix = t.m_prefixLookup_.get(this.m_utilElement_);
                    if (prefix == null) {
                        this.m_utilElement_.m_cPoints_ = comp;
                        this.m_utilElement_.m_prefix_ = 0;
                        this.m_utilElement_.m_prefixChars_ = null;
                        colEl.setText(decomp);
                        int ce = colEl.next();
                        this.m_utilElement_.m_CELength_ = 0;
                        while (ce != -1) {
                            this.m_utilElement_.m_CEs_[this.m_utilElement_.m_CELength_++] = ce;
                            ce = colEl.next();
                        }
                    } else {
                        this.m_utilElement_.m_cPoints_ = comp;
                        this.m_utilElement_.m_prefix_ = 0;
                        this.m_utilElement_.m_prefixChars_ = null;
                        this.m_utilElement_.m_CELength_ = 1;
                        this.m_utilElement_.m_CEs_[0] = prefix.m_mapCE_;
                    }
                    this.addAnElement(t, this.m_utilElement_);
                }
                ++u32;
            }
        }
        return true;
    }

    private static final boolean isJamo(char ch) {
        return ch >= '\u1100' && ch <= '\u1112' || ch >= '\u1175' && ch <= '\u1161' || ch >= '\u11a8' && ch <= '\u11c2';
    }

    private void canonicalClosure(BuildTable t) {
        BuildTable temp = new BuildTable(t);
        this.assembleTable(temp, temp.m_collator_);
        CollationElementIterator coleiter = temp.m_collator_.getCollationElementIterator("");
        RangeValueIterator typeiter = UCharacter.getTypeIterator();
        RangeValueIterator.Element element = new RangeValueIterator.Element();
        while (typeiter.next(element)) {
            this.enumCategoryRangeClosureCategory(t, temp.m_collator_, coleiter, element.start, element.limit, element.value);
        }
        t.cmLookup = temp.cmLookup;
        temp.cmLookup = null;
        int i = 0;
        while (i < this.m_parser_.m_resultLength_) {
            CollationRuleParser.Token tok = this.m_parser_.m_listHeader_[i].m_first_;
            this.m_utilElement_.clear();
            while (tok != null) {
                this.m_utilElement_.m_prefix_ = 0;
                this.m_utilElement_.m_cPointsOffset_ = 0;
                if (tok.m_prefix_ != 0) {
                    int size = tok.m_prefix_ >> 24;
                    int offset = tok.m_prefix_ & 0xFFFFFF;
                    this.m_utilElement_.m_prefixChars_ = this.m_parser_.m_source_.substring(offset, offset + size);
                    size = (tok.m_source_ >> 24) - (tok.m_prefix_ >> 24);
                    offset = (tok.m_source_ & 0xFFFFFF) + (tok.m_prefix_ >> 24);
                    this.m_utilElement_.m_uchars_ = this.m_parser_.m_source_.substring(offset, offset + size);
                } else {
                    this.m_utilElement_.m_prefixChars_ = null;
                    int offset = tok.m_source_ & 0xFFFFFF;
                    int size = tok.m_source_ >>> 24;
                    this.m_utilElement_.m_uchars_ = this.m_parser_.m_source_.substring(offset, offset + size);
                }
                this.m_utilElement_.m_cPoints_ = this.m_utilElement_.m_uchars_;
                char firstCM = '\u0000';
                char baseChar = '\u0000';
                int j = 0;
                while (j < this.m_utilElement_.m_cPoints_.length() - this.m_utilElement_.m_cPointsOffset_) {
                    int fcd = this.m_nfcImpl_.getFCD16FromSingleLead(this.m_utilElement_.m_cPoints_.charAt(j));
                    if ((fcd & 0xFF) == 0) {
                        baseChar = this.m_utilElement_.m_cPoints_.charAt(j);
                    } else if (baseChar != '\u0000' && firstCM == '\u0000') {
                        firstCM = this.m_utilElement_.m_cPoints_.charAt(j);
                    }
                    ++j;
                }
                if (baseChar != '\u0000' && firstCM != '\u0000') {
                    this.addTailCanonicalClosures(t, temp.m_collator_, coleiter, baseChar, firstCM);
                }
                tok = tok.m_next_;
            }
            ++i;
        }
    }

    private void addTailCanonicalClosures(BuildTable t, RuleBasedCollator m_collator, CollationElementIterator colEl, char baseChar, char cMark) {
        if (t.cmLookup == null) {
            return;
        }
        CombinClassTable cmLookup = t.cmLookup;
        int[] index = cmLookup.index;
        int cClass = this.m_nfcImpl_.getFCD16FromSingleLead(cMark) & 0xFF;
        int maxIndex = 0;
        char[] precompCh = new char[256];
        int[] precompClass = new int[256];
        int precompLen = 0;
        Elements element = new Elements();
        if (cClass > 0) {
            maxIndex = index[cClass - 1];
        }
        int i = 0;
        while (i < maxIndex) {
            StringBuilder decompBuf = new StringBuilder();
            decompBuf.append(baseChar).append(cmLookup.cPoints[i]);
            String comp = Normalizer.compose(decompBuf.toString(), false);
            if (comp.length() == 1) {
                precompCh[precompLen] = comp.charAt(0);
                precompClass[precompLen] = this.m_nfcImpl_.getFCD16FromSingleLead(cmLookup.cPoints[i]) & 0xFF;
                ++precompLen;
                StringBuilder decomp = new StringBuilder();
                int j = 0;
                while (j < this.m_utilElement_.m_cPoints_.length()) {
                    if (this.m_utilElement_.m_cPoints_.charAt(j) == cMark) {
                        decomp.append(cmLookup.cPoints[i]);
                    } else {
                        decomp.append(this.m_utilElement_.m_cPoints_.charAt(j));
                    }
                    ++j;
                }
                comp = Normalizer.compose(decomp.toString(), false);
                StringBuilder buf = new StringBuilder(comp);
                buf.append(cMark);
                decomp.append(cMark);
                comp = buf.toString();
                element.m_cPoints_ = decomp.toString();
                element.m_CELength_ = 0;
                element.m_prefix_ = 0;
                Elements prefix = t.m_prefixLookup_.get(element);
                element.m_cPoints_ = comp;
                element.m_uchars_ = comp;
                if (prefix == null) {
                    element.m_prefix_ = 0;
                    element.m_prefixChars_ = null;
                    colEl.setText(decomp.toString());
                    int ce = colEl.next();
                    element.m_CELength_ = 0;
                    while (ce != -1) {
                        element.m_CEs_[element.m_CELength_++] = ce;
                        ce = colEl.next();
                    }
                } else {
                    element.m_cPoints_ = comp;
                    element.m_prefix_ = 0;
                    element.m_prefixChars_ = null;
                    element.m_CELength_ = 1;
                    element.m_CEs_[0] = prefix.m_mapCE_;
                }
                this.setMapCE(t, element);
                CollationParsedRuleBuilder.finalizeAddition(t, element);
                if (comp.length() > 2) {
                    this.addFCD4AccentedContractions(t, colEl, comp, element);
                }
                if (precompLen > 1) {
                    precompLen = this.addMultiCMontractions(t, colEl, element, precompCh, precompClass, precompLen, cMark, i, decomp.toString());
                }
            }
            ++i;
        }
    }

    private void setMapCE(BuildTable t, Elements element) {
        Vector<Integer> expansions = t.m_expansions_;
        element.m_mapCE_ = 0;
        if (element.m_CELength_ == 2 && RuleBasedCollator.isContinuation(element.m_CEs_[1]) && (element.m_CEs_[1] & 0xFFFF3F) == 0 && (element.m_CEs_[0] >> 8 & 0xFF) == 5 && (element.m_CEs_[0] & 0xFF) == 5) {
            element.m_mapCE_ = 0xFC000000 | element.m_CEs_[0] >> 8 & 0xFFFF00 | element.m_CEs_[1] >> 24 & 0xFF;
        } else {
            int expansion = 0xF1000000 | CollationParsedRuleBuilder.addExpansion(expansions, element.m_CEs_[0]) << 4 & 0xFFFFF0;
            int i = 1;
            while (i < element.m_CELength_) {
                CollationParsedRuleBuilder.addExpansion(expansions, element.m_CEs_[i]);
                ++i;
            }
            if (element.m_CELength_ <= 15) {
                expansion |= element.m_CELength_;
            } else {
                CollationParsedRuleBuilder.addExpansion(expansions, 0);
            }
            element.m_mapCE_ = expansion;
            CollationParsedRuleBuilder.setMaxExpansion(element.m_CEs_[element.m_CELength_ - 1], (byte)element.m_CELength_, t.m_maxExpansions_);
        }
    }

    private int addMultiCMontractions(BuildTable t, CollationElementIterator colEl, Elements element, char[] precompCh, int[] precompClass, int maxComp, char cMark, int cmPos, String decomp) {
        CombinClassTable cmLookup = t.cmLookup;
        char[] combiningMarks = new char[]{cMark};
        int cMarkClass = UCharacter.getCombiningClass(cMark) & 0xFF;
        String comMark = new String(combiningMarks);
        int noOfPrecomposedChs = maxComp;
        int j = 0;
        while (j < maxComp) {
            int count = 0;
            do {
                StringBuilder temp;
                String newDecomp;
                if (count == 0) {
                    newDecomp = Normalizer.decompose(new String(precompCh, j, 1), false);
                    temp = new StringBuilder(newDecomp);
                    temp.append(cmLookup.cPoints[cmPos]);
                    newDecomp = temp.toString();
                } else {
                    temp = new StringBuilder(decomp);
                    temp.append(precompCh[j]);
                    newDecomp = temp.toString();
                }
                String comp = Normalizer.compose(newDecomp, false);
                if (comp.length() != 1) continue;
                temp.append(cMark);
                element.m_cPoints_ = temp.toString();
                element.m_CELength_ = 0;
                element.m_prefix_ = 0;
                Elements prefix = t.m_prefixLookup_.get(element);
                element.m_cPoints_ = String.valueOf(comp) + comMark;
                if (prefix == null) {
                    element.m_prefix_ = 0;
                    element.m_prefixChars_ = null;
                    colEl.setText(temp.toString());
                    int ce = colEl.next();
                    element.m_CELength_ = 0;
                    while (ce != -1) {
                        element.m_CEs_[element.m_CELength_++] = ce;
                        ce = colEl.next();
                    }
                } else {
                    element.m_cPoints_ = comp;
                    element.m_prefix_ = 0;
                    element.m_prefixChars_ = null;
                    element.m_CELength_ = 1;
                    element.m_CEs_[0] = prefix.m_mapCE_;
                }
                this.setMapCE(t, element);
                CollationParsedRuleBuilder.finalizeAddition(t, element);
                precompCh[noOfPrecomposedChs] = comp.charAt(0);
                precompClass[noOfPrecomposedChs] = cMarkClass;
                ++noOfPrecomposedChs;
            } while (++count < 2 && precompClass[j] == cMarkClass);
            ++j;
        }
        return noOfPrecomposedChs;
    }

    private void addFCD4AccentedContractions(BuildTable t, CollationElementIterator colEl, String data, Elements element) {
        String decomp = Normalizer.decompose(data, false);
        String comp = Normalizer.compose(data, false);
        element.m_cPoints_ = decomp;
        element.m_CELength_ = 0;
        element.m_prefix_ = 0;
        Elements prefix = t.m_prefixLookup_.get(element);
        if (prefix == null) {
            element.m_cPoints_ = comp;
            element.m_prefix_ = 0;
            element.m_prefixChars_ = null;
            element.m_CELength_ = 0;
            colEl.setText(decomp);
            int ce = colEl.next();
            element.m_CELength_ = 0;
            while (ce != -1) {
                element.m_CEs_[element.m_CELength_++] = ce;
                ce = colEl.next();
            }
            this.addAnElement(t, element);
        }
    }

    private void processUCACompleteIgnorables(BuildTable t) {
        TrieIterator trieiterator = new TrieIterator(RuleBasedCollator.UCA_.m_trie_);
        RangeValueIterator.Element element = new RangeValueIterator.Element();
        while (trieiterator.next(element)) {
            int start = element.start;
            int limit = element.limit;
            if (element.value != 0) continue;
            while (start < limit) {
                int CE = t.m_mapping_.getValue(start);
                if (CE == -268435456) {
                    this.m_utilElement_.m_prefix_ = 0;
                    this.m_utilElement_.m_cPoints_ = this.m_utilElement_.m_uchars_ = UCharacter.toString(start);
                    this.m_utilElement_.m_cPointsOffset_ = 0;
                    this.m_utilElement_.m_CELength_ = 1;
                    this.m_utilElement_.m_CEs_[0] = 0;
                    this.addAnElement(t, this.m_utilElement_);
                }
                ++start;
            }
        }
    }

    private static class BasicContractionTable {
        StringBuilder m_codePoints_;
        Vector<Integer> m_CEs_ = new Vector();

        BasicContractionTable() {
            this.m_codePoints_ = new StringBuilder();
        }
    }

    private static final class BuildTable
    implements TrieBuilder.DataManipulate {
        RuleBasedCollator m_collator_;
        IntTrieBuilder m_mapping_;
        Vector<Integer> m_expansions_;
        ContractionTable m_contractions_;
        CollationRuleParser.OptionSet m_options_;
        MaxExpansionTable m_maxExpansions_;
        MaxJamoExpansionTable m_maxJamoExpansions_;
        byte[] m_unsafeCP_;
        byte[] m_contrEndCP_;
        Hashtable<Elements, Elements> m_prefixLookup_;
        CombinClassTable cmLookup = null;

        public int getFoldedValue(int cp, int offset) {
            int limit = cp + 1024;
            while (cp < limit) {
                int value = this.m_mapping_.getValue(cp);
                boolean inBlockZero = this.m_mapping_.isInZeroBlock(cp);
                int tag = CollationParsedRuleBuilder.getCETag(value);
                if (inBlockZero) {
                    cp += 32;
                    continue;
                }
                if (!CollationParsedRuleBuilder.isSpecial(value) || tag != 10 && tag != 0) {
                    return 0xF5000000 | offset;
                }
                ++cp;
            }
            return 0;
        }

        BuildTable(CollationRuleParser parser) {
            this.m_collator_ = new RuleBasedCollator();
            this.m_collator_.setWithUCAData();
            MaxExpansionTable maxet = new MaxExpansionTable();
            MaxJamoExpansionTable maxjet = new MaxJamoExpansionTable();
            this.m_options_ = parser.m_options_;
            this.m_expansions_ = new Vector();
            int trieinitialvalue = -268435456;
            this.m_mapping_ = new IntTrieBuilder(null, 196608, trieinitialvalue, trieinitialvalue, true);
            this.m_prefixLookup_ = new Hashtable();
            this.m_contractions_ = new ContractionTable(this.m_mapping_);
            this.m_maxExpansions_ = maxet;
            int i = 0;
            while (i < RuleBasedCollator.UCA_.m_expansionEndCE_.length) {
                maxet.m_endExpansionCE_.add(new Integer(RuleBasedCollator.UCA_.m_expansionEndCE_[i]));
                maxet.m_expansionCESize_.add(new Byte(RuleBasedCollator.UCA_.m_expansionEndCEMaxSize_[i]));
                ++i;
            }
            this.m_maxJamoExpansions_ = maxjet;
            this.m_unsafeCP_ = new byte[1056];
            this.m_contrEndCP_ = new byte[1056];
            Arrays.fill(this.m_unsafeCP_, (byte)0);
            Arrays.fill(this.m_contrEndCP_, (byte)0);
        }

        BuildTable(BuildTable table) {
            this.m_collator_ = table.m_collator_;
            this.m_mapping_ = new IntTrieBuilder(table.m_mapping_);
            this.m_expansions_ = new Vector<Integer>(table.m_expansions_);
            this.m_contractions_ = new ContractionTable(table.m_contractions_);
            this.m_contractions_.m_mapping_ = this.m_mapping_;
            this.m_options_ = table.m_options_;
            this.m_maxExpansions_ = new MaxExpansionTable(table.m_maxExpansions_);
            this.m_maxJamoExpansions_ = new MaxJamoExpansionTable(table.m_maxJamoExpansions_);
            this.m_unsafeCP_ = new byte[table.m_unsafeCP_.length];
            System.arraycopy(table.m_unsafeCP_, 0, this.m_unsafeCP_, 0, this.m_unsafeCP_.length);
            this.m_contrEndCP_ = new byte[table.m_contrEndCP_.length];
            System.arraycopy(table.m_contrEndCP_, 0, this.m_contrEndCP_, 0, this.m_contrEndCP_.length);
        }
    }

    private static class CEGenerator {
        WeightRange[] m_ranges_ = new WeightRange[7];
        int m_rangesLength_;
        int m_byteSize_;
        int m_start_;
        int m_limit_;
        int m_maxCount_;
        int m_count_;
        int m_current_;
        int m_fLow_;
        int m_fHigh_;

        CEGenerator() {
            int i = 6;
            while (i >= 0) {
                this.m_ranges_[i] = new WeightRange();
                --i;
            }
        }
    }

    private static class CombinClassTable {
        int[] index = new int[256];
        char[] cPoints = null;
        int size = 0;
        int pos = 0;
        int curClass = 1;

        CombinClassTable() {
        }

        void generate(char[] cps, int numOfCM, int[] ccIndex) {
            int count = 0;
            this.cPoints = new char[numOfCM];
            int i = 0;
            while (i < 256) {
                int j = 0;
                while (j < ccIndex[i]) {
                    this.cPoints[count++] = cps[(i << 8) + j];
                    ++j;
                }
                this.index[i] = count;
                ++i;
            }
            this.size = count;
        }

        char GetFirstCM(int cClass) {
            this.curClass = cClass;
            if (this.cPoints == null || cClass == 0 || this.index[cClass] == this.index[cClass - 1]) {
                return '\u0000';
            }
            this.pos = 1;
            return this.cPoints[this.index[cClass - 1]];
        }

        char GetNextCM() {
            if (this.cPoints == null || this.index[this.curClass] == this.index[this.curClass - 1] + this.pos) {
                return '\u0000';
            }
            return this.cPoints[this.index[this.curClass - 1] + this.pos++];
        }
    }

    private static class ContractionTable {
        Vector<BasicContractionTable> m_elements_;
        IntTrieBuilder m_mapping_;
        StringBuilder m_codePoints_;
        Vector<Integer> m_CEs_;
        Vector<Integer> m_offsets_;
        int m_currentTag_;

        ContractionTable(IntTrieBuilder mapping) {
            this.m_mapping_ = mapping;
            this.m_elements_ = new Vector();
            this.m_CEs_ = new Vector();
            this.m_codePoints_ = new StringBuilder();
            this.m_offsets_ = new Vector();
            this.m_currentTag_ = 0;
        }

        ContractionTable(ContractionTable table) {
            this.m_mapping_ = table.m_mapping_;
            this.m_elements_ = new Vector<BasicContractionTable>(table.m_elements_);
            this.m_codePoints_ = new StringBuilder(table.m_codePoints_);
            this.m_CEs_ = new Vector<Integer>(table.m_CEs_);
            this.m_offsets_ = new Vector<Integer>(table.m_offsets_);
            this.m_currentTag_ = table.m_currentTag_;
        }
    }

    private static class Elements {
        String m_prefixChars_;
        int m_prefix_;
        String m_uchars_;
        String m_cPoints_;
        int m_cPointsOffset_;
        int[] m_CEs_;
        int m_CELength_;
        int m_mapCE_;
        int[] m_sizePrim_;
        int[] m_sizeSec_;
        int[] m_sizeTer_;
        boolean m_variableTop_;
        boolean m_caseBit_;

        Elements() {
            this.m_sizePrim_ = new int[128];
            this.m_sizeSec_ = new int[128];
            this.m_sizeTer_ = new int[128];
            this.m_CEs_ = new int[256];
            this.m_CELength_ = 0;
        }

        Elements(Elements element) {
            this.m_prefixChars_ = element.m_prefixChars_;
            this.m_prefix_ = element.m_prefix_;
            this.m_uchars_ = element.m_uchars_;
            this.m_cPoints_ = element.m_cPoints_;
            this.m_cPointsOffset_ = element.m_cPointsOffset_;
            this.m_CEs_ = element.m_CEs_;
            this.m_CELength_ = element.m_CELength_;
            this.m_mapCE_ = element.m_mapCE_;
            this.m_sizePrim_ = element.m_sizePrim_;
            this.m_sizeSec_ = element.m_sizeSec_;
            this.m_sizeTer_ = element.m_sizeTer_;
            this.m_variableTop_ = element.m_variableTop_;
            this.m_caseBit_ = element.m_caseBit_;
        }

        public void clear() {
            this.m_prefixChars_ = null;
            this.m_prefix_ = 0;
            this.m_uchars_ = null;
            this.m_cPoints_ = null;
            this.m_cPointsOffset_ = 0;
            this.m_CELength_ = 0;
            this.m_mapCE_ = 0;
            Arrays.fill(this.m_sizePrim_, 0);
            Arrays.fill(this.m_sizeSec_, 0);
            Arrays.fill(this.m_sizeTer_, 0);
            this.m_variableTop_ = false;
            this.m_caseBit_ = false;
        }

        public int hashCode() {
            String str = this.m_cPoints_.substring(this.m_cPointsOffset_);
            return str.hashCode();
        }

        public boolean equals(Object target) {
            if (target == this) {
                return true;
            }
            if (target instanceof Elements) {
                Elements t = (Elements)target;
                int size = this.m_cPoints_.length() - this.m_cPointsOffset_;
                if (size == t.m_cPoints_.length() - t.m_cPointsOffset_) {
                    return t.m_cPoints_.regionMatches(t.m_cPointsOffset_, this.m_cPoints_, this.m_cPointsOffset_, size);
                }
            }
            return false;
        }
    }

    static class InverseUCA {
        int[] m_table_;
        char[] m_continuations_;
        VersionInfo m_UCA_version_;

        InverseUCA() {
        }

        final int getInversePrevCE(int ce, int contce, int strength, int[] prevresult) {
            int result = this.findInverseCE(ce, contce);
            if (result < 0) {
                prevresult[0] = -1;
                return -1;
            }
            prevresult[0] = ce &= STRENGTH_MASK_[strength];
            prevresult[1] = contce &= STRENGTH_MASK_[strength];
            while ((prevresult[0] & STRENGTH_MASK_[strength]) == ce && (prevresult[1] & STRENGTH_MASK_[strength]) == contce && result > 0) {
                prevresult[0] = this.m_table_[3 * --result];
                prevresult[1] = this.m_table_[3 * result + 1];
            }
            return result;
        }

        final int getCEStrengthDifference(int CE, int contCE, int prevCE, int prevContCE) {
            int strength = 2;
            while (((prevCE & STRENGTH_MASK_[strength]) != (CE & STRENGTH_MASK_[strength]) || (prevContCE & STRENGTH_MASK_[strength]) != (contCE & STRENGTH_MASK_[strength])) && strength != 0) {
                --strength;
            }
            return strength;
        }

        private int compareCEs(int source0, int source1, int target0, int target1) {
            int s1 = source0;
            int t1 = target0;
            int s2 = RuleBasedCollator.isContinuation(source1) ? source1 : 0;
            int t2 = RuleBasedCollator.isContinuation(target1) ? target1 : 0;
            int s = 0;
            int t = 0;
            if (s1 == t1 && s2 == t2) {
                return 0;
            }
            s = s1 & 0xFFFF0000 | (s2 & 0xFFFF0000) >>> 16;
            t = t1 & 0xFFFF0000 | (t2 & 0xFFFF0000) >>> 16;
            if (s == t) {
                s = s1 & 0xFF00 | (s2 & 0xFF00) >> 8;
                t = t1 & 0xFF00 | (t2 & 0xFF00) >> 8;
                if (s == t) {
                    s = (s1 & 0xFF) << 8 | s2 & 0xFF;
                    t = (t1 & 0xFF) << 8 | t2 & 0xFF;
                    return Utility.compareUnsigned(s, t);
                }
                return Utility.compareUnsigned(s, t);
            }
            return Utility.compareUnsigned(s, t);
        }

        int findInverseCE(int ce, int contce) {
            int bottom = 0;
            int top = this.m_table_.length / 3;
            int result = 0;
            while (bottom < top - 1) {
                result = top + bottom >> 1;
                int first = this.m_table_[3 * result];
                int second = this.m_table_[3 * result + 1];
                int comparison = this.compareCEs(first, second, ce, contce);
                if (comparison > 0) {
                    top = result;
                    continue;
                }
                if (comparison >= 0) break;
                bottom = result;
            }
            return result;
        }

        /*
         * Enabled aggressive block sorting
         */
        void getInverseGapPositions(CollationRuleParser.TokenListHeader listheader) throws Exception {
            int t1;
            CollationRuleParser.Token token = listheader.m_first_;
            int tokenstrength = token.m_strength_;
            int i = 0;
            while (i < 3) {
                listheader.m_gapsHi_[3 * i] = 0;
                listheader.m_gapsHi_[3 * i + 1] = 0;
                listheader.m_gapsHi_[3 * i + 2] = 0;
                listheader.m_gapsLo_[3 * i] = 0;
                listheader.m_gapsLo_[3 * i + 1] = 0;
                listheader.m_gapsLo_[3 * i + 2] = 0;
                listheader.m_numStr_[i] = 0;
                listheader.m_fStrToken_[i] = null;
                listheader.m_lStrToken_[i] = null;
                listheader.m_pos_[i] = -1;
                ++i;
            }
            if (listheader.m_baseCE_ >>> 24 >= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MIN_ && listheader.m_baseCE_ >>> 24 <= RuleBasedCollator.UCA_CONSTANTS_.PRIMARY_IMPLICIT_MAX_) {
                listheader.m_pos_[0] = 0;
                t1 = listheader.m_baseCE_;
                int t2 = listheader.m_baseContCE_;
                listheader.m_gapsLo_[0] = CollationParsedRuleBuilder.mergeCE(t1, t2, 0);
                listheader.m_gapsLo_[1] = CollationParsedRuleBuilder.mergeCE(t1, t2, 1);
                listheader.m_gapsLo_[2] = CollationParsedRuleBuilder.mergeCE(t1, t2, 2);
                int primaryCE = t1 & 0xFFFF0000 | (t2 & 0xFFFF0000) >>> 16;
                primaryCE = RuleBasedCollator.impCEGen_.getImplicitFromRaw(RuleBasedCollator.impCEGen_.getRawFromImplicit(primaryCE) + 1);
                t1 = primaryCE & 0xFFFF0000 | 0x505;
                t2 = primaryCE << 16 & 0xFFFF0000 | 0xC0;
                listheader.m_gapsHi_[0] = CollationParsedRuleBuilder.mergeCE(t1, t2, 0);
                listheader.m_gapsHi_[1] = CollationParsedRuleBuilder.mergeCE(t1, t2, 1);
                listheader.m_gapsHi_[2] = CollationParsedRuleBuilder.mergeCE(t1, t2, 2);
                return;
            }
            if (listheader.m_indirect_ && listheader.m_nextCE_ != 0) {
                listheader.m_pos_[0] = 0;
                t1 = listheader.m_baseCE_;
                int t2 = listheader.m_baseContCE_;
                listheader.m_gapsLo_[0] = CollationParsedRuleBuilder.mergeCE(t1, t2, 0);
                listheader.m_gapsLo_[1] = CollationParsedRuleBuilder.mergeCE(t1, t2, 1);
                listheader.m_gapsLo_[2] = CollationParsedRuleBuilder.mergeCE(t1, t2, 2);
                t1 = listheader.m_nextCE_;
                t2 = listheader.m_nextContCE_;
                listheader.m_gapsHi_[0] = CollationParsedRuleBuilder.mergeCE(t1, t2, 0);
                listheader.m_gapsHi_[1] = CollationParsedRuleBuilder.mergeCE(t1, t2, 1);
                listheader.m_gapsHi_[2] = CollationParsedRuleBuilder.mergeCE(t1, t2, 2);
                return;
            }
            while (true) {
                if (tokenstrength < 3) {
                    listheader.m_pos_[tokenstrength] = this.getInverseNext(listheader, tokenstrength);
                    if (listheader.m_pos_[tokenstrength] < 0) throw new Exception("Internal program error");
                    listheader.m_fStrToken_[tokenstrength] = token;
                }
                while (token != null && token.m_strength_ >= tokenstrength) {
                    if (tokenstrength < 3) {
                        listheader.m_lStrToken_[tokenstrength] = token;
                    }
                    token = token.m_next_;
                }
                if (tokenstrength < 2 && listheader.m_pos_[tokenstrength] == listheader.m_pos_[tokenstrength + 1]) {
                    listheader.m_fStrToken_[tokenstrength] = listheader.m_fStrToken_[tokenstrength + 1];
                    listheader.m_fStrToken_[tokenstrength + 1] = null;
                    listheader.m_lStrToken_[tokenstrength + 1] = null;
                    listheader.m_pos_[tokenstrength + 1] = -1;
                }
                if (token == null) break;
                tokenstrength = token.m_strength_;
            }
            int st = 0;
            while (st < 3) {
                int pos = listheader.m_pos_[st];
                if (pos >= 0) {
                    int t12 = this.m_table_[3 * pos];
                    int t2 = this.m_table_[3 * pos + 1];
                    listheader.m_gapsHi_[3 * st] = CollationParsedRuleBuilder.mergeCE(t12, t2, 0);
                    listheader.m_gapsHi_[3 * st + 1] = CollationParsedRuleBuilder.mergeCE(t12, t2, 1);
                    listheader.m_gapsHi_[3 * st + 2] = (t12 & 0x3F) << 24 | (t2 & 0x3F) << 16;
                    t12 = listheader.m_baseCE_;
                    t2 = listheader.m_baseContCE_;
                    listheader.m_gapsLo_[3 * st] = CollationParsedRuleBuilder.mergeCE(t12, t2, 0);
                    listheader.m_gapsLo_[3 * st + 1] = CollationParsedRuleBuilder.mergeCE(t12, t2, 1);
                    listheader.m_gapsLo_[3 * st + 2] = (t12 & 0x3F) << 24 | (t2 & 0x3F) << 16;
                }
                ++st;
            }
        }

        private final int getInverseNext(CollationRuleParser.TokenListHeader listheader, int strength) {
            int ce = listheader.m_baseCE_;
            int secondce = listheader.m_baseContCE_;
            int result = this.findInverseCE(ce, secondce);
            if (result < 0) {
                return -1;
            }
            int nextce = ce &= STRENGTH_MASK_[strength];
            int nextcontce = secondce &= STRENGTH_MASK_[strength];
            while ((nextce & STRENGTH_MASK_[strength]) == ce && (nextcontce & STRENGTH_MASK_[strength]) == secondce) {
                nextce = this.m_table_[3 * ++result];
                nextcontce = this.m_table_[3 * result + 1];
            }
            listheader.m_nextCE_ = nextce;
            listheader.m_nextContCE_ = nextcontce;
            return result;
        }
    }

    private static class MaxExpansionTable {
        Vector<Integer> m_endExpansionCE_;
        Vector<Byte> m_expansionCESize_;

        MaxExpansionTable() {
            this.m_endExpansionCE_ = new Vector();
            this.m_expansionCESize_ = new Vector();
            this.m_endExpansionCE_.add(new Integer(0));
            this.m_expansionCESize_.add(new Byte(0));
        }

        MaxExpansionTable(MaxExpansionTable table) {
            this.m_endExpansionCE_ = new Vector<Integer>(table.m_endExpansionCE_);
            this.m_expansionCESize_ = new Vector<Byte>(table.m_expansionCESize_);
        }
    }

    private static class MaxJamoExpansionTable {
        Vector<Integer> m_endExpansionCE_;
        Vector<Boolean> m_isV_;
        byte m_maxLSize_;
        byte m_maxVSize_;
        byte m_maxTSize_;

        MaxJamoExpansionTable() {
            this.m_endExpansionCE_ = new Vector();
            this.m_isV_ = new Vector();
            this.m_endExpansionCE_.add(new Integer(0));
            this.m_isV_.add(Boolean.FALSE);
            this.m_maxLSize_ = 1;
            this.m_maxVSize_ = 1;
            this.m_maxTSize_ = 1;
        }

        MaxJamoExpansionTable(MaxJamoExpansionTable table) {
            this.m_endExpansionCE_ = new Vector<Integer>(table.m_endExpansionCE_);
            this.m_isV_ = new Vector<Boolean>(table.m_isV_);
            this.m_maxLSize_ = table.m_maxLSize_;
            this.m_maxVSize_ = table.m_maxVSize_;
            this.m_maxTSize_ = table.m_maxTSize_;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class WeightRange
    implements Comparable<WeightRange> {
        int m_start_;
        int m_end_;
        int m_length_;
        int m_count_;
        int m_length2_;
        int m_count2_;

        @Override
        public int compareTo(WeightRange target) {
            if (this == target) {
                return 0;
            }
            int tstart = target.m_start_;
            if (this.m_start_ == tstart) {
                return 0;
            }
            if (this.m_start_ > tstart) {
                return 1;
            }
            return -1;
        }

        public void clear() {
            this.m_start_ = 0;
            this.m_end_ = 0;
            this.m_length_ = 0;
            this.m_count_ = 0;
            this.m_length2_ = 0;
            this.m_count2_ = 0;
        }

        WeightRange() {
            this.clear();
        }

        WeightRange(WeightRange source) {
            this.m_start_ = source.m_start_;
            this.m_end_ = source.m_end_;
            this.m_length_ = source.m_length_;
            this.m_count_ = source.m_count_;
            this.m_length2_ = source.m_length2_;
            this.m_count2_ = source.m_count2_;
        }
    }
}

