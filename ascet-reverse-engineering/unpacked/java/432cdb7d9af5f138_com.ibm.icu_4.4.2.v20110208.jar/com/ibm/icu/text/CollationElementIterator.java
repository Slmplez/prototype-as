/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.CharacterIteratorWrapper;
import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.impl.Norm2AllModes;
import com.ibm.icu.impl.Normalizer2Impl;
import com.ibm.icu.impl.StringUCharacterIterator;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.RuleBasedCollator;
import com.ibm.icu.text.UCharacterIterator;
import com.ibm.icu.text.UTF16;
import java.text.CharacterIterator;
import java.util.MissingResourceException;

public final class CollationElementIterator {
    public static final int NULLORDER = -1;
    public static final int IGNORABLE = 0;
    boolean m_isCodePointHiragana_;
    int m_FCDStart_;
    int m_CEBufferOffset_;
    int m_CEBufferSize_;
    static final int CE_NOT_FOUND_ = -268435456;
    static final int CE_EXPANSION_TAG_ = 1;
    static final int CE_CONTRACTION_TAG_ = 2;
    static final int CE_DIGIT_TAG_ = 13;
    private boolean m_isForwards_;
    private UCharacterIterator m_source_;
    private int m_bufferOffset_;
    private StringBuilder m_buffer_;
    private int m_FCDLimit_;
    private RuleBasedCollator m_collator_;
    private int[] m_CEBuffer_;
    private static final int CE_BUFFER_INIT_SIZE_ = 512;
    private Backup m_utilSpecialBackUp_;
    private Backup m_utilSpecialEntryBackUp_;
    private Backup m_utilSpecialDiscontiguousBackUp_;
    private StringUCharacterIterator m_srcUtilIter_;
    private StringBuilder m_utilStringBuffer_ = new StringBuilder();
    private StringBuilder m_utilSkippedBuffer_;
    private CollationElementIterator m_utilColEIter_;
    private static final Normalizer2Impl m_nfcImpl_ = Norm2AllModes.getNFCInstance().impl;
    private StringBuilder m_unnormalized_;
    private Normalizer2Impl.ReorderingBuffer m_n2Buffer_;
    private static final int FULL_ZERO_COMBINING_CLASS_FAST_LIMIT_ = 192;
    private static final int LEAD_ZERO_COMBINING_CLASS_FAST_LIMIT_ = 768;
    private static final int LAST_BYTE_MASK_ = 255;
    private static final int SECOND_LAST_BYTE_SHIFT_ = 8;
    private static final int CE_CONTRACTION_ = -234881024;
    private static final int CE_NOT_FOUND_TAG_ = 0;
    private static final int CE_CHARSET_TAG_ = 4;
    private static final int CE_HANGUL_SYLLABLE_TAG_ = 6;
    private static final int CE_LEAD_SURROGATE_TAG_ = 7;
    private static final int CE_TRAIL_SURROGATE_TAG_ = 8;
    private static final int CE_CJK_IMPLICIT_TAG_ = 9;
    private static final int CE_IMPLICIT_TAG_ = 10;
    static final int CE_SPEC_PROC_TAG_ = 11;
    private static final int CE_LONG_PRIMARY_TAG_ = 12;
    private static final int CE_BYTE_COMMON_ = 5;
    private static final int HANGUL_SBASE_ = 44032;
    private static final int HANGUL_LBASE_ = 4352;
    private static final int HANGUL_VBASE_ = 4449;
    private static final int HANGUL_TBASE_ = 4519;
    private static final int HANGUL_VCOUNT_ = 21;
    private static final int HANGUL_TCOUNT_ = 28;
    private static final boolean DEBUG = ICUDebug.enabled("collator");

    public int getOffset() {
        if (this.m_bufferOffset_ != -1) {
            if (this.m_isForwards_) {
                return this.m_FCDLimit_;
            }
            return this.m_FCDStart_;
        }
        return this.m_source_.getIndex();
    }

    public int getMaxExpansion(int ce) {
        int start = 0;
        int limit = this.m_collator_.m_expansionEndCE_.length;
        long unsignedce = (long)ce & 0xFFFFFFFFL;
        while (start < limit - 1) {
            int mid = start + (limit - start >> 1);
            long midce = (long)this.m_collator_.m_expansionEndCE_[mid] & 0xFFFFFFFFL;
            if (unsignedce <= midce) {
                limit = mid;
                continue;
            }
            start = mid;
        }
        int result = 1;
        if (this.m_collator_.m_expansionEndCE_[start] == ce) {
            result = this.m_collator_.m_expansionEndCEMaxSize_[start];
        } else if (limit < this.m_collator_.m_expansionEndCE_.length && this.m_collator_.m_expansionEndCE_[limit] == ce) {
            result = this.m_collator_.m_expansionEndCEMaxSize_[limit];
        } else if ((ce & 0xFFFF) == 192) {
            result = 2;
        }
        return result;
    }

    public void reset() {
        this.m_source_.setToStart();
        this.updateInternalState();
    }

    public int next() {
        int ch_int;
        this.m_isForwards_ = true;
        if (this.m_CEBufferSize_ > 0) {
            if (this.m_CEBufferOffset_ < this.m_CEBufferSize_) {
                return this.m_CEBuffer_[this.m_CEBufferOffset_++];
            }
            this.m_CEBufferSize_ = 0;
            this.m_CEBufferOffset_ = 0;
        }
        if ((ch_int = this.nextChar()) == -1) {
            return -1;
        }
        char ch = (char)ch_int;
        if (this.m_collator_.m_isHiragana4_) {
            this.m_isCodePointHiragana_ = this.m_isCodePointHiragana_ && ch >= '\u3099' && ch <= '\u309c' || ch >= '\u3040' && ch <= '\u309e' && (ch <= '\u3094' || ch >= '\u309d');
        }
        int result = -1;
        if (ch <= '\u00ff') {
            result = this.m_collator_.m_trie_.getLatin1LinearValue(ch);
            if (RuleBasedCollator.isSpecial(result)) {
                result = this.nextSpecial(this.m_collator_, result, ch);
            }
        } else {
            result = this.m_collator_.m_trie_.getLeadValue(ch);
            if (RuleBasedCollator.isSpecial(result)) {
                result = this.nextSpecial(this.m_collator_, result, ch);
            }
            if (result == -268435456 && RuleBasedCollator.UCA_ != null && RuleBasedCollator.isSpecial(result = RuleBasedCollator.UCA_.m_trie_.getLeadValue(ch))) {
                result = this.nextSpecial(RuleBasedCollator.UCA_, result, ch);
            }
        }
        if (result == -268435456) {
            result = this.nextImplicit(ch);
        }
        return result;
    }

