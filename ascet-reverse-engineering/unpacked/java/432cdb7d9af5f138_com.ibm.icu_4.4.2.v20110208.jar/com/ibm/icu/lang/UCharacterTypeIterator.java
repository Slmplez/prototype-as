/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.lang;

import com.ibm.icu.impl.TrieIterator;
import com.ibm.icu.impl.UCharacterProperty;

class UCharacterTypeIterator
extends TrieIterator {
    protected UCharacterTypeIterator(UCharacterProperty property) {
        super(property.m_trie_);
    }

    protected int extract(int value) {
        return value & 0x1F;
    }
}

