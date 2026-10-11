/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.osgi.util.NLS
 */
package org.artop.aal.common.datatypes;

import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.artop.aal.common.internal.messages.Messages;
import org.eclipse.emf.common.util.EList;
import org.eclipse.osgi.util.NLS;

public class PositiveIntegerDatatype
extends AbstractNumericalDatatype {
    public static final long MIN_VALUE = 0L;
    public static final long MAX_VALUE = 0xFFFFFFFFL;
    private int value;

    public PositiveIntegerDatatype(String value) {
        super(value);
    }

    public PositiveIntegerDatatype(long value) {
        this(value, 10, -1);
    }

    public PositiveIntegerDatatype(long value, int radix, int noOfDigits) {
        super(radix, noOfDigits);
        this.setValue(value);
    }

    public long getValue() {
        return (long)this.value & 0xFFFFFFFFL;
    }

    public Object basicGetValue() {
        return this.getValue();
    }

    public void basicSetValue(Object value) {
        this.setValue((Long)value);
    }

    public void setValue(long value) throws NumberFormatException {
        if (value < 0L || value > 0xFFFFFFFFL) {
            throw new NumberFormatException(NLS.bind((String)Messages.error_numericalDT_numberOutOfBounds, (Object)value));
        }
        this.value = (int)(value & 0xFFFFFFFFL);
    }

    public boolean isNegative() {
        return false;
    }

    protected String encodeValue() {
        return Long.toString(this.getValue(), this.getRadix());
    }

    public static PositiveIntegerDatatype fromString(String value) throws NumberFormatException {
        if (value == null || value.length() == 0) {
            return null;
        }
        return new PositiveIntegerDatatype(value);
    }

    protected void doDecode(String value, int radix, int noOfDigits) {
        long longValue = Long.parseLong(value, radix);
        this.setValue(longValue);
        this.setRadix(radix);
        this.setNoOfDigits(noOfDigits);
    }

    public PositiveIntegerDatatype clone() {
        return new PositiveIntegerDatatype(this.getValue(), this.getRadix(), this.getNoOfDigits());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ToLongDelegateEList
    extends ToPrimitiveEList<Long, PositiveIntegerDatatype> {
        private static final long serialVersionUID = 1L;

        public ToLongDelegateEList(EList<PositiveIntegerDatatype> delegation) {
            super(delegation);
        }

        @Override
        public PositiveIntegerDatatype newDelegationElement(Long value) {
            return new PositiveIntegerDatatype(value);
        }

        @Override
        public PositiveIntegerDatatype newDelegationElement(String value) {
            return new PositiveIntegerDatatype(value);
        }

        @Override
        protected Class<Long> getDataClass() {
            return Long.class;
        }
    }
}