    public int previous() {
        int ch_int;
        if (this.m_source_.getIndex() <= 0 && this.m_isForwards_) {
            this.m_source_.setToLimit();
            this.updateInternalState();
        }
        this.m_isForwards_ = false;
        int result = -1;
        if (this.m_CEBufferSize_ > 0) {
            if (this.m_CEBufferOffset_ > 0) {
                return this.m_CEBuffer_[--this.m_CEBufferOffset_];
            }
            this.m_CEBufferSize_ = 0;
            this.m_CEBufferOffset_ = 0;
        }
        if ((ch_int = this.previousChar()) == -1) {
            return -1;
        }
        char ch = (char)ch_int;
        if (this.m_collator_.m_isHiragana4_) {
            boolean bl = this.m_isCodePointHiragana_ = ch >= '\u3040' && ch <= '\u309f';
        }
        if (this.m_collator_.isContractionEnd(ch) && !this.isBackwardsStart()) {
            result = this.previousSpecial(this.m_collator_, -234881024, ch);
        } else {
            result = ch <= '\u00ff' ? this.m_collator_.m_trie_.getLatin1LinearValue(ch) : this.m_collator_.m_trie_.getLeadValue(ch);
            if (RuleBasedCollator.isSpecial(result)) {
                result = this.previousSpecial(this.m_collator_, result, ch);
            }
            if (result == -268435456) {
                if (!this.isBackwardsStart() && this.m_collator_.isContractionEnd(ch)) {
                    result = -234881024;
                } else if (RuleBasedCollator.UCA_ != null) {
                    result = RuleBasedCollator.UCA_.m_trie_.getLeadValue(ch);
                }
                if (RuleBasedCollator.isSpecial(result) && RuleBasedCollator.UCA_ != null) {
                    result = this.previousSpecial(RuleBasedCollator.UCA_, result, ch);
                }
            }
        }
        if (result == -268435456) {
            result = this.previousImplicit(ch);
        }
        return result;
    }

    public static final int primaryOrder(int ce) {
        return (ce & 0xFFFF0000) >>> 16;
    }

    public static final int secondaryOrder(int ce) {
        return (ce & 0xFF00) >> 8;
    }

    public static final int tertiaryOrder(int ce) {
        return ce & 0xFF;
    }

    /*
     * Unable to fully structure code
     */
    public void setOffset(int offset) {
        block8: {
            this.m_source_.setIndex(offset);
            ch_int = this.m_source_.current();
            ch = (char)ch_int;
            if (ch_int == -1 || !this.m_collator_.isUnsafe(ch)) break block8;
            if (!UTF16.isTrailSurrogate(ch)) ** GOTO lbl12
            prevch = (char)this.m_source_.previous();
            if (UTF16.isLeadSurrogate(prevch)) break block8;
            this.m_source_.setIndex(offset);
            break block8;
            while (this.m_collator_.isUnsafe(ch)) {
                ch = (char)this.m_source_.previous();
lbl12:
                // 2 sources

                if (this.m_source_.getIndex() > 0) continue;
            }
            this.updateInternalState();
            prevoffset = 0;
            while (this.m_source_.getIndex() <= offset) {
                prevoffset = this.m_source_.getIndex();
                this.next();
            }
            this.m_source_.setIndex(prevoffset);
        }
        this.updateInternalState();
        offset = this.m_source_.getIndex();
        if (offset == 0) {
            this.m_isForwards_ = false;
        } else if (offset == this.m_source_.getLength()) {
            this.m_isForwards_ = true;
        }
    }

    public void setText(String source) {
        this.m_srcUtilIter_.setText(source);
        this.m_source_ = this.m_srcUtilIter_;
        this.updateInternalState();
    }

    public void setText(UCharacterIterator source) {
        this.m_srcUtilIter_.setText(source.getText());
        this.m_source_ = this.m_srcUtilIter_;
        this.updateInternalState();
    }

    public void setText(CharacterIterator source) {
        this.m_source_ = new CharacterIteratorWrapper(source);
        this.m_source_.setToStart();
        this.updateInternalState();
    }

    public boolean equals(Object that) {
        if (that == this) {
            return true;
        }
        if (that instanceof CollationElementIterator) {
            CollationElementIterator thatceiter = (CollationElementIterator)that;
            if (!this.m_collator_.equals(thatceiter.m_collator_)) {
                return false;
            }
            return this.m_source_.getIndex() == thatceiter.m_source_.getIndex() && this.m_source_.getText().equals(thatceiter.m_source_.getText());
        }
        return false;
    }

    private CollationElementIterator(RuleBasedCollator collator) {
        this.m_collator_ = collator;
        this.m_CEBuffer_ = new int[512];
        this.m_buffer_ = new StringBuilder();
        this.m_utilSpecialBackUp_ = new Backup();
        m_nfcImpl_.getFCDTrie();
    }

    CollationElementIterator(String source, RuleBasedCollator collator) {
        this(collator);
        this.m_srcUtilIter_ = new StringUCharacterIterator(source);
        this.m_source_ = this.m_srcUtilIter_;
        this.updateInternalState();
    }

    CollationElementIterator(CharacterIterator source, RuleBasedCollator collator) {
        this(collator);
        this.m_srcUtilIter_ = new StringUCharacterIterator();
        this.m_source_ = new CharacterIteratorWrapper(source);
        this.updateInternalState();
    }

    CollationElementIterator(UCharacterIterator source, RuleBasedCollator collator) {
        this(collator);
        this.m_srcUtilIter_ = new StringUCharacterIterator();
        this.m_srcUtilIter_.setText(source.getText());
        this.m_source_ = this.m_srcUtilIter_;
        this.updateInternalState();
    }

    void setCollator(RuleBasedCollator collator) {
        this.m_collator_ = collator;
        this.updateInternalState();
    }

    void setExactOffset(int offset) {
        this.m_source_.setIndex(offset);
        this.updateInternalState();
    }

    boolean isInBuffer() {
        return this.m_bufferOffset_ > 0;
    }

    void setText(UCharacterIterator source, int offset) {
        this.m_srcUtilIter_.setText(source.getText());
        this.m_source_ = this.m_srcUtilIter_;
        this.m_source_.setIndex(offset);
        this.updateInternalState();
    }

    private void updateInternalState() {
        this.m_isCodePointHiragana_ = false;
        this.m_buffer_.setLength(0);
        this.m_bufferOffset_ = -1;
        this.m_CEBufferOffset_ = 0;
        this.m_CEBufferSize_ = 0;
        this.m_FCDLimit_ = -1;
        this.m_FCDStart_ = this.m_source_.getLength();
        this.m_isForwards_ = true;
    }

