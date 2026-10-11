/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.TransliterationRule;
import com.ibm.icu.text.Transliterator;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.text.UnicodeSet;
import java.util.Vector;

class TransliterationRuleSet {
    private Vector<TransliterationRule> ruleVector = new Vector();
    private int maxContextLength = 0;
    private TransliterationRule[] rules;
    private int[] index;

    public int getMaximumContextLength() {
        return this.maxContextLength;
    }

    public void addRule(TransliterationRule rule) {
        this.ruleVector.addElement(rule);
        int len = rule.getAnteContextLength();
        if (len > this.maxContextLength) {
            this.maxContextLength = len;
        }
        this.rules = null;
    }

    public void freeze() {
        int n = this.ruleVector.size();
        this.index = new int[257];
        Vector<TransliterationRule> v = new Vector<TransliterationRule>(2 * n);
        int[] indexValue = new int[n];
        int j = 0;
        while (j < n) {
            TransliterationRule r = this.ruleVector.elementAt(j);
            indexValue[j] = r.getIndexValue();
            ++j;
        }
        int x = 0;
        while (x < 256) {
            this.index[x] = v.size();
            int j2 = 0;
            while (j2 < n) {
                if (indexValue[j2] >= 0) {
                    if (indexValue[j2] == x) {
                        v.addElement(this.ruleVector.elementAt(j2));
                    }
                } else {
                    TransliterationRule r = this.ruleVector.elementAt(j2);
                    if (r.matchesIndexValue(x)) {
                        v.addElement(r);
                    }
                }
                ++j2;
            }
            ++x;
        }
        this.index[256] = v.size();
        this.rules = new TransliterationRule[v.size()];
        v.copyInto(this.rules);
        StringBuilder errors = null;
        int x2 = 0;
        while (x2 < 256) {
            int j3 = this.index[x2];
            while (j3 < this.index[x2 + 1] - 1) {
                TransliterationRule r1 = this.rules[j3];
                int k = j3 + 1;
                while (k < this.index[x2 + 1]) {
                    TransliterationRule r2 = this.rules[k];
                    if (r1.masks(r2)) {
                        if (errors == null) {
                            errors = new StringBuilder();
                        } else {
                            errors.append("\n");
                        }
                        errors.append("Rule " + r1 + " masks " + r2);
                    }
                    ++k;
                }
                ++j3;
            }
            ++x2;
        }
        if (errors != null) {
            throw new IllegalArgumentException(errors.toString());
        }
    }

    public boolean transliterate(Replaceable text, Transliterator.Position pos, boolean incremental) {
        int indexByte = text.char32At(pos.start) & 0xFF;
        int i = this.index[indexByte];
        while (i < this.index[indexByte + 1]) {
            int m = this.rules[i].matchAndReplace(text, pos, incremental);
            switch (m) {
                case 2: {
                    return true;
                }
                case 1: {
                    return false;
                }
            }
            ++i;
        }
        pos.start += UTF16.getCharCount(text.char32At(pos.start));
        return true;
    }

    String toRules(boolean escapeUnprintable) {
        int count = this.ruleVector.size();
        StringBuilder ruleSource = new StringBuilder();
        int i = 0;
        while (i < count) {
            if (i != 0) {
                ruleSource.append('\n');
            }
            TransliterationRule r = this.ruleVector.elementAt(i);
            ruleSource.append(r.toRule(escapeUnprintable));
            ++i;
        }
        return ruleSource.toString();
    }

    UnicodeSet getSourceTargetSet(boolean getTarget) {
        UnicodeSet set = new UnicodeSet();
        int count = this.ruleVector.size();
        int i = 0;
        while (i < count) {
            TransliterationRule r = this.ruleVector.elementAt(i);
            if (getTarget) {
                r.addTargetSetTo(set);
            } else {
                r.addSourceSetTo(set);
            }
            ++i;
        }
        return set;
    }
}

