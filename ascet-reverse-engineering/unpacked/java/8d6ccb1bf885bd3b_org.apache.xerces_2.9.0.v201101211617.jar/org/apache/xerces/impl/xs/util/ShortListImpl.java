/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import org.apache.xerces.xs.ShortList;
import org.apache.xerces.xs.XSException;

public class ShortListImpl
implements ShortList {
    public static final ShortList EMPTY_LIST = new ShortList(){

        public int getLength() {
            return 0;
        }

        public boolean contains(short s) {
            return false;
        }

        public short item(int n) throws XSException {
            throw new XSException(2, null);
        }
    };
    private short[] fArray = null;
    private int fLength = 0;

    public ShortListImpl(short[] sArray, int n) {
        this.fArray = sArray;
        this.fLength = n;
    }

    public int getLength() {
        return this.fLength;
    }

    public boolean contains(short s) {
        int n = 0;
        while (n < this.fLength) {
            if (this.fArray[n] == s) {
                return true;
            }
            ++n;
        }
        return false;
    }

    public short item(int n) throws XSException {
        if (n < 0 || n >= this.fLength) {
            throw new XSException(2, null);
        }
        return this.fArray[n];
    }

    public boolean equals(Object object) {
        if (object == null || !(object instanceof ShortList)) {
            return false;
        }
        ShortList shortList = (ShortList)object;
        if (this.fLength != shortList.getLength()) {
            return false;
        }
        int n = 0;
        while (n < this.fLength) {
            if (this.fArray[n] != shortList.item(n)) {
                return false;
            }
            ++n;
        }
        return true;
    }
}

