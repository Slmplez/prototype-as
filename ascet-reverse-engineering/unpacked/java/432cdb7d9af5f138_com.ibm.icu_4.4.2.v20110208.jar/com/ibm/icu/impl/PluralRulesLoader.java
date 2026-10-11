/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.text.PluralRules;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PluralRulesLoader {
    private final Map<String, PluralRules> rulesIdToRules = new HashMap<String, PluralRules>();
    private Map<String, String> localeIdToRulesId;
    private Map<String, ULocale> rulesIdToEquivalentULocale;
    public static final PluralRulesLoader loader = new PluralRulesLoader();

    private PluralRulesLoader() {
    }

    public ULocale[] getAvailableULocales() {
        Set<String> keys = this.getLocaleIdToRulesIdMap().keySet();
        ULocale[] locales = new ULocale[keys.size()];
        int n = 0;
        Iterator<String> iter = keys.iterator();
        while (iter.hasNext()) {
            locales[n++] = ULocale.createCanonical(iter.next());
        }
        return locales;
    }

    public ULocale getFunctionalEquivalent(ULocale locale, boolean[] isAvailable) {
        String rulesId;
        if (isAvailable != null && isAvailable.length > 0) {
            String localeId = ULocale.canonicalize(locale.getBaseName());
            Map<String, String> idMap = this.getLocaleIdToRulesIdMap();
            isAvailable[0] = idMap.containsKey(localeId);
        }
        if ((rulesId = this.getRulesIdForLocale(locale)) == null || rulesId.trim().length() == 0) {
            return ULocale.ROOT;
        }
        ULocale result = this.getRulesIdToEquivalentULocaleMap().get(rulesId);
        if (result == null) {
            return ULocale.ROOT;
        }
        return result;
    }

    private Map<String, String> getLocaleIdToRulesIdMap() {
        this.checkBuildRulesIdMaps();
        return this.localeIdToRulesId;
    }

    private Map<String, ULocale> getRulesIdToEquivalentULocaleMap() {
        this.checkBuildRulesIdMaps();
        return this.rulesIdToEquivalentULocale;
    }

    private void checkBuildRulesIdMaps() {
        if (this.localeIdToRulesId == null) {
            try {
                UResourceBundle pluralb = this.getPluralBundle();
                UResourceBundle localeb = pluralb.get("locales");
                this.localeIdToRulesId = new TreeMap<String, String>();
                this.rulesIdToEquivalentULocale = new HashMap<String, ULocale>();
                int i = 0;
                while (i < localeb.getSize()) {
                    UResourceBundle b = localeb.get(i);
                    String id = b.getKey();
                    String value = b.getString().intern();
                    this.localeIdToRulesId.put(id, value);
                    if (!this.rulesIdToEquivalentULocale.containsKey(value)) {
                        this.rulesIdToEquivalentULocale.put(value, new ULocale(id));
                    }
                    ++i;
                }
            }
            catch (MissingResourceException missingResourceException) {
                this.localeIdToRulesId = Collections.emptyMap();
                this.rulesIdToEquivalentULocale = Collections.emptyMap();
            }
        }
    }

    public String getRulesIdForLocale(ULocale locale) {
        Map<String, String> idMap = this.getLocaleIdToRulesIdMap();
        String localeId = ULocale.canonicalize(locale.getBaseName());
        String rulesId = null;
        while ((rulesId = idMap.get(localeId)) == null) {
            int ix = localeId.lastIndexOf("_");
            if (ix == -1) break;
            localeId = localeId.substring(0, ix);
        }
        return rulesId;
    }

    public PluralRules getRulesForRulesId(String rulesId) {
        PluralRules rules = this.rulesIdToRules.get(rulesId);
        if (rules == null) {
            try {
                UResourceBundle pluralb = this.getPluralBundle();
                UResourceBundle rulesb = pluralb.get("rules");
                UResourceBundle setb = rulesb.get(rulesId);
                StringBuilder sb = new StringBuilder();
                int i = 0;
                while (i < setb.getSize()) {
                    UResourceBundle b = setb.get(i);
                    if (i > 0) {
                        sb.append("; ");
                    }
                    sb.append(b.getKey());
                    sb.append(": ");
                    sb.append(b.getString());
                    ++i;
                }
                rules = PluralRules.parseDescription(sb.toString());
            }
            catch (ParseException parseException) {
            }
            catch (MissingResourceException missingResourceException) {}
            this.rulesIdToRules.put(rulesId, rules);
        }
        return rules;
    }

    public UResourceBundle getPluralBundle() throws MissingResourceException {
        return ICUResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "plurals", ICUResourceBundle.ICU_DATA_CLASS_LOADER, true);
    }

    public PluralRules forLocale(ULocale locale) {
        String rulesId = this.getRulesIdForLocale(locale);
        if (rulesId == null || rulesId.trim().length() == 0) {
            return PluralRules.DEFAULT;
        }
        PluralRules rules = this.getRulesForRulesId(rulesId);
        if (rules == null) {
            rules = PluralRules.DEFAULT;
        }
        return rules;
    }
}

