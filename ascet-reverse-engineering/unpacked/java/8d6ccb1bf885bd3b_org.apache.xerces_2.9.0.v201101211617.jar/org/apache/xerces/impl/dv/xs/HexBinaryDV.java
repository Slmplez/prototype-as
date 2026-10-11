/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.util.ByteListImpl;
import org.apache.xerces.impl.dv.util.HexBin;
import org.apache.xerces.impl.dv.xs.TypeValidator;

public class HexBinaryDV
extends TypeValidator {
    public short getAllowedFacets() {
        return 2079;
    }

    public Object getActualValue(String string, ValidationContext validationContext) throws InvalidDatatypeValueException {
        byte[] byArray = HexBin.decode(string);
        if (byArray == null) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{string, "hexBinary"});
        }
        return new XHex(byArray);
    }

    public int getDataLength(Object object) {
        return ((XHex)object).getLength();
    }

    private static final class XHex
    extends ByteListImpl {
        public XHex(byte[] byArray) {
            super(byArray);
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                this.canonical = HexBin.encode(this.data);
            }
            return this.canonical;
        }

        public boolean equals(Object object) {
            if (!(object instanceof XHex)) {
                return false;
            }
            int n = this.data.length;
            byte[] byArray = ((XHex)object).data;
            if (n != byArray.length) {
                return false;
            }
            int n2 = 0;
            while (n2 < n) {
                if (this.data[n2] != byArray[n2]) {
                    return false;
                }
                ++n2;
            }
            return true;
        }

        public int hashCode() {
            int n = 0;
            int n2 = 0;
            while (n2 < this.data.length) {
                n = n * 37 + (this.data[n2] & 0xFF);
                ++n2;
            }
            return n;
        }
    }
}

