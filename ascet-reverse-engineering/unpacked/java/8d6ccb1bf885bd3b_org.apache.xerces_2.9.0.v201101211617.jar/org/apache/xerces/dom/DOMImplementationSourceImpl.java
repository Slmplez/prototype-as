/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.util.StringTokenizer;
import java.util.Vector;
import org.apache.xerces.dom.CoreDOMImplementationImpl;
import org.apache.xerces.dom.DOMImplementationImpl;
import org.apache.xerces.dom.DOMImplementationListImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;
import org.w3c.dom.DOMImplementationSource;

public class DOMImplementationSourceImpl
implements DOMImplementationSource {
    public DOMImplementation getDOMImplementation(String string) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        if (this.testImpl(dOMImplementation, string)) {
            return dOMImplementation;
        }
        dOMImplementation = DOMImplementationImpl.getDOMImplementation();
        if (this.testImpl(dOMImplementation, string)) {
            return dOMImplementation;
        }
        return null;
    }

    public DOMImplementationList getDOMImplementationList(String string) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        Vector<DOMImplementation> vector = new Vector<DOMImplementation>();
        if (this.testImpl(dOMImplementation, string)) {
            vector.addElement(dOMImplementation);
        }
        if (this.testImpl(dOMImplementation = DOMImplementationImpl.getDOMImplementation(), string)) {
            vector.addElement(dOMImplementation);
        }
        return new DOMImplementationListImpl(vector);
    }

    boolean testImpl(DOMImplementation dOMImplementation, String string) {
        StringTokenizer stringTokenizer = new StringTokenizer(string);
        String string2 = null;
        String string3 = null;
        if (stringTokenizer.hasMoreTokens()) {
            string2 = stringTokenizer.nextToken();
        }
        while (string2 != null) {
            boolean bl = false;
            if (stringTokenizer.hasMoreTokens()) {
                string3 = stringTokenizer.nextToken();
                char c = string3.charAt(0);
                switch (c) {
                    case '0': 
                    case '1': 
                    case '2': 
                    case '3': 
                    case '4': 
                    case '5': 
                    case '6': 
                    case '7': 
                    case '8': 
                    case '9': {
                        bl = true;
                    }
                }
            } else {
                string3 = null;
            }
            if (bl) {
                if (!dOMImplementation.hasFeature(string2, string3)) {
                    return false;
                }
                if (stringTokenizer.hasMoreTokens()) {
                    string2 = stringTokenizer.nextToken();
                    continue;
                }
                string2 = null;
                continue;
            }
            if (!dOMImplementation.hasFeature(string2, null)) {
                return false;
            }
            string2 = string3;
        }
        return true;
    }
}

