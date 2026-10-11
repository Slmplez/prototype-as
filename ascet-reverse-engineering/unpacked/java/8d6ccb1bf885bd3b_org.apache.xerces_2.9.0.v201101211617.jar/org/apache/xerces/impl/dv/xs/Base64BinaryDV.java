/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.util.Base64;
import org.apache.xerces.impl.dv.util.ByteListImpl;
import org.apache.xerces.impl.dv.xs.TypeValidator;

public class Base64BinaryDV
extends TypeValidator {
    public short getAllowedFacets() {
        return 2079;
    }

    public Object getActualValue(String string, ValidationContext validationContext) throws InvalidDatatypeValueException {
        byte[] byArray = Base64.decode(string);
        if (byArray == null) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{string, "base64Binary"});
        }
        return new XBase64(byArray);
    }

    public int getDataLength(Object object) {
        return ((XBase64)object).getLength();
    }

    private static final class XBase64
    extends ByteListImpl {
        public XBase64(byte[] byArray) {
            super(byArray);
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                this.canonical = Base64.encode(this.data);
            }
            return this.canonical;
        }

        public boolean equals(Object object) {
            if (!(object instanceof XBase64)) {
                return false;
            }
            int n = this.data.length;
            byte[] byArray = ((XBase64)object).data;
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