    private void backupInternalState(Backup backup) {
        backup.m_offset_ = this.m_source_.getIndex();
        backup.m_FCDLimit_ = this.m_FCDLimit_;
        backup.m_FCDStart_ = this.m_FCDStart_;
        backup.m_isCodePointHiragana_ = this.m_isCodePointHiragana_;
        backup.m_bufferOffset_ = this.m_bufferOffset_;
        backup.m_buffer_.setLength(0);
        if (this.m_bufferOffset_ >= 0) {
            backup.m_buffer_.append((CharSequence)this.m_buffer_);
        }
    }

    private void updateInternalState(Backup backup) {
        this.m_source_.setIndex(backup.m_offset_);
        this.m_isCodePointHiragana_ = backup.m_isCodePointHiragana_;
        this.m_bufferOffset_ = backup.m_bufferOffset_;
        this.m_FCDLimit_ = backup.m_FCDLimit_;
        this.m_FCDStart_ = backup.m_FCDStart_;
        this.m_buffer_.setLength(0);
        if (this.m_bufferOffset_ >= 0) {
            this.m_buffer_.append(backup.m_buffer_);
        }
    }

    private int getCombiningClass(int ch) {
        if (ch >= 768 && this.m_collator_.isUnsafe((char)ch) || ch > 65535) {
            return m_nfcImpl_.getCC(m_nfcImpl_.getNorm16(ch));
        }
        return 0;
    }

    private void normalize() {
        if (this.m_unnormalized_ == null) {
            this.m_unnormalized_ = new StringBuilder();
            this.m_n2Buffer_ = new Normalizer2Impl.ReorderingBuffer(m_nfcImpl_, this.m_buffer_, 10);
        } else {
            this.m_unnormalized_.setLength(0);
            this.m_n2Buffer_.remove();
        }
        int size = this.m_FCDLimit_ - this.m_FCDStart_;
        this.m_source_.setIndex(this.m_FCDStart_);
        int i = 0;
        while (i < size) {
            this.m_unnormalized_.append((char)this.m_source_.next());
            ++i;
        }
        m_nfcImpl_.decomposeShort(this.m_unnormalized_, 0, size, this.m_n2Buffer_);
    }

    private boolean FCDCheck(int ch, int offset) {
        int prevTrailCC;
        boolean result = true;
        this.m_FCDStart_ = offset - 1;
        this.m_source_.setIndex(offset);
        int fcd = m_nfcImpl_.getFCD16FromSingleLead((char)ch);
        if (fcd != 0 && Character.isHighSurrogate((char)ch)) {
            int c2 = this.m_source_.next();
            if (c2 < 0) {
                fcd = 0;
            } else if (Character.isLowSurrogate((char)c2)) {
                fcd = m_nfcImpl_.getFCD16(Character.toCodePoint((char)ch, (char)c2));
            } else {
                this.m_source_.moveIndex(-1);
                fcd = 0;
            }
        }
        if ((prevTrailCC = fcd & 0xFF) == 0) {
            offset = this.m_source_.getIndex();
        } else {
            while (true) {
                if ((ch = this.m_source_.nextCodePoint()) < 0) {
                    offset = this.m_source_.getIndex();
                    break;
                }
                fcd = m_nfcImpl_.getFCD16(ch);
                int leadCC = fcd >> 8;
                if (leadCC == 0) {
                    offset = this.m_source_.getIndex() - Character.charCount(ch);
                    break;
                }
                if (leadCC < prevTrailCC) {
                    result = false;
                }
                prevTrailCC = fcd & 0xFF;
            }
        }
        this.m_FCDLimit_ = offset;
        this.m_source_.setIndex(this.m_FCDStart_ + 1);
        return result;
    }

    private int nextChar() {
        int next;
        if (this.m_bufferOffset_ >= 0) {
            if (this.m_bufferOffset_ >= this.m_buffer_.length()) {
                this.m_source_.setIndex(this.m_FCDLimit_);
                this.m_bufferOffset_ = -1;
                this.m_buffer_.setLength(0);
                return this.nextChar();
            }
            return this.m_buffer_.charAt(this.m_bufferOffset_++);
        }
        int result = this.m_source_.next();
        int startoffset = this.m_source_.getIndex();
        if (result < 192 || this.m_collator_.getDecomposition() == 16 || this.m_bufferOffset_ >= 0 || this.m_FCDLimit_ >= startoffset) {
            return result;
        }
        if (result < 768 && ((next = this.m_source_.current()) == -1 || next < 768)) {
            return result;
        }
        if (!this.FCDCheck(result, startoffset)) {
            this.normalize();
            result = this.m_buffer_.charAt(0);
            this.m_bufferOffset_ = 1;
        }
        return result;
    }

    private void normalizeBackwards() {
        this.normalize();
        this.m_bufferOffset_ = this.m_buffer_.length();
    }

    private boolean FCDCheckBackwards(int ch, int offset) {
        boolean result;
        block9: {
            int fcd;
            this.m_FCDLimit_ = offset + 1;
            this.m_source_.setIndex(offset);
            if (!UTF16.isSurrogate((char)ch)) {
                fcd = m_nfcImpl_.getFCD16FromSingleLead((char)ch);
            } else {
                int c2;
                fcd = 0;
                if (!Normalizer2Impl.UTF16Plus.isSurrogateLead(ch) && (c2 = this.m_source_.previous()) >= 0) {
                    if (Character.isHighSurrogate((char)c2)) {
                        ch = Character.toCodePoint((char)c2, (char)ch);
                        fcd = m_nfcImpl_.getFCD16(ch);
                        --offset;
                    } else {
                        this.m_source_.moveIndex(1);
                    }
                }
            }
            result = true;
            if (fcd != 0) {
                while (true) {
                    int leadCC;
                    if ((leadCC = fcd >> 8) == 0 || (ch = this.m_source_.previousCodePoint()) < 0) {
                        offset = this.m_source_.getIndex();
                        break block9;
                    }
                    fcd = m_nfcImpl_.getFCD16(ch);
                    int prevTrailCC = fcd & 0xFF;
                    if (leadCC < prevTrailCC) {
                        result = false;
                        continue;
                    }
                    if (fcd == 0) break;
                }
                offset = this.m_source_.getIndex() + Character.charCount(ch);
            }
        }
        this.m_FCDStart_ = offset;
        this.m_source_.setIndex(this.m_FCDLimit_);
        return result;
    }

