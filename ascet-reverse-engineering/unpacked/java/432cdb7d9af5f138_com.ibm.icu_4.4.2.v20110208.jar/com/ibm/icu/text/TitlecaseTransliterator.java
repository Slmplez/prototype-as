/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.UCaseProps;
import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.ReplaceableContextIterator;
import com.ibm.icu.text.Transliterator;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.util.ULocale;
import java.io.IOException;

class TitlecaseTransliterator
extends Transliterator {
    static final String _ID = "Any-Title";
    private ULocale locale;
    private UCaseProps csp;
    private ReplaceableContextIterator iter;
    private StringBuffer result;
    private int[] locCache;

    static void register() {
        Transliterator.registerFactory(_ID, new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new TitlecaseTransliterator(ULocale.US);
            }
        });
        TitlecaseTransliterator.registerSpecialInverse("Title", "Lower", false);
    }

    public TitlecaseTransliterator(ULocale loc) {
        super(_ID, null);
        this.locale = loc;
        this.setMaximumContextLength(2);
        try {
            this.csp = UCaseProps.getSingleton();
        }
        catch (IOException iOException) {
            this.csp = null;
        }
        this.iter = new ReplaceableContextIterator();
        this.result = new StringBuffer();
        this.locCache = new int[1];
        this.locCache[0] = 0;
    }

    protected synchronized void handleTransliterate(Replaceable text, Transliterator.Position offsets, boolean isIncremental) {
        int type;
        int c;
        if (offsets.start >= offsets.limit) {
            return;
        }
        boolean doTitle = true;
        int start = offsets.start - 1;
        while (start >= offsets.contextStart) {
            c = text.char32At(start);
            type = this.csp.getTypeOrIgnorable(c);
            if (type > 0) {
                doTitle = false;
                break;
            }
            if (type == 0) break;
            start -= UTF16.getCharCount(c);
        }
        this.iter.setText(text);
        this.iter.setIndex(offsets.start);
        this.iter.setLimit(offsets.limit);
        this.iter.setContextLimits(offsets.contextStart, offsets.contextLimit);
        this.result.setLength(0);
        while ((c = this.iter.nextCaseMapCP()) >= 0) {
            int delta;
            type = this.csp.getTypeOrIgnorable(c);
            if (type < 0) continue;
            c = doTitle ? this.csp.toFullTitle(c, this.iter, this.result, this.locale, this.locCache) : this.csp.toFullLower(c, this.iter, this.result, this.locale, this.locCache);
            boolean bl = doTitle = type == 0;
            if (this.iter.didReachLimit() && isIncremental) {
                offsets.start = this.iter.getCaseMapCPStart();
                return;
            }
            if (c < 0) continue;
            if (c <= 31) {
                delta = this.iter.replace(this.result.toString());
                this.result.setLength(0);
            } else {
                delta = this.iter.replace(UTF16.valueOf(c));
            }
            if (delta == 0) continue;
            offsets.limit += delta;
            offsets.contextLimit += delta;
        }
        offsets.start = offsets.limit;
    }
}

