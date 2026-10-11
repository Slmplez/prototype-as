/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.MultiComparator;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.Collator;
import com.ibm.icu.text.Normalizer;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.text.UnicodeSetIterator;
import com.ibm.icu.util.LocaleData;
import com.ibm.icu.util.ULocale;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IndexCharacters {
    private static final char CGJ = '\u034f';
    private static final UnicodeSet ALPHABETIC = new UnicodeSet("[[:alphabetic:]-[:mark:]]");
    private static final UnicodeSet HANGUL = new UnicodeSet("[\uac00 \ub098 \ub2e4 \ub77c \ub9c8 \ubc14  \uc0ac  \uc544 \uc790  \ucc28 \uce74 \ud0c0 \ud30c \ud558]");
    private static final UnicodeSet ETHIOPIC = new UnicodeSet("[[:Block=Ethiopic:]&[:Script=Ethiopic:]]");
    private static final UnicodeSet CORE_LATIN = new UnicodeSet("[a-z]");
    private ULocale locale;
    private Collator comparator;
    private Set<String> indexCharacters;
    private LinkedHashMap<String, Set<String>> alreadyIn = new LinkedHashMap();
    private List<String> noDistinctSorting = new ArrayList<String>();
    private List<String> notAlphabetic = new ArrayList<String>();

    public IndexCharacters(ULocale locale) {
        this(locale, LocaleData.getExemplarSet(locale, 0), Collator.getInstance(locale));
    }

    public IndexCharacters(ULocale locale, UnicodeSet exemplarSet, Collator collator) {
        this.locale = locale;
        try {
            this.comparator = (Collator)collator.clone();
        }
        catch (CloneNotSupportedException e) {
            throw new IllegalArgumentException(e);
        }
        this.comparator.setStrength(0);
        UnicodeSet exemplars = exemplarSet.cloneAsThawed();
        if (exemplars.containsSome(CORE_LATIN)) {
            exemplars.addAll(CORE_LATIN);
        }
        if (exemplars.containsSome(HANGUL)) {
            exemplars.removeAll(new UnicodeSet("[:block=hangul_syllables:]")).addAll(HANGUL);
        }
        if (exemplars.containsSome(ETHIOPIC)) {
            UnicodeSetIterator it = new UnicodeSetIterator(ETHIOPIC);
            while (it.next()) {
                if ((it.codepoint & 7) == 0) continue;
                exemplars.remove(it.codepoint);
            }
        }
        Comparator[] comparators = new Comparator[]{this.comparator, new PreferenceComparator(Collator.getInstance(locale))};
        TreeSet preferenceSorting = new TreeSet(new MultiComparator(comparators));
        UnicodeSetIterator it = new UnicodeSetIterator(exemplars);
        while (it.next()) {
            preferenceSorting.add(it.getString());
        }
        this.indexCharacters = new TreeSet<Object>(this.comparator);
        block4: for (String item : preferenceSorting) {
            if (this.indexCharacters.contains(item = UCharacter.toUpperCase(locale, item))) {
                for (String itemAlreadyIn : this.indexCharacters) {
                    if (this.comparator.compare(item, itemAlreadyIn) != 0) continue;
                    Set<String> targets = this.alreadyIn.get(itemAlreadyIn);
                    if (targets == null) {
                        targets = new LinkedHashSet<String>();
                        this.alreadyIn.put(itemAlreadyIn, targets);
                    }
                    targets.add(item);
                    continue block4;
                }
                continue;
            }
            if (UTF16.countCodePoint(item) > 1 && this.comparator.compare(item, this.separated(item)) == 0) {
                this.noDistinctSorting.add(item);
                continue;
            }
            if (!ALPHABETIC.containsSome(item)) {
                this.notAlphabetic.add(item);
                continue;
            }
            this.indexCharacters.add(item);
        }
        int size = this.indexCharacters.size() - 1;
        if (size > 99) {
            int count = 0;
            int old = -1;
            Iterator<String> it2 = this.indexCharacters.iterator();
            while (it2.hasNext()) {
                it2.next();
                int bump = ++count * 99 / size;
                if (bump == old) {
                    it2.remove();
                    continue;
                }
                old = bump;
            }
        }
        this.indexCharacters = Collections.unmodifiableSet(this.indexCharacters);
    }

    private String separated(String item) {
        StringBuilder result = new StringBuilder();
        char last = item.charAt(0);
        result.append(last);
        int i = 1;
        while (i < item.length()) {
            char ch = item.charAt(i);
            if (!UCharacter.isHighSurrogate(last) || !UCharacter.isLowSurrogate(ch)) {
                result.append('\u034f');
            }
            result.append(ch);
            last = ch;
            ++i;
        }
        return result.toString();
    }

    public Collection<String> getIndexCharacters() {
        return this.indexCharacters;
    }

    public ULocale getLocale() {
        return this.locale;
    }

    public Map<String, Set<String>> getAlreadyIn() {
        return this.alreadyIn;
    }

    public List<String> getNoDistinctSorting() {
        return this.noDistinctSorting;
    }

    public List<String> getNotAlphabetic() {
        return this.notAlphabetic;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class PreferenceComparator
    implements Comparator<Object> {
        static final Comparator<String> binary = new UTF16.StringComparator(true, false, 0);
        final Collator collator;

        public PreferenceComparator(Collator collator) {
            this.collator = collator;
        }

        @Override
        public int compare(Object o1, Object o2) {
            return this.compare((String)o1, (String)o2);
        }

        @Override
        public int compare(String s1, String s2) {
            if (s1 == s2) {
                return 0;
            }
            String n1 = Normalizer.decompose(s1, true);
            String n2 = Normalizer.decompose(s2, true);
            int result = n1.length() - n2.length();
            if (result != 0) {
                return result;
            }
            result = this.collator.compare(n1, n2);
            if (result != 0) {
                return result;
            }
            return binary.compare(s1, s2);
        }
    }
}

