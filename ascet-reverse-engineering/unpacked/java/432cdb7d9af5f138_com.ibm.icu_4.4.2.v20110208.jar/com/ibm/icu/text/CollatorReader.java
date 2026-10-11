/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.ICUData;
import com.ibm.icu.impl.IntTrie;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.CollationParsedRuleBuilder;
import com.ibm.icu.text.RuleBasedCollator;
import com.ibm.icu.util.VersionInfo;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

final class CollatorReader {
    private static final ICUBinary.Authenticate UCA_AUTHENTICATE_ = new ICUBinary.Authenticate(){

        public boolean isDataVersionAcceptable(byte[] version) {
            return version[0] == DATA_FORMAT_VERSION_[0] && version[1] >= DATA_FORMAT_VERSION_[1];
        }
    };
    private static final ICUBinary.Authenticate INVERSE_UCA_AUTHENTICATE_ = new ICUBinary.Authenticate(){

        public boolean isDataVersionAcceptable(byte[] version) {
            return version[0] == INVERSE_UCA_DATA_FORMAT_VERSION_[0] && version[1] >= INVERSE_UCA_DATA_FORMAT_VERSION_[1];
        }
    };
    private DataInputStream m_dataInputStream_;
    private static final byte[] DATA_FORMAT_VERSION_;
    private static final byte[] DATA_FORMAT_ID_;
    private static final byte[] INVERSE_UCA_DATA_FORMAT_VERSION_;
    private static final byte[] INVERSE_UCA_DATA_FORMAT_ID_;
    private static final String WRONG_UNICODE_VERSION_ERROR_ = "Unicode version in binary image is not compatible with the current Unicode version";
    private int m_expansionSize_;
    private int m_contractionIndexSize_;
    private int m_contractionCESize_;
    private int m_expansionEndCESize_;
    private int m_expansionEndCEMaxSizeSize_;
    private int m_optionSize_;
    private int m_size_;
    private int m_headerSize_;
    private int m_unsafeSize_;
    private int m_contractionEndSize_;
    private int m_UCAValuesSize_;

    static {
        byte[] byArray = new byte[4];
        byArray[0] = 2;
        byArray[1] = 2;
        DATA_FORMAT_VERSION_ = byArray;
        DATA_FORMAT_ID_ = new byte[]{85, 67, 111, 108};
        byte[] byArray2 = new byte[4];
        byArray2[0] = 2;
        byArray2[1] = 1;
        INVERSE_UCA_DATA_FORMAT_VERSION_ = byArray2;
        INVERSE_UCA_DATA_FORMAT_ID_ = new byte[]{73, 110, 118, 67};
    }

    static char[] read(RuleBasedCollator rbc, RuleBasedCollator.UCAConstants ucac) throws IOException {
        InputStream i = ICUData.getRequiredStream("data/icudt44b/coll/ucadata.icu");
        BufferedInputStream b = new BufferedInputStream(i, 90000);
        CollatorReader reader = new CollatorReader(b);
        char[] result = reader.readImp(rbc, ucac);
        b.close();
        return result;
    }

    public static InputStream makeByteBufferInputStream(final ByteBuffer buf) {
        return new InputStream(){

            public int read() throws IOException {
                if (!buf.hasRemaining()) {
                    return -1;
                }
                return buf.get() & 0xFF;
            }

            public int read(byte[] bytes, int off, int len) throws IOException {
                len = Math.min(len, buf.remaining());
                buf.get(bytes, off, len);
                return len;
            }
        };
    }

    static void initRBC(RuleBasedCollator rbc, ByteBuffer data) throws IOException {
        int dataLength = data.remaining();
        CollatorReader reader = new CollatorReader(CollatorReader.makeByteBufferInputStream(data), false);
        if (dataLength > 268) {
            reader.readImp(rbc, null);
        } else {
            reader.readHeader(rbc);
            reader.readOptions(rbc);
            rbc.setWithUCATables();
        }
    }

    static CollationParsedRuleBuilder.InverseUCA getInverseUCA() throws IOException {
        CollationParsedRuleBuilder.InverseUCA result = null;
        InputStream i = ICUData.getRequiredStream("data/icudt44b/coll/invuca.icu");
        BufferedInputStream b = new BufferedInputStream(i, 110000);
        result = CollatorReader.readInverseUCA(b);
        b.close();
        i.close();
        return result;
    }

