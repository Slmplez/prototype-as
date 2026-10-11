/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.util.GregorianCalendar;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CurrencyMetaInfo {
    private static final CurrencyMetaInfo impl;
    private static final boolean hasData;
    protected static final CurrencyDigits defaultDigits;

    static {
        defaultDigits = new CurrencyDigits(2, 0);
        CurrencyMetaInfo temp = null;
        boolean tempHasData = false;
        try {
            Class<?> clzz = Class.forName("com.ibm.icu.impl.ICUCurrencyMetaInfo");
            temp = (CurrencyMetaInfo)clzz.newInstance();
            tempHasData = true;
        }
        catch (Throwable throwable) {
            temp = new CurrencyMetaInfo();
        }
        impl = temp;
        hasData = tempHasData;
    }

    public static CurrencyMetaInfo getInstance() {
        return impl;
    }

    public static boolean hasData() {
        return hasData;
    }

    protected CurrencyMetaInfo() {
    }

    public List<CurrencyInfo> currencyInfo(CurrencyFilter filter) {
        return Collections.emptyList();
    }

    public List<String> currencies(CurrencyFilter filter) {
        return Collections.emptyList();
    }

    public List<String> regions(CurrencyFilter filter) {
        return Collections.emptyList();
    }

    public CurrencyDigits currencyDigits(String isoCode) {
        return defaultDigits;
    }

    private static String dateString(long date) {
        if (date == Long.MAX_VALUE || date == Long.MIN_VALUE) {
            return null;
        }
        GregorianCalendar gc = new GregorianCalendar();
        gc.setTimeInMillis(date);
        return "" + gc.get(1) + '-' + (gc.get(2) + 1) + '-' + gc.get(5);
    }

    private static String debugString(Object o) {
        StringBuilder sb = new StringBuilder();
        try {
            Field[] fieldArray = o.getClass().getFields();
            int n = fieldArray.length;
            int n2 = 0;
            while (n2 < n) {
                String s;
                Field f = fieldArray[n2];
                Object v = f.get(o);
                if (v != null && (s = v instanceof Date ? CurrencyMetaInfo.dateString(((Date)v).getTime()) : (v instanceof Long ? CurrencyMetaInfo.dateString((Long)v) : String.valueOf(v))) != null) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(f.getName()).append("='").append(s).append("'");
                }
                ++n2;
            }
        }
        catch (Throwable throwable) {}
        sb.insert(0, String.valueOf(o.getClass().getSimpleName()) + "(");
        sb.append(")");
        return sb.toString();
    }

    public static final class CurrencyDigits {
        public final byte fractionDigits;
        public final byte roundingIncrement;

        public CurrencyDigits(int fractionDigits, int roundingIncrement) {
            this.fractionDigits = (byte)fractionDigits;
            this.roundingIncrement = (byte)roundingIncrement;
        }

        public String toString() {
            return CurrencyMetaInfo.debugString(this);
        }
    }

    public static final class CurrencyFilter {
        public final String region;
        public final String currency;
        public final long from;
        public final long to;
        private static final CurrencyFilter ALL = new CurrencyFilter(null, null, null, null);

        private CurrencyFilter(String region, String currency, long from, long to) {
            this.region = region;
            this.currency = currency;
            this.from = from;
            this.to = to;
        }

        private CurrencyFilter(String region, String currency, Date dateFrom, Date dateTo) {
            this.region = region;
            this.currency = currency;
            this.from = dateFrom == null ? Long.MIN_VALUE : dateFrom.getTime();
            this.to = dateTo == null ? Long.MAX_VALUE : dateTo.getTime();
        }

        public static CurrencyFilter all() {
            return ALL;
        }

        public static CurrencyFilter now() {
            return ALL.withDate(new Date());
        }

        public static CurrencyFilter onRegion(String region) {
            return ALL.withRegion(region);
        }

        public static CurrencyFilter onCurrency(String currency) {
            return ALL.withCurrency(currency);
        }

        public static CurrencyFilter onDate(Date date) {
            return ALL.withDate(date);
        }

        public static CurrencyFilter onRange(Date from, Date to) {
            return ALL.withRange(from, to);
        }

        public CurrencyFilter withRegion(String region) {
            return new CurrencyFilter(region, this.currency, this.from, this.to);
        }

        public CurrencyFilter withCurrency(String currency) {
            return new CurrencyFilter(this.region, currency, this.from, this.to);
        }

        public CurrencyFilter withDate(Date date) {
            return new CurrencyFilter(this.region, this.currency, date, date);
        }

        public CurrencyFilter withRange(Date from, Date to) {
            return new CurrencyFilter(this.region, this.currency, from, to);
        }

        public boolean equals(Object rhs) {
            return rhs instanceof CurrencyFilter && this.equals((CurrencyFilter)rhs);
        }

        public boolean equals(CurrencyFilter rhs) {
            return this == rhs || rhs != null && CurrencyFilter.equals(this.region, rhs.region) && CurrencyFilter.equals(this.currency, rhs.currency) && this.from == rhs.from && this.to == rhs.to;
        }

        public int hashCode() {
            int hc = 0;
            if (this.region != null) {
                hc = this.region.hashCode();
            }
            if (this.currency != null) {
                hc = hc * 31 + this.currency.hashCode();
            }
            hc = hc * 31 + (int)this.from;
            hc = hc * 31 + (int)(this.from >>> 32);
            hc = hc * 31 + (int)this.to;
            hc = hc * 31 + (int)(this.to >>> 32);
            return hc;
        }

        public String toString() {
            return CurrencyMetaInfo.debugString(this);
        }

        private static boolean equals(String lhs, String rhs) {
            return lhs == rhs || lhs != null && lhs.equals(rhs);
        }
    }

    public static final class CurrencyInfo {
        public final String region;
        public final String code;
        public final long from;
        public final long to;
        public final short priority;

        public CurrencyInfo(String region, String code, long from, long to, int priority) {
            this.region = region;
            this.code = code;
            this.from = from;
            this.to = to;
            this.priority = (short)priority;
        }

        public String toString() {
            return CurrencyMetaInfo.debugString(this);
        }
    }
}

