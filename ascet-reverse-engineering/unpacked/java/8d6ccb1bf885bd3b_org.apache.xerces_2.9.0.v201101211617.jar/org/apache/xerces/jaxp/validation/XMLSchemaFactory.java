/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.jaxp.validation;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import org.apache.xerces.impl.xs.XMLSchemaLoader;
import org.apache.xerces.jaxp.validation.AbstractXMLSchema;
import org.apache.xerces.jaxp.validation.DraconianErrorHandler;
import org.apache.xerces.jaxp.validation.EmptyXMLSchema;
import org.apache.xerces.jaxp.validation.JAXPValidationMessageFormatter;
import org.apache.xerces.jaxp.validation.ReadOnlyGrammarPool;
import org.apache.xerces.jaxp.validation.SimpleXMLSchema;
import org.apache.xerces.jaxp.validation.Util;
import org.apache.xerces.jaxp.validation.WeakReferenceXMLSchema;
import org.apache.xerces.jaxp.validation.XMLSchema;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMInputSource;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.SAXInputSource;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;

public final class XMLSchemaFactory
extends SchemaFactory {
    private static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    private static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    private static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private final XMLSchemaLoader fXMLSchemaLoader = new XMLSchemaLoader();
    private ErrorHandler fErrorHandler;
    private LSResourceResolver fLSResourceResolver;
    private final DOMEntityResolverWrapper fDOMEntityResolverWrapper;
    private final ErrorHandlerWrapper fErrorHandlerWrapper = new ErrorHandlerWrapper(DraconianErrorHandler.getInstance());
    private SecurityManager fSecurityManager;
    private final XMLGrammarPoolWrapper fXMLGrammarPoolWrapper;
    private boolean fUseGrammarPoolOnly;

    public XMLSchemaFactory() {
        this.fDOMEntityResolverWrapper = new DOMEntityResolverWrapper();
        this.fXMLGrammarPoolWrapper = new XMLGrammarPoolWrapper();
        this.fXMLSchemaLoader.setFeature(SCHEMA_FULL_CHECKING, true);
        this.fXMLSchemaLoader.setProperty(XMLGRAMMAR_POOL, this.fXMLGrammarPoolWrapper);
        this.fXMLSchemaLoader.setEntityResolver(this.fDOMEntityResolverWrapper);
        this.fXMLSchemaLoader.setErrorHandler(this.fErrorHandlerWrapper);
        this.fUseGrammarPoolOnly = true;
    }

    public boolean isSchemaLanguageSupported(String string) {
        if (string == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaLanguageNull", null));
        }
        if (string.length() == 0) {
            throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaLanguageLengthZero", null));
        }
        return string.equals("http://www.w3.org/2001/XMLSchema");
    }

    public LSResourceResolver getResourceResolver() {
        return this.fLSResourceResolver;
    }

    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fLSResourceResolver = lSResourceResolver;
        this.fDOMEntityResolverWrapper.setEntityResolver(lSResourceResolver);
        this.fXMLSchemaLoader.setEntityResolver(this.fDOMEntityResolverWrapper);
    }

    public ErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandler = errorHandler;
        this.fErrorHandlerWrapper.setErrorHandler(errorHandler != null ? errorHandler : DraconianErrorHandler.getInstance());
        this.fXMLSchemaLoader.setErrorHandler(this.fErrorHandlerWrapper);
    }

    public Schema newSchema(Source[] sourceArray) throws SAXException {
        Object object;
        Object object2;
        XMLGrammarPoolImplExtension xMLGrammarPoolImplExtension = new XMLGrammarPoolImplExtension();
        this.fXMLGrammarPoolWrapper.setGrammarPool(xMLGrammarPoolImplExtension);
        XMLInputSource[] xMLInputSourceArray = new XMLInputSource[sourceArray.length];
        int n = 0;
        while (n < sourceArray.length) {
            String string;
            Source source = sourceArray[n];
            if (source instanceof StreamSource) {
                object2 = (StreamSource)source;
                object = ((StreamSource)object2).getPublicId();
                string = ((StreamSource)object2).getSystemId();
                InputStream inputStream = ((StreamSource)object2).getInputStream();
                Reader reader = ((StreamSource)object2).getReader();
                xMLInputSourceArray[n] = new XMLInputSource((String)object, string, null);
                xMLInputSourceArray[n].setByteStream(inputStream);
                xMLInputSourceArray[n].setCharacterStream(reader);
            } else if (source instanceof SAXSource) {
                object2 = (SAXSource)source;
                object = ((SAXSource)object2).getInputSource();
                if (object == null) {
                    throw new SAXException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SAXSourceNullInputSource", null));
                }
                xMLInputSourceArray[n] = new SAXInputSource(((SAXSource)object2).getXMLReader(), (InputSource)object);
            } else if (source instanceof DOMSource) {
                object2 = (DOMSource)source;
                object = ((DOMSource)object2).getNode();
                string = ((DOMSource)object2).getSystemId();
                xMLInputSourceArray[n] = new DOMInputSource((Node)object, string);
            } else {
                if (source == null) {
                    throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaSourceArrayMemberNull", null));
                }
                throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaFactorySourceUnrecognized", new Object[]{source.getClass().getName()}));
            }
            ++n;
        }
        try {
            this.fXMLSchemaLoader.loadGrammar(xMLInputSourceArray);
        }
        catch (XNIException xNIException) {
            throw Util.toSAXException(xNIException);
        }
        catch (IOException iOException) {
            object = new SAXParseException(iOException.getMessage(), null, iOException);
            if (this.fErrorHandler != null) {
                this.fErrorHandler.error((SAXParseException)object);
            }
            throw object;
        }
        this.fXMLGrammarPoolWrapper.setGrammarPool(null);
        int n2 = xMLGrammarPoolImplExtension.getGrammarCount();
        object2 = null;
        if (this.fUseGrammarPoolOnly) {
            if (n2 > 1) {
                object2 = new XMLSchema(new ReadOnlyGrammarPool(xMLGrammarPoolImplExtension));
            } else if (n2 == 1) {
                object = xMLGrammarPoolImplExtension.retrieveInitialGrammarSet("http://www.w3.org/2001/XMLSchema");
                object2 = new SimpleXMLSchema(object[0]);
            } else {
                object2 = new EmptyXMLSchema();
            }
        } else {
            object2 = new XMLSchema(new ReadOnlyGrammarPool(xMLGrammarPoolImplExtension), false);
        }
        this.propagateFeatures((AbstractXMLSchema)object2);
        return object2;
    }

    public Schema newSchema() throws SAXException {
        WeakReferenceXMLSchema weakReferenceXMLSchema = new WeakReferenceXMLSchema();
        this.propagateFeatures(weakReferenceXMLSchema);
        return weakReferenceXMLSchema;
    }

    public boolean getFeature(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (string == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "FeatureNameNull", null));
        }
        if (string.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.fSecurityManager != null;
        }
        if (string.equals(USE_GRAMMAR_POOL_ONLY)) {
            return this.fUseGrammarPoolOnly;
        }
        try {
            return this.fXMLSchemaLoader.getFeature(string);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            String string2 = xMLConfigurationException.getIdentifier();
            if (xMLConfigurationException.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-recognized", new Object[]{string2}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-supported", new Object[]{string2}));
        }
    }

    public Object getProperty(String string) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (string == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "ProperyNameNull", null));
        }
        if (string.equals(SECURITY_MANAGER)) {
            return this.fSecurityManager;
        }
        if (string.equals(XMLGRAMMAR_POOL)) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{string}));
        }
        try {
            return this.fXMLSchemaLoader.getProperty(string);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            String string2 = xMLConfigurationException.getIdentifier();
            if (xMLConfigurationException.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-recognized", new Object[]{string2}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{string2}));
        }
    }

    public void setFeature(String string, boolean bl) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (string == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "FeatureNameNull", null));
        }
        if (string.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.fSecurityManager = bl ? new SecurityManager() : null;
            this.fXMLSchemaLoader.setProperty(SECURITY_MANAGER, this.fSecurityManager);
            return;
        }
        if (string.equals(USE_GRAMMAR_POOL_ONLY)) {
            this.fUseGrammarPoolOnly = bl;
            return;
        }
        try {
            this.fXMLSchemaLoader.setFeature(string, bl);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            String string2 = xMLConfigurationException.getIdentifier();
            if (xMLConfigurationException.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-recognized", new Object[]{string2}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-supported", new Object[]{string2}));
        }
    }

    public void setProperty(String string, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (string == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "ProperyNameNull", null));
        }
        if (string.equals(SECURITY_MANAGER)) {
            this.fSecurityManager = (SecurityManager)object;
            this.fXMLSchemaLoader.setProperty(SECURITY_MANAGER, this.fSecurityManager);
            return;
        }
        if (string.equals(XMLGRAMMAR_POOL)) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{string}));
        }
        try {
            this.fXMLSchemaLoader.setProperty(string, object);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            String string2 = xMLConfigurationException.getIdentifier();
            if (xMLConfigurationException.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-recognized", new Object[]{string2}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{string2}));
        }
    }

    private void propagateFeatures(AbstractXMLSchema abstractXMLSchema) {
        abstractXMLSchema.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", this.fSecurityManager != null);
        String[] stringArray = this.fXMLSchemaLoader.getRecognizedFeatures();
        int n = 0;
        while (n < stringArray.length) {
            boolean bl = this.fXMLSchemaLoader.getFeature(stringArray[n]);
            abstractXMLSchema.setFeature(stringArray[n], bl);
            ++n;
        }
    }

    static class XMLGrammarPoolImplExtension
    extends XMLGrammarPoolImpl {
        public XMLGrammarPoolImplExtension() {
        }

        public XMLGrammarPoolImplExtension(int n) {
            super(n);
        }

        int getGrammarCount() {
            return this.fGrammarCount;
        }
    }

    static class XMLGrammarPoolWrapper
    implements XMLGrammarPool {
        private XMLGrammarPool fGrammarPool;

        XMLGrammarPoolWrapper() {
        }

        public Grammar[] retrieveInitialGrammarSet(String string) {
            return this.fGrammarPool.retrieveInitialGrammarSet(string);
        }

        public void cacheGrammars(String string, Grammar[] grammarArray) {
            this.fGrammarPool.cacheGrammars(string, grammarArray);
        }

        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return this.fGrammarPool.retrieveGrammar(xMLGrammarDescription);
        }

        public void lockPool() {
            this.fGrammarPool.lockPool();
        }

        public void unlockPool() {
            this.fGrammarPool.unlockPool();
        }

        public void clear() {
            this.fGrammarPool.clear();
        }

        void setGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.fGrammarPool = xMLGrammarPool;
        }

        XMLGrammarPool getGrammarPool() {
            return this.fGrammarPool;
        }
    }
}

