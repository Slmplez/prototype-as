/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.xerces.xni.QName
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.sphinx.platform.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.apache.xerces.xni.QName;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.sphinx.platform.util.ReflectUtil;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLRootElementHandler
extends DefaultHandler
implements LexicalHandler {
    private static final String ATTRIBUTE_NAME_TARGET_NAMESPACE = "targetNamespace";
    private static final String ATTRIBUTE_NAME_SCHEMA_LOCATION = "schemaLocation";
    private static final String ATTRIBUTE_PREFIX_XMLNS = "xmlns";
    private static final String ATTRIBUTE_NAME_XMI = "xmi";
    private static final String ATTRIBUTE_NAME_XSI = "xsi";
    private final String FIELD_NAME_ATTRIBUTES = "fAttributes";
    private final String FIELD_NAME_NAME = "name";
    private final String FIELD_NAME_VALUE = "value";
    private SAXParserFactory parserFactory;
    private String rootElementNamespace = null;
    private String targetNamespace = null;
    private String xsiSchemaLocation = null;
    private ArrayList<String> rootElementComments = new ArrayList();
    private String[] targetNamespaceExcludePatterns;

    protected SAXParser getParser(boolean useLexicalHandler) throws ParserConfigurationException, SAXException {
        if (this.parserFactory == null) {
            this.parserFactory = SAXParserFactory.newInstance();
            this.parserFactory.setNamespaceAware(true);
            this.parserFactory.setValidating(false);
            this.parserFactory.setXIncludeAware(false);
        }
        SAXParser parser = this.createParser(this.parserFactory);
        if (useLexicalHandler) {
            parser.setProperty("http://xml.org/sax/properties/lexical-handler", this);
        }
        return parser;
    }

    protected SAXParser createParser(SAXParserFactory parserFactory) throws ParserConfigurationException, SAXException, SAXNotRecognizedException, SAXNotSupportedException {
        return parserFactory.newSAXParser();
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException, OperationCanceledException {
        this.rootElementNamespace = uri.length() > 0 ? uri : null;
        this.xsiSchemaLocation = attributes.getValue("http://www.w3.org/2001/XMLSchema-instance", ATTRIBUTE_NAME_SCHEMA_LOCATION);
        this.targetNamespace = attributes.getValue("", ATTRIBUTE_NAME_TARGET_NAMESPACE);
        if (this.targetNamespace == null) {
            this.targetNamespace = this.getTargetNamespaceFromDeclaredXMLNamespaces(qName, attributes);
        }
        throw new StopParsingException();
    }

    private String getTargetNamespaceFromDeclaredXMLNamespaces(String qName, Attributes attributes) {
        try {
            Object[] xmlAttributesArray;
            int separatorIndex = qName.indexOf(":");
            String prefix = separatorIndex != -1 ? qName.substring(0, separatorIndex) : "";
            Object xmlAttributesObject = ReflectUtil.getInvisibleFieldValue(attributes, "fAttributes");
            Object[] objectArray = xmlAttributesArray = (Object[])ReflectUtil.getInvisibleFieldValue(xmlAttributesObject, "fAttributes");
            int n = xmlAttributesArray.length;
            int n2 = 0;
            while (n2 < n) {
                String value;
                Object xmlAttribute = objectArray[n2];
                QName xQName = (QName)ReflectUtil.getInvisibleFieldValue(xmlAttribute, "name");
                if (!(!ATTRIBUTE_PREFIX_XMLNS.equals(xQName.prefix) && !ATTRIBUTE_PREFIX_XMLNS.equals(xQName.localpart) || prefix.equals(xQName.localpart) || ATTRIBUTE_NAME_XMI.equals(xQName.localpart) || ATTRIBUTE_NAME_XSI.equals(xQName.localpart) || xQName.localpart == null || this.isExcludedTargetNamespace(value = (String)ReflectUtil.getInvisibleFieldValue(xmlAttribute, "value")))) {
                    return value;
                }
                ++n2;
            }
        }
        catch (Exception exception) {}
        return null;
    }

    protected boolean isExcludedTargetNamespace(String value) {
        if (value != null && value.trim().length() > 0 && this.targetNamespaceExcludePatterns != null) {
            String[] stringArray = this.targetNamespaceExcludePatterns;
            int n = this.targetNamespaceExcludePatterns.length;
            int n2 = 0;
            while (n2 < n) {
                String excludePattern = stringArray[n2];
                if (value.matches(excludePattern)) {
                    return true;
                }
                ++n2;
            }
        }
        return false;
    }

    @Override
    public void comment(char[] ch, int start, int length) throws SAXException {
        if (ch != null && length > 0 && start <= ch.length) {
            String comment = new String(ch, start, length);
            this.rootElementComments.add(comment);
        }
    }

    @Override
    public void endCDATA() throws SAXException {
    }

    @Override
    public void endDTD() throws SAXException {
    }

    @Override
    public void endEntity(String name) throws SAXException {
    }

    @Override
    public void startCDATA() throws SAXException {
    }

    @Override
    public void startDTD(String name, String publicId, String systemId) throws SAXException {
    }

    @Override
    public void startEntity(String name) throws SAXException {
    }

    public void parseContents(InputStream inputStream) throws IOException, ParserConfigurationException, SAXException {
        this.parseContents(inputStream, false);
    }

    public void parseContents(InputStream inputStream, boolean useLexicalHandler) throws IOException, ParserConfigurationException, SAXException {
        try {
            if (inputStream != null) {
                SAXParser parser = this.getParser(useLexicalHandler);
                parser.parse(inputStream, (DefaultHandler)this);
            }
        }
        catch (StopParsingException stopParsingException) {}
    }

    public void parseContents(InputSource inputSource) throws IOException, ParserConfigurationException, SAXException {
        this.parseContents(inputSource, false);
    }

    public void parseContents(InputSource inputSource, boolean useLexicalHandler) throws IOException, ParserConfigurationException, SAXException {
        try {
            if (inputSource != null && inputSource.getByteStream() != null) {
                SAXParser parser = this.getParser(useLexicalHandler);
                parser.parse(inputSource.getByteStream(), (DefaultHandler)this);
            }
        }
        catch (StopParsingException stopParsingException) {}
    }

    public String getRootElementNamespace() {
        return this.rootElementNamespace;
    }

    public String getTargetNamespace() {
        return this.targetNamespace;
    }

    public String getSchemaLocation() {
        return this.xsiSchemaLocation;
    }

    public Collection<String> getRootElementComments() {
        return this.rootElementComments;
    }

    public void setTargetNamespaceExcludePatterns(String ... targetNamespaceExcludePatterns) {
        this.targetNamespaceExcludePatterns = targetNamespaceExcludePatterns;
    }

    private class StopParsingException
    extends SAXException {
        private static final long serialVersionUID = 1L;

        public StopParsingException() {
            super((String)null);
        }
    }
}

