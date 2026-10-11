/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import java.util.Vector;
import org.apache.xerces.xs.XSNamespaceItem;
import org.apache.xerces.xs.XSNamespaceItemList;

public class NSItemListImpl
implements XSNamespaceItemList {
    private XSNamespaceItem[] fArray = null;
    private int fLength = 0;
    private Vector fVector;

    public NSItemListImpl(Vector vector) {
        this.fVector = vector;
        this.fLength = vector.size();
    }

    public NSItemListImpl(XSNamespaceItem[] xSNamespaceItemArray, int n) {
        this.fArray = xSNamespaceItemArray;
        this.fLength = n;
    }

    public int getLength() {
        return this.fLength;
    }

    public XSNamespaceItem item(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        if (this.fVector != null) {
            return (XSNamespaceItem)this.fVector.elementAt(n);
        }
        return this.fArray[n];
    }
}

