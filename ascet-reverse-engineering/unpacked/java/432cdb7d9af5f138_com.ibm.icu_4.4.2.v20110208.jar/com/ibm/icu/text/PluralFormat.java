/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.text.PluralRules;
import com.ibm.icu.text.UFormat;
import com.ibm.icu.util.ULocale;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class PluralFormat
extends UFormat {
    private static final long serialVersionUID = 1L;
    private ULocale ulocale = null;
    private PluralRules pluralRules = null;
    private String pattern = null;
    private Map<String, String> parsedValues = null;
    private NumberFormat numberFormat = null;

    public PluralFormat() {
        this.init(null, ULocale.getDefault());
    }

    public PluralFormat(ULocale ulocale) {
        this.init(null, ulocale);
    }

    public PluralFormat(PluralRules rules) {
        this.init(rules, ULocale.getDefault());
    }

    public PluralFormat(ULocale ulocale, PluralRules rules) {
        this.init(rules, ulocale);
    }

    public PluralFormat(String pattern) {
        this.init(null, ULocale.getDefault());
        this.applyPattern(pattern);
    }

    public PluralFormat(ULocale ulocale, String pattern) {
        this.init(null, ulocale);
        this.applyPattern(pattern);
    }

    public PluralFormat(PluralRules rules, String pattern) {
        this.init(rules, ULocale.getDefault());
        this.applyPattern(pattern);
    }

    public PluralFormat(ULocale ulocale, PluralRules rules, String pattern) {
        this.init(rules, ulocale);
        this.applyPattern(pattern);
    }

    private void init(PluralRules rules, ULocale locale) {
        this.ulocale = locale;
        this.pluralRules = rules == null ? PluralRules.forLocale(this.ulocale) : rules;
        this.parsedValues = null;
        this.pattern = null;
        this.numberFormat = NumberFormat.getInstance(this.ulocale);
    }

    public void applyPattern(String pttrn) {
        this.pattern = pttrn = pttrn.trim();
        int braceStack = 0;
        Set<String> ruleNames = this.pluralRules.getKeywords();
        this.parsedValues = new HashMap<String, String>();
        int state = 0;
        StringBuilder token = new StringBuilder();
        String currentKeyword = null;
        boolean readSpaceAfterKeyword = false;
        int i = 0;
        while (i < pttrn.length()) {
            char ch = pttrn.charAt(i);
            block0 : switch (state) {
                case 0: {
                    if (token.length() == 0) {
                        readSpaceAfterKeyword = false;
                    }
                    if (UCharacterProperty.isRuleWhiteSpace(ch)) {
                        if (token.length() <= 0) break;
                        readSpaceAfterKeyword = true;
                        break;
                    }
                    if (ch == '{') {
                        currentKeyword = token.toString().toLowerCase(Locale.ENGLISH);
                        if (!ruleNames.contains(currentKeyword)) {
                            this.parsingFailure("Malformed formatting expression. Unknown keyword \"" + currentKeyword + "\" at position " + i + ".");
                        }
                        if (this.parsedValues.get(currentKeyword) != null) {
                            this.parsingFailure("Malformed formatting expression. Text for case \"" + currentKeyword + "\" at position " + i + " already defined!");
                        }
                        token.delete(0, token.length());
                        ++braceStack;
                        state = 1;
                        break;
                    }
                    if (readSpaceAfterKeyword) {
                        this.parsingFailure("Malformed formatting expression. Invalid keyword definition. Character \"" + ch + "\" at position " + i + " not expected!");
                    }
                    token.append(ch);
                    break;
                }
                case 1: {
                    switch (ch) {
                        case '{': {
                            ++braceStack;
                            token.append(ch);
                            break block0;
                        }
                        case '}': {
                            if (--braceStack == 0) {
                                this.parsedValues.put(currentKeyword, token.toString());
                                token.delete(0, token.length());
                                state = 0;
                                break block0;
                            }
                            if (braceStack < 0) {
                                this.parsingFailure("Malformed formatting expression. Braces do not match.");
                                break block0;
                            }
                            token.append(ch);
                            break block0;
                        }
                    }
                    token.append(ch);
                }
            }
            ++i;
        }
        if (braceStack != 0) {
            this.parsingFailure("Malformed formatting expression. Braces do not match.");
        }
        this.checkSufficientDefinition();
    }

    public String toPattern() {
        return this.pattern;
    }

    public final String format(double number) {
        if (this.parsedValues == null) {
            return this.numberFormat.format(number);
        }
        String selectedRule = this.pluralRules.select(number);
        String selectedPattern = this.parsedValues.get(selectedRule);
        if (selectedPattern == null) {
            selectedPattern = this.parsedValues.get("other");
        }
        return this.insertFormattedNumber(number, selectedPattern);
    }

    public StringBuffer format(Object number, StringBuffer toAppendTo, FieldPosition pos) {
        if (number instanceof Number) {
            toAppendTo.append(this.format(((Number)number).doubleValue()));
            return toAppendTo;
        }
        throw new IllegalArgumentException("'" + number + "' is not a Number");
    }

    public Number parse(String text, ParsePosition parsePosition) {
        throw new UnsupportedOperationException();
    }

    public Object parseObject(String source, ParsePosition pos) {
        throw new UnsupportedOperationException();
    }

    public void setLocale(ULocale ulocale) {
        if (ulocale == null) {
            ulocale = ULocale.getDefault();
        }
        this.init(null, ulocale);
    }

    public void setNumberFormat(NumberFormat format) {
        this.numberFormat = format;
    }

    private void checkSufficientDefinition() {
        if (this.parsedValues.get("other") == null) {
            this.parsingFailure("Malformed formatting expression.\nValue for case \"other\" was not defined.");
        }
    }

    private void parsingFailure(String errorText) {
        this.init(null, ULocale.getDefault());
        throw new IllegalArgumentException(errorText);
    }

    private String insertFormattedNumber(double number, String message) {
        if (message == null) {
            return "";
        }
        String formattedNumber = this.numberFormat.format(number);
        StringBuilder result = new StringBuilder();
        int braceStack = 0;
        int startIndex = 0;
        int i = 0;
        while (i < message.length()) {
            switch (message.charAt(i)) {
                case '{': {
                    ++braceStack;
                    break;
                }
                case '}': {
                    --braceStack;
                    break;
                }
                case '#': {
                    if (braceStack != 0) break;
                    result.append(message.substring(startIndex, i));
                    startIndex = i + 1;
                    result.append(formattedNumber);
                }
            }
            ++i;
        }
        if (startIndex < message.length()) {
            result.append(message.substring(startIndex, message.length()));
        }
        return result.toString();
    }

    public boolean equals(Object rhs) {
        return rhs instanceof PluralFormat && this.equals((PluralFormat)rhs);
    }

    public boolean equals(PluralFormat rhs) {
        return this.pluralRules.equals(rhs.pluralRules) && this.parsedValues.equals(rhs.parsedValues) && this.numberFormat.equals(rhs.numberFormat);
    }

    public int hashCode() {
        return this.pluralRules.hashCode() ^ this.parsedValues.hashCode();
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append("locale=" + this.ulocale);
        buf.append(", rules='" + this.pluralRules + "'");
        buf.append(", pattern='" + this.pattern + "'");
        buf.append(", parsedValues='" + this.parsedValues + "'");
        buf.append(", format='" + this.numberFormat + "'");
        return buf.toString();
    }
}

