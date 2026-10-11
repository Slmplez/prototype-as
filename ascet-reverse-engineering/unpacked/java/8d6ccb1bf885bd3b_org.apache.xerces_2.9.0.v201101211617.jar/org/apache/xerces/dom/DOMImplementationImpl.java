/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import org.apache.xerces.dom.CoreDOMImplementationImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DocumentImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;

public class DOMImplementationImpl
extends CoreDOMImplementationImpl
implements DOMImplementation {
    static DOMImplementationImpl singleton = new DOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    public boolean hasFeature(String string, String string2) {
        boolean bl = super.hasFeature(string, string2);
        if (!bl) {
            boolean bl2;
            boolean bl3 = bl2 = string2 == null || string2.length() == 0;
            if (string.startsWith("+")) {
                string = string.substring(1);
            }
            return string.equalsIgnoreCase("Events") && (bl2 || string2.equals("2.0")) || string.equalsIgnoreCase("MutationEvents") && (bl2 || string2.equals("2.0")) || string.equalsIgnoreCase("Traversal") && (bl2 || string2.equals("2.0")) || string.equalsIgnoreCase("Range") && (bl2 || string2.equals("2.0")) || string.equalsIgnoreCase("MutationEvents") && (bl2 || string2.equals("2.0"));
        }
        return bl;
    }

    public Document createDocument(String string, String string2, DocumentType documentType) throws DOMException {
        if (documentType != null && documentType.getOwnerDocument() != null) {
            String string3 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null);
            throw new DOMException(4, string3);
        }
        DocumentImpl documentImpl = new DocumentImpl(documentType);
        if (string2 != null || string != null) {
            Element element = documentImpl.createElementNS(string, string2);
            documentImpl.appendChild(element);
        }
        return documentImpl;
    }
}

