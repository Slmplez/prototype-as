/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.UCharacterName;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

final class UCharacterNameReader
implements ICUBinary.Authenticate {
    private DataInputStream m_dataInputStream_;
    private static final int GROUP_INFO_SIZE_ = 3;
    private int m_tokenstringindex_;
    private int m_groupindex_;
    private int m_groupstringindex_;
    private int m_algnamesindex_;
    private static final int ALG_INFO_SIZE_ = 12;
    private static final byte[] DATA_FORMAT_VERSION_;
    private static final byte[] DATA_FORMAT_ID_;

    static {
        byte[] byArray = new byte[4];
        byArray[0] = 1;
        DATA_FORMAT_VERSION_ = byArray;
        DATA_FORMAT_ID_ = new byte[]{117, 110, 97, 109};
    }

    public boolean isDataVersionAcceptable(byte[] version) {
        return version[0] == DATA_FORMAT_VERSION_[0];
    }

    protected UCharacterNameReader(InputStream inputStream) throws IOException {
        ICUBinary.readHeader(inputStream, DATA_FORMAT_ID_, this);
        this.m_dataInputStream_ = new DataInputStream(inputStream);
    }

    protected void read(UCharacterName data) throws IOException {
        this.m_tokenstringindex_ = this.m_dataInputStream_.readInt();
        this.m_groupindex_ = this.m_dataInputStream_.readInt();
        this.m_groupstringindex_ = this.m_dataInputStream_.readInt();
        this.m_algnamesindex_ = this.m_dataInputStream_.readInt();
        int count = this.m_dataInputStream_.readChar();
        char[] token = new char[count];
        int i = 0;
        while (i < count) {
            token[i] = this.m_dataInputStream_.readChar();
            i = (char)(i + '\u0001');
        }
        int size = this.m_groupindex_ - this.m_tokenstringindex_;
        byte[] tokenstr = new byte[size];
        this.m_dataInputStream_.readFully(tokenstr);
        data.setToken(token, tokenstr);
        count = this.m_dataInputStream_.readChar();
        data.setGroupCountSize(count, 3);
        char[] group = new char[count *= 3];
        int i2 = 0;
        while (i2 < count) {
            group[i2] = this.m_dataInputStream_.readChar();
            ++i2;
        }
        size = this.m_algnamesindex_ - this.m_groupstringindex_;
        byte[] groupstring = new byte[size];
        this.m_dataInputStream_.readFully(groupstring);
        data.setGroup(group, groupstring);
        count = this.m_dataInputStream_.readInt();
        UCharacterName.AlgorithmName[] alg = new UCharacterName.AlgorithmName[count];
        int i3 = 0;
        while (i3 < count) {
            UCharacterName.AlgorithmName an = this.readAlg();
            if (an == null) {
                throw new IOException("unames.icu read error: Algorithmic names creation error");
            }
            alg[i3] = an;
            ++i3;
        }
        data.setAlgorithm(alg);
    }

    protected boolean authenticate(byte[] dataformatid, byte[] dataformatversion) {
        return Arrays.equals(DATA_FORMAT_ID_, dataformatid) && Arrays.equals(DATA_FORMAT_VERSION_, dataformatversion);
    }

    private UCharacterName.AlgorithmName readAlg() throws IOException {
        int variant;
        byte type;
        int rangeend;
        UCharacterName.AlgorithmName result = new UCharacterName.AlgorithmName();
        int rangestart = this.m_dataInputStream_.readInt();
        if (!result.setInfo(rangestart, rangeend = this.m_dataInputStream_.readInt(), type = this.m_dataInputStream_.readByte(), (byte)(variant = this.m_dataInputStream_.readByte()))) {
            return null;
        }
        int size = this.m_dataInputStream_.readChar();
        if (type == 1) {
            char[] factor = new char[variant];
            int j = 0;
            while (j < variant) {
                factor[j] = this.m_dataInputStream_.readChar();
                ++j;
            }
            result.setFactor(factor);
            size -= variant << 1;
        }
        StringBuilder prefix = new StringBuilder();
        char c = (char)(this.m_dataInputStream_.readByte() & 0xFF);
        while (c != '\u0000') {
            prefix.append(c);
            c = (char)(this.m_dataInputStream_.readByte() & 0xFF);
        }
        result.setPrefix(prefix.toString());
        if ((size -= 12 + prefix.length() + 1) > 0) {
            byte[] string = new byte[size];
            this.m_dataInputStream_.readFully(string);
            result.setFactorString(string);
        }
        return result;
    }
}

