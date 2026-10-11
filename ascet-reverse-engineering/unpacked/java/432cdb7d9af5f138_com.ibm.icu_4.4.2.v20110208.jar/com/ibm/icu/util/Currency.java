/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.TextTrieMap;
import com.ibm.icu.text.CurrencyDisplayNames;
import com.ibm.icu.text.CurrencyMetaInfo;
import com.ibm.icu.util.MeasureUnit;
import com.ibm.icu.util.ULocale;
import java.io.Serializable;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Vector;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Currency
extends MeasureUnit
implements Serializable {
    private static final long serialVersionUID = -5839973855554750484L;
    private static final boolean DEBUG = ICUDebug.enabled("currency");
    private static ICUCache<ULocale, Vector<TextTrieMap<CurrencyStringInfo>>> CURRENCY_NAME_CACHE = new SimpleCache<ULocale, Vector<TextTrieMap<CurrencyStringInfo>>>();
    private String isoCode;
    public static final int SYMBOL_NAME = 0;
    public static final int LONG_NAME = 1;
    public static final int PLURAL_LONG_NAME = 2;
    private static ServiceShim shim;
    private static final String EUR_STR = "EUR";
    private static final ULocale UND;
    private static final String[] EMPTY_STRING_ARRAY;
    private static final int[] POW10;
    private ULocale validLocale;
    private ULocale actualLocale;

    static {
        UND = new ULocale("und");
        EMPTY_STRING_ARRAY = new String[0];
        POW10 = new int[]{1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    }

    private static ServiceShim getShim() {
        if (shim == null) {
            try {
                Class<?> cls = Class.forName("com.ibm.icu.util.CurrencyServiceShim");
                shim = (ServiceShim)cls.newInstance();
            }
            catch (Exception e) {
                if (DEBUG) {
                    e.printStackTrace();
                }
                throw new RuntimeException(e.getMessage());
            }
        }
        return shim;
    }

    public static Currency getInstance(Locale locale) {
        return Currency.getInstance(ULocale.forLocale(locale));
    }

    public static Currency getInstance(ULocale locale) {
        String currency = locale.getKeywordValue("currency");
        if (currency != null) {
            return Currency.getInstance(currency);
        }
        if (shim == null) {
            return Currency.createCurrency(locale);
        }
        return shim.createInstance(locale);
    }

    public static String[] getAvailableCurrencyCodes(ULocale loc, Date d) {
        CurrencyMetaInfo.CurrencyFilter filter;
        CurrencyMetaInfo info = CurrencyMetaInfo.getInstance();
        List<String> list = info.currencies(filter = CurrencyMetaInfo.CurrencyFilter.onDate(d).withRegion(loc.getCountry()));
        if (list.isEmpty()) {
            return null;
        }
        return list.toArray(new String[list.size()]);
    }

    static Currency createCurrency(ULocale loc) {
        String variant = loc.getVariant();
        if ("EURO".equals(variant)) {
            return new Currency(EUR_STR);
        }
        String country = loc.getCountry();
        CurrencyMetaInfo info = CurrencyMetaInfo.getInstance();
        List<String> list = info.currencies(CurrencyMetaInfo.CurrencyFilter.onRegion(country));
        if (list.size() > 0) {
            String code = list.get(0);
            boolean isPreEuro = "PREEURO".equals(variant);
            if (isPreEuro && EUR_STR.equals(code)) {
                if (list.size() < 2) {
                    return null;
                }
                code = list.get(1);
            }
            return new Currency(code);
        }
        return null;
    }

    public static Currency getInstance(String theISOCode) {
        if (theISOCode == null) {
            throw new NullPointerException("The input currency code is null.");
        }
        boolean is3alpha = true;
        if (theISOCode.length() != 3) {
            is3alpha = false;
        } else {
            int i = 0;
            while (i < 3) {
                char ch = theISOCode.charAt(i);
                if (ch < 'A' || ch > 'Z' && ch < 'a' || ch > 'z') {
                    is3alpha = false;
                    break;
                }
                ++i;
            }
        }
        if (!is3alpha) {
            throw new IllegalArgumentException("The input currency code is not 3-letter alphabetic code.");
        }
        return new Currency(theISOCode.toUpperCase(Locale.US));
    }

    public static Object registerInstance(Currency currency, ULocale locale) {
        return Currency.getShim().registerInstance(currency, locale);
    }

    public static boolean unregister(Object registryKey) {
        if (registryKey == null) {
            throw new IllegalArgumentException("registryKey must not be null");
        }
        if (shim == null) {
            return false;
        }
        return shim.unregister(registryKey);
    }

    public static Locale[] getAvailableLocales() {
        if (shim == null) {
            return ICUResourceBundle.getAvailableLocales();
        }
        return shim.getAvailableLocales();
    }

    public static ULocale[] getAvailableULocales() {
        if (shim == null) {
            return ICUResourceBundle.getAvailableULocales();
        }
        return shim.getAvailableULocales();
    }

    public static final String[] getKeywordValuesForLocale(String key, ULocale locale, boolean commonlyUsed) {
        CurrencyMetaInfo.CurrencyFilter filter;
        List<String> result;
        if (!"currency".equals(key)) {
            return EMPTY_STRING_ARRAY;
        }
        CurrencyMetaInfo info = CurrencyMetaInfo.getInstance();
        if (!commonlyUsed) {
            List<String> result2 = info.currencies(null);
            return result2.toArray(new String[result2.size()]);
        }
        String prefRegion = locale.getCountry();
        if (prefRegion.length() == 0) {
            if (UND.equals(locale)) {
                return EMPTY_STRING_ARRAY;
            }
            ULocale loc = ULocale.addLikelySubtags(locale);
            prefRegion = loc.getCountry();
        }
        if ((result = info.currencies(filter = CurrencyMetaInfo.CurrencyFilter.now().withRegion(prefRegion))).size() == 0) {
            return EMPTY_STRING_ARRAY;
        }
        return result.toArray(new String[result.size()]);
    }

    public int hashCode() {
        return this.isoCode.hashCode();
    }

    public boolean equals(Object rhs) {
        if (rhs == null) {
            return false;
        }
        if (rhs == this) {
            return true;
        }
        try {
            Currency c = (Currency)rhs;
            return this.isoCode.equals(c.isoCode);
        }
        catch (ClassCastException classCastException) {
            return false;
        }
    }

    public String getCurrencyCode() {
        return this.isoCode;
    }

    public String getSymbol() {
        return this.getSymbol(ULocale.getDefault());
    }

    public String getSymbol(Locale loc) {
        return this.getSymbol(ULocale.forLocale(loc));
    }

    public String getSymbol(ULocale uloc) {
        return this.getName(uloc, 0, new boolean[1]);
    }

    public String getName(Locale locale, int nameStyle, boolean[] isChoiceFormat) {
        return this.getName(ULocale.forLocale(locale), nameStyle, isChoiceFormat);
    }

    public String getName(ULocale locale, int nameStyle, boolean[] isChoiceFormat) {
        if (nameStyle != 0 && nameStyle != 1) {
            throw new IllegalArgumentException("bad name style: " + nameStyle);
        }
        if (isChoiceFormat != null) {
            isChoiceFormat[0] = false;
        }
        CurrencyDisplayNames names = CurrencyDisplayNames.getInstance(locale);
        return nameStyle == 0 ? names.getSymbol(this.isoCode) : names.getName(this.isoCode);
    }

    public String getName(Locale locale, int nameStyle, String pluralCount, boolean[] isChoiceFormat) {
        return this.getName(ULocale.forLocale(locale), nameStyle, pluralCount, isChoiceFormat);
    }

    public String getName(ULocale locale, int nameStyle, String pluralCount, boolean[] isChoiceFormat) {
        if (nameStyle != 2) {
            return this.getName(locale, nameStyle, isChoiceFormat);
        }
        if (isChoiceFormat != null) {
            isChoiceFormat[0] = false;
        }
        CurrencyDisplayNames names = CurrencyDisplayNames.getInstance(locale);
        return names.getPluralName(this.isoCode, pluralCount);
    }

    public static String parse(ULocale locale, String text, int type, ParsePosition pos) {
        Vector<TextTrieMap<CurrencyStringInfo>> currencyTrieVec = CURRENCY_NAME_CACHE.get(locale);
        if (currencyTrieVec == null) {
            TextTrieMap currencyNameTrie = new TextTrieMap(true);
            TextTrieMap currencySymbolTrie = new TextTrieMap(false);
            currencyTrieVec = new Vector();
            currencyTrieVec.addElement(currencySymbolTrie);
            currencyTrieVec.addElement(currencyNameTrie);
            Currency.setupCurrencyTrieVec(locale, currencyTrieVec);
            CURRENCY_NAME_CACHE.put(locale, currencyTrieVec);
        }
        int maxLength = 0;
        String isoResult = null;
        TextTrieMap<CurrencyStringInfo> currencyNameTrie = currencyTrieVec.elementAt(1);
        CurrencyNameResultHandler handler = new CurrencyNameResultHandler();
        currencyNameTrie.find(text, pos.getIndex(), handler);
        List<CurrencyStringInfo> list = handler.getMatchedCurrencyNames();
        if (list != null && list.size() != 0) {
            for (CurrencyStringInfo info : list) {
                String isoCode = info.getISOCode();
                String currencyString = info.getCurrencyString();
                if (currencyString.length() <= maxLength) continue;
                maxLength = currencyString.length();
                isoResult = isoCode;
            }
        }
        if (type != 1) {
            TextTrieMap<CurrencyStringInfo> currencySymbolTrie = currencyTrieVec.elementAt(0);
            handler = new CurrencyNameResultHandler();
            currencySymbolTrie.find(text, pos.getIndex(), handler);
            list = handler.getMatchedCurrencyNames();
            if (list != null && list.size() != 0) {
                for (CurrencyStringInfo info : list) {
                    String isoCode = info.getISOCode();
                    String currencyString = info.getCurrencyString();
                    if (currencyString.length() <= maxLength) continue;
                    maxLength = currencyString.length();
                    isoResult = isoCode;
                }
            }
        }
        int start = pos.getIndex();
        pos.setIndex(start + maxLength);
        return isoResult;
    }

    private static void setupCurrencyTrieVec(ULocale locale, Vector<TextTrieMap<CurrencyStringInfo>> trieVec) {
        String isoCode;
        TextTrieMap<CurrencyStringInfo> symTrie = trieVec.elementAt(0);
        TextTrieMap<CurrencyStringInfo> trie = trieVec.elementAt(1);
        CurrencyDisplayNames names = CurrencyDisplayNames.getInstance(locale);
        for (Map.Entry<String, String> e : names.symbolMap().entrySet()) {
            String symbol = e.getKey();
            isoCode = e.getValue();
            symTrie.put(symbol, new CurrencyStringInfo(isoCode, symbol));
        }
        for (Map.Entry<String, String> e : names.nameMap().entrySet()) {
            String name = e.getKey();
            isoCode = e.getValue();
            trie.put(name, new CurrencyStringInfo(isoCode, name));
        }
    }

    public int getDefaultFractionDigits() {
        CurrencyMetaInfo info = CurrencyMetaInfo.getInstance();
        CurrencyMetaInfo.CurrencyDigits digits = info.currencyDigits(this.isoCode);
        return digits.fractionDigits;
    }

    public double getRoundingIncrement() {
        CurrencyMetaInfo info = CurrencyMetaInfo.getInstance();
        CurrencyMetaInfo.CurrencyDigits digits = info.currencyDigits(this.isoCode);
        byte data1 = digits.roundingIncrement;
        if (data1 == 0) {
            return 0.0;
        }
        byte data0 = digits.fractionDigits;
        if (data0 < 0 || data0 >= POW10.length) {
            return 0.0;
        }
        return (double)data1 / (double)POW10[data0];
    }

    public String toString() {
        return this.isoCode;
    }

    protected Currency(String theISOCode) {
        this.isoCode = theISOCode;
    }

    public final ULocale getLocale(ULocale.Type type) {
        ULocale result;
        ULocale uLocale = result = type == ULocale.ACTUAL_LOCALE ? this.actualLocale : this.validLocale;
        if (result == null) {
            return ULocale.ROOT;
        }
        return result;
    }

    final void setLocale(ULocale valid, ULocale actual) {
        if (valid == null != (actual == null)) {
            throw new IllegalArgumentException();
        }
        this.validLocale = valid;
        this.actualLocale = actual;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class CurrencyNameResultHandler
    implements TextTrieMap.ResultHandler<CurrencyStringInfo> {
        private ArrayList<CurrencyStringInfo> resultList;

        private CurrencyNameResultHandler() {
        }

        @Override
        public boolean handlePrefixMatch(int matchLength, Iterator<CurrencyStringInfo> values) {
            if (this.resultList == null) {
                this.resultList = new ArrayList();
            }
            while (values.hasNext()) {
                CurrencyStringInfo item = values.next();
                if (item == null) break;
                int i = 0;
                while (i < this.resultList.size()) {
                    CurrencyStringInfo tmp = this.resultList.get(i);
                    if (item.getISOCode() == tmp.getISOCode()) {
                        if (matchLength <= tmp.getCurrencyString().length()) break;
                        this.resultList.set(i, item);
                        break;
                    }
                    ++i;
                }
                if (i != this.resultList.size()) continue;
                this.resultList.add(item);
            }
            return true;
        }

        List<CurrencyStringInfo> getMatchedCurrencyNames() {
            if (this.resultList == null || this.resultList.size() == 0) {
                return null;
            }
            return this.resultList;
        }
    }

    private static final class CurrencyStringInfo {
        private String isoCode;
        private String currencyString;

        public CurrencyStringInfo(String isoCode, String currencyString) {
            this.isoCode = isoCode;
            this.currencyString = currencyString;
        }

        private String getISOCode() {
            return this.isoCode;
        }

        private String getCurrencyString() {
            return this.currencyString;
        }
    }

    static abstract class ServiceShim {
        ServiceShim() {
        }

        abstract ULocale[] getAvailableULocales();

        abstract Locale[] getAvailableLocales();

        abstract Currency createInstance(ULocale var1);

        abstract Object registerInstance(Currency var1, ULocale var2);

        abstract boolean unregister(Object var1);
    }
}

