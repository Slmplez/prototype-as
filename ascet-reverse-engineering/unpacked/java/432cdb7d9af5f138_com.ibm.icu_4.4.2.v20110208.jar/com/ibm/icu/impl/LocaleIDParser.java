/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.LocaleIDs;
import com.ibm.icu.impl.locale.AsciiUtil;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class LocaleIDParser {
    private char[] id;
    private int index;
    private char[] buffer;
    private int blen;
    private boolean canonicalize;
    private boolean hadCountry;
    Map<String, String> keywords;
    String baseName;
    private static final char KEYWORD_SEPARATOR = '@';
    private static final char HYPHEN = '-';
    private static final char KEYWORD_ASSIGN = '=';
    private static final char COMMA = ',';
    private static final char ITEM_SEPARATOR = ';';
    private static final char DOT = '.';
    private static final char UNDERSCORE = '_';
    private static final char DONE = '\uffff';

    public LocaleIDParser(String localeID) {
        this(localeID, false);
    }

    public LocaleIDParser(String localeID, boolean canonicalize) {
        this.id = localeID.toCharArray();
        this.index = 0;
        this.buffer = new char[this.id.length + 5];
        this.blen = 0;
        this.canonicalize = canonicalize;
    }

    private void reset() {
        this.blen = 0;
        this.index = 0;
    }

    private void append(char c) {
        try {
            this.buffer[this.blen] = c;
        }
        catch (IndexOutOfBoundsException e) {
            if (this.buffer.length > 512) {
                throw e;
            }
            char[] nbuffer = new char[this.buffer.length * 2];
            System.arraycopy(this.buffer, 0, nbuffer, 0, this.buffer.length);
            nbuffer[this.blen] = c;
            this.buffer = nbuffer;
        }
        ++this.blen;
    }

    private void addSeparator() {
        this.append('_');
    }

    private String getString(int start) {
        if (start == this.blen) {
            return "";
        }
        return new String(this.buffer, start, this.blen - start);
    }

    private void set(int pos, String s) {
        this.blen = pos;
        this.append(s);
    }

    private void append(String s) {
        int i = 0;
        while (i < s.length()) {
            this.append(s.charAt(i));
            ++i;
        }
    }

    private char next() {
        if (this.index == this.id.length) {
            ++this.index;
            return '\uffff';
        }
        return this.id[this.index++];
    }

    private void skipUntilTerminatorOrIDSeparator() {
        while (!this.isTerminatorOrIDSeparator(this.next())) {
        }
        --this.index;
    }

    private boolean atTerminator() {
        return this.index >= this.id.length || this.isTerminator(this.id[this.index]);
    }

    private boolean isTerminator(char c) {
        return c == '@' || c == '\uffff' || c == '.';
    }

    private boolean isTerminatorOrIDSeparator(char c) {
        return c == '@' || c == '_' || c == '-' || c == '\uffff' || c == '.';
    }

    private boolean haveExperimentalLanguagePrefix() {
        char c;
        if (this.id.length > 2 && ((c = this.id[1]) == '-' || c == '_')) {
            c = this.id[0];
            return c == 'x' || c == 'X' || c == 'i' || c == 'I';
        }
        return false;
    }

    private boolean haveKeywordAssign() {
        int i = this.index;
        while (i < this.id.length) {
            if (this.id[i] == '=') {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int parseLanguage() {
        String lang;
        char c;
        if (this.haveExperimentalLanguagePrefix()) {
            this.append(Character.toLowerCase(this.id[0]));
            this.append('-');
            this.index = 2;
        }
        while (!this.isTerminatorOrIDSeparator(c = this.next())) {
            this.append(Character.toLowerCase(c));
        }
        --this.index;
        if (this.blen == 3 && (lang = LocaleIDs.threeToTwoLetterLanguage(this.getString(0))) != null) {
            this.set(0, lang);
        }
        return 0;
    }

    private void skipLanguage() {
        if (this.haveExperimentalLanguagePrefix()) {
            this.index = 2;
        }
        this.skipUntilTerminatorOrIDSeparator();
    }

    private int parseScript() {
        if (!this.atTerminator()) {
            char c;
            int oldIndex = this.index++;
            int oldBlen = this.blen;
            while (!this.isTerminatorOrIDSeparator(c = this.next())) {
                if (this.blen == oldBlen) {
                    this.addSeparator();
                    this.append(Character.toUpperCase(c));
                    continue;
                }
                this.append(Character.toLowerCase(c));
            }
            --this.index;
            if (this.index - oldIndex != 5) {
                this.index = oldIndex;
                this.blen = oldBlen;
            } else {
                ++oldBlen;
            }
            return oldBlen;
        }
        return this.blen;
    }

    private void skipScript() {
        if (!this.atTerminator()) {
            int oldIndex = this.index++;
            this.skipUntilTerminatorOrIDSeparator();
            if (this.index - oldIndex != 5) {
                this.index = oldIndex;
            }
        }
    }

    private int parseCountry() {
        if (!this.atTerminator()) {
            char c;
            int oldIndex = this.index++;
            int oldBlen = this.blen;
            while (!this.isTerminatorOrIDSeparator(c = this.next())) {
                if (oldBlen == this.blen) {
                    this.hadCountry = true;
                    this.addSeparator();
                    ++oldBlen;
                }
                this.append(Character.toUpperCase(c));
            }
            --this.index;
            int charsAppended = this.blen - oldBlen;
            if (charsAppended != 0) {
                String region;
                if (charsAppended < 2 || charsAppended > 3) {
                    this.index = oldIndex;
                    this.blen = --oldBlen;
                    this.hadCountry = false;
                } else if (charsAppended == 3 && (region = LocaleIDs.threeToTwoLetterRegion(this.getString(oldBlen))) != null) {
                    this.set(oldBlen, region);
                }
            }
            return oldBlen;
        }
        return this.blen;
    }

    private void skipCountry() {
        if (!this.atTerminator()) {
            ++this.index;
            int oldIndex = this.index;
            this.skipUntilTerminatorOrIDSeparator();
            int charsSkipped = this.index - oldIndex;
            if (charsSkipped < 2 || charsSkipped > 3) {
                this.index = oldIndex;
            }
        }
    }

    private int parseVariant() {
        char c;
        int oldBlen = this.blen;
        boolean start = true;
        boolean needSeparator = true;
        boolean skipping = false;
        while ((c = this.next()) != '\uffff') {
            if (c == '.') {
                start = false;
                skipping = true;
                continue;
            }
            if (c == '@') {
                if (this.haveKeywordAssign()) break;
                skipping = false;
                start = false;
                needSeparator = true;
                continue;
            }
            if (start) {
                start = false;
                continue;
            }
            if (skipping) continue;
            if (needSeparator) {
                boolean incOldBlen = this.blen == oldBlen;
                needSeparator = false;
                if (incOldBlen && !this.hadCountry) {
                    this.addSeparator();
                    ++oldBlen;
                }
                this.addSeparator();
                if (incOldBlen) {
                    ++oldBlen;
                }
            }
            if ((c = Character.toUpperCase(c)) == '-' || c == ',') {
                c = '_';
            }
            this.append(c);
        }
        --this.index;
        return oldBlen;
    }

    public String getLanguage() {
        this.reset();
        return this.getString(this.parseLanguage());
    }

    public String getScript() {
        this.reset();
        this.skipLanguage();
        return this.getString(this.parseScript());
    }

    public String getCountry() {
        this.reset();
        this.skipLanguage();
        this.skipScript();
        return this.getString(this.parseCountry());
    }

    public String getVariant() {
        this.reset();
        this.skipLanguage();
        this.skipScript();
        this.skipCountry();
        return this.getString(this.parseVariant());
    }

    public String[] getLanguageScriptCountryVariant() {
        this.reset();
        return new String[]{this.getString(this.parseLanguage()), this.getString(this.parseScript()), this.getString(this.parseCountry()), this.getString(this.parseVariant())};
    }

    public void setBaseName(String baseName) {
        this.baseName = baseName;
    }

    public void parseBaseName() {
        if (this.baseName != null) {
            this.set(0, this.baseName);
        } else {
            this.reset();
            this.parseLanguage();
            this.parseScript();
            this.parseCountry();
            this.parseVariant();
            if (this.blen > 1 && this.buffer[this.blen - 1] == '_') {
                --this.blen;
            }
        }
    }

    public String getBaseName() {
        if (this.baseName != null) {
            return this.baseName;
        }
        this.parseBaseName();
        return this.getString(0);
    }

    public String getName() {
        this.parseBaseName();
        this.parseKeywords();
        return this.getString(0);
    }

    private boolean setToKeywordStart() {
        int i = this.index;
        while (i < this.id.length) {
            if (this.id[i] == '@') {
                if (this.canonicalize) {
                    int j = ++i;
                    while (j < this.id.length) {
                        if (this.id[j] == '=') {
                            this.index = i;
                            return true;
                        }
                        ++j;
                    }
                    break;
                }
                if (++i >= this.id.length) break;
                this.index = i;
                return true;
            }
            ++i;
        }
        return false;
    }

    private static boolean isDoneOrKeywordAssign(char c) {
        return c == '\uffff' || c == '=';
    }

    private static boolean isDoneOrItemSeparator(char c) {
        return c == '\uffff' || c == ';';
    }

    private String getKeyword() {
        int start = this.index;
        while (!LocaleIDParser.isDoneOrKeywordAssign(this.next())) {
        }
        --this.index;
        return AsciiUtil.toLowerString(new String(this.id, start, this.index - start).trim());
    }

    private String getValue() {
        int start = this.index;
        while (!LocaleIDParser.isDoneOrItemSeparator(this.next())) {
        }
        --this.index;
        return new String(this.id, start, this.index - start).trim();
    }

    private Comparator<String> getKeyComparator() {
        Comparator<String> comp = new Comparator<String>(){

            @Override
            public int compare(String lhs, String rhs) {
                return lhs.compareTo(rhs);
            }
        };
        return comp;
    }

    public Map<String, String> getKeywordMap() {
        block6: {
            Map<String, String> m;
            block7: {
                String key;
                if (this.keywords != null) break block6;
                m = null;
                if (!this.setToKeywordStart()) break block7;
                while ((key = this.getKeyword()).length() != 0) {
                    block9: {
                        String value;
                        block11: {
                            block10: {
                                block8: {
                                    char c = this.next();
                                    if (c == '=') break block8;
                                    if (c == '\uffff') {
                                        break;
                                    }
                                    break block9;
                                }
                                value = this.getValue();
                                if (value.length() == 0) break block9;
                                if (m != null) break block10;
                                m = new TreeMap(this.getKeyComparator());
                                break block11;
                            }
                            if (((TreeMap)m).containsKey(key)) break block9;
                        }
                        ((TreeMap)m).put(key, value);
                    }
                    if (this.next() == ';') continue;
                }
            }
            this.keywords = m != null ? m : Collections.emptyMap();
        }
        return this.keywords;
    }

    private int parseKeywords() {
        int oldBlen = this.blen;
        Map<String, String> m = this.getKeywordMap();
        if (!m.isEmpty()) {
            boolean first = true;
            for (Map.Entry<String, String> e : m.entrySet()) {
                this.append(first ? (char)'@' : ';');
                first = false;
                this.append(e.getKey());
                this.append('=');
                this.append(e.getValue());
            }
            if (this.blen != oldBlen) {
                ++oldBlen;
            }
        }
        return oldBlen;
    }

    public Iterator<String> getKeywords() {
        Map<String, String> m = this.getKeywordMap();
        return m.isEmpty() ? null : m.keySet().iterator();
    }

    public String getKeywordValue(String keywordName) {
        Map<String, String> m = this.getKeywordMap();
        return m.isEmpty() ? null : m.get(AsciiUtil.toLowerString(keywordName.trim()));
    }

    public void defaultKeywordValue(String keywordName, String value) {
        this.setKeywordValue(keywordName, value, false);
    }

    public void setKeywordValue(String keywordName, String value) {
        this.setKeywordValue(keywordName, value, true);
    }

    private void setKeywordValue(String keywordName, String value, boolean reset) {
        if (keywordName == null) {
            if (reset) {
                this.keywords = Collections.emptyMap();
            }
        } else {
            if ((keywordName = AsciiUtil.toLowerString(keywordName.trim())).length() == 0) {
                throw new IllegalArgumentException("keyword must not be empty");
            }
            if (value != null && (value = value.trim()).length() == 0) {
                throw new IllegalArgumentException("value must not be empty");
            }
            Map<String, String> m = this.getKeywordMap();
            if (m.isEmpty()) {
                if (value != null) {
                    this.keywords = new TreeMap<String, String>(this.getKeyComparator());
                    this.keywords.put(keywordName, value.trim());
                }
            } else if (reset || !m.containsKey(keywordName)) {
                if (value != null) {
                    m.put(keywordName, value);
                } else {
                    m.remove(keywordName);
                    if (m.isEmpty()) {
                        this.keywords = Collections.emptyMap();
                    }
                }
            }
        }
    }
}

