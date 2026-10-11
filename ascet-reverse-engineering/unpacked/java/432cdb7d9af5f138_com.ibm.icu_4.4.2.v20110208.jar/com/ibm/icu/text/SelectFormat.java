/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Map;

public class SelectFormat
extends Format {
    private static final long serialVersionUID = 2993154333257524984L;
    private String pattern = null;
    private transient Map<String, String> parsedValues = null;
    private static final String KEYWORD_OTHER = "other";

    public SelectFormat(String pattern) {
        this.init();
        this.applyPattern(pattern);
    }

    private void init() {
        this.parsedValues = null;
        this.pattern = null;
    }

    private boolean checkValidKeyword(String argKeyword) {
        int len = argKeyword.length();
        if (len < 1) {
            return false;
        }
        if (this.classifyCharacter(argKeyword.charAt(0)) != CharacterClass.T_START_KEYWORD) {
            return false;
        }
        int i = 1;
        while (i < len) {
            CharacterClass type = this.classifyCharacter(argKeyword.charAt(i));
            if (type != CharacterClass.T_START_KEYWORD && type != CharacterClass.T_CONTINUE_KEYWORD) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private CharacterClass classifyCharacter(char ch) {
        if (ch >= 'A' && ch <= 'Z') {
            return CharacterClass.T_START_KEYWORD;
        }
        if (ch >= 'a' && ch <= 'z') {
            return CharacterClass.T_START_KEYWORD;
        }
        if (ch >= '0' && ch <= '9') {
            return CharacterClass.T_CONTINUE_KEYWORD;
        }
        switch (ch) {
            case '{': {
                return CharacterClass.T_LEFT_BRACE;
            }
            case '}': {
                return CharacterClass.T_RIGHT_BRACE;
            }
            case '\t': 
            case ' ': {
                return CharacterClass.T_SPACE;
            }
            case '-': 
            case '_': {
                return CharacterClass.T_CONTINUE_KEYWORD;
            }
        }
        return CharacterClass.T_OTHER;
    }

    public void applyPattern(String pattern) {
        this.parsedValues = null;
        this.pattern = pattern;
        StringBuilder keyword = new StringBuilder();
        StringBuilder phrase = new StringBuilder();
        int braceCount = 0;
        this.parsedValues = new HashMap<String, String>();
        State state = State.START_STATE;
        int i = 0;
        while (i < pattern.length()) {
            char ch = pattern.charAt(i);
            CharacterClass type = this.classifyCharacter(ch);
            block0 : switch (state) {
                case START_STATE: {
                    switch (type) {
                        case T_SPACE: {
                            break block0;
                        }
                        case T_START_KEYWORD: {
                            state = State.KEYWORD_STATE;
                            keyword.append(ch);
                            break block0;
                        }
                    }
                    this.parsingFailure("Pattern syntax error.");
                    break;
                }
                case KEYWORD_STATE: {
                    switch (type) {
                        case T_SPACE: {
                            state = State.PAST_KEYWORD_STATE;
                            break block0;
                        }
                        case T_START_KEYWORD: 
                        case T_CONTINUE_KEYWORD: {
                            keyword.append(ch);
                            break block0;
                        }
                        case T_LEFT_BRACE: {
                            state = State.PHRASE_STATE;
                            break block0;
                        }
                    }
                    this.parsingFailure("Pattern syntax error.");
                    break;
                }
                case PAST_KEYWORD_STATE: {
                    switch (type) {
                        case T_SPACE: {
                            break block0;
                        }
                        case T_LEFT_BRACE: {
                            state = State.PHRASE_STATE;
                            break block0;
                        }
                    }
                    this.parsingFailure("Pattern syntax error.");
                    break;
                }
                case PHRASE_STATE: {
                    switch (type) {
                        case T_LEFT_BRACE: {
                            ++braceCount;
                            phrase.append(ch);
                            break;
                        }
                        case T_RIGHT_BRACE: {
                            if (braceCount == 0) {
                                if (this.parsedValues.get(keyword.toString()) != null) {
                                    this.parsingFailure("Duplicate keyword error.");
                                }
                                if (keyword.length() == 0) {
                                    this.parsingFailure("Pattern syntax error.");
                                }
                                this.parsedValues.put(keyword.toString(), phrase.toString());
                                keyword.setLength(0);
                                phrase.setLength(0);
                                state = State.START_STATE;
                            }
                            if (braceCount <= 0) break block0;
                            --braceCount;
                            phrase.append(ch);
                            break;
                        }
                        default: {
                            phrase.append(ch);
                            break;
                        }
                    }
                    break;
                }
                default: {
                    this.parsingFailure("Pattern syntax error.");
                }
            }
            ++i;
        }
        if (state != State.START_STATE) {
            this.parsingFailure("Pattern syntax error.");
        }
        if (!this.checkSufficientDefinition()) {
            this.parsingFailure("Pattern syntax error. Value for case \"other\" was not defined. ");
        }
    }

    public String toPattern() {
        return this.pattern;
    }

    public final String format(String keyword) {
        if (!this.checkValidKeyword(keyword)) {
            throw new IllegalArgumentException("Invalid formatting argument.");
        }
        if (this.parsedValues == null) {
            throw new IllegalStateException("Invalid format error.");
        }
        String selectedPattern = this.parsedValues.get(keyword);
        if (selectedPattern == null) {
            selectedPattern = this.parsedValues.get(KEYWORD_OTHER);
        }
        return selectedPattern;
    }

    public StringBuffer format(Object keyword, StringBuffer toAppendTo, FieldPosition pos) {
        if (!(keyword instanceof String)) {
            throw new IllegalArgumentException("'" + keyword + "' is not a String");
        }
        toAppendTo.append(this.format((String)keyword));
        return toAppendTo;
    }

    public Object parseObject(String source, ParsePosition pos) {
        throw new UnsupportedOperationException();
    }

    private boolean checkSufficientDefinition() {
        return this.parsedValues.get(KEYWORD_OTHER) != null;
    }

    private void parsingFailure(String errorText) {
        this.init();
        throw new IllegalArgumentException(errorText);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SelectFormat)) {
            return false;
        }
        SelectFormat sf = (SelectFormat)obj;
        return this.pattern == null ? sf.pattern == null : this.pattern.equals(sf.pattern);
    }

    public int hashCode() {
        if (this.pattern != null) {
            return this.pattern.hashCode();
        }
        return 0;
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append("pattern='" + this.pattern + "'");
        return buf.toString();
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        if (this.pattern != null) {
            this.applyPattern(this.pattern);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static enum CharacterClass {
        T_START_KEYWORD,
        T_CONTINUE_KEYWORD,
        T_LEFT_BRACE,
        T_RIGHT_BRACE,
        T_SPACE,
        T_OTHER;

    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static enum State {
        START_STATE,
        KEYWORD_STATE,
        PAST_KEYWORD_STATE,
        PHRASE_STATE;

    }
}