    private int previousChar() {
        if (this.m_bufferOffset_ >= 0) {
            --this.m_bufferOffset_;
            if (this.m_bufferOffset_ >= 0) {
                return this.m_buffer_.charAt(this.m_bufferOffset_);
            }
            this.m_buffer_.setLength(0);
            if (this.m_FCDStart_ == 0) {
                this.m_FCDStart_ = -1;
                this.m_source_.setIndex(0);
                return -1;
            }
            this.m_FCDLimit_ = this.m_FCDStart_;
            this.m_source_.setIndex(this.m_FCDStart_);
            return this.previousChar();
        }
        int result = this.m_source_.previous();
        int startoffset = this.m_source_.getIndex();
        if (result < 768 || this.m_collator_.getDecomposition() == 16 || this.m_FCDStart_ <= startoffset || this.m_source_.getIndex() == 0) {
            return result;
        }
        int ch = this.m_source_.previous();
        if (ch < 192) {
            this.m_source_.next();
            return result;
        }
        if (!this.FCDCheckBackwards(result, startoffset)) {
            this.normalizeBackwards();
            --this.m_bufferOffset_;
            result = this.m_buffer_.charAt(this.m_bufferOffset_);
        } else {
            this.m_source_.setIndex(startoffset);
        }
        return result;
    }

    private final boolean isBackwardsStart() {
        return this.m_bufferOffset_ < 0 && this.m_source_.getIndex() == 0 || this.m_bufferOffset_ == 0 && this.m_FCDStart_ <= 0;
    }

    private final boolean isEnd() {
        if (this.m_bufferOffset_ >= 0) {
            if (this.m_bufferOffset_ != this.m_buffer_.length()) {
                return false;
            }
            return this.m_FCDLimit_ == this.m_source_.getLength();
        }
        return this.m_source_.getLength() == this.m_source_.getIndex();
    }

    private final int nextSurrogate(RuleBasedCollator collator, int ce, char trail) {
        if (!UTF16.isTrailSurrogate(trail)) {
            this.updateInternalState(this.m_utilSpecialBackUp_);
            return 0;
        }
        int result = collator.m_trie_.getTrailValue(ce, trail);
        if (result == -268435456) {
            this.updateInternalState(this.m_utilSpecialBackUp_);
        }
        return result;
    }

    private int getExpansionOffset(RuleBasedCollator collator, int ce) {
        return ((ce & 0xFFFFF0) >> 4) - collator.m_expansionOffset_;
    }

    private int getContractionOffset(RuleBasedCollator collator, int ce) {
        return (ce & 0xFFFFFF) - collator.m_contractionOffset_;
    }

    private boolean isSpecialPrefixTag(int ce) {
        return RuleBasedCollator.isSpecial(ce) && RuleBasedCollator.getTag(ce) == 11;
    }

    private int nextSpecialPrefix(RuleBasedCollator collator, int ce, Backup entrybackup) {
        int entryoffset;
        int offset;
        char previous;
        this.backupInternalState(this.m_utilSpecialBackUp_);
        this.updateInternalState(entrybackup);
        this.previousChar();
        do {
            offset = entryoffset = this.getContractionOffset(collator, ce);
            if (this.isBackwardsStart()) {
                ce = collator.m_contractionCE_[offset];
                break;
            }
            previous = (char)this.previousChar();
            while (previous > collator.m_contractionIndex_[offset]) {
                ++offset;
            }
        } while (this.isSpecialPrefixTag(ce = previous == collator.m_contractionIndex_[offset] ? collator.m_contractionCE_[offset] : collator.m_contractionCE_[entryoffset]));
        if (ce != -268435456) {
            this.updateInternalState(this.m_utilSpecialBackUp_);
        } else {
            this.updateInternalState(entrybackup);
        }
        return ce;
    }

    private boolean isContractionTag(int ce) {
        return RuleBasedCollator.isSpecial(ce) && RuleBasedCollator.getTag(ce) == 2;
    }

    private void setDiscontiguous(StringBuilder skipped) {
        if (this.m_bufferOffset_ >= 0) {
            this.m_buffer_.replace(0, this.m_bufferOffset_, skipped.toString());
        } else {
            this.m_FCDLimit_ = this.m_source_.getIndex();
            this.m_buffer_.setLength(0);
            this.m_buffer_.append(skipped.toString());
        }
        this.m_bufferOffset_ = 0;
    }

    private int currentChar() {
        if (this.m_bufferOffset_ < 0) {
            this.m_source_.previous();
            return this.m_source_.next();
        }
        return this.m_buffer_.charAt(this.m_bufferOffset_ - 1);
    }

    private int nextDiscontiguous(RuleBasedCollator collator, int entryoffset) {
        block10: {
            int ce;
            int offset = entryoffset;
            boolean multicontraction = false;
            if (this.m_utilSkippedBuffer_ == null) {
                this.m_utilSkippedBuffer_ = new StringBuilder();
            } else {
                this.m_utilSkippedBuffer_.setLength(0);
            }
            char ch = (char)this.currentChar();
            this.m_utilSkippedBuffer_.append((char)this.currentChar());
            if (this.m_utilSpecialDiscontiguousBackUp_ == null) {
                this.m_utilSpecialDiscontiguousBackUp_ = new Backup();
            }
            this.backupInternalState(this.m_utilSpecialDiscontiguousBackUp_);
            char nextch = ch;
            while (true) {
                ch = nextch;
                int ch_int = this.nextChar();
                nextch = (char)ch_int;
                if (ch_int == -1 || this.getCombiningClass(nextch) == 0) {
                    if (multicontraction) {
                        if (ch_int != -1) {
                            this.previousChar();
                        }
                        this.setDiscontiguous(this.m_utilSkippedBuffer_);
                        return collator.m_contractionCE_[offset];
                    }
                    break block10;
                }
                ++offset;
                while (offset < collator.m_contractionIndex_.length && nextch > collator.m_contractionIndex_[offset]) {
                    ++offset;
                }
                ce = -268435456;
                if (offset >= collator.m_contractionIndex_.length) break block10;
                if (nextch != collator.m_contractionIndex_[offset] || this.getCombiningClass(nextch) == this.getCombiningClass(ch)) {
                    if (this.m_utilSkippedBuffer_.length() != 1 || this.m_utilSkippedBuffer_.charAt(0) != nextch && this.m_bufferOffset_ < 0) {
                        this.m_utilSkippedBuffer_.append(nextch);
                    }
                    offset = entryoffset;
                    continue;
                }
                ce = collator.m_contractionCE_[offset];
                if (ce == -268435456) break block10;
                if (!this.isContractionTag(ce)) break;
                offset = this.getContractionOffset(collator, ce);
                if (collator.m_contractionCE_[offset] == -268435456) continue;
                multicontraction = true;
                this.backupInternalState(this.m_utilSpecialDiscontiguousBackUp_);
            }
            this.setDiscontiguous(this.m_utilSkippedBuffer_);
            return ce;
        }
        this.updateInternalState(this.m_utilSpecialDiscontiguousBackUp_);
        this.previousChar();
        return collator.m_contractionCE_[entryoffset];
    }

