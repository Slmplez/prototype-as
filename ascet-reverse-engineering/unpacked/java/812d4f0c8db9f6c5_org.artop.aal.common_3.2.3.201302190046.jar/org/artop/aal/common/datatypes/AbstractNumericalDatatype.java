/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.datatypes;

import org.artop.aal.common.datatypes.INumericalDataType;
import org.artop.aal.common.internal.messages.Messages;

public abstract class AbstractNumericalDatatype
implements INumericalDataType {
    private byte radix;
    private byte digits;

    protected AbstractNumericalDatatype(int radix, int digits) {
        this.setNoOfDigits(digits);
        this.setRadix(radix);
    }

    protected AbstractNumericalDatatype(String value) {
        this.decode(value);
    }

    public void setRadix(int radix) {
        this.radix = (byte)radix;
        if (radix == 10) {
            this.setNoOfDigits(-1);
        }
    }

    public byte getRadix() {
        return this.radix;
    }

    public void setNoOfDigits(int digits) {
        this.digits = (byte)digits;
    }

    public byte getNoOfDigits() {
        return this.digits;
    }

    public String encode() {
        StringBuilder sb = new StringBuilder(this.digits + 2);
        switch (this.getRadix()) {
            case 2: {
                sb.append("0b");
                break;
            }
            case 8: {
                sb.append('0');
                break;
            }
            case 10: {
                if (this.digits == -1 || this.isNegative()) break;
                sb.append('+');
                break;
            }
            case 16: {
                sb.append("0x");
            }
        }
        String value = this.encodeValue();
        if (this.getRadix() != 10) {
            int counter = this.getNoOfDigits() - value.length();
            while (counter-- > 0) {
                sb.append('0');
            }
        }
        sb.append(value);
        return sb.toString();
    }

    protected abstract String encodeValue();

    public void decode(String value) {
        if (value == null || value.length() == 0) {
            throw new NumberFormatException(Messages.error_numericalDT_nullString);
        }
        int radix = 0;
        int index = -1;
        int noOfDigits = -1;
        block0 : switch (value.charAt(0)) {
            case '0': {
                if (value.length() == 1) {
                    radix = 10;
                    index = 0;
                    break;
                }
                switch (value.charAt(1)) {
                    case 'x': {
                        radix = 16;
                        index = 2;
                        noOfDigits = value.length() - 2;
                        break block0;
                    }
                    case 'b': {
                        radix = 2;
                        index = 2;
                        noOfDigits = value.length() - 2;
                        break block0;
                    }
                }
                radix = 8;
                index = 1;
                noOfDigits = value.length() - 1;
                break;
            }
            case '+': {
                radix = 10;
                index = 1;
                noOfDigits = 1;
                break;
            }
            default: {
                radix = 10;
                index = 0;
            }
        }
        this.doDecode(value.substring(index), radix, noOfDigits);
    }

    protected abstract void doDecode(String var1, int var2, int var3);

    public String toString() {
        return this.encode();
    }

    public abstract Object clone();
}

