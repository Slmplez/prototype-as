/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLDOMImplementation;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.xerces.dom.DOMImplementationImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;

public class WMLDOMImplementationImpl
extends DOMImplementationImpl
implements WMLDOMImplementation {
    static final DOMImplementationImpl singleton = new WMLDOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    public Document createDocument(String string, String string2, DocumentType documentType) throws DOMException {
        if (documentType != null && documentType.getOwnerDocument() != null) {
            throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "WRONG_DOCUMENT_ERR", null));
        }
        WMLDocumentImpl wMLDocumentImpl = new WMLDocumentImpl(documentType);
        if (string2 != null || string != null) {
            Element element = wMLDocumentImpl.createElementNS(string, string2);
            wMLDocumentImpl.appendChild(element);
        }
        return wMLDocumentImpl;
    }
}

