/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.ContentHandler
 *  org.eclipse.emf.ecore.resource.ContentHandler$Validity
 *  org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl
 *  org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl$Describer
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLParserPool;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.SAXXMLHandler;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLOptionsImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLParserPoolImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLContentHandlerImpl
extends ContentHandlerImpl {
    private static final XMLParserPool XML_PARSER_POOL = new XMLParserPoolImpl(1, true);
    private static final Map<Object, Object> DEFAULT_SAVE_OPTIONS;
    private static final Map<Object, Object> DEFAULT_LOAD_OPTIONS;

    static {
        HashMap<Object, Object> defaultLoadOptions = new HashMap<Object, Object>();
        HashMap<Object, Object> defaultSaveOptions = new HashMap<Object, Object>();
        defaultLoadOptions.put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        defaultSaveOptions.put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        BasicExtendedMetaData extendedMetaData = new BasicExtendedMetaData((EPackage.Registry)new EPackageRegistryImpl());
        defaultLoadOptions.put("EXTENDED_META_DATA", extendedMetaData);
        defaultSaveOptions.put("EXTENDED_META_DATA", extendedMetaData);
        XMLOptionsImpl xmlOptions = new XMLOptionsImpl();
        xmlOptions.setProcessAnyXML(true);
        defaultLoadOptions.put("XML_OPTIONS", xmlOptions);
        defaultLoadOptions.put("USE_PARSER_POOL", XML_PARSER_POOL);
        DEFAULT_LOAD_OPTIONS = defaultLoadOptions;
        DEFAULT_SAVE_OPTIONS = defaultSaveOptions;
    }

    public static boolean isXMINameAndNamespace(String name, String namespace) {
        return "XMI".equals(name) && XMLContentHandlerImpl.isXMINamespace(namespace);
    }

    public static boolean isXMINamespace(String namespace) {
        return namespace != null && (namespace.startsWith("http://schema.omg.org/spec/XMI/") || namespace.equals("http://www.omg.org/XMI"));
    }

    protected XMLResource createXMLResource() {
        return new XMLResourceImpl(){
            {
                this.defaultLoadOptions = DEFAULT_LOAD_OPTIONS;
                this.defaultSaveOptions = DEFAULT_SAVE_OPTIONS;
            }

            protected XMLLoad createXMLLoad() {
                return new XMLLoadImpl(this.createXMLHelper()){

                    public XMLDefaultHandler createDefaultHandler() {
                        return new SAXXMLHandler(this.resource, this.helper, this.options){

                            public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
                                super.startElement(uri, localName, name, attributes);
                                int depth = this.elements.size();
                                if (depth == 1 && !XMLContentHandlerImpl.isXMINameAndNamespace(localName, uri) || depth == 2 && !XMLContentHandlerImpl.isXMINamespace(uri)) {
                                    this.endElement(uri, localName, name);
                                    if (depth == 2) {
                                        this.endElement(uri, localName, name);
                                    }
                                    this.endDocument();
                                    throw new RuntimeException();
                                }
                            }

                            protected EPackage handleMissingPackage(String uriString) {
                                EPackage result = super.handleMissingPackage(uriString);
                                return result == XMLTypePackage.eINSTANCE ? this.extendedMetaData.demandPackage(uriString) : result;
                            }

                            protected void processSchemaLocations(String prefix, String name) {
                            }
                        };
                    }
                };
            }
        };
    }

    protected String getCharset(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        String result = (String)context.get("org.eclipse.core.runtime:charset");
        if (result == null) {
            result = this.load(uri, inputStream, options, context).getEncoding();
            context.put("org.eclipse.core.runtime:charset", result);
        }
        return result;
    }

    protected XMLResource load(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        XMLResource result = (XMLResource)context.get("XMLResource");
        if (result == null) {
            block6: {
                try {
                    try {
                        result = this.createXMLResource();
                        result.setURI(uri);
                        result.load(new BufferedInputStream(inputStream){

                            public void close() throws IOException {
                            }
                        }, null);
                    }
                    catch (Throwable throwable) {
                        inputStream.reset();
                        break block6;
                    }
                }
                catch (Throwable throwable) {
                    inputStream.reset();
                    throw throwable;
                }
                inputStream.reset();
            }
            context.put("XMLResource", result);
        }
        return result;
    }

    public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        Map result = super.contentDescription(uri, inputStream, options, context);
        if (this.isRequestedProperty("org.eclipse.core.runtime:charset", options)) {
            result.put("org.eclipse.core.runtime:charset", this.getCharset(uri, inputStream, options, context));
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class XMI
    extends XMLContentHandlerImpl {
        @Override
        public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
            EObject root;
            XMLTypeDocumentRoot documentRoot;
            EList rootContents;
            EObject eObject;
            Map<String, Object> result = super.contentDescription(uri, inputStream, options, context);
            XMLResource xmlResource = this.load(uri, inputStream, options, context);
            EList contents = xmlResource.getContents();
            if (!contents.isEmpty() && (eObject = (EObject)contents.get(0)) instanceof XMLTypeDocumentRoot && !(rootContents = (documentRoot = (XMLTypeDocumentRoot)eObject).eContents()).isEmpty() && (root = (EObject)rootContents.get(0)) instanceof AnyType) {
                for (FeatureMap.Entry entry : ((AnyType)root).getAnyAttribute()) {
                    EStructuralFeature attributeFeature = entry.getEStructuralFeature();
                    if (!"version".equals(ExtendedMetaData.INSTANCE.getName(attributeFeature)) || !XMI.isXMINamespace(ExtendedMetaData.INSTANCE.getNamespace(attributeFeature))) continue;
                    result.put("org.eclipse.emf.ecore:validity", ContentHandler.Validity.VALID);
                    result.put("org.eclipse.emf.ecore:contentType", "org.eclipse.emf.ecore.xmi");
                    break;
                }
            }
            return result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static class Describer
        extends ContentHandlerImpl.Describer {
            protected ContentHandler createContentHandler(Map<String, String> parameters) {
                return new XMI();
            }
        }
    }
}

