/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

public class DOMImplementationListImpl
implements DOMImplementationList {
    private Vector fImplementations;

    public DOMImplementationListImpl() {
        this.fImplementations = new Vector();
    }

    public DOMImplementationListImpl(Vector vector) {
        this.fImplementations = vector;
    }

    public DOMImplementation item(int n) {
        try {
            return (DOMImplementation)this.fImplementations.elementAt(n);
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            return null;
        }
    }

    public int getLength() {
        return this.fImplementations.size();
    }
}

