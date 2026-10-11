/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$Factory
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.EcoreBuilder;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLParserPoolImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceFactoryImpl;
import org.eclipse.emf.ecore.xmi.util.DefaultEcoreBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLProcessor {
    protected EcoreBuilder ecoreBuilder;
    protected static final String XML_EXTENSION = "xml";
    protected static final String STAR_EXTENSION = "*";
    protected static final URI XML_URI = URI.createFileURI((String)"xml");
    protected Map<String, Resource.Factory> registrations;
    protected Map<Object, Object> loadOptions = new HashMap<Object, Object>();
    protected Map<Object, Object> saveOptions = new HashMap<Object, Object>();
    protected ExtendedMetaData extendedMetaData;
    protected EPackage.Registry registry;

    protected XMLProcessor(EPackage.Registry registry) {
        this.registry = registry;
        this.extendedMetaData = this.createExtendedMetaData();
        this.ecoreBuilder = this.createEcoreBuilder();
        this.loadOptions.put("EXTENDED_META_DATA", this.extendedMetaData);
        this.loadOptions.put("USE_PARSER_POOL", new XMLParserPoolImpl(true));
        this.loadOptions.put("USE_XML_NAME_TO_FEATURE_MAP", new HashMap());
        this.loadOptions.put("USE_DEPRECATED_METHODS", Boolean.FALSE);
        this.loadOptions.put("CONFIGURATION_CACHE", Boolean.TRUE);
        this.saveOptions.put("EXTENDED_META_DATA", this.extendedMetaData);
        this.saveOptions.put("USE_CACHED_LOOKUP_TABLE", new ArrayList());
        this.saveOptions.put("CONFIGURATION_CACHE", Boolean.TRUE);
    }

    public XMLProcessor() {
        this.extendedMetaData = this.createExtendedMetaData();
        this.ecoreBuilder = this.createEcoreBuilder();
        this.loadOptions.put("EXTENDED_META_DATA", this.extendedMetaData);
        this.loadOptions.put("USE_PARSER_POOL", new XMLParserPoolImpl(true));
        this.loadOptions.put("USE_DEPRECATED_METHODS", Boolean.FALSE);
        this.loadOptions.put("CONFIGURATION_CACHE", Boolean.TRUE);
        this.saveOptions.put("EXTENDED_META_DATA", this.extendedMetaData);
        this.saveOptions.put("CONFIGURATION_CACHE", Boolean.TRUE);
    }

    public XMLProcessor(URI schemaURI) throws SAXException {
        this(Collections.singleton(schemaURI));
    }

    public XMLProcessor(Collection<URI> schemaURIs) throws SAXException {
        this((EPackage.Registry)new EPackageRegistryImpl());
        this.loadOptions.put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        this.loadOptions.put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        this.saveOptions.put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        this.saveOptions.put("SCHEMA_LOCATION", Boolean.TRUE);
        try {
            for (Resource resource : this.ecoreBuilder.generate(schemaURIs)) {
                for (EPackage ePackage : EcoreUtil.getObjectsByType((Collection)resource.getContents(), (EClassifier)EcorePackage.Literals.EPACKAGE)) {
                    EcoreUtil.freeze((EPackage)ePackage);
                }
            }
        }
        catch (InvocationTargetException invocationTargetException) {
            throw new SAXException((Exception)invocationTargetException.getTargetException());
        }
        catch (Exception exception) {
            throw new SAXException(exception);
        }
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            HashMap<String, Resource.Factory> result = new HashMap<String, Resource.Factory>();
            result.put(STAR_EXTENSION, (Resource.Factory)new XMLResourceFactoryImpl());
            this.registrations = result;
        }
        return this.registrations;
    }

    public EPackage.Registry getEPackageRegistry() {
        return this.registry;
    }

    public ExtendedMetaData getExtendedMetaData() {
        return this.extendedMetaData;
    }

    public Resource load(String systemId, Map<?, ?> options) throws IOException {
        ResourceSet resourceSet = this.createResourceSet();
        XMLResource resource = (XMLResource)resourceSet.createResource(URI.createURI((String)systemId));
        InputSource inputSource = new InputSource();
        inputSource.setSystemId(systemId);
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.loadOptions);
            mergedOptions.putAll(options);
            resource.load(inputSource, mergedOptions);
        } else {
            resource.load(inputSource, this.loadOptions);
        }
        resourceSet.getPackageRegistry().putAll((Map)this.registry);
        return resource;
    }

    public Resource load(InputStream is, Map<?, ?> options) throws IOException {
        ResourceSet resourceSet = this.createResourceSet();
        Resource resource = resourceSet.createResource(XML_URI);
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.loadOptions);
            mergedOptions.putAll(options);
            resource.load(is, mergedOptions);
        } else {
            resource.load(is, this.loadOptions);
        }
        resourceSet.getPackageRegistry().putAll((Map)this.registry);
        return resource;
    }

    public Resource load(InputSource inputSource, Map<?, ?> options) throws IOException {
        ResourceSet resourceSet = this.createResourceSet();
        XMLResource resource = (XMLResource)resourceSet.createResource(XML_URI);
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.loadOptions);
            mergedOptions.putAll(options);
            resource.load(inputSource, mergedOptions);
        } else {
            resource.load(inputSource, this.loadOptions);
        }
        resourceSet.getPackageRegistry().putAll((Map)this.registry);
        return resource;
    }

    public Resource load(Node node, Map<?, ?> options) throws IOException {
        ResourceSet resourceSet = this.createResourceSet();
        XMLResource resource = (XMLResource)resourceSet.createResource(XML_URI);
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.loadOptions);
            mergedOptions.putAll(options);
            resource.load(node, mergedOptions);
        } else {
            resource.load(node, this.loadOptions);
        }
        resourceSet.getPackageRegistry().putAll((Map)this.registry);
        return resource;
    }

    public void save(OutputStream outputStream, Resource resource, Map<?, ?> options) throws IOException {
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.saveOptions);
            mergedOptions.putAll(options);
            resource.save(outputStream, mergedOptions);
        } else {
            resource.save(outputStream, this.saveOptions);
        }
    }

    public void save(Writer writer, Resource resource, Map<?, ?> options) throws IOException {
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.saveOptions);
            mergedOptions.putAll(options);
            ((XMLResource)resource).save(writer, mergedOptions);
        } else {
            ((XMLResource)resource).save(writer, this.saveOptions);
        }
    }

    public void save(Document document, Resource resource, DOMHandler handler, Map<?, ?> options) throws IOException {
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.saveOptions);
            mergedOptions.putAll(options);
            ((XMLResource)resource).save(document, mergedOptions, handler);
        } else {
            ((XMLResource)resource).save(document, this.saveOptions, handler);
        }
    }

    public String saveToString(Resource resource, Map<?, ?> options) throws IOException {
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        if (options != null) {
            HashMap<Object, Object> mergedOptions = new HashMap<Object, Object>(this.saveOptions);
            mergedOptions.putAll(options);
            ((XMLResource)resource).save(os, mergedOptions);
        } else {
            ((XMLResource)resource).save(os, this.saveOptions);
        }
        return os.toString();
    }

    protected ResourceSet createResourceSet() {
        ResourceSetImpl resourceSet = new ResourceSetImpl();
        resourceSet.getResourceFactoryRegistry().getExtensionToFactoryMap().putAll(this.getRegistrations());
        return resourceSet;
    }

    protected EcoreBuilder createEcoreBuilder() {
        return new DefaultEcoreBuilder(this.extendedMetaData);
    }

    protected ExtendedMetaData createExtendedMetaData() {
        if (this.registry == null) {
            this.registry = new EPackageRegistryImpl();
        }
        return new BasicExtendedMetaData(this.registry);
    }
}

