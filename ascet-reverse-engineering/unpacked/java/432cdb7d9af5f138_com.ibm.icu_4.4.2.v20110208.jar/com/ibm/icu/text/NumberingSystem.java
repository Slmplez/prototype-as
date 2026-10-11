/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.UCharacterIterator;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import com.ibm.icu.util.UResourceBundleIterator;
import java.util.ArrayList;
import java.util.Locale;
import java.util.MissingResourceException;

class NumberingSystem {
    private String desc = "0123456789";
    private int radix = 10;
    private boolean algorithmic = false;
    private static ICUCache<String, NumberingSystem> cachedLocaleData = new SimpleCache<String, NumberingSystem>();
    private static ICUCache<String, NumberingSystem> cachedStringData = new SimpleCache<String, NumberingSystem>();

    public static NumberingSystem getInstance(int radix_in, boolean isAlgorithmic_in, String desc_in) {
        if (radix_in < 2) {
            throw new IllegalArgumentException("Invalid radix for numbering system");
        }
        if (!(isAlgorithmic_in || desc_in.length() == radix_in && NumberingSystem.isValidDigitString(desc_in))) {
            throw new IllegalArgumentException("Invalid digit string for numbering system");
        }
        NumberingSystem ns = new NumberingSystem();
        ns.radix = radix_in;
        ns.algorithmic = isAlgorithmic_in;
        ns.desc = desc_in;
        return ns;
    }

    public static NumberingSystem getInstance(Locale inLocale) {
        return NumberingSystem.getInstance(ULocale.forLocale(inLocale));
    }

    public static NumberingSystem getInstance(ULocale locale) {
        String defaultNumberingSystem;
        NumberingSystem ns;
        String numbersKeyword = locale.getKeywordValue("numbers");
        if (numbersKeyword != null && (ns = NumberingSystem.getInstanceByName(numbersKeyword)) != null) {
            return ns;
        }
        String baseName = locale.getBaseName();
        ns = cachedLocaleData.get(baseName);
        if (ns != null) {
            return ns;
        }
        try {
            ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
            defaultNumberingSystem = rb.getString("defaultNumberingSystem");
        }
        catch (MissingResourceException missingResourceException) {
            ns = new NumberingSystem();
            cachedLocaleData.put(baseName, ns);
            return ns;
        }
        ns = NumberingSystem.getInstanceByName(defaultNumberingSystem);
        if (ns != null) {
            cachedLocaleData.put(baseName, ns);
            return ns;
        }
        ns = new NumberingSystem();
        cachedLocaleData.put(baseName, ns);
        return ns;
    }

    public static NumberingSystem getInstance() {
        return NumberingSystem.getInstance(ULocale.getDefault());
    }

    public static NumberingSystem getInstanceByName(String name) {
        boolean isAlgorithmic;
        int radix;
        String description;
        NumberingSystem ns = cachedStringData.get(name);
        if (ns != null) {
            return ns;
        }
        try {
            UResourceBundle numberingSystemsInfo = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "numberingSystems");
            UResourceBundle nsCurrent = numberingSystemsInfo.get("numberingSystems");
            UResourceBundle nsTop = nsCurrent.get(name);
            description = nsTop.getString("desc");
            UResourceBundle nsRadixBundle = nsTop.get("radix");
            UResourceBundle nsAlgBundle = nsTop.get("algorithmic");
            radix = nsRadixBundle.getInt();
            int algorithmic = nsAlgBundle.getInt();
            isAlgorithmic = algorithmic == 1;
        }
        catch (MissingResourceException missingResourceException) {
            return null;
        }
        ns = NumberingSystem.getInstance(radix, isAlgorithmic, description);
        cachedStringData.put(name, ns);
        return ns;
    }

    public static String[] getAvailableNames() {
        UResourceBundle numberingSystemsInfo = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "numberingSystems");
        UResourceBundle nsCurrent = numberingSystemsInfo.get("numberingSystems");
        ArrayList<String> output = new ArrayList<String>();
        UResourceBundleIterator it = nsCurrent.getIterator();
        while (it.hasNext()) {
            UResourceBundle temp = it.next();
            String nsName = temp.getKey();
            output.add(nsName);
        }
        return output.toArray(new String[output.size()]);
    }

    public static boolean isValidDigitString(String str) {
        int c;
        int prev = 0;
        int i = 0;
        UCharacterIterator it = UCharacterIterator.getInstance(str);
        it.setToStart();
        while ((c = it.nextCodePoint()) != -1) {
            if (UCharacter.digit(c) != i) {
                return false;
            }
            if (prev != 0 && c != prev + 1) {
                return false;
            }
            if (UCharacter.isSupplementary(c)) {
                return false;
            }
            ++i;
            prev = c;
        }
        return true;
    }

    public int getRadix() {
        return this.radix;
    }

    public String getDescription() {
        return this.desc;
    }

    public boolean isAlgorithmic() {
        return this.algorithmic;
    }
}

