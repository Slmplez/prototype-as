/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.xs.TypeValidator;
import org.apache.xerces.xs.datatypes.XSDouble;

public class DoubleDV
extends TypeValidator {
    public short getAllowedFacets() {
        return 2552;
    }

    public Object getActualValue(String string, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XDouble(string);
        }
        catch (NumberFormatException numberFormatException) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{string, "double"});
        }
    }

    public int compare(Object object, Object object2) {
        return ((XDouble)object).compareTo((XDouble)object2);
    }

    public boolean isIdentical(Object object, Object object2) {
        if (object2 instanceof XDouble) {
            return ((XDouble)object).isIdentical((XDouble)object2);
        }
        return false;
    }

    static boolean isPossibleFP(String string) {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if ((c < '0' || c > '9') && c != '.' && c != '-' && c != '+' && c != 'E' && c != 'e') {
                return false;
            }
            ++n2;
        }
        return true;
    }

    private static final class XDouble
    implements XSDouble {
        private final double value;
        private String canonical;

        public XDouble(String string) throws NumberFormatException {
            if (DoubleDV.isPossibleFP(string)) {
                this.value = Double.parseDouble(string);
            } else if (string.equals("INF")) {
                this.value = Double.POSITIVE_INFINITY;
            } else if (string.equals("-INF")) {
                this.value = Double.NEGATIVE_INFINITY;
            } else if (string.equals("NaN")) {
                this.value = Double.NaN;
            } else {
                throw new NumberFormatException(string);
            }
        }

        public boolean equals(Object object) {
            if (object == this) {
                return true;
            }
            if (!(object instanceof XDouble)) {
                return false;
            }
            XDouble xDouble = (XDouble)object;
            if (this.value == xDouble.value) {
                return true;
            }
            return this.value != this.value && xDouble.value != xDouble.value;
        }

        public int hashCode() {
            if (this.value == 0.0) {
                return 0;
            }
            long l = Double.doubleToLongBits(this.value);
            return (int)(l ^ l >>> 32);
        }

        public boolean isIdentical(XDouble xDouble) {
            if (xDouble == this) {
                return true;
            }
            if (this.value == xDouble.value) {
                return this.value != 0.0 || Double.doubleToLongBits(this.value) == Double.doubleToLongBits(xDouble.value);
            }
            return this.value != this.value && xDouble.value != xDouble.value;
        }

        private int compareTo(XDouble xDouble) {
            double d = xDouble.value;
            if (this.value < d) {
                return -1;
            }
            if (this.value > d) {
                return 1;
            }
            if (this.value == d) {
                return 0;
            }
            if (this.value != this.value) {
                if (d != d) {
                    return 0;
                }
                return 2;
            }
            return 2;
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                if (this.value == Double.POSITIVE_INFINITY) {
                    this.canonical = "INF";
                } else if (this.value == Double.NEGATIVE_INFINITY) {
                    this.canonical = "-INF";
                } else if (this.value != this.value) {
                    this.canonical = "NaN";
                } else if (this.value == 0.0) {
                    this.canonical = "0.0E1";
                } else {
                    this.canonical = Double.toString(this.value);
                    if (this.canonical.indexOf(69) == -1) {
                        int n;
                        int n2 = this.canonical.length();
                        char[] cArray = new char[n2 + 3];
                        this.canonical.getChars(0, n2, cArray, 0);
                        int n3 = n = cArray[0] == '-' ? 2 : 1;
                        if (this.value >= 1.0 || this.value <= -1.0) {
                            int n4;
                            int n5 = n4 = this.canonical.indexOf(46);
                            while (n5 > n) {
                                cArray[n5] = cArray[n5 - 1];
                                --n5;
                            }
                            cArray[n] = 46;
                            while (cArray[n2 - 1] == '0') {
                                --n2;
                            }
                            if (cArray[n2 - 1] == '.') {
                                // empty if block
                            }
                            int n6 = ++n2;
                            cArray[n6] = 69;
                            int n7 = n4 - n;
                            int n8 = ++n2;
                            ++n2;
                            cArray[n8] = (char)(n7 + 48);
                        } else {
                            int n9 = n + 1;
                            while (cArray[n9] == '0') {
                                ++n9;
                            }
                            cArray[n - 1] = cArray[n9];
                            cArray[n] = 46;
                            int n10 = n9 + 1;
                            int n11 = n + 1;
                            while (n10 < n2) {
                                cArray[n11] = cArray[n10];
                                ++n10;
                                ++n11;
                            }
                            if ((n2 -= n9 - n) == n + 1) {
                                cArray[n2++] = 48;
                            }
                            cArray[n2++] = 69;
                            cArray[n2++] = 45;
                            int n12 = n9 - n;
                            cArray[n2++] = (char)(n12 + 48);
                        }
                        this.canonical = new String(cArray, 0, n2);
                    }
                }
            }
            return this.canonical;
        }

        public double getValue() {
            return this.value;
        }
    }
}

