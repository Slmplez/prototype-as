/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.text.DecimalFormat;
import com.ibm.icu.text.DecimalFormatSymbols;
import com.ibm.icu.text.NFRuleSet;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.text.RBNFPostProcessor;
import com.ibm.icu.text.RbnfLenientScanner;
import com.ibm.icu.text.RbnfLenientScannerProvider;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import com.ibm.icu.util.UResourceBundleIterator;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;

public class RuleBasedNumberFormat
extends NumberFormat {
    static final long serialVersionUID = -7664252765575395068L;
    public static final int SPELLOUT = 1;
    public static final int ORDINAL = 2;
    public static final int DURATION = 3;
    public static final int NUMBERING_SYSTEM = 4;
    private transient NFRuleSet[] ruleSets = null;
    private transient NFRuleSet defaultRuleSet = null;
    private ULocale locale = null;
    private transient RbnfLenientScannerProvider scannerProvider = null;
    private transient boolean lookedForScanner;
    private transient DecimalFormatSymbols decimalFormatSymbols = null;
    private transient DecimalFormat decimalFormat = null;
    private boolean lenientParse = false;
    private transient String lenientParseRules;
    private transient String postProcessRules;
    private transient RBNFPostProcessor postProcessor;
    private Map<String, String[]> ruleSetDisplayNames;
    private String[] publicRuleSetNames;
    private static final boolean DEBUG = ICUDebug.enabled("rbnf");
    private boolean noParse;
    private static final String[] NO_SPELLOUT_PARSE_LANGUAGES = new String[]{"ga"};
    private static final String[] rulenames = new String[]{"SpelloutRules", "OrdinalRules", "DurationRules", "NumberingSystemRules"};
    private static final String[] locnames = new String[]{"SpelloutLocalizations", "OrdinalLocalizations", "DurationLocalizations", "NumberingSystemLocalizations"};

    public RuleBasedNumberFormat(String description) {
        this.locale = ULocale.getDefault();
        this.init(description, null);
    }

    public RuleBasedNumberFormat(String description, String[][] localizations) {
        this.locale = ULocale.getDefault();
        this.init(description, localizations);
    }

    public RuleBasedNumberFormat(String description, Locale locale) {
        this(description, ULocale.forLocale(locale));
    }

    public RuleBasedNumberFormat(String description, ULocale locale) {
        this.locale = locale;
        this.init(description, null);
    }

    public RuleBasedNumberFormat(String description, String[][] localizations, ULocale locale) {
        this.locale = locale;
        this.init(description, localizations);
    }

    public RuleBasedNumberFormat(Locale locale, int format) {
        this(ULocale.forLocale(locale), format);
    }

    public RuleBasedNumberFormat(ULocale locale, int format) {
        this.locale = locale;
        ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/rbnf", locale);
        ULocale uloc = bundle.getULocale();
        this.setLocale(uloc, uloc);
        String description = "";
        String[][] localizations = null;
        try {
            description = bundle.getString(rulenames[format - 1]);
        }
        catch (MissingResourceException missingResourceException) {
            try {
                ICUResourceBundle rules = bundle.getWithFallback("RBNFRules/" + rulenames[format - 1]);
                UResourceBundleIterator it = rules.getIterator();
                while (it.hasNext()) {
                    description = description.concat(it.nextString());
                }
            }
            catch (MissingResourceException missingResourceException2) {}
        }
        try {
            UResourceBundle locb = bundle.get(locnames[format - 1]);
            localizations = new String[locb.getSize()][];
            int i = 0;
            while (i < localizations.length) {
                localizations[i] = locb.get(i).getStringArray();
                ++i;
            }
        }
        catch (MissingResourceException missingResourceException) {}
        this.init(description, localizations);
        this.noParse = false;
        if (locnames[format - 1].equals("SpelloutLocalizations")) {
            String lang = locale.getLanguage();
            int i = 0;
            while (i < NO_SPELLOUT_PARSE_LANGUAGES.length) {
                if (NO_SPELLOUT_PARSE_LANGUAGES[i].equals(lang)) {
                    this.noParse = true;
                    break;
                }
                ++i;
            }
        }
    }

    public RuleBasedNumberFormat(int format) {
        this(ULocale.getDefault(), format);
    }

    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object that) {
        if (!(that instanceof RuleBasedNumberFormat)) {
            return false;
        }
        RuleBasedNumberFormat that2 = (RuleBasedNumberFormat)that;
        if (!this.locale.equals(that2.locale) || this.lenientParse != that2.lenientParse) {
            return false;
        }
        if (this.ruleSets.length != that2.ruleSets.length) {
            return false;
        }
        int i = 0;
        while (i < this.ruleSets.length) {
            if (!this.ruleSets[i].equals(that2.ruleSets[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public String toString() {
        StringBuilder result = new StringBuilder();
        int i = 0;
        while (i < this.ruleSets.length) {
            result.append(this.ruleSets[i].toString());
            ++i;
        }
        return result.toString();
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.writeUTF(this.toString());
        out.writeObject(this.locale);
    }

    private void readObject(ObjectInputStream in) throws IOException {
        ULocale loc;
        String description = in.readUTF();
        try {
            loc = (ULocale)in.readObject();
        }
        catch (Exception exception) {
            loc = ULocale.getDefault();
        }
        RuleBasedNumberFormat temp = new RuleBasedNumberFormat(description, loc);
        this.ruleSets = temp.ruleSets;
        this.defaultRuleSet = temp.defaultRuleSet;
        this.publicRuleSetNames = temp.publicRuleSetNames;
        this.decimalFormatSymbols = temp.decimalFormatSymbols;
        this.decimalFormat = temp.decimalFormat;
        this.locale = temp.locale;
    }

    public String[] getRuleSetNames() {
        return (String[])this.publicRuleSetNames.clone();
    }

    public ULocale[] getRuleSetDisplayNameLocales() {
        if (this.ruleSetDisplayNames != null) {
            Set<String> s = this.ruleSetDisplayNames.keySet();
            String[] locales = s.toArray(new String[s.size()]);
            Arrays.sort(locales, String.CASE_INSENSITIVE_ORDER);
            ULocale[] result = new ULocale[locales.length];
            int i = 0;
            while (i < locales.length) {
                result[i] = new ULocale(locales[i]);
                ++i;
            }
            return result;
        }
        return null;
    }

    private String[] getNameListForLocale(ULocale loc) {
        if (loc != null && this.ruleSetDisplayNames != null) {
            String[] localeNames = new String[]{loc.getBaseName(), ULocale.getDefault().getBaseName()};
            int i = 0;
            while (i < localeNames.length) {
                String lname = localeNames[i];
                while (lname.length() > 0) {
                    String[] names = this.ruleSetDisplayNames.get(lname);
                    if (names != null) {
                        return names;
                    }
                    lname = ULocale.getFallback(lname);
                }
                ++i;
            }
        }
        return null;
    }

    public String[] getRuleSetDisplayNames(ULocale loc) {
        String[] names = this.getNameListForLocale(loc);
        if (names != null) {
            return (String[])names.clone();
        }
        names = this.getRuleSetNames();
        int i = 0;
        while (i < names.length) {
            names[i] = names[i].substring(1);
            ++i;
        }
        return names;
    }

    public String[] getRuleSetDisplayNames() {
        return this.getRuleSetDisplayNames(ULocale.getDefault());
    }

    public String getRuleSetDisplayName(String ruleSetName, ULocale loc) {
        String[] rsnames = this.publicRuleSetNames;
        int ix = 0;
        while (ix < rsnames.length) {
            if (rsnames[ix].equals(ruleSetName)) {
                String[] names = this.getNameListForLocale(loc);
                if (names != null) {
                    return names[ix];
                }
                return rsnames[ix].substring(1);
            }
            ++ix;
        }
        throw new IllegalArgumentException("unrecognized rule set name: " + ruleSetName);
    }

    public String getRuleSetDisplayName(String ruleSetName) {
        return this.getRuleSetDisplayName(ruleSetName, ULocale.getDefault());
    }

    public String format(double number, String ruleSet) throws IllegalArgumentException {
        if (ruleSet.startsWith("%%")) {
            throw new IllegalArgumentException("Can't use internal rule set");
        }
        return this.format(number, this.findRuleSet(ruleSet));
    }

    public String format(long number, String ruleSet) throws IllegalArgumentException {
        if (ruleSet.startsWith("%%")) {
            throw new IllegalArgumentException("Can't use internal rule set");
        }
        return this.format(number, this.findRuleSet(ruleSet));
    }

    public StringBuffer format(double number, StringBuffer toAppendTo, FieldPosition ignore) {
        toAppendTo.append(this.format(number, this.defaultRuleSet));
        return toAppendTo;
    }

    public StringBuffer format(long number, StringBuffer toAppendTo, FieldPosition ignore) {
        toAppendTo.append(this.format(number, this.defaultRuleSet));
        return toAppendTo;
    }

    public StringBuffer format(BigInteger number, StringBuffer toAppendTo, FieldPosition pos) {
        return this.format(new com.ibm.icu.math.BigDecimal(number), toAppendTo, pos);
    }

    public StringBuffer format(BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        return this.format(new com.ibm.icu.math.BigDecimal(number), toAppendTo, pos);
    }

    public StringBuffer format(com.ibm.icu.math.BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        return this.format(number.doubleValue(), toAppendTo, pos);
    }

    public Number parse(String text, ParsePosition parsePosition) {
        if (this.noParse) {
            return new Long(0L);
        }
        String workingText = text.substring(parsePosition.getIndex());
        ParsePosition workingPos = new ParsePosition(0);
        Number tempResult = null;
        Number result = new Long(0L);
        ParsePosition highWaterMark = new ParsePosition(workingPos.getIndex());
        int i = this.ruleSets.length - 1;
        while (i >= 0) {
            if (this.ruleSets[i].isPublic() && this.ruleSets[i].isParseable()) {
                tempResult = this.ruleSets[i].parse(workingText, workingPos, Double.MAX_VALUE);
                if (workingPos.getIndex() > highWaterMark.getIndex()) {
                    result = tempResult;
                    highWaterMark.setIndex(workingPos.getIndex());
                }
                if (highWaterMark.getIndex() == workingText.length()) break;
                workingPos.setIndex(0);
            }
            --i;
        }
        parsePosition.setIndex(parsePosition.getIndex() + highWaterMark.getIndex());
        return result;
    }

    public void setLenientParseMode(boolean enabled) {
        this.lenientParse = enabled;
    }

    public boolean lenientParseEnabled() {
        return this.lenientParse;
    }

    public void setLenientScannerProvider(RbnfLenientScannerProvider scannerProvider) {
        this.scannerProvider = scannerProvider;
    }

    public RbnfLenientScannerProvider getLenientScannerProvider() {
        if (this.scannerProvider == null && this.lenientParse && !this.lookedForScanner) {
            try {
                this.lookedForScanner = true;
                Class<?> cls = Class.forName("com.ibm.icu.text.RbnfScannerProviderImpl");
                RbnfLenientScannerProvider provider = (RbnfLenientScannerProvider)cls.newInstance();
                this.setLenientScannerProvider(provider);
            }
            catch (Exception exception) {}
        }
        return this.scannerProvider;
    }

    public void setDefaultRuleSet(String ruleSetName) {
        if (ruleSetName == null) {
            if (this.publicRuleSetNames.length > 0) {
                this.defaultRuleSet = this.findRuleSet(this.publicRuleSetNames[0]);
            } else {
                this.defaultRuleSet = null;
                int n = this.ruleSets.length;
                while (--n >= 0) {
                    String currentName = this.ruleSets[n].getName();
                    if (!currentName.equals("%spellout-numbering") && !currentName.equals("%digits-ordinal") && !currentName.equals("%duration")) continue;
                    this.defaultRuleSet = this.ruleSets[n];
                    return;
                }
                n = this.ruleSets.length;
                while (--n >= 0) {
                    if (!this.ruleSets[n].isPublic()) continue;
                    this.defaultRuleSet = this.ruleSets[n];
                    break;
                }
            }
        } else {
            if (ruleSetName.startsWith("%%")) {
                throw new IllegalArgumentException("cannot use private rule set: " + ruleSetName);
            }
            this.defaultRuleSet = this.findRuleSet(ruleSetName);
        }
    }

    public String getDefaultRuleSetName() {
        if (this.defaultRuleSet != null && this.defaultRuleSet.isPublic()) {
            return this.defaultRuleSet.getName();
        }
        return "";
    }

    NFRuleSet getDefaultRuleSet() {
        return this.defaultRuleSet;
    }

    RbnfLenientScanner getLenientScanner() {
        RbnfLenientScannerProvider provider;
        if (this.lenientParse && (provider = this.getLenientScannerProvider()) != null) {
            return provider.get(this.locale, this.lenientParseRules);
        }
        return null;
    }

    DecimalFormatSymbols getDecimalFormatSymbols() {
        if (this.decimalFormatSymbols == null) {
            this.decimalFormatSymbols = new DecimalFormatSymbols(this.locale);
        }
        return this.decimalFormatSymbols;
    }

    DecimalFormat getDecimalFormat() {
        if (this.decimalFormat == null) {
            this.decimalFormat = (DecimalFormat)NumberFormat.getInstance(this.locale);
        }
        return this.decimalFormat;
    }

    private String extractSpecial(StringBuilder description, String specialName) {
        String result = null;
        int lp = description.indexOf(specialName);
        if (lp != -1 && (lp == 0 || description.charAt(lp - 1) == ';')) {
            int lpEnd = description.indexOf(";%", lp);
            if (lpEnd == -1) {
                lpEnd = description.length() - 1;
            }
            int lpStart = lp + specialName.length();
            while (lpStart < lpEnd && UCharacterProperty.isRuleWhiteSpace(description.charAt(lpStart))) {
                ++lpStart;
            }
            result = description.substring(lpStart, lpEnd);
            description.delete(lp, lpEnd + 1);
        }
        return result;
    }

    private void init(String description, String[][] localizations) {
        this.initLocalizations(localizations);
        StringBuilder descBuf = this.stripWhitespace(description);
        this.lenientParseRules = this.extractSpecial(descBuf, "%%lenient-parse:");
        this.postProcessRules = this.extractSpecial(descBuf, "%%post-process:");
        int numRuleSets = 0;
        int p = descBuf.indexOf(";%");
        while (p != -1) {
            ++numRuleSets;
            ++p;
            p = descBuf.indexOf(";%", p);
        }
        this.ruleSets = new NFRuleSet[++numRuleSets];
        String[] ruleSetDescriptions = new String[numRuleSets];
        int curRuleSet = 0;
        int start = 0;
        int p2 = descBuf.indexOf(";%");
        while (p2 != -1) {
            ruleSetDescriptions[curRuleSet] = descBuf.substring(start, p2 + 1);
            this.ruleSets[curRuleSet] = new NFRuleSet(ruleSetDescriptions, curRuleSet);
            ++curRuleSet;
            start = p2 + 1;
            p2 = descBuf.indexOf(";%", start);
        }
        ruleSetDescriptions[curRuleSet] = descBuf.substring(start);
        this.ruleSets[curRuleSet] = new NFRuleSet(ruleSetDescriptions, curRuleSet);
        boolean defaultNameFound = false;
        int n = this.ruleSets.length;
        this.defaultRuleSet = this.ruleSets[this.ruleSets.length - 1];
        while (--n >= 0) {
            String currentName = this.ruleSets[n].getName();
            if (!currentName.equals("%spellout-numbering") && !currentName.equals("%digits-ordinal") && !currentName.equals("%duration")) continue;
            this.defaultRuleSet = this.ruleSets[n];
            defaultNameFound = true;
            break;
        }
        if (!defaultNameFound) {
            int i = this.ruleSets.length - 1;
            while (i >= 0) {
                if (!this.ruleSets[i].getName().startsWith("%%")) {
                    this.defaultRuleSet = this.ruleSets[i];
                    break;
                }
                --i;
            }
        }
        int i = 0;
        while (i < this.ruleSets.length) {
            this.ruleSets[i].parseRules(ruleSetDescriptions[i], this);
            ruleSetDescriptions[i] = null;
            ++i;
        }
        int publicRuleSetCount = 0;
        int i2 = 0;
        while (i2 < this.ruleSets.length) {
            if (!this.ruleSets[i2].getName().startsWith("%%")) {
                ++publicRuleSetCount;
            }
            ++i2;
        }
        String[] publicRuleSetTemp = new String[publicRuleSetCount];
        publicRuleSetCount = 0;
        int i3 = this.ruleSets.length - 1;
        while (i3 >= 0) {
            if (!this.ruleSets[i3].getName().startsWith("%%")) {
                publicRuleSetTemp[publicRuleSetCount++] = this.ruleSets[i3].getName();
            }
            --i3;
        }
        if (this.publicRuleSetNames != null) {
            i3 = 0;
            while (i3 < this.publicRuleSetNames.length) {
                block16: {
                    String name = this.publicRuleSetNames[i3];
                    int j = 0;
                    while (j < publicRuleSetTemp.length) {
                        if (!name.equals(publicRuleSetTemp[j])) {
                            ++j;
                            continue;
                        }
                        break block16;
                    }
                    throw new IllegalArgumentException("did not find public rule set: " + name);
                }
                ++i3;
            }
            this.defaultRuleSet = this.findRuleSet(this.publicRuleSetNames[0]);
        } else {
            this.publicRuleSetNames = publicRuleSetTemp;
        }
    }

    private void initLocalizations(String[][] localizations) {
        if (localizations != null) {
            this.publicRuleSetNames = (String[])localizations[0].clone();
            HashMap<String, String[]> m = new HashMap<String, String[]>();
            int i = 1;
            while (i < localizations.length) {
                String[] data = localizations[i];
                String loc = data[0];
                String[] names = new String[data.length - 1];
                if (names.length != this.publicRuleSetNames.length) {
                    throw new IllegalArgumentException("public name length: " + this.publicRuleSetNames.length + " != localized names[" + i + "] length: " + names.length);
                }
                System.arraycopy(data, 1, names, 0, names.length);
                m.put(loc, names);
                ++i;
            }
            if (!m.isEmpty()) {
                this.ruleSetDisplayNames = m;
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    private StringBuilder stripWhitespace(String description) {
        result = new StringBuilder();
        start = 0;
        ** GOTO lbl22
        {
            ++start;
            do {
                if (start < description.length() && UCharacterProperty.isRuleWhiteSpace(description.charAt(start))) continue block0;
                if (start < description.length() && description.charAt(start) == ';') {
                    ++start;
                    continue;
                }
                p = description.indexOf(59, start);
                if (p == -1) {
                    result.append(description.substring(start));
                    start = -1;
                    continue;
                }
                if (p < description.length()) {
                    result.append(description.substring(start, p + 1));
                    start = p + 1;
                    continue;
                }
                start = -1;
lbl22:
                // 5 sources

            } while (start != -1 && start < description.length());
        }
        return result;
    }

    private String format(double number, NFRuleSet ruleSet) {
        StringBuffer result = new StringBuffer();
        ruleSet.format(number, result, 0);
        this.postProcess(result, ruleSet);
        return result.toString();
    }

    private String format(long number, NFRuleSet ruleSet) {
        StringBuffer result = new StringBuffer();
        ruleSet.format(number, result, 0);
        this.postProcess(result, ruleSet);
        return result.toString();
    }

    private void postProcess(StringBuffer result, NFRuleSet ruleSet) {
        if (this.postProcessRules != null) {
            if (this.postProcessor == null) {
                int ix = this.postProcessRules.indexOf(";");
                if (ix == -1) {
                    ix = this.postProcessRules.length();
                }
                String ppClassName = this.postProcessRules.substring(0, ix).trim();
                try {
                    Class<?> cls = Class.forName(ppClassName);
                    this.postProcessor = (RBNFPostProcessor)cls.newInstance();
                    this.postProcessor.init(this, this.postProcessRules);
                }
                catch (Exception e) {
                    if (DEBUG) {
                        System.out.println("could not locate " + ppClassName + ", error " + e.getClass().getName() + ", " + e.getMessage());
                    }
                    this.postProcessor = null;
                    this.postProcessRules = null;
                    return;
                }
            }
            this.postProcessor.process(result, ruleSet);
        }
    }

    NFRuleSet findRuleSet(String name) throws IllegalArgumentException {
        int i = 0;
        while (i < this.ruleSets.length) {
            if (this.ruleSets[i].getName().equals(name)) {
                return this.ruleSets[i];
            }
            ++i;
        }
        throw new IllegalArgumentException("No rule set named " + name);
    }
}