    private int nextContraction(RuleBasedCollator collator, int ce) {
        this.backupInternalState(this.m_utilSpecialBackUp_);
        int entryce = collator.m_contractionCE_[this.getContractionOffset(collator, ce)];
        while (true) {
            int entryoffset;
            int offset = entryoffset = this.getContractionOffset(collator, ce);
            if (this.isEnd()) {
                ce = collator.m_contractionCE_[offset];
                if (ce != -268435456) break;
                ce = entryce;
                this.updateInternalState(this.m_utilSpecialBackUp_);
                break;
            }
            int maxCC = collator.m_contractionIndex_[offset] & 0xFF;
            byte allSame = (byte)(collator.m_contractionIndex_[offset] >> 8);
            int ch = this.nextChar();
            ++offset;
            while (ch > collator.m_contractionIndex_[offset]) {
                ++offset;
            }
            if (ch == collator.m_contractionIndex_[offset]) {
                ce = collator.m_contractionCE_[offset];
            } else {
                int sCC;
                int miss = ch;
                if (UTF16.isLeadSurrogate((char)ch)) {
                    miss = UCharacterProperty.getRawSupplementary((char)ch, (char)this.nextChar());
                }
                if (maxCC == 0 || (sCC = this.getCombiningClass(miss)) == 0 || sCC > maxCC || allSame != 0 && sCC == maxCC || this.isEnd()) {
                    this.previousChar();
                    if (miss > 65535) {
                        this.previousChar();
                    }
                    ce = collator.m_contractionCE_[entryoffset];
                } else {
                    char nextch;
                    int ch_int = this.nextChar();
                    if (ch_int != -1) {
                        this.previousChar();
                    }
                    if (this.getCombiningClass(nextch = (char)ch_int) == 0) {
                        this.previousChar();
                        if (miss > 65535) {
                            this.previousChar();
                        }
                        ce = collator.m_contractionCE_[entryoffset];
                    } else {
                        ce = this.nextDiscontiguous(collator, entryoffset);
                    }
                }
            }
            if (ce == -268435456) {
                this.updateInternalState(this.m_utilSpecialBackUp_);
                ce = entryce;
                break;
            }
            if (!this.isContractionTag(ce)) break;
            if (collator.m_contractionCE_[entryoffset] == -268435456) continue;
            entryce = collator.m_contractionCE_[entryoffset];
            this.backupInternalState(this.m_utilSpecialBackUp_);
            if (this.m_utilSpecialBackUp_.m_bufferOffset_ >= 0) {
                --this.m_utilSpecialBackUp_.m_bufferOffset_;
                continue;
            }
            --this.m_utilSpecialBackUp_.m_offset_;
        }
        return ce;
    }

    private int nextLongPrimary(int ce) {
        this.m_CEBuffer_[1] = (ce & 0xFF) << 24 | 0xC0;
        this.m_CEBufferOffset_ = 1;
        this.m_CEBufferSize_ = 2;
        this.m_CEBuffer_[0] = (ce & 0xFFFF00) << 8 | 0x500 | 5;
        return this.m_CEBuffer_[0];
    }

    private int getExpansionCount(int ce) {
        return ce & 0xF;
    }

    private int nextExpansion(RuleBasedCollator collator, int ce) {
        int offset = this.getExpansionOffset(collator, ce);
        this.m_CEBufferSize_ = this.getExpansionCount(ce);
        this.m_CEBufferOffset_ = 1;
        this.m_CEBuffer_[0] = collator.m_expansion_[offset];
        if (this.m_CEBufferSize_ != 0) {
            int i = 1;
            while (i < this.m_CEBufferSize_) {
                this.m_CEBuffer_[i] = collator.m_expansion_[offset + i];
                ++i;
            }
        } else {
            this.m_CEBufferSize_ = 1;
            while (collator.m_expansion_[offset] != 0) {
                this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_expansion_[++offset];
            }
        }
        if (this.m_CEBufferSize_ == 1) {
            this.m_CEBufferSize_ = 0;
            this.m_CEBufferOffset_ = 0;
        }
        return this.m_CEBuffer_[0];
    }

    private int nextDigit(RuleBasedCollator collator, int ce, int cp) {
        if (this.m_collator_.m_isNumericCollation_) {
            int i;
            int endIndex;
            int digIndx;
            boolean nonZeroValReached;
            int trailingZeroIndex;
            block16: {
                int char32;
                int collateVal = 0;
                trailingZeroIndex = 0;
                nonZeroValReached = false;
                this.m_utilStringBuffer_.setLength(3);
                int digVal = UCharacter.digit(cp);
                digIndx = 1;
                do {
                    if (digIndx >= this.m_utilStringBuffer_.length() - 2 << 1) {
                        this.m_utilStringBuffer_.setLength(this.m_utilStringBuffer_.length() << 1);
                    }
                    if (digVal != 0 || nonZeroValReached) {
                        if (digVal != 0 && !nonZeroValReached) {
                            nonZeroValReached = true;
                        }
                        if (digIndx % 2 == 1) {
                            if ((collateVal += digVal) == 0 && trailingZeroIndex == 0) {
                                trailingZeroIndex = (digIndx - 1 >>> 1) + 2;
                            } else if (trailingZeroIndex != 0) {
                                trailingZeroIndex = 0;
                            }
                            this.m_utilStringBuffer_.setCharAt((digIndx - 1 >>> 1) + 2, (char)((collateVal << 1) + 6));
                            collateVal = 0;
                        } else {
                            collateVal = digVal * 10;
                            this.m_utilStringBuffer_.setCharAt((digIndx >>> 1) + 2, (char)((collateVal << 1) + 6));
                        }
                        ++digIndx;
                    }
                    if (this.isEnd()) break block16;
                    this.backupInternalState(this.m_utilSpecialBackUp_);
                    char32 = this.nextChar();
                    char ch = (char)char32;
                    if (!UTF16.isLeadSurrogate(ch) || this.isEnd()) continue;
                    char trail = (char)this.nextChar();
                    if (UTF16.isTrailSurrogate(trail)) {
                        char32 = UCharacterProperty.getRawSupplementary(ch, trail);
                        continue;
                    }
                    this.goBackOne();
                } while ((digVal = UCharacter.digit(char32)) != -1);
                this.updateInternalState(this.m_utilSpecialBackUp_);
            }
            if (!nonZeroValReached) {
                digIndx = 2;
                this.m_utilStringBuffer_.setCharAt(2, '\u0006');
            }
            int n = endIndex = trailingZeroIndex != 0 ? trailingZeroIndex : (digIndx >>> 1) + 2;
            if (digIndx % 2 != 0) {
                i = 2;
                while (i < endIndex) {
                    this.m_utilStringBuffer_.setCharAt(i, (char)(((this.m_utilStringBuffer_.charAt(i) - 6 >>> 1) % 10 * 10 + (this.m_utilStringBuffer_.charAt(i + 1) - 6 >>> 1) / 10 << 1) + 6));
                    ++i;
                }
                --digIndx;
            }
            this.m_utilStringBuffer_.setCharAt(endIndex - 1, (char)(this.m_utilStringBuffer_.charAt(endIndex - 1) - '\u0001'));
            this.m_utilStringBuffer_.setCharAt(0, '\'');
            this.m_utilStringBuffer_.setCharAt(1, (char)(128 + (digIndx >>> 1 & 0x7F)));
            ce = (this.m_utilStringBuffer_.charAt(0) << 8 | this.m_utilStringBuffer_.charAt(1)) << 16 | 0x500 | 5;
            i = 2;
            this.m_CEBuffer_[0] = ce;
            this.m_CEBufferSize_ = 1;
            this.m_CEBufferOffset_ = 1;
            while (i < endIndex) {
                int primWeight = this.m_utilStringBuffer_.charAt(i++) << 8;
                if (i < endIndex) {
                    primWeight |= this.m_utilStringBuffer_.charAt(i++);
                }
                this.m_CEBuffer_[this.m_CEBufferSize_++] = primWeight << 16 | 0xC0;
            }
            return ce;
        }
        return collator.m_expansion_[this.getExpansionOffset(collator, ce)];
    }

