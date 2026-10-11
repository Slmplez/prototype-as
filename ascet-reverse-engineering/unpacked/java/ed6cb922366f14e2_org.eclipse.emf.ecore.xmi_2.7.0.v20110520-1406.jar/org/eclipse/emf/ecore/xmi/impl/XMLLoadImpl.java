/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.resource.Resource$Diagnostic
 *  org.eclipse.emf.ecore.resource.Resource$IOWrappedException
 *  org.eclipse.emf.ecore.resource.URIConverter$Readable
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLParserPool;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.SAXXMLHandler;
import org.eclipse.emf.ecore.xmi.impl.XMLHandler;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLLoadImpl
implements XMLLoad {
    protected static final String SAX_LEXICAL_PROPERTY = "http://xml.org/sax/properties/lexical-handler";
    protected static final int BUFFER_SIZE = 200;
    protected XMLResource resource;
    protected InputStream is;
    protected XMLHelper helper;
    protected Map<?, ?> options;
    protected boolean namespaceAware;

    public XMLLoadImpl(XMLHelper helper) {
        this.helper = helper;
    }

    protected void handleErrors() throws IOException {
        if (!this.resource.getErrors().isEmpty()) {
            Resource.Diagnostic error = (Resource.Diagnostic)this.resource.getErrors().get(0);
            if (error instanceof Exception) {
                throw new Resource.IOWrappedException((Exception)error);
            }
            throw new IOException(error.getMessage());
        }
    }

    @Override
    public void load(XMLResource resource, InputStream inputStream, Map<?, ?> options) throws IOException {
        if (inputStream instanceof URIConverter.Readable) {
            URIConverter.Readable readable = (URIConverter.Readable)inputStream;
            resource.setEncoding(readable.getEncoding());
            InputSource inputSource = new InputSource(readable.asReader());
            if (resource.getURI() != null) {
                String resourceURI = resource.getURI().toString();
                inputSource.setPublicId(resourceURI);
                inputSource.setSystemId(resourceURI);
                inputSource.setEncoding(resource.getEncoding());
            }
            this.load(resource, inputSource, options);
            return;
        }
        this.resource = resource;
        this.is = inputStream;
        this.options = options;
        XMLParserPool pool = (XMLParserPool)options.get("USE_PARSER_POOL");
        Map parserFeatures = (Map)options.get("PARSER_FEATURES");
        Map parserProperties = (Map)options.get("PARSER_PROPERTIES");
        parserFeatures = parserFeatures == null ? Collections.emptyMap() : parserFeatures;
        parserProperties = parserProperties == null ? Collections.emptyMap() : parserProperties;
        String encoding = null;
        if (!Boolean.FALSE.equals(options.get("USE_DEPRECATED_METHODS"))) {
            encoding = this.getEncoding();
            resource.setEncoding(encoding);
        }
        try {
            DefaultHandler handler;
            SAXParser parser;
            if (pool != null) {
                parser = pool.get(parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                handler = (DefaultHandler)((Object)pool.getDefaultHandler(resource, this, this.helper, options));
            } else {
                parser = this.makeParser();
                handler = this.makeDefaultHandler();
                if (parserFeatures != null) {
                    for (Map.Entry entry : parserFeatures.entrySet()) {
                        parser.getXMLReader().setFeature((String)entry.getKey(), (Boolean)entry.getValue());
                    }
                }
                if (parserProperties != null) {
                    for (Map.Entry entry : parserProperties.entrySet()) {
                        parser.getXMLReader().setProperty((String)entry.getKey(), entry.getValue());
                    }
                }
            }
            InputSource inputSource = new InputSource(this.is);
            if (resource.getURI() != null) {
                String resourceURI = resource.getURI().toString();
                inputSource.setPublicId(resourceURI);
                inputSource.setSystemId(resourceURI);
                inputSource.setEncoding(encoding);
            }
            if (Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")) && (parserProperties == null || parserProperties.get(SAX_LEXICAL_PROPERTY) == null)) {
                parser.setProperty(SAX_LEXICAL_PROPERTY, handler);
            }
            parser.parse(inputSource, handler);
            if (pool != null) {
                pool.release(parser, parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                pool.releaseDefaultHandler((XMLDefaultHandler)((Object)handler), options);
            }
            this.helper = null;
            this.handleErrors();
        }
        catch (SAXException exception) {
            if (exception.getException() != null) {
                throw new Resource.IOWrappedException(exception.getException());
            }
            throw new Resource.IOWrappedException((Exception)exception);
        }
        catch (ParserConfigurationException exception) {
            throw new Resource.IOWrappedException((Exception)exception);
        }
    }

    @Override
    public void load(XMLResource resource, InputSource inputSource, Map<?, ?> options) throws IOException {
        this.resource = resource;
        this.options = options;
        XMLParserPool pool = (XMLParserPool)options.get("USE_PARSER_POOL");
        Map parserFeatures = (Map)options.get("PARSER_FEATURES");
        Map parserProperties = (Map)options.get("PARSER_PROPERTIES");
        parserFeatures = parserFeatures == null ? Collections.emptyMap() : parserFeatures;
        parserProperties = parserProperties == null ? Collections.emptyMap() : parserProperties;
        try {
            DefaultHandler handler;
            SAXParser parser;
            if (pool != null) {
                parser = pool.get(parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                handler = (DefaultHandler)((Object)pool.getDefaultHandler(resource, this, this.helper, options));
            } else {
                parser = this.makeParser();
                handler = this.makeDefaultHandler();
                if (parserFeatures != null) {
                    for (Map.Entry feature : parserFeatures.entrySet()) {
                        parser.getXMLReader().setFeature((String)feature.getKey(), (Boolean)feature.getValue());
                    }
                }
                if (parserProperties != null) {
                    for (Map.Entry property : parserProperties.entrySet()) {
                        parser.getXMLReader().setProperty((String)property.getKey(), property.getValue());
                    }
                }
            }
            if (Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")) && (parserProperties == null || parserProperties.get(SAX_LEXICAL_PROPERTY) == null)) {
                parser.setProperty(SAX_LEXICAL_PROPERTY, handler);
            }
            parser.parse(inputSource, handler);
            if (pool != null) {
                pool.release(parser, parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                pool.releaseDefaultHandler((XMLDefaultHandler)((Object)handler), options);
            }
            this.helper = null;
            this.handleErrors();
        }
        catch (SAXException exception) {
            if (exception.getException() != null) {
                throw new Resource.IOWrappedException(exception.getException());
            }
            throw new Resource.IOWrappedException((Exception)exception);
        }
        catch (ParserConfigurationException exception) {
            throw new Resource.IOWrappedException((Exception)exception);
        }
    }

    protected SAXParser makeParser() throws ParserConfigurationException, SAXException {
        SAXParserFactory f = SAXParserFactory.newInstance();
        return f.newSAXParser();
    }

    @Override
    public XMLDefaultHandler createDefaultHandler() {
        return (XMLDefaultHandler)((Object)this.makeDefaultHandler());
    }

    protected DefaultHandler makeDefaultHandler() {
        return new SAXXMLHandler(this.resource, this.helper, this.options);
    }

    @Deprecated
    protected String getEncoding() throws IOException {
        if (!this.is.markSupported()) {
            this.is = new BufferedInputStream(this.is);
        }
        byte[] buffer = this.readBuffer();
        return XMLHandler.getXMLEncoding(buffer);
    }

    protected byte[] readBuffer() throws IOException {
        int bytesRead;
        if (this.is.available() == 0) {
            return new byte[0];
        }
        byte[] buffer = new byte[200];
        this.is.mark(200);
        int totalBytesRead = bytesRead = this.is.read(buffer, 0, 200);
        while (bytesRead != -1 && totalBytesRead < 200) {
            bytesRead = this.is.read(buffer, totalBytesRead, 200 - totalBytesRead);
            if (bytesRead == -1) continue;
            totalBytesRead += bytesRead;
        }
        if (totalBytesRead < 0) {
            buffer = new byte[]{};
        } else if (totalBytesRead < 200) {
            byte[] smallerBuffer = new byte[totalBytesRead];
            System.arraycopy(buffer, 0, smallerBuffer, 0, totalBytesRead);
            buffer = smallerBuffer;
        }
        this.is.reset();
        return buffer;
    }

    @Override
    public void load(XMLResource resource, Node node, Map<?, ?> options) throws IOException {
        this.resource = resource;
        this.options = options;
        this.namespaceAware = Boolean.FALSE.equals(options.get("USE_DEPRECATED_METHODS"));
        XMLParserPool pool = (XMLParserPool)options.get("USE_PARSER_POOL");
        DefaultHandler handler = pool != null ? (DefaultHandler)((Object)pool.getDefaultHandler(resource, this, this.helper, options)) : this.makeDefaultHandler();
        LexicalHandler lexicalHandler = null;
        if (Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER"))) {
            lexicalHandler = (LexicalHandler)((Object)handler);
        }
        AttributesProxy attributesProxy = new AttributesProxy();
        try {
            short type = node.getNodeType();
            if (type == 1) {
                handler.startDocument();
                if (Boolean.TRUE.equals(options.get("DOM_USE_NAMESPACES_IN_SCOPE"))) {
                    this.traverseElement((Element)node, attributesProxy, handler, lexicalHandler);
                } else {
                    this.traverse(node, attributesProxy, handler, lexicalHandler);
                }
                handler.endDocument();
            } else {
                this.traverse(node, attributesProxy, handler, lexicalHandler);
            }
        }
        catch (SAXException sAXException) {
            // empty catch block
        }
        if (pool != null) {
            pool.releaseDefaultHandler((XMLDefaultHandler)((Object)handler), options);
        }
        attributesProxy = null;
        handler = null;
        lexicalHandler = null;
        this.helper = null;
        this.handleErrors();
    }

    protected void traverseElement(Element element, AttributesProxy attributesProxy, DefaultHandler handler, LexicalHandler lexicalHandler) throws SAXException {
        String nodeValue;
        String localName;
        AttributesImpl attrs = new AttributesImpl();
        HashSet<String> prefixes = new HashSet<String>();
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Node attr = attributes.item(i);
                String namespaceURI = attr.getNamespaceURI();
                if (namespaceURI == null) {
                    namespaceURI = "";
                }
                String nodeName = attr.getNodeName();
                localName = attr.getLocalName();
                nodeValue = attr.getNodeValue();
                if ("http://www.w3.org/2000/xmlns/".equals(namespaceURI)) {
                    if (this.namespaceAware) {
                        if (prefixes.add(localName)) {
                            handler.startPrefixMapping(localName, nodeValue);
                        }
                    } else if (attrs.getIndex(nodeName) < 0) {
                        attrs.addAttribute(namespaceURI, localName, nodeName, "CDATA", nodeValue);
                    }
                } else {
                    attrs.addAttribute(namespaceURI, localName, nodeName, "CDATA", nodeValue);
                }
                ++i;
            }
        }
        Node parent = element.getParentNode();
        while (parent != null && parent.getNodeType() != 9) {
            if (parent.hasAttributes()) {
                NamedNodeMap attributes = parent.getAttributes();
                int i = 0;
                while (i < attributes.getLength()) {
                    Node attr = attributes.item(i);
                    String namespaceURI = attr.getNamespaceURI();
                    if ("http://www.w3.org/2000/xmlns/".equals(namespaceURI)) {
                        localName = attr.getLocalName();
                        nodeValue = attr.getNodeValue();
                        if (this.namespaceAware) {
                            if (prefixes.add(localName)) {
                                handler.startPrefixMapping(localName, nodeValue);
                            }
                        } else {
                            String nodeName = attr.getNodeName();
                            if (attrs.getIndex(nodeName) < 0) {
                                attrs.addAttribute(namespaceURI, localName, nodeName, "CDATA", nodeValue);
                            }
                        }
                    }
                    ++i;
                }
            }
            parent = parent.getParentNode();
        }
        String namespaceURI = element.getNamespaceURI();
        if (namespaceURI == null) {
            namespaceURI = "";
        }
        String localName2 = element.getLocalName();
        String qname = element.getNodeName();
        handler.startElement(namespaceURI, localName2, qname, attrs);
        Node child = element.getFirstChild();
        while (child != null) {
            this.traverse(child, attributesProxy, handler, lexicalHandler);
            child = child.getNextSibling();
        }
        handler.endElement(namespaceURI, localName2, qname);
    }

    protected void traverse(Node node, AttributesProxy attributesProxy, DefaultHandler handler, LexicalHandler lexicalHandler) throws SAXException {
        if (node == null) {
            return;
        }
        short type = node.getNodeType();
        switch (type) {
            case 9: {
                DocumentType doctype;
                Document document = (Document)node;
                handler.startDocument();
                Element root = document.getDocumentElement();
                if (lexicalHandler != null && (doctype = document.getDoctype()) != null) {
                    String publicId = doctype.getPublicId();
                    String systemId = doctype.getSystemId();
                    lexicalHandler.startDTD(root.getNodeName(), publicId, systemId);
                }
                this.traverse(root, attributesProxy, handler, lexicalHandler);
                handler.endDocument();
                break;
            }
            case 1: {
                String namespaceURI;
                AttributesImpl filteredAttributes = null;
                NamedNodeMap attributes = node.getAttributes();
                if (this.namespaceAware) {
                    int i = 0;
                    int length = attributes.getLength();
                    while (i < length) {
                        Node attr = attributes.item(i);
                        String namespaceURI2 = attr.getNamespaceURI();
                        if ("http://www.w3.org/2000/xmlns/".equals(namespaceURI2)) {
                            handler.startPrefixMapping(attr.getLocalName(), attr.getNodeValue());
                            if (filteredAttributes == null) {
                                filteredAttributes = new AttributesImpl();
                                int j = 0;
                                while (j < i) {
                                    attr = attributes.item(j);
                                    namespaceURI2 = attr.getNamespaceURI();
                                    if (namespaceURI2 == null) {
                                        namespaceURI2 = "";
                                    }
                                    filteredAttributes.addAttribute(namespaceURI2, attr.getLocalName(), attr.getNodeName(), "CDATA", attr.getNodeValue());
                                    ++j;
                                }
                            }
                        } else if (filteredAttributes != null) {
                            if (namespaceURI2 == null) {
                                namespaceURI2 = "";
                            }
                            filteredAttributes.addAttribute(namespaceURI2, attr.getLocalName(), attr.getNodeName(), "CDATA", attr.getNodeValue());
                        }
                        ++i;
                    }
                }
                if (filteredAttributes == null) {
                    attributesProxy.setAttributes(attributes);
                }
                if ((namespaceURI = node.getNamespaceURI()) == null) {
                    namespaceURI = "";
                }
                String localName = node.getLocalName();
                String qname = node.getNodeName();
                handler.startElement(namespaceURI, localName, qname, filteredAttributes == null ? attributesProxy : filteredAttributes);
                Node child = node.getFirstChild();
                while (child != null) {
                    this.traverse(child, attributesProxy, handler, lexicalHandler);
                    child = child.getNextSibling();
                }
                handler.endElement(namespaceURI, localName, qname);
                break;
            }
            case 4: {
                if (lexicalHandler != null) {
                    lexicalHandler.startCDATA();
                }
                char[] chars = ((CDATASection)node).getData().toCharArray();
                handler.characters(chars, 0, chars.length);
                if (lexicalHandler == null) break;
                lexicalHandler.endCDATA();
                break;
            }
            case 3: {
                char[] chars = node.getNodeValue().toCharArray();
                handler.characters(chars, 0, chars.length);
                break;
            }
            case 8: {
                if (lexicalHandler == null) break;
                char[] chars = ((Comment)node).getData().toCharArray();
                lexicalHandler.comment(chars, 0, chars.length);
                break;
            }
            case 7: {
                ProcessingInstruction pi = (ProcessingInstruction)node;
                handler.processingInstruction(pi.getTarget(), pi.getData());
            }
        }
    }

    protected static final class AttributesProxy
    implements Attributes {
        protected NamedNodeMap attributes;

        protected AttributesProxy() {
        }

        public void setAttributes(NamedNodeMap attributes) {
            this.attributes = attributes;
        }

        public int getLength() {
            return this.attributes.getLength();
        }

        public String getQName(int index) {
            Node node = this.attributes.item(index);
            return node != null ? node.getNodeName() : null;
        }

        public String getURI(int index) {
            Node node = this.attributes.item(index);
            if (node != null) {
                String namespaceURI = node.getNamespaceURI();
                if ("http://www.w3.org/2000/xmlns/".equals(namespaceURI)) {
                    return "";
                }
                return namespaceURI;
            }
            return null;
        }

        public String getLocalName(int index) {
            Node node = this.attributes.item(index);
            if (node != null) {
                String prefix = node.getPrefix();
                if ("xmlns".equals(prefix)) {
                    return "";
                }
                return node.getLocalName();
            }
            return null;
        }

        public String getType(int i) {
            return "CDATA";
        }

        public String getType(String name) {
            return "CDATA";
        }

        public String getType(String uri, String localName) {
            return "CDATA";
        }

        public String getValue(int i) {
            Node node = this.attributes.item(i);
            return node != null ? node.getNodeValue() : null;
        }

        public String getValue(String name) {
            Node node = this.attributes.getNamedItem(name);
            return node != null ? node.getNodeValue() : null;
        }

        public String getValue(String uri, String localName) {
            Node node = this.attributes.getNamedItemNS(uri, localName);
            return node != null ? node.getNodeValue() : null;
        }

        public int getIndex(String qName) {
            Node node = this.attributes.getNamedItem(qName);
            if (node != null) {
                int i = 0;
                while (i < this.attributes.getLength()) {
                    Node item = this.attributes.item(i);
                    if (item == node) {
                        return i;
                    }
                    ++i;
                }
            }
            return -1;
        }

        public int getIndex(String uri, String localPart) {
            Node node = this.attributes.getNamedItemNS(uri, localPart);
            if (node != null) {
                int i = 0;
                while (i < this.attributes.getLength()) {
                    Node item = this.attributes.item(i);
                    if (item == node) {
                        return i;
                    }
                    ++i;
                }
            }
            return -1;
        }
    }
}

