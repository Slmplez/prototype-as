/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CharTrie;
import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.util.VersionInfo;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

final class UCharacterPropertyReader
implements ICUBinary.Authenticate {
    private static final int INDEX_SIZE_ = 16;
    private DataInputStream m_dataInputStream_;
    private int m_propertyOffset_;
    private int m_exceptionOffset_;
    private int m_caseOffset_;
    private int m_additionalOffset_;
    private int m_additionalVectorsOffset_;
    private int m_additionalColumnsCount_;
    private int m_reservedOffset_;
    private byte[] m_unicodeVersion_;
    private static final byte[] DATA_FORMAT_ID_ = new byte[]{85, 80, 114, 111};
    private static final byte[] DATA_FORMAT_VERSION_;

    static {
        byte[] byArray = new byte[4];
        byArray[0] = 6;
        byArray[2] = 5;
        byArray[3] = 2;
        DATA_FORMAT_VERSION_ = byArray;
    }

    public boolean isDataVersionAcceptable(byte[] version) {
        return version[0] == DATA_FORMAT_VERSION_[0] && version[2] == DATA_FORMAT_VERSION_[2] && version[3] == DATA_FORMAT_VERSION_[3];
    }

    protected UCharacterPropertyReader(InputStream inputStream) throws IOException {
        this.m_unicodeVersion_ = ICUBinary.readHeader(inputStream, DATA_FORMAT_ID_, this);
        this.m_dataInputStream_ = new DataInputStream(inputStream);
    }

    protected void read(UCharacterProperty ucharppty) throws IOException {
        int count = 16;
        this.m_propertyOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_exceptionOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_caseOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_additionalOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_additionalVectorsOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_additionalColumnsCount_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_reservedOffset_ = this.m_dataInputStream_.readInt();
        --count;
        this.m_dataInputStream_.skipBytes(12);
        count -= 3;
        ucharppty.m_maxBlockScriptValue_ = this.m_dataInputStream_.readInt();
        --count;
        ucharppty.m_maxJTGValue_ = this.m_dataInputStream_.readInt();
        this.m_dataInputStream_.skipBytes(--count << 2);
        ucharppty.m_trie_ = new CharTrie(this.m_dataInputStream_, null);
        int size = this.m_exceptionOffset_ - this.m_propertyOffset_;
        this.m_dataInputStream_.skipBytes(size * 4);
        size = this.m_caseOffset_ - this.m_exceptionOffset_;
        this.m_dataInputStream_.skipBytes(size * 4);
        size = this.m_additionalOffset_ - this.m_caseOffset_ << 1;
        this.m_dataInputStream_.skipBytes(size * 2);
        if (this.m_additionalColumnsCount_ > 0) {
            ucharppty.m_additionalTrie_ = new CharTrie(this.m_dataInputStream_, null);
            size = this.m_reservedOffset_ - this.m_additionalVectorsOffset_;
            ucharppty.m_additionalVectors_ = new int[size];
            int i = 0;
            while (i < size) {
                ucharppty.m_additionalVectors_[i] = this.m_dataInputStream_.readInt();
                ++i;
            }
        }
        this.m_dataInputStream_.close();
        ucharppty.m_additionalColumnsCount_ = this.m_additionalColumnsCount_;
        ucharppty.m_unicodeVersion_ = VersionInfo.getInstance(this.m_unicodeVersion_[0], this.m_unicodeVersion_[1], this.m_unicodeVersion_[2], this.m_unicodeVersion_[3]);
    }
}

