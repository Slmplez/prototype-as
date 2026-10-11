/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.CollationElementIterator;
import com.ibm.icu.text.Collator;
import com.ibm.icu.text.RbnfLenientScanner;
import com.ibm.icu.text.RbnfLenientScannerProvider;
import com.ibm.icu.text.RuleBasedCollator;
import com.ibm.icu.util.ULocale;
import java.util.HashMap;
import java.util.Map;

public class RbnfScannerProviderImpl
implements RbnfLenientScannerProvider {
    private Map<String, RbnfLenientScanner> cache = new HashMap<String, RbnfLenientScanner>();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public RbnfLenientScanner get(ULocale locale, String extras) {
        RbnfLenientScanner result = null;
        String key = String.valueOf(locale.toString()) + "/" + extras;
        Map<String, RbnfLenientScanner> map = this.cache;
        synchronized (map) {
            result = this.cache.get(key);
            if (result != null) {
                return result;
            }
        }
        result = this.createScanner(locale, extras);
        map = this.cache;
        synchronized (map) {
            this.cache.put(key, result);
        }
        return result;
    }

    protected RbnfLenientScanner createScanner(ULocale locale, String extras) {
        RuleBasedCollator collator = null;
        try {
            collator = (RuleBasedCollator)Collator.getInstance(locale.toLocale());
            if (extras != null) {
                String rules = String.valueOf(collator.getRules()) + extras;
                collator = new RuleBasedCollator(rules);
            }
            collator.setDecomposition(17);
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println("++++");
            collator = null;
        }
        return new RbnfLenientScannerImpl(collator);
    }

    private static class RbnfLenientScannerImpl
    implements RbnfLenientScanner {
        private final RuleBasedCollator collator;

        private RbnfLenientScannerImpl(RuleBasedCollator rbc) {
            this.collator = rbc;
        }

        public boolean allIgnorable(String s) {
            CollationElementIterator iter = this.collator.getCollationElementIterator(s);
            int o = iter.next();
            while (o != -1 && CollationElementIterator.primaryOrder(o) == 0) {
                o = iter.next();
            }
            return o == -1;
        }

        public int[] findText(String str, String key, int startingAt) {
            int p = startingAt;
            int keyLen = 0;
            while (p < str.length() && keyLen == 0) {
                keyLen = this.prefixLength(str.substring(p), key);
                if (keyLen != 0) {
                    return new int[]{p, keyLen};
                }
                ++p;
            }
            int[] nArray = new int[2];
            nArray[0] = -1;
            return nArray;
        }

        /*
         * Unable to fully structure code
         */
        public int[] findText2(String str, String key, int startingAt) {
            strIter = this.collator.getCollationElementIterator(str);
            keyIter = this.collator.getCollationElementIterator(key);
            keyStart = -1;
            strIter.setOffset(startingAt);
            oStr = strIter.next();
            oKey = keyIter.next();
            ** GOTO lbl29
            {
                oStr = strIter.next();
                do {
                    if (oStr != -1 && CollationElementIterator.primaryOrder(oStr) == 0) continue block0;
                    while (oKey != -1 && CollationElementIterator.primaryOrder(oKey) == 0) {
                        oKey = keyIter.next();
                    }
                    if (oStr == -1) {
                        v0 = new int[2];
                        v0[0] = -1;
                        return v0;
                    }
                    if (oKey == -1) break block0;
                    if (CollationElementIterator.primaryOrder(oStr) == CollationElementIterator.primaryOrder(oKey)) {
                        keyStart = strIter.getOffset();
                        oStr = strIter.next();
                        oKey = keyIter.next();
                        continue;
                    }
                    if (keyStart != -1) {
                        keyStart = -1;
                        keyIter.reset();
                        continue;
                    }
                    oStr = strIter.next();
lbl29:
                    // 4 sources

                } while (oKey != -1);
            }
            if (oKey == -1) {
                return new int[]{keyStart, strIter.getOffset() - keyStart};
            }
            v1 = new int[2];
            v1[0] = -1;
            return v1;
        }

        /*
         * Unable to fully structure code
         */
        public int prefixLength(String str, String prefix) {
            strIter = this.collator.getCollationElementIterator(str);
            prefixIter = this.collator.getCollationElementIterator(prefix);
            oStr = strIter.next();
            oPrefix = prefixIter.next();
            ** GOTO lbl19
            {
                oStr = strIter.next();
                do {
                    if (CollationElementIterator.primaryOrder(oStr) == 0 && oStr != -1) continue block0;
                    while (CollationElementIterator.primaryOrder(oPrefix) == 0 && oPrefix != -1) {
                        oPrefix = prefixIter.next();
                    }
                    if (oPrefix == -1) break block0;
                    if (oStr == -1) {
                        return 0;
                    }
                    if (CollationElementIterator.primaryOrder(oStr) != CollationElementIterator.primaryOrder(oPrefix)) {
                        return 0;
                    }
                    oStr = strIter.next();
                    oPrefix = prefixIter.next();
lbl19:
                    // 2 sources

                } while (oPrefix != -1);
            }
            result = strIter.getOffset();
            if (oStr != -1) {
                --result;
            }
            return result;
        }
    }
}

