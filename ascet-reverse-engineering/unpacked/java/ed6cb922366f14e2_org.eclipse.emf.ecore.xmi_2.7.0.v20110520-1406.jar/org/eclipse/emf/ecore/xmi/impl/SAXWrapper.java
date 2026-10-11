/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHandler;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
public class SAXWrapper
extends DefaultHandler
implements XMLDefaultHandler {
    protected XMLHandler handler;

    @Override
    public void prepare(XMLResource resource, XMLHelper helper, Map<?, ?> options) {
        this.handler.prepare(resource, helper, options);
    }

    @Override
    public void reset() {
        this.handler.reset();
    }

    public SAXWrapper(XMLHandler handler) {
        this.handler = handler;
    }

    @Override
    public void setDocumentLocator(Locator locator) {
        this.handler.setLocator(locator);
    }

    @Override
    public void startDocument() throws SAXException {
        this.handler.startDocument();
    }

    @Override
    public void endDocument() throws SAXException {
        this.handler.endDocument();
    }

    @Override
    public void startPrefixMapping(String prefix, String uri) throws SAXException {
        this.handler.startPrefixMapping(prefix, uri);
    }

    @Override
    public void endPrefixMapping(String prefix) throws SAXException {
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        this.handler.setAttributes(attributes);
        this.handler.startElement(uri, localName, qName);
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        this.handler.endElement(uri, localName, qName);
    }

    @Override
    public void warning(SAXParseException e) throws SAXException {
        XMIException xmi = new XMIException(e.getException() == null ? e : e.getException(), e.getSystemId(), e.getLineNumber(), e.getColumnNumber());
        this.handler.warning(xmi);
    }

    @Override
    public void error(SAXParseException e) throws SAXException {
        XMIException xmi = new XMIException(e.getException() == null ? e : e.getException(), e.getSystemId(), e.getLineNumber(), e.getColumnNumber());
        this.handler.error(xmi);
    }

    @Override
    public void fatalError(SAXParseException e) throws SAXException {
        XMIException xmi = new XMIException(e.getException() == null ? e : e.getException(), e.getSystemId(), e.getLineNumber(), e.getColumnNumber());
        this.handler.fatalError(xmi);
        throw e;
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        this.handler.characters(ch, start, length);
    }

    @Override
    public void ignorableWhitespace(char[] ch, int start, int length) throws SAXException {
    }

    @Override
    public void processingInstruction(String target, String data) throws SAXException {
        this.handler.processingInstruction(target, data);
    }

    @Override
    public void skippedEntity(String name) throws SAXException {
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return null;
    }

    @Override
    public void notationDecl(String name, String publicId, String systemId) throws SAXException {
    }

    @Override
    public void unparsedEntityDecl(String name, String publicId, String systemId, String notationName) throws SAXException {
    }

    @Override
    public void startDTD(String name, String publicId, String systemId) {
        this.handler.startDTD(name, publicId, systemId);
    }

    @Override
    public void endDTD() {
    }

    @Override
    public void startEntity(String name) {
    }

    @Override
    public void endEntity(String name) {
    }

    @Override
    public void startCDATA() {
        this.handler.startCDATA();
    }

    @Override
    public void endCDATA() {
        this.handler.endCDATA();
    }

    @Override
    public void comment(char[] characters, int start, int length) throws SAXException {
        this.handler.comment(characters, start, length);
    }
}

