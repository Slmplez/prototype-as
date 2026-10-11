/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.util.Vector;
import org.apache.xerces.dom.DOMImplementationListImpl;
import org.apache.xerces.dom.DOMImplementationSourceImpl;
import org.apache.xerces.dom.PSVIDOMImplementationImpl;
import org.apache.xerces.impl.xs.XSImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

public class DOMXSImplementationSourceImpl
extends DOMImplementationSourceImpl {
    public DOMImplementation getDOMImplementation(String string) {
        DOMImplementation dOMImplementation = super.getDOMImplementation(string);
        if (dOMImplementation != null) {
            return dOMImplementation;
        }
        dOMImplementation = PSVIDOMImplementationImpl.getDOMImplementation();
        if (this.testImpl(dOMImplementation, string)) {
            return dOMImplementation;
        }
        dOMImplementation = XSImplementationImpl.getDOMImplementation();
        if (this.testImpl(dOMImplementation, string)) {
            return dOMImplementation;
        }
        return null;
    }

    public DOMImplementationList getDOMImplementationList(String string) {
        Vector<DOMImplementation> vector = new Vector<DOMImplementation>();
        DOMImplementationList dOMImplementationList = super.getDOMImplementationList(string);
        int n = 0;
        while (n < dOMImplementationList.getLength()) {
            vector.addElement(dOMImplementationList.item(n));
            ++n;
        }
        DOMImplementation dOMImplementation = PSVIDOMImplementationImpl.getDOMImplementation();
        if (this.testImpl(dOMImplementation, string)) {
            vector.addElement(dOMImplementation);
        }
        if (this.testImpl(dOMImplementation = XSImplementationImpl.getDOMImplementation(), string)) {
            vector.addElement(dOMImplementation);
        }
        return new DOMImplementationListImpl(vector);
    }
}

