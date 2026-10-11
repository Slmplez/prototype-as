/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.jaxp;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import javax.xml.validation.Schema;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.impl.xs.XMLSchemaValidator;
import org.apache.xerces.jaxp.DefaultValidationErrorHandler;
import org.apache.xerces.jaxp.JAXPConstants;
import org.apache.xerces.jaxp.JAXPValidatorComponent;
import org.apache.xerces.jaxp.SAXParserFactoryImpl;
import org.apache.xerces.jaxp.SchemaValidatorConfiguration;
import org.apache.xerces.jaxp.UnparsedEntityHandler;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.apache.xerces.xs.AttributePSVI;
import org.apache.xerces.xs.ElementPSVI;
import org.apache.xerces.xs.PSVIProvider;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.HandlerBase;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class SAXParserImpl
extends javax.xml.parsers.SAXParser
implements JAXPConstants,
PSVIProvider {
    private static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String NAMESPACE_PREFIXES_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    private static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    private static final String XMLSCHEMA_VALIDATION_FEATURE = "http://apache.org/xml/features/validation/schema";
    private static final String XINCLUDE_FEATURE = "http://apache.org/xml/features/xinclude";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private JAXPSAXParser xmlReader = new JAXPSAXParser(this);
    private String schemaLanguage = null;
    private final Schema grammar;
    private XMLComponent fSchemaValidator;
    private XMLComponentManager fSchemaValidatorComponentManager;
    private ValidationManager fSchemaValidationManager;
    private UnparsedEntityHandler fUnparsedEntityHandler;
    private final ErrorHandler fInitErrorHandler;
    private final EntityResolver fInitEntityResolver;

    SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable) throws SAXException {
        this(sAXParserFactoryImpl, hashtable, false);
    }

    SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable, boolean bl) throws SAXException {
        this.xmlReader.setFeature0(NAMESPACES_FEATURE, sAXParserFactoryImpl.isNamespaceAware());
        this.xmlReader.setFeature0(NAMESPACE_PREFIXES_FEATURE, !sAXParserFactoryImpl.isNamespaceAware());
        if (sAXParserFactoryImpl.isXIncludeAware()) {
            this.xmlReader.setFeature0(XINCLUDE_FEATURE, true);
        }
        if (bl) {
            this.xmlReader.setProperty0(SECURITY_MANAGER, new SecurityManager());
        }
        this.setFeatures(hashtable);
        if (sAXParserFactoryImpl.isValidating()) {
            this.fInitErrorHandler = new DefaultValidationErrorHandler();
            this.xmlReader.setErrorHandler(this.fInitErrorHandler);
        } else {
            this.fInitErrorHandler = this.xmlReader.getErrorHandler();
        }
        this.xmlReader.setFeature0(VALIDATION_FEATURE, sAXParserFactoryImpl.isValidating());
        this.grammar = sAXParserFactoryImpl.getSchema();
        if (this.grammar != null) {
            XMLParserConfiguration xMLParserConfiguration = this.xmlReader.getXMLParserConfiguration();
            XMLDocumentFilter xMLDocumentFilter = null;
            if (this.grammar instanceof XSGrammarPoolContainer) {
                xMLDocumentFilter = new XMLSchemaValidator();
                this.fSchemaValidationManager = new ValidationManager();
                this.fUnparsedEntityHandler = new UnparsedEntityHandler(this.fSchemaValidationManager);
                xMLParserConfiguration.setDTDHandler(this.fUnparsedEntityHandler);
                this.fUnparsedEntityHandler.setDTDHandler(this.xmlReader);
                this.xmlReader.setDTDSource(this.fUnparsedEntityHandler);
                this.fSchemaValidatorComponentManager = new SchemaValidatorConfiguration(xMLParserConfiguration, (XSGrammarPoolContainer)((Object)this.grammar), this.fSchemaValidationManager);
            } else {
                xMLDocumentFilter = new JAXPValidatorComponent(this.grammar.newValidatorHandler());
                this.fSchemaValidatorComponentManager = xMLParserConfiguration;
            }
            xMLParserConfiguration.addRecognizedFeatures(xMLDocumentFilter.getRecognizedFeatures());
            xMLParserConfiguration.addRecognizedProperties(xMLDocumentFilter.getRecognizedProperties());
            xMLParserConfiguration.setDocumentHandler(xMLDocumentFilter);
            ((XMLDocumentSource)xMLDocumentFilter).setDocumentHandler(this.xmlReader);
            this.xmlReader.setDocumentSource(xMLDocumentFilter);
            this.fSchemaValidator = xMLDocumentFilter;
        }
        this.fInitEntityResolver = this.xmlReader.getEntityResolver();
    }

    private void setFeatures(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable != null) {
            Enumeration enumeration = hashtable.keys();
            while (enumeration.hasMoreElements()) {
                String string = (String)enumeration.nextElement();
                boolean bl = (Boolean)hashtable.get(string);
                this.xmlReader.setFeature0(string, bl);
            }
        }
    }

    public Parser getParser() throws SAXException {
        return this.xmlReader;
    }

    public XMLReader getXMLReader() {
        return this.xmlReader;
    }

    public boolean isNamespaceAware() {
        try {
            return this.xmlReader.getFeature(NAMESPACES_FEATURE);
        }
        catch (SAXException sAXException) {
            throw new IllegalStateException(sAXException.getMessage());
        }
    }

    public boolean isValidating() {
        try {
            return this.xmlReader.getFeature(VALIDATION_FEATURE);
        }
        catch (SAXException sAXException) {
            throw new IllegalStateException(sAXException.getMessage());
        }
    }

    public boolean isXIncludeAware() {
        try {
            return this.xmlReader.getFeature(XINCLUDE_FEATURE);
        }
        catch (SAXException sAXException) {
            return false;
        }
    }

    public void setProperty(String string, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
        this.xmlReader.setProperty(string, object);
    }

    public Object getProperty(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.xmlReader.getProperty(string);
    }

    public void parse(InputSource inputSource, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException();
        }
        if (defaultHandler != null) {
            this.xmlReader.setContentHandler(defaultHandler);
            this.xmlReader.setEntityResolver(defaultHandler);
            this.xmlReader.setErrorHandler(defaultHandler);
            this.xmlReader.setDTDHandler(defaultHandler);
            this.xmlReader.setDocumentHandler(null);
        }
        this.xmlReader.parse(inputSource);
    }

    public void parse(InputSource inputSource, HandlerBase handlerBase) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException();
        }
        if (handlerBase != null) {
            this.xmlReader.setDocumentHandler(handlerBase);
            this.xmlReader.setEntityResolver(handlerBase);
            this.xmlReader.setErrorHandler(handlerBase);
            this.xmlReader.setDTDHandler(handlerBase);
            this.xmlReader.setContentHandler(null);
        }
        this.xmlReader.parse(inputSource);
    }

    public Schema getSchema() {
        return this.grammar;
    }

    public void reset() {
        try {
            this.xmlReader.restoreInitState();
        }
        catch (SAXException sAXException) {
            // empty catch block
        }
        this.xmlReader.setContentHandler(null);
        this.xmlReader.setDTDHandler(null);
        if (this.xmlReader.getErrorHandler() != this.fInitErrorHandler) {
            this.xmlReader.setErrorHandler(this.fInitErrorHandler);
        }
        if (this.xmlReader.getEntityResolver() != this.fInitEntityResolver) {
            this.xmlReader.setEntityResolver(this.fInitEntityResolver);
        }
    }

    public ElementPSVI getElementPSVI() {
        return this.xmlReader.getElementPSVI();
    }

    public AttributePSVI getAttributePSVI(int n) {
        return this.xmlReader.getAttributePSVI(n);
    }

    public AttributePSVI getAttributePSVIByName(String string, String string2) {
        return this.xmlReader.getAttributePSVIByName(string, string2);
    }

    public static class JAXPSAXParser
    extends SAXParser {
        private HashMap fInitFeatures = new HashMap();
        private HashMap fInitProperties = new HashMap();
        private SAXParserImpl fSAXParser;

        public JAXPSAXParser() {
        }

        JAXPSAXParser(SAXParserImpl sAXParserImpl) {
            this.fSAXParser = sAXParserImpl;
        }

        public synchronized void setFeature(String string, boolean bl) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (string == null) {
                throw new NullPointerException();
            }
            if (string.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                block8: {
                    try {
                        this.setProperty(SAXParserImpl.SECURITY_MANAGER, bl ? new SecurityManager() : null);
                    }
                    catch (SAXNotRecognizedException sAXNotRecognizedException) {
                        if (bl) {
                            throw sAXNotRecognizedException;
                        }
                    }
                    catch (SAXNotSupportedException sAXNotSupportedException) {
                        if (!bl) break block8;
                        throw sAXNotSupportedException;
                    }
                }
                return;
            }
            if (!this.fInitFeatures.containsKey(string)) {
                boolean bl2 = super.getFeature(string);
                this.fInitFeatures.put(string, bl2 ? Boolean.TRUE : Boolean.FALSE);
            }
            if (this.fSAXParser != null && this.fSAXParser.fSchemaValidator != null) {
                this.setSchemaValidatorFeature(string, bl);
            }
            super.setFeature(string, bl);
        }

        public synchronized boolean getFeature(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (string == null) {
                throw new NullPointerException();
            }
            if (string.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                try {
                    return super.getProperty(SAXParserImpl.SECURITY_MANAGER) != null;
                }
                catch (SAXException sAXException) {
                    return false;
                }
            }
            return super.getFeature(string);
        }

        public synchronized void setProperty(String string, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (string == null) {
                throw new NullPointerException();
            }
            if (this.fSAXParser != null) {
                if ("http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(string)) {
                    if (this.fSAXParser.grammar != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{string}));
                    }
                    if ("http://www.w3.org/2001/XMLSchema".equals(object)) {
                        if (this.fSAXParser.isValidating()) {
                            this.fSAXParser.schemaLanguage = "http://www.w3.org/2001/XMLSchema";
                            this.setFeature(SAXParserImpl.XMLSCHEMA_VALIDATION_FEATURE, true);
                            if (!this.fInitProperties.containsKey("http://java.sun.com/xml/jaxp/properties/schemaLanguage")) {
                                this.fInitProperties.put("http://java.sun.com/xml/jaxp/properties/schemaLanguage", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage"));
                            }
                            super.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
                        }
                    } else if (object == null) {
                        this.fSAXParser.schemaLanguage = null;
                        this.setFeature(SAXParserImpl.XMLSCHEMA_VALIDATION_FEATURE, false);
                    } else {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-not-supported", null));
                    }
                    return;
                }
                if ("http://java.sun.com/xml/jaxp/properties/schemaSource".equals(string)) {
                    if (this.fSAXParser.grammar != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{string}));
                    }
                    String string2 = (String)this.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
                    if (string2 != null && "http://www.w3.org/2001/XMLSchema".equals(string2)) {
                        if (!this.fInitProperties.containsKey("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
                            this.fInitProperties.put("http://java.sun.com/xml/jaxp/properties/schemaSource", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource"));
                        }
                    } else {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "jaxp-order-not-supported", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://java.sun.com/xml/jaxp/properties/schemaSource"}));
                    }
                    super.setProperty(string, object);
                    return;
                }
            }
            if (!this.fInitProperties.containsKey(string)) {
                this.fInitProperties.put(string, super.getProperty(string));
            }
            if (this.fSAXParser != null && this.fSAXParser.fSchemaValidator != null) {
                this.setSchemaValidatorProperty(string, object);
            }
            super.setProperty(string, object);
        }

        public synchronized Object getProperty(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (string == null) {
                throw new NullPointerException();
            }
            if (this.fSAXParser != null && "http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(string)) {
                return this.fSAXParser.schemaLanguage;
            }
            return super.getProperty(string);
        }

        synchronized void restoreInitState() throws SAXNotRecognizedException, SAXNotSupportedException {
            String string;
            Map.Entry entry;
            Iterator iterator;
            if (!this.fInitFeatures.isEmpty()) {
                iterator = this.fInitFeatures.entrySet().iterator();
                while (iterator.hasNext()) {
                    entry = iterator.next();
                    string = (String)entry.getKey();
                    boolean bl = (Boolean)entry.getValue();
                    super.setFeature(string, bl);
                }
                this.fInitFeatures.clear();
            }
            if (!this.fInitProperties.isEmpty()) {
                iterator = this.fInitProperties.entrySet().iterator();
                while (iterator.hasNext()) {
                    entry = iterator.next();
                    string = (String)entry.getKey();
                    Object v = entry.getValue();
                    super.setProperty(string, v);
                }
                this.fInitProperties.clear();
            }
        }

        public void parse(InputSource inputSource) throws SAXException, IOException {
            if (this.fSAXParser != null && this.fSAXParser.fSchemaValidator != null) {
                if (this.fSAXParser.fSchemaValidationManager != null) {
                    this.fSAXParser.fSchemaValidationManager.reset();
                    this.fSAXParser.fUnparsedEntityHandler.reset();
                }
                this.resetSchemaValidator();
            }
            super.parse(inputSource);
        }

        public void parse(String string) throws SAXException, IOException {
            if (this.fSAXParser != null && this.fSAXParser.fSchemaValidator != null) {
                if (this.fSAXParser.fSchemaValidationManager != null) {
                    this.fSAXParser.fSchemaValidationManager.reset();
                    this.fSAXParser.fUnparsedEntityHandler.reset();
                }
                this.resetSchemaValidator();
            }
            super.parse(string);
        }

        XMLParserConfiguration getXMLParserConfiguration() {
            return this.fConfiguration;
        }

        void setFeature0(String string, boolean bl) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setFeature(string, bl);
        }

        boolean getFeature0(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getFeature(string);
        }

        void setProperty0(String string, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setProperty(string, object);
        }

        Object getProperty0(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getProperty(string);
        }

        private void setSchemaValidatorFeature(String string, boolean bl) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.fSAXParser.fSchemaValidator.setFeature(string, bl);
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                String string2 = xMLConfigurationException.getIdentifier();
                if (xMLConfigurationException.getType() == 0) {
                    throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{string2}));
                }
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{string2}));
            }
        }

        private void setSchemaValidatorProperty(String string, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.fSAXParser.fSchemaValidator.setProperty(string, object);
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                String string2 = xMLConfigurationException.getIdentifier();
                if (xMLConfigurationException.getType() == 0) {
                    throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{string2}));
                }
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{string2}));
            }
        }

        private void resetSchemaValidator() throws SAXException {
            try {
                this.fSAXParser.fSchemaValidator.reset(this.fSAXParser.fSchemaValidatorComponentManager);
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                throw new SAXException(xMLConfigurationException);
            }
        }
    }
}

