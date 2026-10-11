/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.io.StringReader;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class XMLDefaultHandler
extends DefaultHandler {
    private Document fDocument;
    private Element fRootElement;
    protected Stack fElementStack = new Stack();
    protected boolean fAbbreviated;

    public XMLDefaultHandler() {
    }

    public XMLDefaultHandler(boolean abbreviated) {
        this.fAbbreviated = abbreviated;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        if (!this.isPrepared()) {
            return;
        }
        Element element = this.fDocument.createElement(qName);
        int i = 0;
        while (i < attributes.getLength()) {
            element.setAttribute(attributes.getQName(i), attributes.getValue(i));
            ++i;
        }
        if (this.fRootElement == null) {
            this.fRootElement = element;
        } else {
            ((Element)this.fElementStack.peek()).appendChild(element);
        }
        this.fElementStack.push(element);
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        if (this.isPrepared() && !this.fElementStack.isEmpty()) {
            this.fElementStack.pop();
        }
    }

    public void setDocumentLocator(Locator locator) {
    }

    public void startDocument() throws SAXException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            this.fDocument = factory.newDocumentBuilder().newDocument();
        }
        catch (ParserConfigurationException parserConfigurationException) {}
    }

    public void endDocument() throws SAXException {
        if (this.isPrepared()) {
            this.fDocument.appendChild(this.fRootElement);
        }
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if (this.isPrepared()) {
            this.fDocument.appendChild(this.fDocument.createProcessingInstruction(target, data));
        }
    }

    public void characters(char[] characters, int start, int length) throws SAXException {
        if (this.fAbbreviated || !this.isPrepared()) {
            return;
        }
        StringBuffer buff = new StringBuffer();
        int i = 0;
        while (i < length) {
            buff.append(characters[start + i]);
            ++i;
        }
        Text text = this.fDocument.createTextNode(buff.toString());
        if (this.fRootElement == null) {
            this.fDocument.appendChild(text);
        } else {
            ((Element)this.fElementStack.peek()).appendChild(text);
        }
    }

    public Node getDocumentElement() {
        if (!this.isPrepared()) {
            return null;
        }
        this.normalizeDocumentElement();
        return this.fDocument.getDocumentElement();
    }

    public Document getDocument() {
        if (!this.isPrepared()) {
            return null;
        }
        this.normalizeDocumentElement();
        return this.fDocument;
    }

    public boolean isPrepared() {
        return this.fDocument != null;
    }

    private void normalizeDocumentElement() {
        if (this.fDocument.getDocumentElement() != null) {
            this.fDocument.getDocumentElement().normalize();
        }
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }
}

