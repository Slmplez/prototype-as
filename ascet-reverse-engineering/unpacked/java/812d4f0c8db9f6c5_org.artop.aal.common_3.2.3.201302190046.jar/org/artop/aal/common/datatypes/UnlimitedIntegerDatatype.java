/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.osgi.util.NLS
 */
package org.artop.aal.common.datatypes;

import java.math.BigInteger;
import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.artop.aal.common.internal.messages.Messages;
import org.eclipse.emf.common.util.EList;
import org.eclipse.osgi.util.NLS;

public class UnlimitedIntegerDatatype
extends AbstractNumericalDatatype {
    public static final BigInteger MIN_SIGNED_VALUE = new BigInteger("-9223372036854775808");
    public static final BigInteger MAX_SIGNED_VALUE = new BigInteger("9223372036854775807");
    public static final BigInteger MIN_USIGNED_VALUE = BigInteger.ZERO;
    public static final BigInteger MAX_USIGNED_VALUE = new BigInteger("18446744073709551615");
    private static final BigInteger SIGNUM_FLAG = new BigInteger("9223372036854775808");
    private long value;
    private byte signum;

    public UnlimitedIntegerDatatype(String value) {
        super(value);
    }

    public UnlimitedIntegerDatatype(BigInteger value) {
        this(value, 10, -1);
    }

    public UnlimitedIntegerDatatype(BigInteger value, int radix, int noOfDigits) {
        super(radix, noOfDigits);
        this.setValue(value);
    }

    public BigInteger getValue() {
        if (this.signum < 0) {
            return BigInteger.valueOf(this.value);
        }
        if (this.value < 0L) {
            return SIGNUM_FLAG.add(BigInteger.valueOf(this.value & Long.MAX_VALUE));
        }
        return BigInteger.valueOf(this.value);
    }

    public Object basicGetValue() {
        return this.getValue();
    }

    public void basicSetValue(Object value) {
        this.setValue((BigInteger)value);
    }

    public void setValue(BigInteger value) throws NumberFormatException {
        if (value.compareTo(MIN_SIGNED_VALUE) < 0 || value.compareTo(MAX_USIGNED_VALUE) > 0) {
            throw new NumberFormatException(NLS.bind((String)Messages.error_numericalDT_numberOutOfBounds, (Object)value));
        }
        this.value = value.longValue();
        this.signum = (byte)value.signum();
    }

    public boolean isNegative() {
        return this.signum < 0;
    }

    protected String encodeValue() {
        return this.getValue().toString(this.getRadix());
    }

    public static UnlimitedIntegerDatatype fromString(String value) throws NumberFormatException {
        if (value == null || value.length() == 0) {
            return null;
        }
        return new UnlimitedIntegerDatatype(value);
    }

    protected void doDecode(String value, int radix, int noOfDigits) {
        BigInteger intValue = new BigInteger(value, radix);
        this.setValue(intValue);
        this.setRadix(radix);
        this.setNoOfDigits(noOfDigits);
    }

    public UnlimitedIntegerDatatype clone() {
        return new UnlimitedIntegerDatatype(this.getValue(), this.getRadix(), this.getNoOfDigits());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ToBigIntegerDelegateEList
    extends ToPrimitiveEList<BigInteger, UnlimitedIntegerDatatype> {
        private static final long serialVersionUID = 1L;

        public ToBigIntegerDelegateEList(EList<UnlimitedIntegerDatatype> delegation) {
            super(delegation);
        }

        @Override
        public UnlimitedIntegerDatatype newDelegationElement(BigInteger value) {
            return new UnlimitedIntegerDatatype(value);
        }

        @Override
        public UnlimitedIntegerDatatype newDelegationElement(String value) {
            return new UnlimitedIntegerDatatype(value);
        }

        @Override
        protected Class<BigInteger> getDataClass() {
            return BigInteger.class;
        }
    }
}

