/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.StringReader;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.util.IdUtil;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PluginHandler
extends DefaultHandler {
    private Document fDocument;
    private Element fRootElement;
    private Stack fOpenElements = new Stack();
    private String fSchemaVersion;
    private boolean fAbbreviated;
    private Locator fLocator;
    private boolean fPop;

    public PluginHandler(boolean abbreviated) {
        this.fAbbreviated = abbreviated;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        Element parent;
        this.fPop = true;
        if (this.fAbbreviated && this.fOpenElements.size() == 2 && (parent = (Element)this.fOpenElements.peek()).getNodeName().equals("extension") && !this.isInterestingExtension((Element)this.fOpenElements.peek())) {
            this.fPop = false;
            return;
        }
        Element element = this.fDocument.createElement(qName);
        int i = 0;
        while (i < attributes.getLength()) {
            element.setAttribute(attributes.getQName(i), attributes.getValue(i));
            if ("extension".equals(qName) || "extension-point".equals(qName)) {
                element.setAttribute("line", Integer.toString(this.fLocator.getLineNumber()));
            }
            ++i;
        }
        if (this.fRootElement == null) {
            this.fRootElement = element;
        } else {
            ((Element)this.fOpenElements.peek()).appendChild(element);
        }
        this.fOpenElements.push(element);
    }

    protected boolean isInterestingExtension(Element element) {
        String point = element.getAttribute("point");
        return IdUtil.isInterestingExtensionPoint(point);
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        if (this.fPop || qName.equals("extension") && this.fOpenElements.size() == 2) {
            this.fOpenElements.pop();
        }
    }

    public void setDocumentLocator(Locator locator) {
        this.fLocator = locator;
    }

    public void startDocument() throws SAXException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            this.fDocument = factory.newDocumentBuilder().newDocument();
        }
        catch (ParserConfigurationException parserConfigurationException) {}
    }

    public void endDocument() throws SAXException {
        this.fDocument.appendChild(this.fRootElement);
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if ("eclipse".equals(target)) {
            this.fSchemaVersion = data.length() > 10 && data.substring(0, 9).equals("version=\"") && data.charAt(data.length() - 1) == '\"' ? TargetPlatformHelper.getSchemaVersionForTargetVersion(data.substring(9, data.length() - 1)) : TargetPlatformHelper.getSchemaVersion();
        }
    }

    public void characters(char[] characters, int start, int length) throws SAXException {
        if (this.fAbbreviated) {
            return;
        }
        this.processCharacters(characters, start, length);
    }

    protected void processCharacters(char[] characters, int start, int length) throws DOMException {
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
            ((Element)this.fOpenElements.peek()).appendChild(text);
        }
    }

    public Node getDocumentElement() {
        if (this.fRootElement != null) {
            this.fRootElement.normalize();
        }
        return this.fRootElement;
    }

    public String getSchemaVersion() {
        return this.fSchemaVersion;
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }
}

