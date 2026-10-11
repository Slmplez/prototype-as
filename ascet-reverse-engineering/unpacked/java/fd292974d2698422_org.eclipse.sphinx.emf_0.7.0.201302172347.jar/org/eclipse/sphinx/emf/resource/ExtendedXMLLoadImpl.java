/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.ecore.resource.Resource$IOWrappedException
 *  org.eclipse.emf.ecore.resource.URIConverter
 *  org.eclipse.emf.ecore.resource.URIConverter$Readable
 *  org.eclipse.emf.ecore.xmi.XMLDefaultHandler
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLLoad
 *  org.eclipse.emf.ecore.xmi.XMLParserPool
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLParserPool;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.resource.ExtendedErrorHandlerWrapper;
import org.eclipse.sphinx.emf.resource.ExtendedSAXXMLHandler;
import org.eclipse.sphinx.emf.resource.IModelConverter;
import org.eclipse.sphinx.emf.resource.ModelConverterRegistry;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedXMLLoadImpl
extends XMLLoadImpl {
    protected boolean enableSchemaValidation;
    protected SAXParser parser = null;
    protected IModelConverter converter = null;
    protected boolean didConvert = false;

    public ExtendedXMLLoadImpl(XMLHelper helper) {
        super(helper);
    }

    public void load(XMLResource resource, InputStream inputStream, Map<?, ?> options) throws IOException {
        Map parserFeatures;
        InputSource inputSource;
        block29: {
            if (inputStream instanceof URIConverter.Readable) {
                URIConverter.Readable readable = (URIConverter.Readable)inputStream;
                resource.setEncoding(readable.getEncoding());
                InputSource inputSource2 = new InputSource(readable.asReader());
                if (resource.getURI() != null) {
                    String resourceURI = resource.getURI().toString();
                    inputSource2.setPublicId(resourceURI);
                    inputSource2.setSystemId(resourceURI);
                    inputSource2.setEncoding(resource.getEncoding());
                }
                this.load(resource, inputSource2, options);
                return;
            }
            this.resource = resource;
            this.is = inputStream;
            this.options = options;
            this.enableSchemaValidation = Boolean.TRUE.equals(options.get("ENABLE_SCHEMA_VALIDATION"));
            inputSource = null;
            this.converter = ModelConverterRegistry.INSTANCE.getLoadConverter(resource, options);
            this.didConvert = false;
            if (this.converter != null) {
                URIConverter uriConverter;
                try {
                    try {
                        inputSource = this.converter.convertLoad(resource, this.is, options);
                        this.didConvert = true;
                    }
                    catch (Exception ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
                        this.converter.dispose();
                        uriConverter = EcoreResourceUtil.getURIConverter(resource.getResourceSet());
                        this.is = uriConverter.createInputStream(resource.getURI(), options);
                        break block29;
                    }
                }
                catch (Throwable resourceURI) {
                    this.converter.dispose();
                    URIConverter uriConverter2 = EcoreResourceUtil.getURIConverter(resource.getResourceSet());
                    this.is = uriConverter2.createInputStream(resource.getURI(), options);
                    throw resourceURI;
                }
                this.converter.dispose();
                uriConverter = EcoreResourceUtil.getURIConverter(resource.getResourceSet());
                this.is = uriConverter.createInputStream(resource.getURI(), options);
            }
        }
        String encoding = null;
        if (!Boolean.FALSE.equals(options.get("USE_DEPRECATED_METHODS"))) {
            encoding = this.getEncoding();
            resource.setEncoding(encoding);
        }
        if (inputSource == null) {
            inputSource = new InputSource(this.is);
        }
        if (resource.getURI() != null) {
            String resourceURI = resource.getURI().toString();
            inputSource.setPublicId(resourceURI);
            inputSource.setSystemId(resourceURI);
            inputSource.setEncoding(encoding);
        }
        parserFeatures = (parserFeatures = (Map)options.get("PARSER_FEATURES")) == null ? new HashMap() : parserFeatures;
        Map parserProperties = (Map)options.get("PARSER_PROPERTIES");
        parserProperties = parserProperties == null ? new HashMap() : parserProperties;
        parserFeatures.put("http://xml.org/sax/features/namespaces", true);
        parserFeatures.put("http://xml.org/sax/features/namespace-prefixes", false);
        if (this.enableSchemaValidation && !this.didConvert) {
            parserFeatures.put("http://xml.org/sax/features/validation", true);
            parserFeatures.put("http://apache.org/xml/features/validation/schema", true);
            parserProperties.put("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
        }
        parserProperties.put("http://apache.org/xml/properties/internal/error-handler", new ExtendedErrorHandlerWrapper());
        DefaultHandler handler = null;
        XMLParserPool pool = (XMLParserPool)options.get("USE_PARSER_POOL");
        try {
            try {
                if (pool != null) {
                    this.parser = pool.get(parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                    handler = (DefaultHandler)pool.getDefaultHandler(resource, (XMLLoad)this, this.helper, options);
                } else {
                    this.parser = this.makeParser();
                    handler = this.makeDefaultHandler();
                    if (parserFeatures != null) {
                        for (String feature : parserFeatures.keySet()) {
                            this.parser.getXMLReader().setFeature(feature, (Boolean)parserFeatures.get(feature));
                        }
                    }
                    if (parserProperties != null) {
                        for (String property : parserProperties.keySet()) {
                            this.parser.getXMLReader().setProperty(property, parserProperties.get(property));
                        }
                    }
                }
                if (Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")) && (parserProperties == null || parserProperties.get("http://xml.org/sax/properties/lexical-handler") == null)) {
                    this.parser.setProperty("http://xml.org/sax/properties/lexical-handler", handler);
                }
                this.parser.parse(inputSource, handler);
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
        finally {
            if (pool != null) {
                if (this.parser != null) {
                    pool.release(this.parser, parserFeatures, parserProperties, Boolean.TRUE.equals(options.get("USE_LEXICAL_HANDLER")));
                }
                if (handler != null) {
                    pool.releaseDefaultHandler((XMLDefaultHandler)handler, options);
                }
            }
            this.helper = null;
            this.parser = null;
            this.converter = null;
            this.handleErrors();
        }
    }

    protected SAXParser makeParser() throws ParserConfigurationException, SAXException {
        SAXParserFactory factory = SAXParserFactory.newInstance();
        return factory.newSAXParser();
    }

    protected DefaultHandler makeDefaultHandler() {
        return new ExtendedSAXXMLHandler(this.resource, this.helper, this.options);
    }

    protected void handleErrors() throws IOException {
    }
}

