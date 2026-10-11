/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Norm2AllModes;
import com.ibm.icu.impl.Normalizer2Impl;
import com.ibm.icu.text.Normalizer2;
import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.Transliterator;

final class NormalizationTransliterator
extends Transliterator {
    private final Normalizer2 norm2;

    static void register() {
        Transliterator.registerFactory("Any-NFC", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("NFC", Norm2AllModes.getNFCInstance().comp, null);
            }
        });
        Transliterator.registerFactory("Any-NFD", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("NFD", Norm2AllModes.getNFCInstance().decomp, null);
            }
        });
        Transliterator.registerFactory("Any-NFKC", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("NFKC", Norm2AllModes.getNFKCInstance().comp, null);
            }
        });
        Transliterator.registerFactory("Any-NFKD", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("NFKD", Norm2AllModes.getNFKCInstance().decomp, null);
            }
        });
        Transliterator.registerFactory("Any-FCD", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("FCD", Norm2AllModes.getFCDNormalizer2(), null);
            }
        });
        Transliterator.registerFactory("Any-FCC", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new NormalizationTransliterator("FCC", Norm2AllModes.getNFCInstance().fcc, null);
            }
        });
        Transliterator.registerSpecialInverse("NFC", "NFD", true);
        Transliterator.registerSpecialInverse("NFKC", "NFKD", true);
        Transliterator.registerSpecialInverse("FCC", "NFD", false);
        Transliterator.registerSpecialInverse("FCD", "FCD", false);
    }

    private NormalizationTransliterator(String id, Normalizer2 n2) {
        super(id, null);
        this.norm2 = n2;
    }

    protected void handleTransliterate(Replaceable text, Transliterator.Position offsets, boolean isIncremental) {
        int start = offsets.start;
        int limit = offsets.limit;
        if (start >= limit) {
            return;
        }
        StringBuilder segment = new StringBuilder();
        StringBuilder normalized = new StringBuilder();
        int c = text.char32At(start);
        do {
            int prev = start;
            segment.setLength(0);
            do {
                segment.appendCodePoint(c);
            } while ((start += Character.charCount(c)) < limit && !this.norm2.hasBoundaryBefore(c = text.char32At(start)));
            if (start == limit && isIncremental && !this.norm2.hasBoundaryAfter(c)) {
                start = prev;
                break;
            }
            this.norm2.normalize((CharSequence)segment, normalized);
            if (Normalizer2Impl.UTF16Plus.equal(segment, normalized)) continue;
            text.replace(prev, start, normalized.toString());
            int delta = normalized.length() - (start - prev);
            start += delta;
            limit += delta;
        } while (start < limit);
        offsets.start = start;
        offsets.contextLimit += limit - offsets.limit;
        offsets.limit = limit;
    }

    /* synthetic */ NormalizationTransliterator(String string, Normalizer2 normalizer2, NormalizationTransliterator normalizationTransliterator) {
        this(string, normalizer2);
    }
}

