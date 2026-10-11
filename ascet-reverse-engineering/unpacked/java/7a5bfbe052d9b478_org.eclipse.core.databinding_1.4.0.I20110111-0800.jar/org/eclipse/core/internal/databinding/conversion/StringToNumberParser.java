/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.ParsePosition;
import org.eclipse.core.internal.databinding.BindingMessages;

public class StringToNumberParser {
    private static final BigDecimal FLOAT_MAX_BIG_DECIMAL = new BigDecimal(3.4028234663852886E38);
    private static final BigDecimal FLOAT_MIN_BIG_DECIMAL = new BigDecimal(-3.4028234663852886E38);
    private static final BigDecimal DOUBLE_MAX_BIG_DECIMAL = new BigDecimal(Double.MAX_VALUE);
    private static final BigDecimal DOUBLE_MIN_BIG_DECIMAL = new BigDecimal(-1.7976931348623157E308);

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ParseResult parse(Object value, NumberFormat numberFormat, boolean primitive) {
        if (!(value instanceof String)) {
            throw new IllegalArgumentException("Value to convert is not a String");
        }
        String source = (String)value;
        ParseResult result = new ParseResult();
        if (!primitive && source.trim().length() == 0) {
            return result;
        }
        NumberFormat numberFormat2 = numberFormat;
        synchronized (numberFormat2) {
            ParsePosition position = new ParsePosition(0);
            Number parseResult = null;
            parseResult = numberFormat.parse(source, position);
            if (position.getIndex() != source.length() || position.getErrorIndex() > -1) {
                result.position = position;
            } else {
                result.number = parseResult;
            }
        }
        return result;
    }

    public static String createParseErrorMessage(String value, ParsePosition position) {
        int errorIndex;
        int n = errorIndex = position.getErrorIndex() > -1 ? position.getErrorIndex() : position.getIndex();
        if (errorIndex < value.length()) {
            return BindingMessages.formatString("Validate_NumberParseError", new Object[]{value, new Integer(errorIndex + 1), new Character(value.charAt(errorIndex))});
        }
        return BindingMessages.formatString("Validate_NumberParseErrorNoCharacter", new Object[]{value, new Integer(errorIndex + 1)});
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static String createOutOfRangeMessage(Number minValue, Number maxValue, NumberFormat numberFormat) {
        String min = null;
        String max = null;
        NumberFormat numberFormat2 = numberFormat;
        synchronized (numberFormat2) {
            min = numberFormat.format((Object)minValue);
            max = numberFormat.format((Object)maxValue);
        }
        return BindingMessages.formatString("Validate_NumberOutOfRangeError", new Object[]{min, max});
    }

    public static boolean inIntegerRange(Number number) {
        return StringToNumberParser.checkInteger(number, 31);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean checkInteger(Number number, int bitLength) {
        BigInteger bigInteger = null;
        if (number instanceof Integer || number instanceof Long) {
            bigInteger = BigInteger.valueOf(number.longValue());
        } else if (number instanceof Float || number instanceof Double) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || doubleValue == Double.NEGATIVE_INFINITY || doubleValue == Double.POSITIVE_INFINITY) return false;
            bigInteger = new BigDecimal(doubleValue).toBigInteger();
        } else {
            bigInteger = number instanceof BigInteger ? (BigInteger)number : (number instanceof BigDecimal ? ((BigDecimal)number).toBigInteger() : new BigDecimal(number.doubleValue()).toBigInteger());
        }
        if (bigInteger == null) throw new IllegalArgumentException("Number of type [" + number.getClass().getName() + "] is not supported.");
        return bigInteger.bitLength() <= bitLength;
    }

    public static boolean inLongRange(Number number) {
        return StringToNumberParser.checkInteger(number, 63);
    }

    public static boolean inFloatRange(Number number) {
        return StringToNumberParser.checkDecimal(number, FLOAT_MIN_BIG_DECIMAL, FLOAT_MAX_BIG_DECIMAL);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean checkDecimal(Number number, BigDecimal min, BigDecimal max) {
        BigDecimal bigDecimal = null;
        if (number instanceof Integer || number instanceof Long) {
            bigDecimal = new BigDecimal(number.doubleValue());
            return max.compareTo(bigDecimal) >= 0 && min.compareTo(bigDecimal) <= 0;
        } else if (number instanceof Float || number instanceof Double) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || doubleValue == Double.NEGATIVE_INFINITY || doubleValue == Double.POSITIVE_INFINITY) return false;
            bigDecimal = new BigDecimal(doubleValue);
            return max.compareTo(bigDecimal) >= 0 && min.compareTo(bigDecimal) <= 0;
        } else {
            bigDecimal = number instanceof BigInteger ? new BigDecimal((BigInteger)number) : (number instanceof BigDecimal ? (BigDecimal)number : new BigDecimal(number.doubleValue()));
        }
        return max.compareTo(bigDecimal) >= 0 && min.compareTo(bigDecimal) <= 0;
    }

    public static boolean inDoubleRange(Number number) {
        return StringToNumberParser.checkDecimal(number, DOUBLE_MIN_BIG_DECIMAL, DOUBLE_MAX_BIG_DECIMAL);
    }

    public static boolean inShortRange(Number number) {
        return StringToNumberParser.checkInteger(number, 15);
    }

    public static boolean inByteRange(Number number) {
        return StringToNumberParser.checkInteger(number, 7);
    }

    public static class ParseResult {
        Number number;
        ParsePosition position;

        public Number getNumber() {
            return this.number;
        }

        public ParsePosition getPosition() {
            return this.position;
        }
    }
}

