/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.xs.TypeValidator;
import org.apache.xerces.xs.datatypes.XSDecimal;

public class DecimalDV
extends TypeValidator {
    public final short getAllowedFacets() {
        return 4088;
    }

    public Object getActualValue(String string, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XDecimal(string);
        }
        catch (NumberFormatException numberFormatException) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{string, "decimal"});
        }
    }

    public final int compare(Object object, Object object2) {
        return ((XDecimal)object).compareTo((XDecimal)object2);
    }

    public final int getTotalDigits(Object object) {
        return ((XDecimal)object).totalDigits;
    }

    public final int getFractionDigits(Object object) {
        return ((XDecimal)object).fracDigits;
    }

    static class XDecimal
    implements XSDecimal {
        int sign = 1;
        int totalDigits = 0;
        int intDigits = 0;
        int fracDigits = 0;
        String ivalue = "";
        String fvalue = "";
        boolean integer = false;
        private String canonical;

        XDecimal(String string) throws NumberFormatException {
            this.initD(string);
        }

        XDecimal(String string, boolean bl) throws NumberFormatException {
            if (bl) {
                this.initI(string);
            } else {
                this.initD(string);
            }
        }

        /*
         * Unable to fully structure code
         */
        void initD(String var1_1) throws NumberFormatException {
            var2_2 = var1_1.length();
            if (var2_2 == 0) {
                throw new NumberFormatException();
            }
            var3_3 = 0;
            var4_4 = 0;
            var5_5 = 0;
            var6_6 = 0;
            if (var1_1.charAt(0) == '+') {
                var3_3 = 1;
            } else if (var1_1.charAt(0) == '-') {
                var3_3 = 1;
                this.sign = -1;
            }
            var7_7 = var3_3;
            while (var7_7 < var2_2 && var1_1.charAt(var7_7) == '0') {
                ++var7_7;
            }
            var4_4 = var7_7;
            while (var4_4 < var2_2 && TypeValidator.isDigit(var1_1.charAt(var4_4))) {
                ++var4_4;
            }
            if (var4_4 < var2_2) {
                if (var1_1.charAt(var4_4) != '.') {
                    throw new NumberFormatException();
                }
                var5_5 = var4_4 + 1;
                var6_6 = var2_2;
            }
            if (var3_3 != var4_4 || var5_5 != var6_6) ** GOTO lbl30
            throw new NumberFormatException();
lbl-1000:
            // 1 sources

            {
                --var6_6;
lbl30:
                // 2 sources

                ** while (var6_6 > var5_5 && var1_1.charAt((int)(var6_6 - 1)) == '0')
            }
lbl31:
            // 1 sources

            var8_8 = var5_5;
            while (var8_8 < var6_6) {
                if (!TypeValidator.isDigit(var1_1.charAt(var8_8))) {
                    throw new NumberFormatException();
                }
                ++var8_8;
            }
            this.intDigits = var4_4 - var7_7;
            this.fracDigits = var6_6 - var5_5;
            this.totalDigits = this.intDigits + this.fracDigits;
            if (this.intDigits > 0) {
                this.ivalue = var1_1.substring(var7_7, var4_4);
                if (this.fracDigits > 0) {
                    this.fvalue = var1_1.substring(var5_5, var6_6);
                }
            } else if (this.fracDigits > 0) {
                this.fvalue = var1_1.substring(var5_5, var6_6);
            } else {
                this.sign = 0;
            }
        }

        void initI(String string) throws NumberFormatException {
            int n = string.length();
            if (n == 0) {
                throw new NumberFormatException();
            }
            int n2 = 0;
            int n3 = 0;
            if (string.charAt(0) == '+') {
                n2 = 1;
            } else if (string.charAt(0) == '-') {
                n2 = 1;
                this.sign = -1;
            }
            int n4 = n2;
            while (n4 < n && string.charAt(n4) == '0') {
                ++n4;
            }
            n3 = n4;
            while (n3 < n && TypeValidator.isDigit(string.charAt(n3))) {
                ++n3;
            }
            if (n3 < n) {
                throw new NumberFormatException();
            }
            if (n2 == n3) {
                throw new NumberFormatException();
            }
            this.intDigits = n3 - n4;
            this.fracDigits = 0;
            this.totalDigits = this.intDigits;
            if (this.intDigits > 0) {
                this.ivalue = string.substring(n4, n3);
            } else {
                this.sign = 0;
            }
            this.integer = true;
        }

        public boolean equals(Object object) {
            if (object == this) {
                return true;
            }
            if (!(object instanceof XDecimal)) {
                return false;
            }
            XDecimal xDecimal = (XDecimal)object;
            if (this.sign != xDecimal.sign) {
                return false;
            }
            if (this.sign == 0) {
                return true;
            }
            return this.intDigits == xDecimal.intDigits && this.fracDigits == xDecimal.fracDigits && this.ivalue.equals(xDecimal.ivalue) && this.fvalue.equals(xDecimal.fvalue);
        }

        public int compareTo(XDecimal xDecimal) {
            if (this.sign != xDecimal.sign) {
                return this.sign > xDecimal.sign ? 1 : -1;
            }
            if (this.sign == 0) {
                return 0;
            }
            return this.sign * this.intComp(xDecimal);
        }

        private int intComp(XDecimal xDecimal) {
            if (this.intDigits != xDecimal.intDigits) {
                return this.intDigits > xDecimal.intDigits ? 1 : -1;
            }
            int n = this.ivalue.compareTo(xDecimal.ivalue);
            if (n != 0) {
                return n > 0 ? 1 : -1;
            }
            n = this.fvalue.compareTo(xDecimal.fvalue);
            return n == 0 ? 0 : (n > 0 ? 1 : -1);
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                this.makeCanonical();
            }
            return this.canonical;
        }

        private void makeCanonical() {
            if (this.sign == 0) {
                this.canonical = this.integer ? "0" : "0.0";
                return;
            }
            if (this.integer && this.sign > 0) {
                this.canonical = this.ivalue;
                return;
            }
            StringBuffer stringBuffer = new StringBuffer(this.totalDigits + 3);
            if (this.sign == -1) {
                stringBuffer.append('-');
            }
            if (this.intDigits != 0) {
                stringBuffer.append(this.ivalue);
            } else {
                stringBuffer.append('0');
            }
            if (!this.integer) {
                stringBuffer.append('.');
                if (this.fracDigits != 0) {
                    stringBuffer.append(this.fvalue);
                } else {
                    stringBuffer.append('0');
                }
            }
            this.canonical = stringBuffer.toString();
        }

        public BigDecimal getBigDecimal() {
            if (this.sign == 0) {
                return new BigDecimal(BigInteger.ZERO);
            }
            return new BigDecimal(this.toString());
        }

        public BigInteger getBigInteger() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            if (this.sign == 0) {
                return BigInteger.ZERO;
            }
            if (this.sign == 1) {
                return new BigInteger(this.ivalue);
            }
            return new BigInteger("-" + this.ivalue);
        }

        public long getLong() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            if (this.sign == 0) {
                return 0L;
            }
            if (this.sign == 1) {
                return Long.parseLong(this.ivalue);
            }
            return Long.parseLong("-" + this.ivalue);
        }

        public int getInt() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            if (this.sign == 0) {
                return 0;
            }
            if (this.sign == 1) {
                return Integer.parseInt(this.ivalue);
            }
            return Integer.parseInt("-" + this.ivalue);
        }

        public short getShort() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            if (this.sign == 0) {
                return 0;
            }
            if (this.sign == 1) {
                return Short.parseShort(this.ivalue);
            }
            return Short.parseShort("-" + this.ivalue);
        }

        public byte getByte() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            if (this.sign == 0) {
                return 0;
            }
            if (this.sign == 1) {
                return Byte.parseByte(this.ivalue);
            }
            return Byte.parseByte("-" + this.ivalue);
        }
    }
}

