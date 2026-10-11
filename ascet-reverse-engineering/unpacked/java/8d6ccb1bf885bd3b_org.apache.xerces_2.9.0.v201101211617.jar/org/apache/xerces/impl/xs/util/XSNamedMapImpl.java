/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xs.XSNamedMap;
import org.apache.xerces.xs.XSObject;

public class XSNamedMapImpl
implements XSNamedMap {
    public static final XSNamedMap EMPTY_MAP = new XSNamedMap(){

        public int getLength() {
            return 0;
        }

        public XSObject itemByName(String string, String string2) {
            return null;
        }

        public XSObject item(int n) {
            return null;
        }
    };
    String[] fNamespaces;
    int fNSNum;
    SymbolHash[] fMaps;
    XSObject[] fArray = null;
    int fLength = -1;
    QName fName = new QName();

    public XSNamedMapImpl(String string, SymbolHash symbolHash) {
        this.fNamespaces = new String[]{string};
        this.fMaps = new SymbolHash[]{symbolHash};
        this.fNSNum = 1;
    }

    public XSNamedMapImpl(String[] stringArray, SymbolHash[] symbolHashArray, int n) {
        this.fNamespaces = stringArray;
        this.fMaps = symbolHashArray;
        this.fNSNum = n;
    }

    public XSNamedMapImpl(XSObject[] xSObjectArray, int n) {
        if (n == 0) {
            this.fNSNum = 0;
            this.fLength = 0;
            return;
        }
        this.fNamespaces = new String[]{xSObjectArray[0].getNamespace()};
        this.fMaps = null;
        this.fNSNum = 1;
        this.fArray = xSObjectArray;
        this.fLength = n;
    }

    public synchronized int getLength() {
        if (this.fLength == -1) {
            this.fLength = 0;
            int n = 0;
            while (n < this.fNSNum) {
                this.fLength += this.fMaps[n].getLength();
                ++n;
            }
        }
        return this.fLength;
    }

    public XSObject itemByName(String string, String string2) {
        int n = 0;
        while (n < this.fNSNum) {
            if (this.isEqual(string, this.fNamespaces[n])) {
                if (this.fMaps != null) {
                    return (XSObject)this.fMaps[n].get(string2);
                }
                int n2 = 0;
                while (n2 < this.fLength) {
                    XSObject xSObject = this.fArray[n2];
                    if (xSObject.getName().equals(string2)) {
                        return xSObject;
                    }
                    ++n2;
                }
                return null;
            }
            ++n;
        }
        return null;
    }

    public synchronized XSObject item(int n) {
        if (this.fArray == null) {
            this.getLength();
            this.fArray = new XSObject[this.fLength];
            int n2 = 0;
            int n3 = 0;
            while (n3 < this.fNSNum) {
                n2 += this.fMaps[n3].getValues(this.fArray, n2);
                ++n3;
            }
        }
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fArray[n];
    }

    final boolean isEqual(String string, String string2) {
        return string != null ? string.equals(string2) : string2 == null;
    }
}

