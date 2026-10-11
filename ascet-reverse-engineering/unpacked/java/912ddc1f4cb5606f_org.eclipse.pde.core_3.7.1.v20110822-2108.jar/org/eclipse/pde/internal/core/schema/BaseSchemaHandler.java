/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.StringReader;
import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class BaseSchemaHandler
extends DefaultHandler {
    protected LinkedList fElementList;

    public BaseSchemaHandler() {
        this.reset();
    }

    protected void reset() {
        this.fElementList = new LinkedList();
    }

    public void startDocument() throws SAXException {
        this.reset();
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        this.fElementList.addFirst(qName);
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        if (this.fElementList.size() == 0) {
            throw new SAXException("Serious error.  XML document is not well-formed");
        }
        this.fElementList.removeFirst();
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }
}

