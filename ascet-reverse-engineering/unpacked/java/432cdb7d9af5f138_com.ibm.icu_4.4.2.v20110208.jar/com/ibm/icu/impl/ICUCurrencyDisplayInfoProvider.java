/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CurrencyData;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeMap;

public class ICUCurrencyDisplayInfoProvider
implements CurrencyData.CurrencyDisplayInfoProvider {
    public CurrencyData.CurrencyDisplayInfo getInstance(ULocale locale, boolean withFallback) {
        int status;
        ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/curr", locale);
        if (!(withFallback || (status = rb.getLoadingStatus()) != 3 && status != 2)) {
            return CurrencyData.DefaultInfo.getWithFallback(false);
        }
        return new ICUCurrencyDisplayInfo(rb, withFallback);
    }

    public boolean hasData() {
        return true;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ICUCurrencyDisplayInfo
    extends CurrencyData.CurrencyDisplayInfo {
        private final boolean fallback;
        private final ICUResourceBundle rb;
        private final ICUResourceBundle currencies;
        private final ICUResourceBundle plurals;
        private SoftReference<Map<String, String>> _symbolMapRef;
        private SoftReference<Map<String, String>> _nameMapRef;

        public ICUCurrencyDisplayInfo(ICUResourceBundle rb, boolean fallback) {
            this.fallback = fallback;
            this.rb = rb;
            this.currencies = rb.findTopLevel("Currencies");
            this.plurals = rb.findTopLevel("CurrencyPlurals");
        }

        @Override
        public ULocale getLocale() {
            return this.rb.getULocale();
        }

        @Override
        public String getName(String isoCode) {
            return this.getName(isoCode, false);
        }

        @Override
        public String getSymbol(String isoCode) {
            return this.getName(isoCode, true);
        }

        private String getName(String isoCode, boolean symbolName) {
            ICUResourceBundle result;
            if (this.currencies != null && (result = this.currencies.findWithFallback(isoCode)) != null) {
                int status;
                if (!(this.fallback || (status = result.getLoadingStatus()) != 3 && status != 2)) {
                    return null;
                }
                return result.getString(symbolName ? 0 : 1);
            }
            return this.fallback ? isoCode : null;
        }

        @Override
        public String getPluralName(String isoCode, String pluralKey) {
            ICUResourceBundle pluralsBundle;
            if (this.plurals != null && (pluralsBundle = this.plurals.findWithFallback(isoCode)) != null) {
                ICUResourceBundle pluralBundle = pluralsBundle.findWithFallback(pluralKey);
                if (pluralBundle == null) {
                    if (!this.fallback) {
                        return null;
                    }
                    pluralBundle = pluralsBundle.findWithFallback("other");
                    if (pluralBundle == null) {
                        return this.getName(isoCode);
                    }
                }
                return pluralBundle.getString();
            }
            return this.fallback ? this.getName(isoCode) : null;
        }

        @Override
        public Map<String, String> symbolMap() {
            Map<String, String> map;
            Map<String, String> map2 = map = this._symbolMapRef == null ? null : this._symbolMapRef.get();
            if (map == null) {
                map = this._createSymbolMap();
                this._symbolMapRef = new SoftReference<Map<String, String>>(map);
            }
            return map;
        }

        @Override
        public Map<String, String> nameMap() {
            Map<String, String> map;
            Map<String, String> map2 = map = this._nameMapRef == null ? null : this._nameMapRef.get();
            if (map == null) {
                map = this._createNameMap();
                this._nameMapRef = new SoftReference<Map<String, String>>(map);
            }
            return map;
        }

        @Override
        public Map<String, String> getUnitPatterns() {
            HashMap<String, String> result = new HashMap<String, String>();
            ULocale locale = this.rb.getULocale();
            while (locale != null) {
                ICUResourceBundle cr;
                ICUResourceBundle r = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/curr", locale);
                if (r != null && (cr = r.findWithFallback("CurrencyUnitPatterns")) != null) {
                    int index = 0;
                    int size = cr.getSize();
                    while (index < size) {
                        ICUResourceBundle b = (ICUResourceBundle)cr.get(index);
                        String key = b.getKey();
                        if (!result.containsKey(key)) {
                            result.put(key, b.getString());
                        }
                        ++index;
                    }
                }
                locale = locale.getFallback();
            }
            return Collections.unmodifiableMap(result);
        }

        @Override
        public CurrencyData.CurrencyFormatInfo getFormatInfo(String isoCode) {
            ICUResourceBundle crb = this.currencies.findWithFallback(isoCode);
            if (crb != null && crb.getSize() > 2 && (crb = crb.at(2)) != null) {
                String pattern = crb.getString(0);
                char separator = crb.getString(1).charAt(0);
                char groupingSeparator = crb.getString(2).charAt(0);
                return new CurrencyData.CurrencyFormatInfo(pattern, separator, groupingSeparator);
            }
            return null;
        }

        @Override
        public CurrencyData.CurrencySpacingInfo getSpacingInfo() {
            ICUResourceBundle srb = this.rb.findWithFallback("currencySpacing");
            if (srb != null) {
                ICUResourceBundle brb = srb.findWithFallback("beforeCurrency");
                ICUResourceBundle arb = srb.findWithFallback("afterCurrency");
                if (brb != null && brb != null) {
                    String beforeCurrencyMatch = brb.findWithFallback("currencyMatch").getString();
                    String beforeContextMatch = brb.findWithFallback("surroundingMatch").getString();
                    String beforeInsert = brb.findWithFallback("insertBetween").getString();
                    String afterCurrencyMatch = arb.findWithFallback("currencyMatch").getString();
                    String afterContextMatch = arb.findWithFallback("surroundingMatch").getString();
                    String afterInsert = arb.findWithFallback("insertBetween").getString();
                    return new CurrencyData.CurrencySpacingInfo(beforeCurrencyMatch, beforeContextMatch, beforeInsert, afterCurrencyMatch, afterContextMatch, afterInsert);
                }
            }
            return this.fallback ? CurrencyData.CurrencySpacingInfo.DEFAULT : null;
        }

        private Map<String, String> _createSymbolMap() {
            HashMap<String, String> result = new HashMap<String, String>();
            ULocale locale = this.rb.getULocale();
            while (locale != null) {
                ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/curr", locale);
                ICUResourceBundle curr = bundle.findTopLevel("Currencies");
                if (curr != null) {
                    int i = 0;
                    while (i < curr.getSize()) {
                        ICUResourceBundle item = curr.at(i);
                        String isoCode = item.getKey();
                        if (!result.containsKey(isoCode)) {
                            result.put(isoCode, isoCode);
                            String symbol = item.getString(0);
                            result.put(symbol, isoCode);
                        }
                        ++i;
                    }
                }
                locale = locale.getFallback();
            }
            return Collections.unmodifiableMap(result);
        }

        private Map<String, String> _createNameMap() {
            TreeMap<String, String> result = new TreeMap<String, String>(String.CASE_INSENSITIVE_ORDER);
            HashSet<String> visited = new HashSet<String>();
            HashMap visitedPlurals = new HashMap();
            ULocale locale = this.rb.getULocale();
            while (locale != null) {
                ICUResourceBundle plurals;
                ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/curr", locale);
                ICUResourceBundle curr = bundle.findTopLevel("Currencies");
                if (curr != null) {
                    int i = 0;
                    while (i < curr.getSize()) {
                        ICUResourceBundle item = curr.at(i);
                        String isoCode = item.getKey();
                        if (!visited.contains(isoCode)) {
                            visited.add(isoCode);
                            String name = item.getString(1);
                            result.put(name, isoCode);
                        }
                        ++i;
                    }
                }
                if ((plurals = bundle.findTopLevel("CurrencyPlurals")) != null) {
                    int i = 0;
                    while (i < plurals.getSize()) {
                        ICUResourceBundle item = plurals.at(i);
                        String isoCode = item.getKey();
                        HashSet<String> pluralSet = (HashSet<String>)visitedPlurals.get(isoCode);
                        if (pluralSet == null) {
                            pluralSet = new HashSet<String>();
                            visitedPlurals.put(isoCode, pluralSet);
                        }
                        int j = 0;
                        while (j < item.getSize()) {
                            ICUResourceBundle plural = item.at(j);
                            String pluralType = plural.getKey();
                            if (!pluralSet.contains(pluralType)) {
                                String pluralName = plural.getString();
                                result.put(pluralName, isoCode);
                                pluralSet.add(pluralType);
                            }
                            ++j;
                        }
                        ++i;
                    }
                }
                locale = locale.getFallback();
            }
            return Collections.unmodifiableMap(result);
        }
    }
}

