/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import org.apache.xerces.dom.CoreDOMImplementationImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.impl.xs.XSLoaderImpl;
import org.apache.xerces.impl.xs.util.StringListImpl;
import org.apache.xerces.xs.StringList;
import org.apache.xerces.xs.XSException;
import org.apache.xerces.xs.XSImplementation;
import org.apache.xerces.xs.XSLoader;
import org.w3c.dom.DOMImplementation;

public class XSImplementationImpl
extends CoreDOMImplementationImpl
implements XSImplementation {
    static XSImplementationImpl singleton = new XSImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    public boolean hasFeature(String string, String string2) {
        return string.equalsIgnoreCase("XS-Loader") && (string2 == null || string2.equals("1.0")) || super.hasFeature(string, string2);
    }

    public XSLoader createXSLoader(StringList stringList) throws XSException {
        XSLoaderImpl xSLoaderImpl = new XSLoaderImpl();
        if (stringList == null) {
            return xSLoaderImpl;
        }
        int n = 0;
        while (n < stringList.getLength()) {
            if (!stringList.item(n).equals("1.0")) {
                String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{stringList.item(n)});
                throw new XSException(1, string);
            }
            ++n;
        }
        return xSLoaderImpl;
    }

    public StringList getRecognizedVersions() {
        StringListImpl stringListImpl = new StringListImpl(new String[]{"1.0"}, 1);
        return stringListImpl;
    }
}

