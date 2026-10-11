/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.resource;

import org.xml.sax.Locator;
import org.xml.sax.SAXParseException;

public class XMLWellformednessException
extends SAXParseException {
    private static final long serialVersionUID = 1L;

    public XMLWellformednessException(String message, Locator locator) {
        super(message, locator);
    }

    public XMLWellformednessException(String message, Locator locator, Exception e) {
        super(message, locator, e);
    }

    public XMLWellformednessException(String message, String publicId, String systemId, int lineNumber, int columnNumber) {
        super(message, publicId, systemId, lineNumber, columnNumber);
    }

    public XMLWellformednessException(String message, String publicId, String systemId, int lineNumber, int columnNumber, Exception e) {
        super(message, publicId, systemId, lineNumber, columnNumber, e);
    }

    public String toString() {
        String name = this.getClass().getName();
        String msg = this.getLocalizedMessage();
        return msg != null ? msg : name;
    }
}