    private CollatorReader(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    private CollatorReader(InputStream inputStream, boolean readICUHeader) throws IOException {
        VersionInfo UCDVersion;
        byte[] UnicodeVersion;
        if (readICUHeader && ((UnicodeVersion = ICUBinary.readHeader(inputStream, DATA_FORMAT_ID_, UCA_AUTHENTICATE_))[0] != (UCDVersion = UCharacter.getUnicodeVersion()).getMajor() || UnicodeVersion[1] != UCDVersion.getMinor())) {
            throw new IOException(WRONG_UNICODE_VERSION_ERROR_);
        }
        this.m_dataInputStream_ = new DataInputStream(inputStream);
    }

    private void readHeader(RuleBasedCollator rbc) throws IOException {
        this.m_size_ = this.m_dataInputStream_.readInt();
        this.m_headerSize_ = this.m_dataInputStream_.readInt();
        int readcount = 8;
        int UCAConst = this.m_dataInputStream_.readInt();
        readcount += 4;
        this.m_dataInputStream_.skip(4L);
        readcount += 4;
        this.m_dataInputStream_.skipBytes(4);
        readcount += 4;
        int mapping = this.m_dataInputStream_.readInt();
        readcount += 4;
        rbc.m_expansionOffset_ = this.m_dataInputStream_.readInt();
        readcount += 4;
        rbc.m_contractionOffset_ = this.m_dataInputStream_.readInt();
        readcount += 4;
        int contractionCE = this.m_dataInputStream_.readInt();
        readcount += 4;
        this.m_dataInputStream_.readInt();
        readcount += 4;
        int expansionEndCE = this.m_dataInputStream_.readInt();
        readcount += 4;
        int expansionEndCEMaxSize = this.m_dataInputStream_.readInt();
        readcount += 4;
        this.m_dataInputStream_.skipBytes(4);
        readcount += 4;
        int unsafe = this.m_dataInputStream_.readInt();
        readcount += 4;
        int contractionEnd = this.m_dataInputStream_.readInt();
        readcount += 4;
        this.m_dataInputStream_.skipBytes(4);
        readcount += 4;
        rbc.m_isJamoSpecial_ = this.m_dataInputStream_.readBoolean();
        ++readcount;
        this.m_dataInputStream_.skipBytes(3);
        readcount += 3;
        rbc.m_version_ = CollatorReader.readVersion(this.m_dataInputStream_);
        readcount += 4;
        rbc.m_UCA_version_ = CollatorReader.readVersion(this.m_dataInputStream_);
        readcount += 4;
        rbc.m_UCD_version_ = CollatorReader.readVersion(this.m_dataInputStream_);
        readcount += 4;
        this.m_dataInputStream_.skipBytes(32);
        readcount += 32;
        this.m_dataInputStream_.skipBytes(56);
        if (this.m_headerSize_ < (readcount += 56)) {
            throw new IOException("Internal Error: Header size error");
        }
        this.m_dataInputStream_.skipBytes(this.m_headerSize_ - readcount);
        if (rbc.m_contractionOffset_ == 0) {
            rbc.m_contractionOffset_ = mapping;
            contractionCE = mapping;
        }
        this.m_optionSize_ = rbc.m_expansionOffset_ - this.m_headerSize_;
        this.m_expansionSize_ = rbc.m_contractionOffset_ - rbc.m_expansionOffset_;
        this.m_contractionIndexSize_ = contractionCE - rbc.m_contractionOffset_;
        this.m_contractionCESize_ = mapping - contractionCE;
        this.m_expansionEndCESize_ = expansionEndCEMaxSize - expansionEndCE;
        this.m_expansionEndCEMaxSizeSize_ = unsafe - expansionEndCEMaxSize;
        this.m_unsafeSize_ = contractionEnd - unsafe;
        this.m_UCAValuesSize_ = this.m_size_ - UCAConst;
        this.m_contractionEndSize_ = this.m_size_ - contractionEnd;
        rbc.m_contractionOffset_ >>= 1;
        rbc.m_expansionOffset_ >>= 2;
    }

    private void readOptions(RuleBasedCollator rbc) throws IOException {
        int readcount = 0;
        rbc.m_defaultVariableTopValue_ = this.m_dataInputStream_.readInt();
        readcount += 4;
        rbc.m_defaultIsFrenchCollation_ = this.m_dataInputStream_.readInt() == 17;
        readcount += 4;
        rbc.m_defaultIsAlternateHandlingShifted_ = this.m_dataInputStream_.readInt() == 20;
        readcount += 4;
        rbc.m_defaultCaseFirst_ = this.m_dataInputStream_.readInt();
        readcount += 4;
        rbc.m_defaultIsCaseLevel_ = this.m_dataInputStream_.readInt() == 17;
        readcount += 4;
        int value = this.m_dataInputStream_.readInt();
        readcount += 4;
        value = value == 17 ? 17 : 16;
        rbc.m_defaultDecomposition_ = value;
        rbc.m_defaultStrength_ = this.m_dataInputStream_.readInt();
        readcount += 4;
        rbc.m_defaultIsHiragana4_ = this.m_dataInputStream_.readInt() == 17;
        readcount += 4;
        rbc.m_defaultIsNumericCollation_ = this.m_dataInputStream_.readInt() == 17;
        readcount += 4;
        this.m_dataInputStream_.skip(60L);
        this.m_dataInputStream_.skipBytes(this.m_optionSize_ - (readcount += 60));
        if (this.m_optionSize_ < readcount) {
            throw new IOException("Internal Error: Option size error");
        }
    }

    private char[] readImp(RuleBasedCollator rbc, RuleBasedCollator.UCAConstants UCAConst) throws IOException {
        this.readHeader(rbc);
        int readcount = this.m_headerSize_;
        this.readOptions(rbc);
        readcount += this.m_optionSize_;
        this.m_expansionSize_ >>= 2;
        rbc.m_expansion_ = new int[this.m_expansionSize_];
        int i = 0;
        while (i < this.m_expansionSize_) {
            rbc.m_expansion_[i] = this.m_dataInputStream_.readInt();
            ++i;
        }
        readcount += this.m_expansionSize_ << 2;
        if (this.m_contractionIndexSize_ > 0) {
            this.m_contractionIndexSize_ >>= 1;
            rbc.m_contractionIndex_ = new char[this.m_contractionIndexSize_];
            i = 0;
            while (i < this.m_contractionIndexSize_) {
                rbc.m_contractionIndex_[i] = this.m_dataInputStream_.readChar();
                ++i;
            }
            readcount += this.m_contractionIndexSize_ << 1;
            this.m_contractionCESize_ >>= 2;
            rbc.m_contractionCE_ = new int[this.m_contractionCESize_];
            i = 0;
            while (i < this.m_contractionCESize_) {
                rbc.m_contractionCE_[i] = this.m_dataInputStream_.readInt();
                ++i;
            }
            readcount += this.m_contractionCESize_ << 2;
        }
        rbc.m_trie_ = new IntTrie(this.m_dataInputStream_, RuleBasedCollator.DataManipulate.getInstance());
        if (!rbc.m_trie_.isLatin1Linear()) {
            throw new IOException("Data corrupted, Collator Tries expected to have linear latin one data arrays");
        }
        readcount += rbc.m_trie_.getSerializedDataSize();
        this.m_expansionEndCESize_ >>= 2;
        rbc.m_expansionEndCE_ = new int[this.m_expansionEndCESize_];
        i = 0;
        while (i < this.m_expansionEndCESize_) {
            rbc.m_expansionEndCE_[i] = this.m_dataInputStream_.readInt();
            ++i;
        }
        readcount += this.m_expansionEndCESize_ << 2;
        rbc.m_expansionEndCEMaxSize_ = new byte[this.m_expansionEndCEMaxSizeSize_];
        i = 0;
        while (i < this.m_expansionEndCEMaxSizeSize_) {
            rbc.m_expansionEndCEMaxSize_[i] = this.m_dataInputStream_.readByte();
            ++i;
        }
        readcount += this.m_expansionEndCEMaxSizeSize_;
        rbc.m_unsafe_ = new byte[this.m_unsafeSize_];
        i = 0;
        while (i < this.m_unsafeSize_) {
            rbc.m_unsafe_[i] = this.m_dataInputStream_.readByte();
            ++i;
        }
        readcount += this.m_unsafeSize_;
        if (UCAConst != null) {
            this.m_contractionEndSize_ -= this.m_UCAValuesSize_;
        }
        rbc.m_contractionEnd_ = new byte[this.m_contractionEndSize_];
        i = 0;
        while (i < this.m_contractionEndSize_) {
            rbc.m_contractionEnd_[i] = this.m_dataInputStream_.readByte();
            ++i;
        }
        readcount += this.m_contractionEndSize_;
        if (UCAConst != null) {
            UCAConst.FIRST_TERTIARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            int readUCAConstcount = 4;
            UCAConst.FIRST_TERTIARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_TERTIARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_TERTIARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_PRIMARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_PRIMARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_SECONDARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_SECONDARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_SECONDARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_SECONDARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_PRIMARY_IGNORABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_PRIMARY_IGNORABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_VARIABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_VARIABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_VARIABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_VARIABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_NON_VARIABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_NON_VARIABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_NON_VARIABLE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_NON_VARIABLE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.RESET_TOP_VALUE_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.RESET_TOP_VALUE_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_IMPLICIT_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_IMPLICIT_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_IMPLICIT_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_IMPLICIT_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_TRAILING_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.FIRST_TRAILING_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_TRAILING_[0] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.LAST_TRAILING_[1] = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_TOP_MIN_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_IMPLICIT_MIN_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_IMPLICIT_MAX_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_TRAILING_MIN_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_TRAILING_MAX_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_SPECIAL_MIN_ = this.m_dataInputStream_.readInt();
            readUCAConstcount += 4;
            UCAConst.PRIMARY_SPECIAL_MAX_ = this.m_dataInputStream_.readInt();
            int resultsize = this.m_UCAValuesSize_ - (readUCAConstcount += 4) >> 1;
            char[] result = new char[resultsize];
            int i2 = 0;
            while (i2 < resultsize) {
                result[i2] = this.m_dataInputStream_.readChar();
                ++i2;
            }
            if ((readcount += this.m_UCAValuesSize_) != this.m_size_) {
                throw new IOException("Internal Error: Data file size error");
            }
            return result;
        }
        if (readcount != this.m_size_) {
            throw new IOException("Internal Error: Data file size error");
        }
        return null;
    }

    private static CollationParsedRuleBuilder.InverseUCA readInverseUCA(InputStream inputStream) throws IOException {
        VersionInfo UCDVersion;
        byte[] UnicodeVersion = ICUBinary.readHeader(inputStream, INVERSE_UCA_DATA_FORMAT_ID_, INVERSE_UCA_AUTHENTICATE_);
        if (UnicodeVersion[0] != (UCDVersion = UCharacter.getUnicodeVersion()).getMajor() || UnicodeVersion[1] != UCDVersion.getMinor()) {
            throw new IOException(WRONG_UNICODE_VERSION_ERROR_);
        }
        CollationParsedRuleBuilder.InverseUCA result = new CollationParsedRuleBuilder.InverseUCA();
        DataInputStream input = new DataInputStream(inputStream);
        input.readInt();
        int tablesize = input.readInt();
        int contsize = input.readInt();
        input.readInt();
        input.readInt();
        result.m_UCA_version_ = CollatorReader.readVersion(input);
        input.skipBytes(8);
        int size = tablesize * 3;
        result.m_table_ = new int[size];
        result.m_continuations_ = new char[contsize];
        int i = 0;
        while (i < size) {
            result.m_table_[i] = input.readInt();
            ++i;
        }
        i = 0;
        while (i < contsize) {
            result.m_continuations_[i] = input.readChar();
            ++i;
        }
        input.close();
        return result;
    }

    protected static VersionInfo readVersion(DataInputStream input) throws IOException {
        byte[] version = new byte[]{input.readByte(), input.readByte(), input.readByte(), input.readByte()};
        VersionInfo result = VersionInfo.getInstance(version[0], version[1], version[2], version[3]);
        return result;
    }
}

