/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.artop.aal.common.datatypes;

import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.artop.aal.common.internal.messages.Messages;
import org.eclipse.emf.common.util.EList;

public class IntegerDatatype
extends AbstractNumericalDatatype {
    public static final int MIN_VALUE = Integer.MIN_VALUE;
    public static final int MAX_VALUE = Integer.MAX_VALUE;
    private int value;

    public IntegerDatatype(String value) {
        super(value);
    }

    public IntegerDatatype(int value) {
        this(value, 10, -1);
    }

    public IntegerDatatype(int value, int radix, int digits) {
        super(radix, digits);
        this.setValue(value);
    }

    public int getValue() {
        return this.value;
    }

    public Object basicGetValue() {
        return this.getValue();
    }

    public void basicSetValue(Object value) {
        this.setValue((Integer)value);
    }

    public void setValue(int value) {
        if (value < 0) {
            this.setRadix(10);
            this.setNoOfDigits(-1);
        }
        this.value = value;
    }

    public boolean isNegative() {
        return this.value < 0;
    }

    public static IntegerDatatype fromString(String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        return new IntegerDatatype(value);
    }

    protected void doDecode(String value, int radix, int noOfDigits) {
        int intValue = Integer.parseInt(value, radix);
        if (radix != 10 && intValue < 0) {
            throw new NumberFormatException(Messages.error_numericalDT_positiveInDecimalOnly);
        }
        this.setRadix(radix);
        this.setNoOfDigits(noOfDigits);
        this.setValue(intValue);
    }

    protected String encodeValue() {
        return Integer.toString(this.value, this.getRadix());
    }

    public IntegerDatatype clone() {
        return new IntegerDatatype(this.getValue(), this.getRadix(), this.getNoOfDigits());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ToIntDelegateEList
    extends ToPrimitiveEList<Integer, IntegerDatatype> {
        private static final long serialVersionUID = 1L;

        public ToIntDelegateEList(EList<IntegerDatatype> delegation) {
            super(delegation);
        }

        @Override
        public IntegerDatatype newDelegationElement(Integer value) {
            return new IntegerDatatype(value);
        }

        @Override
        public IntegerDatatype newDelegationElement(String value) {
            return new IntegerDatatype(value);
        }

        @Override
        protected Class<Integer> getDataClass() {
            return Integer.class;
        }
    }
}

