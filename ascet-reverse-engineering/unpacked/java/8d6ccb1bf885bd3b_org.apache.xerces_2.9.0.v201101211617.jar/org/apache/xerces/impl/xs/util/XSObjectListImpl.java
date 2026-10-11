/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSObjectList;

public class XSObjectListImpl
implements XSObjectList {
    public static final XSObjectList EMPTY_LIST = new XSObjectList(){

        public int getLength() {
            return 0;
        }

        public XSObject item(int n) {
            return null;
        }
    };
    private static final int DEFAULT_SIZE = 4;
    private XSObject[] fArray = null;
    private int fLength = 0;

    public XSObjectListImpl() {
        this.fArray = new XSObject[4];
        this.fLength = 0;
    }

    public XSObjectListImpl(XSObject[] xSObjectArray, int n) {
        this.fArray = xSObjectArray;
        this.fLength = n;
    }

    public int getLength() {
        return this.fLength;
    }

    public XSObject item(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fArray[n];
    }

    public void clear() {
        int n = 0;
        while (n < this.fLength) {
            this.fArray[n] = null;
            ++n;
        }
        this.fArray = null;
        this.fLength = 0;
    }

    public void add(XSObject xSObject) {
        if (this.fLength == this.fArray.length) {
            XSObject[] xSObjectArray = new XSObject[this.fLength + 4];
            System.arraycopy(this.fArray, 0, xSObjectArray, 0, this.fLength);
            this.fArray = xSObjectArray;
        }
        this.fArray[this.fLength++] = xSObject;
    }

    public void add(int n, XSObject xSObject) {
        this.fArray[n] = xSObject;
    }
}

