/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.Transliterator;
import com.ibm.icu.text.UnicodeFilter;
import com.ibm.icu.text.UnicodeSet;
import java.util.Vector;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class CompoundTransliterator
extends Transliterator {
    private Transliterator[] trans;
    private int numAnonymousRBTs = 0;

    CompoundTransliterator(Vector<Transliterator> list) {
        this(list, 0);
    }

    CompoundTransliterator(Vector<Transliterator> list, int numAnonymousRBTs) {
        super("", null);
        this.trans = null;
        this.init(list, 0, false);
        this.numAnonymousRBTs = numAnonymousRBTs;
    }

    CompoundTransliterator(String id, UnicodeFilter filter2, Transliterator[] trans2, int numAnonymousRBTs2) {
        super(id, filter2);
        this.trans = trans2;
        this.numAnonymousRBTs = numAnonymousRBTs2;
    }

    private void init(Vector<Transliterator> list, int direction, boolean fixReverseID) {
        int count = list.size();
        this.trans = new Transliterator[count];
        int i = 0;
        while (i < count) {
            int j = direction == 0 ? i : count - 1 - i;
            this.trans[i] = list.elementAt(j);
            ++i;
        }
        if (direction == 1 && fixReverseID) {
            StringBuilder newID = new StringBuilder();
            i = 0;
            while (i < count) {
                if (i > 0) {
                    newID.append(';');
                }
                newID.append(this.trans[i].getID());
                ++i;
            }
            this.setID(newID.toString());
        }
        this.computeMaximumContextLength();
    }

    public int getCount() {
        return this.trans.length;
    }

    public Transliterator getTransliterator(int index) {
        return this.trans[index];
    }

    private static void _smartAppend(StringBuilder buf, char c) {
        if (buf.length() != 0 && buf.charAt(buf.length() - 1) != c) {
            buf.append(c);
        }
    }

    @Override
    public String toRules(boolean escapeUnprintable) {
        StringBuilder rulesSource = new StringBuilder();
        if (this.numAnonymousRBTs >= 1 && this.getFilter() != null) {
            rulesSource.append("::").append(this.getFilter().toPattern(escapeUnprintable)).append(';');
        }
        int i = 0;
        while (i < this.trans.length) {
            String rule;
            if (this.trans[i].getID().startsWith("%Pass")) {
                rule = this.trans[i].toRules(escapeUnprintable);
                if (this.numAnonymousRBTs > 1 && i > 0 && this.trans[i - 1].getID().startsWith("%Pass")) {
                    rule = "::Null;" + rule;
                }
            } else {
                rule = this.trans[i].getID().indexOf(59) >= 0 ? this.trans[i].toRules(escapeUnprintable) : this.trans[i].baseToRules(escapeUnprintable);
            }
            CompoundTransliterator._smartAppend(rulesSource, '\n');
            rulesSource.append(rule);
            CompoundTransliterator._smartAppend(rulesSource, ';');
            ++i;
        }
        return rulesSource.toString();
    }

    @Override
    protected UnicodeSet handleGetSourceSet() {
        UnicodeSet set = new UnicodeSet();
        int i = 0;
        while (i < this.trans.length) {
            set.addAll(this.trans[i].getSourceSet());
            if (!set.isEmpty()) break;
            ++i;
        }
        return set;
    }

    @Override
    public UnicodeSet getTargetSet() {
        UnicodeSet set = new UnicodeSet();
        int i = 0;
        while (i < this.trans.length) {
            set.addAll(this.trans[i].getTargetSet());
            ++i;
        }
        return set;
    }

    @Override
    protected void handleTransliterate(Replaceable text, Transliterator.Position index, boolean incremental) {
        if (this.trans.length < 1) {
            index.start = index.limit;
            return;
        }
        int compoundLimit = index.limit;
        int compoundStart = index.start;
        int delta = 0;
        Object log = null;
        int i = 0;
        while (i < this.trans.length) {
            index.start = compoundStart;
            int limit = index.limit;
            if (index.start == index.limit) break;
            this.trans[i].filteredTransliterate(text, index, incremental);
            if (!incremental && index.start != index.limit) {
                throw new RuntimeException("ERROR: Incomplete non-incremental transliteration by " + this.trans[i].getID());
            }
            delta += index.limit - limit;
            if (incremental) {
                index.limit = index.start;
            }
            ++i;
        }
        index.limit = compoundLimit += delta;
    }

    private void computeMaximumContextLength() {
        int max = 0;
        int i = 0;
        while (i < this.trans.length) {
            int len = this.trans[i].getMaximumContextLength();
            if (len > max) {
                max = len;
            }
            ++i;
        }
        this.setMaximumContextLength(max);
    }

    public Transliterator safeClone() {
        UnicodeFilter filter = this.getFilter();
        if (filter != null && filter instanceof UnicodeSet) {
            filter = new UnicodeSet((UnicodeSet)filter);
        }
        return new CompoundTransliterator(this.getID(), filter, this.trans, this.numAnonymousRBTs);
    }
}

