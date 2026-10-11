/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.Trie;
import com.ibm.icu.impl.UCharacterProperty;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class CharTrie
extends Trie {
    private char m_initialValue_;
    private char[] m_data_;
    private FriendAgent m_friendAgent_;

    public CharTrie(InputStream inputStream, Trie.DataManipulate dataManipulate) throws IOException {
        super(inputStream, dataManipulate);
        if (!this.isCharTrie()) {
            throw new IllegalArgumentException("Data given does not belong to a char trie.");
        }
        this.m_friendAgent_ = new FriendAgent();
    }

    public CharTrie(int initialValue, int leadUnitValue, Trie.DataManipulate dataManipulate) {
        super(new char[2080], 512, dataManipulate);
        int latin1Length = 256;
        int dataLength = 256;
        if (leadUnitValue != initialValue) {
            dataLength += 32;
        }
        this.m_data_ = new char[dataLength];
        this.m_dataLength_ = dataLength;
        this.m_initialValue_ = (char)initialValue;
        int i = 0;
        while (i < latin1Length) {
            this.m_data_[i] = (char)initialValue;
            ++i;
        }
        if (leadUnitValue != initialValue) {
            char block = (char)(latin1Length >> 2);
            i = 1728;
            int limit = 1760;
            while (i < limit) {
                this.m_index_[i] = block;
                ++i;
            }
            limit = latin1Length + 32;
            i = latin1Length;
            while (i < limit) {
                this.m_data_[i] = (char)leadUnitValue;
                ++i;
            }
        }
        this.m_friendAgent_ = new FriendAgent();
    }

    public void putIndexData(UCharacterProperty friend) {
        friend.setIndexData(this.m_friendAgent_);
    }

    public final char getCodePointValue(int ch) {
        if (ch >= 0 && ch < 55296) {
            int offset = (this.m_index_[ch >> 5] << 2) + (ch & 0x1F);
            return this.m_data_[offset];
        }
        int offset = this.getCodePointOffset(ch);
        return offset >= 0 ? this.m_data_[offset] : this.m_initialValue_;
    }

    public final char getLeadValue(char ch) {
        return this.m_data_[this.getLeadOffset(ch)];
    }

    public final char getBMPValue(char ch) {
        return this.m_data_[this.getBMPOffset(ch)];
    }

    public final char getSurrogateValue(char lead, char trail) {
        int offset = this.getSurrogateOffset(lead, trail);
        if (offset > 0) {
            return this.m_data_[offset];
        }
        return this.m_initialValue_;
    }

    public final char getTrailValue(int leadvalue, char trail) {
        if (this.m_dataManipulate_ == null) {
            throw new NullPointerException("The field DataManipulate in this Trie is null");
        }
        int offset = this.m_dataManipulate_.getFoldingOffset(leadvalue);
        if (offset > 0) {
            return this.m_data_[this.getRawOffset(offset, (char)(trail & 0x3FF))];
        }
        return this.m_initialValue_;
    }

    public final char getLatin1LinearValue(char ch) {
        return this.m_data_[32 + this.m_dataOffset_ + ch];
    }

    public boolean equals(Object other) {
        boolean result = super.equals(other);
        if (result && other instanceof CharTrie) {
            CharTrie othertrie = (CharTrie)other;
            return this.m_initialValue_ == othertrie.m_initialValue_;
        }
        return false;
    }

    protected final void unserialize(InputStream inputStream) throws IOException {
        DataInputStream input = new DataInputStream(inputStream);
        int indexDataLength = this.m_dataOffset_ + this.m_dataLength_;
        this.m_index_ = new char[indexDataLength];
        int i = 0;
        while (i < indexDataLength) {
            this.m_index_[i] = input.readChar();
            ++i;
        }
        this.m_data_ = this.m_index_;
        this.m_initialValue_ = this.m_data_[this.m_dataOffset_];
    }

    protected final int getSurrogateOffset(char lead, char trail) {
        if (this.m_dataManipulate_ == null) {
            throw new NullPointerException("The field DataManipulate in this Trie is null");
        }
        int offset = this.m_dataManipulate_.getFoldingOffset(this.getLeadValue(lead));
        if (offset > 0) {
            return this.getRawOffset(offset, (char)(trail & 0x3FF));
        }
        return -1;
    }

    protected final int getValue(int index) {
        return this.m_data_[index];
    }

    protected final int getInitialValue() {
        return this.m_initialValue_;
    }

    public class FriendAgent {
        public char[] getPrivateIndex() {
            return CharTrie.this.m_index_;
        }

        public char[] getPrivateData() {
            return CharTrie.this.m_data_;
        }

        public int getPrivateInitialValue() {
            return CharTrie.this.m_initialValue_;
        }
    }
}

