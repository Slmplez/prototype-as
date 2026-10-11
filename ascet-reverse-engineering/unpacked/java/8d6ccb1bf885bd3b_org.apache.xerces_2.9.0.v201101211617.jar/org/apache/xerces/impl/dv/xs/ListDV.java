/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.xs.TypeValidator;
import org.apache.xerces.xs.datatypes.ObjectList;

public class ListDV
extends TypeValidator {
    public short getAllowedFacets() {
        return 2079;
    }

    public Object getActualValue(String string, ValidationContext validationContext) throws InvalidDatatypeValueException {
        return string;
    }

    public int getDataLength(Object object) {
        return ((ListData)object).getLength();
    }

    static final class ListData
    implements ObjectList {
        final Object[] data;
        private String canonical;

        public ListData(Object[] objectArray) {
            this.data = objectArray;
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                int n = this.data.length;
                StringBuffer stringBuffer = new StringBuffer();
                if (n > 0) {
                    stringBuffer.append(this.data[0].toString());
                }
                int n2 = 1;
                while (n2 < n) {
                    stringBuffer.append(' ');
                    stringBuffer.append(this.data[n2].toString());
                    ++n2;
                }
                this.canonical = stringBuffer.toString();
            }
            return this.canonical;
        }

        public int getLength() {
            return this.data.length;
        }

        public boolean equals(Object object) {
            if (!(object instanceof ListData)) {
                return false;
            }
            int n = this.data.length;
            Object[] objectArray = ((ListData)object).data;
            if (n != objectArray.length) {
                return false;
            }
            int n2 = 0;
            while (n2 < n) {
                if (!this.data[n2].equals(objectArray[n2])) {
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
                n ^= this.data[n2].hashCode();
                ++n2;
            }
            return n;
        }

        public boolean contains(Object object) {
            int n = 0;
            while (n < this.data.length) {
                if (object == this.data[n]) {
                    return true;
                }
                ++n;
            }
            return false;
        }

        public Object item(int n) {
            if (n < 0 || n >= this.data.length) {
                return null;
            }
            return this.data[n];
        }
    }
}

