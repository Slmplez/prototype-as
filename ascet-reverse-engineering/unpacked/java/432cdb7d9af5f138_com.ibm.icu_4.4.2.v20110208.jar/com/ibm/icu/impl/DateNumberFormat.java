/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.FieldPosition;
import java.text.ParsePosition;

public final class DateNumberFormat
extends NumberFormat {
    private static final long serialVersionUID = -6315692826916346953L;
    private char zeroDigit;
    private char minusSign;
    private boolean positiveOnly = false;
    private transient char[] decimalBuf = new char[20];
    private static SimpleCache<ULocale, char[]> CACHE = new SimpleCache();
    private int maxIntDigits;
    private int minIntDigits;
    private static final long PARSE_THRESHOLD = 0xCCCCCCCCCCCCCCBL;

    public DateNumberFormat(ULocale loc, char zeroDigitIn) {
        this.initialize(loc, zeroDigitIn);
    }

    private void initialize(ULocale loc, char zeroDigitIn) {
        char[] elems = CACHE.get(loc);
        if (elems == null) {
            ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", loc);
            String[] numberElements = rb.getStringArray("NumberElements");
            elems = new char[]{zeroDigitIn, numberElements[6].charAt(0)};
            CACHE.put(loc, elems);
        }
        this.zeroDigit = elems[0];
        this.minusSign = elems[1];
    }

    public void setMaximumIntegerDigits(int newValue) {
        this.maxIntDigits = newValue;
    }

    public int getMaximumIntegerDigits() {
        return this.maxIntDigits;
    }

    public void setMinimumIntegerDigits(int newValue) {
        this.minIntDigits = newValue;
    }

    public int getMinimumIntegerDigits() {
        return this.minIntDigits;
    }

    public void setParsePositiveOnly(boolean isPositiveOnly) {
        this.positiveOnly = isPositiveOnly;
    }

    public char getZeroDigit() {
        return this.zeroDigit;
    }

    public void setZeroDigit(char zero) {
        this.zeroDigit = zero;
    }

    public StringBuffer format(double number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new UnsupportedOperationException("StringBuffer format(double, StringBuffer, FieldPostion) is not implemented");
    }

    public StringBuffer format(long numberL, StringBuffer toAppendTo, FieldPosition pos) {
        if (numberL < 0L) {
            toAppendTo.append(this.minusSign);
        }
        int number = (int)numberL;
        int limit = this.decimalBuf.length < this.maxIntDigits ? this.decimalBuf.length : this.maxIntDigits;
        int index = limit - 1;
        while (true) {
            this.decimalBuf[index] = (char)(number % 10 + this.zeroDigit);
            if (index == 0 || (number /= 10) == 0) break;
            --index;
        }
        int padding = this.minIntDigits - (limit - index);
        while (padding > 0) {
            this.decimalBuf[--index] = this.zeroDigit;
            --padding;
        }
        int length = limit - index;
        toAppendTo.append(this.decimalBuf, index, length);
        pos.setBeginIndex(0);
        if (pos.getField() == 0) {
            pos.setEndIndex(length);
        } else {
            pos.setEndIndex(0);
        }
        return toAppendTo;
    }

    public StringBuffer format(BigInteger number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new UnsupportedOperationException("StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented");
    }

    public StringBuffer format(BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new UnsupportedOperationException("StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented");
    }

    public StringBuffer format(com.ibm.icu.math.BigDecimal number, StringBuffer toAppendTo, FieldPosition pos) {
        throw new UnsupportedOperationException("StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented");
    }

    public Number parse(String text, ParsePosition parsePosition) {
        long num = 0L;
        boolean sawNumber = false;
        boolean negative = false;
        int base = parsePosition.getIndex();
        int offset = 0;
        while (base + offset < text.length()) {
            char ch = text.charAt(base + offset);
            if (offset == 0 && ch == this.minusSign) {
                if (this.positiveOnly) break;
                negative = true;
            } else {
                int digit = ch - this.zeroDigit;
                if (digit < 0 || 9 < digit) {
                    digit = UCharacter.digit(ch);
                }
                if (digit < 0 || digit > 9 || num >= 0xCCCCCCCCCCCCCCBL) break;
                sawNumber = true;
                num = num * 10L + (long)digit;
            }
            ++offset;
        }
        Long result = null;
        if (sawNumber) {
            num = negative ? num * -1L : num;
            result = new Long(num);
            parsePosition.setIndex(base + offset);
        }
        return result;
    }

    public boolean equals(Object obj) {
        if (obj == null || !super.equals(obj) || !(obj instanceof DateNumberFormat)) {
            return false;
        }
        DateNumberFormat other = (DateNumberFormat)obj;
        return this.maxIntDigits == other.maxIntDigits && this.minIntDigits == other.minIntDigits && this.zeroDigit == other.zeroDigit && this.minusSign == other.minusSign && this.positiveOnly == other.positiveOnly;
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        this.decimalBuf = new char[20];
    }
}

