/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import org.apache.xerces.impl.xs.util.XSNamedMapImpl;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSTypeDefinition;

public class XSNamedMap4Types
extends XSNamedMapImpl {
    short fType;

    public XSNamedMap4Types(String string, SymbolHash symbolHash, short s) {
        super(string, symbolHash);
        this.fType = s;
    }

    public XSNamedMap4Types(String[] stringArray, SymbolHash[] symbolHashArray, int n, short s) {
        super(stringArray, symbolHashArray, n);
        this.fType = s;
    }

    public synchronized int getLength() {
        if (this.fLength == -1) {
            int n = 0;
            int n2 = 0;
            while (n2 < this.fNSNum) {
                n += this.fMaps[n2].getLength();
                ++n2;
            }
            int n3 = 0;
            Object[] objectArray = new XSObject[n];
            int n4 = 0;
            while (n4 < this.fNSNum) {
                n3 += this.fMaps[n4].getValues(objectArray, n3);
                ++n4;
            }
            this.fLength = 0;
            this.fArray = new XSObject[n];
            int n5 = 0;
            while (n5 < n) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition)objectArray[n5];
                if (xSTypeDefinition.getTypeCategory() == this.fType) {
                    this.fArray[this.fLength++] = xSTypeDefinition;
                }
                ++n5;
            }
        }
        return this.fLength;
    }

    public XSObject itemByName(String string, String string2) {
        int n = 0;
        while (n < this.fNSNum) {
            if (this.isEqual(string, this.fNamespaces[n])) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition)this.fMaps[n].get(string2);
                if (xSTypeDefinition.getTypeCategory() == this.fType) {
                    return xSTypeDefinition;
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
        }
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fArray[n];
    }
}