    private int nextImplicit(int codepoint) {
        if (!UCharacter.isLegal(codepoint)) {
            return 0;
        }
        int result = RuleBasedCollator.impCEGen_.getImplicitFromCodePoint(codepoint);
        this.m_CEBuffer_[0] = result & 0xFFFF0000 | 0x505;
        this.m_CEBuffer_[1] = (result & 0xFFFF) << 16 | 0xC0;
        this.m_CEBufferOffset_ = 1;
        this.m_CEBufferSize_ = 2;
        return this.m_CEBuffer_[0];
    }

    private int nextSurrogate(char ch) {
        int ch_int = this.nextChar();
        char nextch = (char)ch_int;
        if (ch_int != 65535 && UTF16.isTrailSurrogate(nextch)) {
            int codepoint = UCharacterProperty.getRawSupplementary(ch, nextch);
            return this.nextImplicit(codepoint);
        }
        if (nextch != '\uffff') {
            this.previousChar();
        }
        return 0;
    }

    private int nextHangul(RuleBasedCollator collator, char ch) {
        char L = (char)(ch - 44032);
        char T = (char)(L % 28);
        L = (char)(L / 28);
        char V = (char)(L % 21);
        L = (char)(L / 21);
        L = (char)(L + 4352);
        V = (char)(V + 4449);
        T = (char)(T + 4519);
        this.m_CEBufferSize_ = 0;
        if (!collator.m_isJamoSpecial_) {
            this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(L);
            this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(V);
            if (T != '\u11a7') {
                this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(T);
            }
            this.m_CEBufferOffset_ = 1;
            return this.m_CEBuffer_[0];
        }
        this.m_buffer_.append(L);
        this.m_buffer_.append(V);
        if (T != '\u11a7') {
            this.m_buffer_.append(T);
        }
        this.m_FCDLimit_ = this.m_source_.getIndex();
        this.m_FCDStart_ = this.m_FCDLimit_ - 1;
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int nextSpecial(RuleBasedCollator collator, int ce, char ch) {
        int codepoint = ch;
        Backup entrybackup = this.m_utilSpecialEntryBackUp_;
        if (entrybackup != null) {
            this.m_utilSpecialEntryBackUp_ = null;
        } else {
            entrybackup = new Backup();
        }
        this.backupInternalState(entrybackup);
        try {
            do {
                switch (RuleBasedCollator.getTag(ce)) {
                    case 0: {
                        int n = ce;
                        return n;
                    }
                    case 5: {
                        if (this.isEnd()) {
                            return 0;
                        }
                        this.backupInternalState(this.m_utilSpecialBackUp_);
                        char trail = (char)this.nextChar();
                        ce = this.nextSurrogate(collator, ce, trail);
                        codepoint = UCharacterProperty.getRawSupplementary((char)ch, trail);
                        break;
                    }
                    case 11: {
                        ce = this.nextSpecialPrefix(collator, ce, entrybackup);
                        break;
                    }
                    case 2: {
                        ce = this.nextContraction(collator, ce);
                        break;
                    }
                    case 12: {
                        int n = this.nextLongPrimary(ce);
                        return n;
                    }
                    case 1: {
                        int n = this.nextExpansion(collator, ce);
                        return n;
                    }
                    case 13: {
                        ce = this.nextDigit(collator, ce, codepoint);
                        break;
                    }
                    case 9: {
                        int n = this.nextImplicit(codepoint);
                        return n;
                    }
                    case 10: {
                        int n = this.nextImplicit(codepoint);
                        return n;
                    }
                    case 8: {
                        return 0;
                    }
                    case 7: {
                        int n = this.nextSurrogate((char)ch);
                        return n;
                    }
                    case 6: {
                        int n = this.nextHangul(collator, (char)ch);
                        return n;
                    }
                    case 4: {
                        return -268435456;
                    }
                    default: {
                        ce = 0;
                    }
                }
            } while (RuleBasedCollator.isSpecial(ce));
            return ce;
        }
        finally {
            this.m_utilSpecialEntryBackUp_ = entrybackup;
        }
    }

    private int previousSpecialPrefix(RuleBasedCollator collator, int ce) {
        this.backupInternalState(this.m_utilSpecialBackUp_);
        while (true) {
            int offset;
            int entryoffset = offset = this.getContractionOffset(collator, ce);
            if (this.isBackwardsStart()) {
                ce = collator.m_contractionCE_[offset];
                break;
            }
            char prevch = (char)this.previousChar();
            while (prevch > collator.m_contractionIndex_[offset]) {
                ++offset;
            }
            if (prevch == collator.m_contractionIndex_[offset]) {
                ce = collator.m_contractionCE_[offset];
            } else {
                int isZeroCE = collator.m_trie_.getLeadValue(prevch);
                if (isZeroCE == 0) continue;
                if (UTF16.isTrailSurrogate(prevch) || UTF16.isLeadSurrogate(prevch)) {
                    if (this.isBackwardsStart()) continue;
                    char lead = (char)this.previousChar();
                    if (UTF16.isLeadSurrogate(lead)) {
                        int finalCE;
                        isZeroCE = collator.m_trie_.getLeadValue(lead);
                        if (RuleBasedCollator.getTag(isZeroCE) == 5 && (finalCE = collator.m_trie_.getTrailValue(isZeroCE, prevch)) == 0) {
                            continue;
                        }
                    } else {
                        this.nextChar();
                        continue;
                    }
                    this.nextChar();
                }
                ce = collator.m_contractionCE_[entryoffset];
            }
            if (!this.isSpecialPrefixTag(ce)) break;
        }
        this.updateInternalState(this.m_utilSpecialBackUp_);
        return ce;
    }

    private int previousContraction(RuleBasedCollator collator, int ce, char ch) {
        this.m_utilStringBuffer_.setLength(0);
        char prevch = (char)this.previousChar();
        boolean atStart = false;
        while (collator.isUnsafe(ch)) {
            this.m_utilStringBuffer_.insert(0, ch);
            ch = prevch;
            if (this.isBackwardsStart()) {
                atStart = true;
                break;
            }
            prevch = (char)this.previousChar();
        }
        if (!atStart) {
            this.nextChar();
        }
        this.m_utilStringBuffer_.insert(0, ch);
        int originaldecomp = collator.getDecomposition();
        collator.setDecomposition(16);
        if (this.m_utilColEIter_ == null) {
            this.m_utilColEIter_ = new CollationElementIterator(this.m_utilStringBuffer_.toString(), collator);
        } else {
            this.m_utilColEIter_.m_collator_ = collator;
            this.m_utilColEIter_.setText(this.m_utilStringBuffer_.toString());
        }
        ce = this.m_utilColEIter_.next();
        this.m_CEBufferSize_ = 0;
        while (ce != -1) {
            if (this.m_CEBufferSize_ == this.m_CEBuffer_.length) {
                try {
                    int[] tempbuffer = new int[this.m_CEBuffer_.length + 50];
                    System.arraycopy(this.m_CEBuffer_, 0, tempbuffer, 0, this.m_CEBuffer_.length);
                    this.m_CEBuffer_ = tempbuffer;
                }
                catch (MissingResourceException e) {
                    throw e;
                }
                catch (Exception e) {
                    if (DEBUG) {
                        e.printStackTrace();
                    }
                    return -1;
                }
            }
            this.m_CEBuffer_[this.m_CEBufferSize_++] = ce;
            ce = this.m_utilColEIter_.next();
        }
        collator.setDecomposition(originaldecomp);
        this.m_CEBufferOffset_ = this.m_CEBufferSize_ - 1;
        return this.m_CEBuffer_[this.m_CEBufferOffset_];
    }

    private int previousLongPrimary(int ce) {
        this.m_CEBufferSize_ = 0;
        this.m_CEBuffer_[this.m_CEBufferSize_++] = (ce & 0xFFFF00) << 8 | 0x500 | 5;
        this.m_CEBuffer_[this.m_CEBufferSize_++] = (ce & 0xFF) << 24 | 0xC0;
        this.m_CEBufferOffset_ = this.m_CEBufferSize_ - 1;
        return this.m_CEBuffer_[this.m_CEBufferOffset_];
    }

    /*
     * Unable to fully structure code
     */
    private int previousExpansion(RuleBasedCollator collator, int ce) {
        block2: {
            offset = this.getExpansionOffset(collator, ce);
            this.m_CEBufferSize_ = this.getExpansionCount(ce);
            if (this.m_CEBufferSize_ == 0) ** GOTO lbl12
            i = 0;
            while (i < this.m_CEBufferSize_) {
                this.m_CEBuffer_[i] = collator.m_expansion_[offset + i];
                ++i;
            }
            break block2;
lbl-1000:
            // 1 sources

            {
                this.m_CEBuffer_[this.m_CEBufferSize_] = collator.m_expansion_[offset + this.m_CEBufferSize_];
                ++this.m_CEBufferSize_;
lbl12:
                // 2 sources

                ** while (collator.m_expansion_[offset + this.m_CEBufferSize_] != 0)
            }
        }
        this.m_CEBufferOffset_ = this.m_CEBufferSize_ - 1;
        return this.m_CEBuffer_[this.m_CEBufferOffset_];
    }

    private int previousDigit(RuleBasedCollator collator, int ce, char ch) {
        if (this.m_collator_.m_isNumericCollation_) {
            int digIndx;
            boolean nonZeroValReached;
            int collateVal;
            int leadingZeroIndex;
            block20: {
                leadingZeroIndex = 0;
                collateVal = 0;
                nonZeroValReached = false;
                this.m_utilStringBuffer_.setLength(3);
                int char32 = ch;
                if (UTF16.isTrailSurrogate((char)ch) && !this.isBackwardsStart()) {
                    char lead = (char)this.previousChar();
                    if (UTF16.isLeadSurrogate(lead)) {
                        char32 = UCharacterProperty.getRawSupplementary(lead, (char)ch);
                    } else {
                        this.goForwardOne();
                    }
                }
                int digVal = UCharacter.digit(char32);
                digIndx = 0;
                do {
                    if (digIndx >= this.m_utilStringBuffer_.length() - 2 << 1) {
                        this.m_utilStringBuffer_.setLength(this.m_utilStringBuffer_.length() << 1);
                    }
                    if (digVal != 0 || nonZeroValReached) {
                        if (digVal != 0 && !nonZeroValReached) {
                            nonZeroValReached = true;
                        }
                        if (digIndx % 2 == 1) {
                            if ((collateVal += digVal * 10) == 0 && leadingZeroIndex == 0) {
                                leadingZeroIndex = (digIndx - 1 >>> 1) + 2;
                            } else if (leadingZeroIndex != 0) {
                                leadingZeroIndex = 0;
                            }
                            this.m_utilStringBuffer_.setCharAt((digIndx - 1 >>> 1) + 2, (char)((collateVal << 1) + 6));
                            collateVal = 0;
                        } else {
                            collateVal = digVal;
                        }
                    }
                    ++digIndx;
                    if (this.isBackwardsStart()) break block20;
                    this.backupInternalState(this.m_utilSpecialBackUp_);
                    char32 = this.previousChar();
                    if (!UTF16.isTrailSurrogate((char)ch) || this.isBackwardsStart()) continue;
                    char lead = (char)this.previousChar();
                    if (UTF16.isLeadSurrogate(lead)) {
                        char32 = UCharacterProperty.getRawSupplementary(lead, (char)ch);
                        continue;
                    }
                    this.updateInternalState(this.m_utilSpecialBackUp_);
                } while ((digVal = UCharacter.digit(char32)) != -1);
                this.updateInternalState(this.m_utilSpecialBackUp_);
            }
            if (!nonZeroValReached) {
                digIndx = 2;
                this.m_utilStringBuffer_.setCharAt(2, '\u0006');
            }
            if (digIndx % 2 != 0) {
                if (collateVal == 0 && leadingZeroIndex == 0) {
                    leadingZeroIndex = (digIndx - 1 >>> 1) + 2;
                } else {
                    this.m_utilStringBuffer_.setCharAt((digIndx >>> 1) + 2, (char)((collateVal << 1) + 6));
                    ++digIndx;
                }
            }
            int endIndex = leadingZeroIndex != 0 ? leadingZeroIndex : (digIndx >>> 1) + 2;
            digIndx = (endIndex - 2 << 1) + 1;
            this.m_utilStringBuffer_.setCharAt(2, (char)(this.m_utilStringBuffer_.charAt(2) - '\u0001'));
            this.m_utilStringBuffer_.setCharAt(0, '\'');
            this.m_utilStringBuffer_.setCharAt(1, (char)(128 + (digIndx >>> 1 & 0x7F)));
            this.m_CEBufferSize_ = 0;
            this.m_CEBuffer_[this.m_CEBufferSize_++] = (this.m_utilStringBuffer_.charAt(0) << 8 | this.m_utilStringBuffer_.charAt(1)) << 16 | 0x500 | 5;
            int i = endIndex - 1;
            while (i >= 2) {
                int primWeight = this.m_utilStringBuffer_.charAt(i--) << 8;
                if (i >= 2) {
                    primWeight |= this.m_utilStringBuffer_.charAt(i--);
                }
                this.m_CEBuffer_[this.m_CEBufferSize_++] = primWeight << 16 | 0xC0;
            }
            this.m_CEBufferOffset_ = this.m_CEBufferSize_ - 1;
            return this.m_CEBuffer_[this.m_CEBufferOffset_];
        }
        return collator.m_expansion_[this.getExpansionOffset(collator, ce)];
    }

    private int previousHangul(RuleBasedCollator collator, char ch) {
        char L = (char)(ch - 44032);
        char T = (char)(L % 28);
        L = (char)(L / 28);
        char V = (char)(L % 21);
        L = (char)(L / 21);
        L = (char)(L + 4352);
        V = (char)(V + 4449);
        T = (char)(T + 4519);
        this.m_CEBufferSize_ = 0;
        if (!collator.m_isJamoSpecial_) {
            this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(L);
            this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(V);
            if (T != '\u11a7') {
                this.m_CEBuffer_[this.m_CEBufferSize_++] = collator.m_trie_.getLeadValue(T);
            }
            this.m_CEBufferOffset_ = this.m_CEBufferSize_ - 1;
            return this.m_CEBuffer_[this.m_CEBufferOffset_];
        }
        this.m_buffer_.append(L);
        this.m_buffer_.append(V);
        if (T != '\u11a7') {
            this.m_buffer_.append(T);
        }
        this.m_FCDStart_ = this.m_source_.getIndex();
        this.m_FCDLimit_ = this.m_FCDStart_ + 1;
        return 0;
    }

    private int previousImplicit(int codepoint) {
        if (!UCharacter.isLegal(codepoint)) {
            return 0;
        }
        int result = RuleBasedCollator.impCEGen_.getImplicitFromCodePoint(codepoint);
        this.m_CEBufferSize_ = 2;
        this.m_CEBufferOffset_ = 1;
        this.m_CEBuffer_[0] = result & 0xFFFF0000 | 0x505;
        this.m_CEBuffer_[1] = (result & 0xFFFF) << 16 | 0xC0;
        return this.m_CEBuffer_[1];
    }

    private int previousSurrogate(char ch) {
        if (this.isBackwardsStart()) {
            return 0;
        }
        char prevch = (char)this.previousChar();
        if (UTF16.isLeadSurrogate(prevch)) {
            return this.previousImplicit(UCharacterProperty.getRawSupplementary(prevch, ch));
        }
        if (prevch != '\uffff') {
            this.nextChar();
        }
        return 0;
    }

    private int previousSpecial(RuleBasedCollator collator, int ce, char ch) {
        do {
            switch (RuleBasedCollator.getTag(ce)) {
                case 0: {
                    return ce;
                }
                case 5: {
                    return 0;
                }
                case 11: {
                    ce = this.previousSpecialPrefix(collator, ce);
                    break;
                }
                case 2: {
                    if (this.isBackwardsStart()) {
                        ce = collator.m_contractionCE_[this.getContractionOffset(collator, ce)];
                        break;
                    }
                    return this.previousContraction(collator, ce, ch);
                }
                case 12: {
                    return this.previousLongPrimary(ce);
                }
                case 1: {
                    return this.previousExpansion(collator, ce);
                }
                case 13: {
                    ce = this.previousDigit(collator, ce, ch);
                    break;
                }
                case 6: {
                    return this.previousHangul(collator, ch);
                }
                case 7: {
                    return 0;
                }
                case 8: {
                    return this.previousSurrogate(ch);
                }
                case 9: {
                    return this.previousImplicit(ch);
                }
                case 10: {
                    return this.previousImplicit(ch);
                }
                case 4: {
                    return -268435456;
                }
                default: {
                    ce = 0;
                }
            }
        } while (RuleBasedCollator.isSpecial(ce));
        return ce;
    }

    private void goBackOne() {
        if (this.m_bufferOffset_ >= 0) {
            --this.m_bufferOffset_;
        } else {
            this.m_source_.setIndex(this.m_source_.getIndex() - 1);
        }
    }

    private void goForwardOne() {
        if (this.m_bufferOffset_ < 0) {
            this.m_source_.setIndex(this.m_source_.getIndex() + 1);
        } else {
            ++this.m_bufferOffset_;
        }
    }

    private static final class Backup {
        protected int m_FCDLimit_;
        protected int m_FCDStart_;
        protected boolean m_isCodePointHiragana_;
        protected int m_bufferOffset_;
        protected int m_offset_;
        protected StringBuffer m_buffer_ = new StringBuffer();

        protected Backup() {
        }
    }
}

