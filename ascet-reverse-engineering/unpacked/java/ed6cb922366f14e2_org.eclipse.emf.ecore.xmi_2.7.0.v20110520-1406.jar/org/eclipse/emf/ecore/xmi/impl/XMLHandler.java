/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.URIConverter
 *  org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.emf.ecore.xml.type.SimpleAnyType
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.ClassNotFoundException;
import org.eclipse.emf.ecore.xmi.EcoreBuilder;
import org.eclipse.emf.ecore.xmi.FeatureNotFoundException;
import org.eclipse.emf.ecore.xmi.IllegalValueException;
import org.eclipse.emf.ecore.xmi.PackageNotFoundException;
import org.eclipse.emf.ecore.xmi.UnresolvedReferenceException;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMIPlugin;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLOptions;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.ConfigurationCache;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;
import org.eclipse.emf.ecore.xmi.util.DefaultEcoreBuilder;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class XMLHandler
extends DefaultHandler
implements XMLDefaultHandler {
    protected static final String ERROR_TYPE = "error";
    protected static final String OBJECT_TYPE = "object";
    protected static final String UNKNOWN_FEATURE_TYPE = "unknownFeature";
    protected static final String DOCUMENT_ROOT_TYPE = "documentRoot";
    protected static final String TYPE_ATTRIB = "xsi:type";
    protected static final String NIL_ATTRIB = "xsi:nil";
    protected static final String SCHEMA_LOCATION_ATTRIB = "xsi:schemaLocation";
    protected static final String NO_NAMESPACE_SCHEMA_LOCATION_ATTRIB = "xsi:noNamespaceSchemaLocation";
    protected static final boolean DEBUG_DEMANDED_PACKAGES = false;
    protected XMLResource xmlResource;
    protected XMLHelper helper;
    protected MyStack<String> elements;
    protected MyEObjectStack objects;
    protected MyStack<Object> types;
    protected MyStack<FeatureMap> mixedTargets;
    protected Map<String, EFactory> prefixesToFactories;
    protected Map<String, URI> urisToLocations;
    protected Map<String, URI> externalURIToLocations;
    protected boolean processSchemaLocations;
    protected InternalEList<EObject> extent;
    protected List<EObject> deferredExtent;
    protected ResourceSet resourceSet;
    protected EPackage.Registry packageRegistry;
    protected URI resourceURI;
    protected boolean resolve;
    protected boolean oldStyleProxyURIs;
    protected boolean disableNotify;
    protected StringBuffer text;
    protected boolean isIDREF;
    protected boolean isSimpleFeature;
    protected List<InternalEObject> sameDocumentProxies;
    protected List<SingleReference> forwardSingleReferences;
    protected List<ManyReference> forwardManyReferences;
    protected Object[] identifiers;
    protected int[] positions;
    protected static final int ARRAY_SIZE = 64;
    protected static final int REFERENCE_THRESHOLD = 5;
    protected int capacity;
    protected Set<String> notFeatures;
    protected String idAttribute;
    protected String hrefAttribute;
    protected XMLResource.XMLMap xmlMap;
    protected ExtendedMetaData extendedMetaData;
    protected EClass anyType;
    protected EClass anySimpleType;
    protected boolean recordUnknownFeature;
    protected boolean useNewMethods;
    protected boolean recordAnyTypeNSDecls;
    protected Map<EObject, AnyType> eObjectToExtensionMap;
    protected EStructuralFeature contextFeature;
    protected EPackage xmlSchemaTypePackage = XMLTypePackage.eINSTANCE;
    protected boolean deferIDREFResolution;
    protected boolean processAnyXML;
    protected EcoreBuilder ecoreBuilder;
    protected boolean isRoot;
    protected Locator locator;
    protected Attributes attribs;
    protected Map<EStructuralFeature, Integer> featuresToKinds;
    protected boolean useConfigurationCache;
    protected boolean needsPushContext;
    protected XMLResource.ResourceEntityHandler resourceEntityHandler;
    protected XMLResource.URIHandler uriHandler;
    protected EObject documentRoot;
    protected boolean usedNullNamespacePackage;
    protected boolean isNamespaceAware;
    protected boolean suppressDocumentRoot;
    protected boolean laxWildcardProcessing;
    Map<EClassFeatureNamePair, EStructuralFeature> eClassFeatureNamePairToEStructuralFeatureMap;
    boolean isOptionUseXMLNameToFeatureSet;
    EClassFeatureNamePair eClassFeatureNamePair = new EClassFeatureNamePair();

    public XMLHandler(XMLResource xmlResource, XMLHelper helper, Map<?, ?> options) {
        Map newEClassFeatureNamePairToEStructuralFeatureMap;
        this.xmlResource = xmlResource;
        this.helper = helper;
        this.elements = new MyStack();
        this.objects = new MyEObjectStack();
        this.mixedTargets = new MyStack();
        this.types = new MyStack();
        this.prefixesToFactories = new HashMap<String, EFactory>();
        this.forwardSingleReferences = new ArrayList<SingleReference>();
        this.forwardManyReferences = new ArrayList<ManyReference>();
        this.sameDocumentProxies = new ArrayList<InternalEObject>();
        this.identifiers = new Object[64];
        this.positions = new int[64];
        this.capacity = 64;
        this.resourceSet = xmlResource.getResourceSet();
        this.packageRegistry = this.resourceSet == null ? EPackage.Registry.INSTANCE : this.resourceSet.getPackageRegistry();
        this.resourceURI = xmlResource.getURI();
        this.extent = (InternalEList)xmlResource.getContents();
        if (Boolean.TRUE.equals(options.get("DEFER_ATTACHMENT"))) {
            this.deferredExtent = new ArrayList<EObject>();
        }
        this.resolve = this.resourceURI != null && this.resourceURI.isHierarchical() && !this.resourceURI.isRelative();
        this.eObjectToExtensionMap = xmlResource.getEObjectToExtensionMap();
        this.eObjectToExtensionMap.clear();
        helper.setOptions(options);
        if (Boolean.TRUE.equals(options.get("DISABLE_NOTIFY"))) {
            this.disableNotify = true;
        }
        this.notFeatures = new HashSet<String>();
        this.notFeatures.add(TYPE_ATTRIB);
        this.notFeatures.add(SCHEMA_LOCATION_ATTRIB);
        this.notFeatures.add(NO_NAMESPACE_SCHEMA_LOCATION_ATTRIB);
        this.xmlMap = (XMLResource.XMLMap)options.get("XML_MAP");
        helper.setXMLMap(this.xmlMap);
        if (this.xmlMap != null) {
            this.idAttribute = this.xmlMap.getIDAttributeName();
        }
        Object extendedMetaDataOption = options.get("EXTENDED_META_DATA");
        this.setExtendedMetaDataOption(extendedMetaDataOption);
        this.recordUnknownFeature = Boolean.TRUE.equals(options.get("RECORD_UNKNOWN_FEATURE"));
        if (this.recordUnknownFeature && this.extendedMetaData == null) {
            this.setExtendedMetaDataOption(Boolean.TRUE);
        }
        this.useNewMethods = Boolean.FALSE.equals(options.get("USE_DEPRECATED_METHODS"));
        XMLOptions xmlOptions = (XMLOptions)options.get("XML_OPTIONS");
        if (xmlOptions != null) {
            this.processSchemaLocations = xmlOptions.isProcessSchemaLocations();
            this.externalURIToLocations = xmlOptions.getExternalSchemaLocations();
            if (this.processSchemaLocations || this.externalURIToLocations != null) {
                if (this.extendedMetaData == null) {
                    this.setExtendedMetaDataOption(Boolean.TRUE);
                }
                this.ecoreBuilder = xmlOptions.getEcoreBuilder();
                if (this.ecoreBuilder == null) {
                    this.ecoreBuilder = this.createEcoreBuilder(options, this.extendedMetaData);
                } else {
                    this.ecoreBuilder.setExtendedMetaData(this.extendedMetaData);
                }
            }
            this.processAnyXML = xmlOptions.isProcessAnyXML();
            if (this.processAnyXML && this.extendedMetaData == null) {
                this.setExtendedMetaDataOption(Boolean.TRUE);
            }
        }
        if (this.extendedMetaData != null) {
            AnyType anyType = XMLTypeFactory.eINSTANCE.createAnyType();
            this.mixedTargets.push(anyType.getMixed());
            this.text = new StringBuffer();
        }
        this.anyType = (EClass)options.get("ANY_TYPE");
        this.anySimpleType = (EClass)options.get("ANY_SIMPLE_TYPE");
        if (this.anyType == null) {
            this.anyType = XMLTypePackage.eINSTANCE.getAnyType();
            this.anySimpleType = XMLTypePackage.eINSTANCE.getSimpleAnyType();
        }
        helper.setAnySimpleType(this.anySimpleType);
        this.eClassFeatureNamePairToEStructuralFeatureMap = newEClassFeatureNamePairToEStructuralFeatureMap = (Map)options.get("USE_XML_NAME_TO_FEATURE_MAP");
        if (this.eClassFeatureNamePairToEStructuralFeatureMap == null) {
            this.eClassFeatureNamePairToEStructuralFeatureMap = new HashMap<EClassFeatureNamePair, EStructuralFeature>();
        } else {
            this.isOptionUseXMLNameToFeatureSet = true;
        }
        this.recordAnyTypeNSDecls = Boolean.TRUE.equals(options.get("RECORD_ANY_TYPE_NAMESPACE_DECLARATIONS"));
        this.hrefAttribute = "href";
        if (Boolean.TRUE.equals(options.get("USE_ENCODED_ATTRIBUTE_STYLE"))) {
            this.hrefAttribute = null;
        }
        if (Boolean.TRUE.equals(options.get("DEFER_IDREF_RESOLUTION"))) {
            this.deferIDREFResolution = true;
            helper.setCheckForDuplicates(true);
        }
        if (Boolean.TRUE.equals(options.get("CONFIGURATION_CACHE"))) {
            this.useConfigurationCache = true;
        }
        this.uriHandler = (XMLResource.URIHandler)options.get("URI_HANDLER");
        this.resourceEntityHandler = (XMLResource.ResourceEntityHandler)options.get("RESOURCE_ENTITY_HANDLER");
        if (this.resourceEntityHandler != null) {
            this.resourceEntityHandler.reset();
            if (this.uriHandler == null && this.resourceEntityHandler instanceof XMLResource.URIHandler) {
                this.uriHandler = (XMLResource.URIHandler)((Object)this.resourceEntityHandler);
                this.uriHandler.setBaseURI(this.resourceURI);
            }
        }
        if (Boolean.TRUE.equals(options.get("SUPPRESS_DOCUMENT_ROOT"))) {
            this.suppressDocumentRoot = true;
        }
        if (Boolean.TRUE.equals(options.get("LAX_WILDCARD_PROCESSING"))) {
            this.laxWildcardProcessing = true;
        }
    }

    protected void setExtendedMetaDataOption(Object extendedMetaDataOption) {
        if (extendedMetaDataOption instanceof Boolean) {
            if (extendedMetaDataOption.equals(Boolean.TRUE)) {
                Object object = this.extendedMetaData = this.resourceSet == null ? ExtendedMetaData.INSTANCE : new BasicExtendedMetaData(this.resourceSet.getPackageRegistry());
                if (this.xmlResource != null) {
                    this.xmlResource.getDefaultSaveOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
                }
            } else {
                this.extendedMetaData = null;
            }
        } else {
            this.extendedMetaData = (ExtendedMetaData)extendedMetaDataOption;
        }
        this.helper.setExtendedMetaData(this.extendedMetaData);
    }

    @Override
    public void prepare(XMLResource resource, XMLHelper helper, Map<?, ?> options) {
        Map newEClassFeatureNamePairToEStructuralFeatureMap;
        this.xmlResource = resource;
        this.helper = helper;
        this.resourceSet = this.xmlResource.getResourceSet();
        this.packageRegistry = this.resourceSet == null ? EPackage.Registry.INSTANCE : this.resourceSet.getPackageRegistry();
        this.resourceURI = this.xmlResource.getURI();
        this.extent = (InternalEList)this.xmlResource.getContents();
        if (Boolean.TRUE.equals(options.get("DEFER_ATTACHMENT"))) {
            this.deferredExtent = new ArrayList<EObject>();
        }
        this.resolve = this.resourceURI != null && this.resourceURI.isHierarchical() && !this.resourceURI.isRelative();
        this.eObjectToExtensionMap = this.xmlResource.getEObjectToExtensionMap();
        this.eObjectToExtensionMap.clear();
        this.setExtendedMetaDataOption(options.get("EXTENDED_META_DATA"));
        helper.setOptions(options);
        if (this.extendedMetaData != null) {
            if (this.ecoreBuilder != null) {
                this.ecoreBuilder.setExtendedMetaData(this.extendedMetaData);
            }
            AnyType anyType = XMLTypeFactory.eINSTANCE.createAnyType();
            this.mixedTargets.push(anyType.getMixed());
            this.text = new StringBuffer();
        }
        this.eClassFeatureNamePairToEStructuralFeatureMap = newEClassFeatureNamePairToEStructuralFeatureMap = (Map)options.get("USE_XML_NAME_TO_FEATURE_MAP");
        if (this.eClassFeatureNamePairToEStructuralFeatureMap == null) {
            this.eClassFeatureNamePairToEStructuralFeatureMap = new HashMap<EClassFeatureNamePair, EStructuralFeature>();
            this.isOptionUseXMLNameToFeatureSet = false;
        } else {
            this.isOptionUseXMLNameToFeatureSet = true;
            if (helper instanceof XMLHelperImpl && this.featuresToKinds != null) {
                ((XMLHelperImpl)helper).featuresToKinds = this.featuresToKinds;
            }
        }
        this.uriHandler = (XMLResource.URIHandler)options.get("URI_HANDLER");
        this.resourceEntityHandler = (XMLResource.ResourceEntityHandler)options.get("RESOURCE_ENTITY_HANDLER");
        if (this.resourceEntityHandler != null) {
            this.resourceEntityHandler.reset();
            if (this.uriHandler == null && this.resourceEntityHandler instanceof XMLResource.URIHandler) {
                this.uriHandler = (XMLResource.URIHandler)((Object)this.resourceEntityHandler);
                this.uriHandler.setBaseURI(this.resourceURI);
            }
        }
    }

    @Override
    public void reset() {
        this.xmlResource = null;
        this.extendedMetaData = null;
        this.eClassFeatureNamePair.eClass = null;
        this.eClassFeatureNamePairToEStructuralFeatureMap = null;
        this.featuresToKinds = this.isOptionUseXMLNameToFeatureSet && this.helper instanceof XMLHelperImpl ? ((XMLHelperImpl)this.helper).featuresToKinds : null;
        if (this.ecoreBuilder != null) {
            this.ecoreBuilder.setExtendedMetaData(null);
        }
        this.helper = null;
        this.elements.clear();
        this.objects.clear();
        this.mixedTargets.clear();
        this.contextFeature = null;
        this.eObjectToExtensionMap = null;
        this.externalURIToLocations = null;
        this.types.clear();
        this.prefixesToFactories.clear();
        this.forwardSingleReferences.clear();
        this.forwardManyReferences.clear();
        this.sameDocumentProxies.clear();
        int i = 0;
        while (i < this.identifiers.length) {
            this.identifiers[i] = null;
            ++i;
        }
        i = 0;
        while (i < this.positions.length) {
            this.positions[i] = 0;
            ++i;
        }
        this.capacity = 64;
        this.resourceSet = null;
        this.packageRegistry = null;
        this.resourceURI = null;
        this.extent = null;
        this.deferredExtent = null;
        this.attribs = null;
        this.locator = null;
        this.urisToLocations = null;
        this.resourceEntityHandler = null;
        this.uriHandler = null;
        this.documentRoot = null;
        this.usedNullNamespacePackage = false;
        this.isNamespaceAware = false;
    }

    @Override
    public void ignorableWhitespace(char[] ch, int start, int length) throws SAXException {
    }

    @Override
    public void skippedEntity(String name) throws SAXException {
    }

    protected XMIException toXMIException(SAXParseException e) {
        XMIException xmiException = new XMIException(e.getException() == null ? e : e.getException(), e.getSystemId() == null ? this.getLocation() : e.getSystemId(), e.getLineNumber(), e.getColumnNumber());
        return xmiException;
    }

    @Override
    public void warning(SAXParseException e) throws SAXException {
        this.warning(this.toXMIException(e));
    }

    @Override
    public void error(SAXParseException e) throws SAXException {
        this.error(this.toXMIException(e));
    }

    @Override
    public void fatalError(SAXParseException e) throws SAXException {
        this.fatalError(this.toXMIException(e));
        throw e;
    }

    @Override
    public void setDocumentLocator(Locator locator) {
        this.setLocator(locator);
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        this.setAttributes(attributes);
        this.startElement(uri, localName, qName);
    }

    @Override
    public void startEntity(String name) {
        if (this.resourceEntityHandler != null) {
            this.text = new StringBuffer();
        }
    }

    @Override
    public void endEntity(String name) {
        if (this.resourceEntityHandler != null) {
            this.resourceEntityHandler.handleEntity(name, this.text.toString());
        }
    }

    @Override
    public void comment(char[] ch, int start, int length) {
        if (this.mixedTargets.peek() != null) {
            if (this.text != null) {
                this.handleMixedText();
            }
            this.handleComment(new String(ch, start, length));
        }
    }

    @Override
    public void startCDATA() {
        if (this.mixedTargets.peek() != null) {
            if (this.text != null) {
                this.handleMixedText();
            }
            this.text = new StringBuffer();
        }
    }

    @Override
    public void endCDATA() {
        if (this.mixedTargets.peek() != null && this.text != null) {
            this.handleCDATA();
        }
    }

    @Override
    public void startDTD(String name, String publicId, String systemId) {
        this.xmlResource.setDoctypeInfo(publicId, systemId);
    }

    @Override
    public void endDTD() {
    }

    @Override
    public void unparsedEntityDecl(String name, String publicId, String systemId, String notationName) throws SAXException {
    }

    @Override
    public void notationDecl(String name, String publicId, String systemId) throws SAXException {
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        try {
            HashMap<String, String> options = new HashMap<String, String>();
            options.put("publicId", publicId);
            options.put("systemId", systemId);
            options.put("baseLocation", this.resourceURI == null ? null : this.resourceURI.toString());
            URI uri = URI.createURI((String)systemId);
            if (this.resolve && uri.isRelative() && uri.hasRelativePath()) {
                uri = this.helper.resolve(uri, this.resourceURI);
            }
            InputStream inputStream = this.getURIConverter().createInputStream(uri, options);
            InputSource result = new InputSource(inputStream);
            result.setPublicId(publicId);
            result.setSystemId(systemId);
            return result;
        }
        catch (IOException exception) {
            throw new SAXException(exception);
        }
    }

    protected abstract String getXSIType();

    protected abstract void handleObjectAttribs(EObject var1);

    @Deprecated
    protected void handleNamespaceAttribs() {
        int i = 0;
        int size = this.attribs.getLength();
        while (i < size) {
            String attrib = this.attribs.getQName(i);
            if (attrib.startsWith("xmlns")) {
                this.handleXMLNSAttribute(attrib, this.attribs.getValue(i));
            } else if (SCHEMA_LOCATION_ATTRIB.equals(attrib)) {
                this.handleXSISchemaLocation(this.attribs.getValue(i));
            } else if (NO_NAMESPACE_SCHEMA_LOCATION_ATTRIB.equals(attrib)) {
                this.handleXSINoNamespaceSchemaLocation(this.attribs.getValue(i));
            }
            ++i;
        }
    }

    protected void handleSchemaLocation() {
        String xsiNoNamespaceSchemLocation;
        String xsiSchemLocation = this.attribs.getValue("http://www.w3.org/2001/XMLSchema-instance", "schemaLocation");
        if (xsiSchemLocation != null) {
            this.handleXSISchemaLocation(xsiSchemLocation);
        }
        if ((xsiNoNamespaceSchemLocation = this.attribs.getValue("http://www.w3.org/2001/XMLSchema-instance", "noNamespaceSchemaLocation")) != null) {
            this.handleXSINoNamespaceSchemaLocation(xsiNoNamespaceSchemLocation);
        }
    }

    protected boolean isNull() {
        String value;
        String string = value = this.isNamespaceAware ? this.attribs.getValue("http://www.w3.org/2001/XMLSchema-instance", "nil") : this.attribs.getValue(NIL_ATTRIB);
        if (value != null) {
            try {
                return XMLTypeFactory.eINSTANCE.createBoolean(value);
            }
            catch (RuntimeException exception) {
                this.error(new XMIException(exception));
            }
        }
        return false;
    }

    protected Object setAttributes(Object attributes) {
        Attributes oldAttribs = this.attribs;
        this.attribs = (Attributes)attributes;
        return oldAttribs;
    }

    protected void setLocator(Object locator) {
        this.locator = (Locator)locator;
    }

    protected void recordHeaderInformation() {
        if (this.locator != null) {
            Class<?> locatorClass = this.locator.getClass();
            try {
                Method versionMethod;
                String version;
                Method encodingMethod = locatorClass.getMethod("getEncoding", new Class[0]);
                String encoding = (String)encodingMethod.invoke(this.locator, new Object[0]);
                if (encoding != null) {
                    this.xmlResource.setEncoding(encoding);
                }
                if ((version = (String)(versionMethod = locatorClass.getMethod("getXMLVersion", new Class[0])).invoke(this.locator, new Object[0])) != null) {
                    this.xmlResource.setXMLVersion(version);
                }
            }
            catch (NoSuchMethodException noSuchMethodException) {
            }
            catch (IllegalAccessException illegalAccessException) {
            }
            catch (InvocationTargetException invocationTargetException) {
                // empty catch block
            }
        }
    }

    @Override
    public void startDocument() {
        this.isRoot = true;
        this.helper.pushContext();
        this.needsPushContext = true;
    }

    public void startElement(String uri, String localName, String name) {
        if (this.needsPushContext) {
            this.helper.pushContext();
        }
        this.needsPushContext = true;
        if (this.text != null && this.text.length() > 0) {
            if (this.mixedTargets.peek() != null) {
                this.handleMixedText();
            } else {
                this.text = null;
            }
        }
        this.elements.push(name);
        String prefix = "";
        if (this.useNewMethods) {
            if (this.isRoot) {
                this.handleSchemaLocation();
            }
            prefix = this.helper.getPrefix(uri.length() == 0 ? null : uri);
            prefix = prefix == null ? "" : prefix;
        } else {
            this.handleNamespaceAttribs();
            int index = name.indexOf(58, 0);
            localName = name;
            if (index != -1) {
                prefix = name.substring(0, index);
                localName = name.substring(index + 1);
            }
        }
        this.processElement(name, prefix, localName);
    }

    protected void processElement(String name, String prefix, String localName) {
        if (this.isRoot) {
            this.isRoot = false;
            this.recordHeaderInformation();
        }
        if (this.isError()) {
            this.types.push(ERROR_TYPE);
        } else if (this.objects.isEmpty()) {
            this.createTopObject(prefix, localName);
        } else {
            this.handleFeature(prefix, localName);
        }
    }

    protected void handleForwardReferences() {
        this.handleForwardReferences(false);
    }

    protected void handleForwardReferences(boolean isEndDocument) {
        Object ref;
        Iterator<Object> i = this.sameDocumentProxies.iterator();
        block0: while (i.hasNext()) {
            InternalEObject proxy = i.next();
            for (EReference eReference : proxy.eClass().getEAllReferences()) {
                InternalEList holderContents;
                int resolvedEObjectIndex;
                EReference oppositeEReference = eReference.getEOpposite();
                if (oppositeEReference == null || !oppositeEReference.isChangeable() || !proxy.eIsSet((EStructuralFeature)eReference)) continue;
                EObject resolvedEObject = this.xmlResource.getEObject(proxy.eProxyURI().fragment());
                if (resolvedEObject == null) continue block0;
                if (!isEndDocument) {
                    i.remove();
                }
                EObject proxyHolder = (EObject)(eReference.isMany() ? ((List)proxy.eGet((EStructuralFeature)eReference)).get(0) : proxy.eGet((EStructuralFeature)eReference));
                if (oppositeEReference.isMany() && (resolvedEObjectIndex = (holderContents = (InternalEList)proxyHolder.eGet((EStructuralFeature)oppositeEReference)).basicIndexOf((Object)resolvedEObject)) != -1) {
                    int proxyIndex = holderContents.basicIndexOf((Object)proxy);
                    holderContents.move(proxyIndex, resolvedEObjectIndex);
                    holderContents.remove(proxyIndex > resolvedEObjectIndex ? proxyIndex - 1 : proxyIndex + 1);
                    continue block0;
                }
                if (!oppositeEReference.getEType().isInstance((Object)resolvedEObject)) {
                    this.error(new IllegalValueException(proxyHolder, (EStructuralFeature)oppositeEReference, resolvedEObject, null, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
                    continue block0;
                }
                if (!(eReference.isMany() ? !((InternalEList)resolvedEObject.eGet((EStructuralFeature)eReference)).basicContains((Object)proxyHolder) : resolvedEObject.eGet((EStructuralFeature)eReference) != proxyHolder)) continue block0;
                if (oppositeEReference.isMany()) {
                    InternalEList proxyHolderList = (InternalEList)proxyHolder.eGet((EStructuralFeature)oppositeEReference);
                    proxyHolderList.setUnique(proxyHolderList.basicIndexOf((Object)proxy), (Object)resolvedEObject);
                    continue block0;
                }
                proxyHolder.eSet((EStructuralFeature)oppositeEReference, (Object)resolvedEObject);
                continue block0;
            }
        }
        i = this.forwardSingleReferences.iterator();
        while (i.hasNext()) {
            ref = (SingleReference)i.next();
            EObject obj = this.xmlResource.getEObject((String)((SingleReference)ref).getValue());
            if (obj != null) {
                if (!isEndDocument) {
                    i.remove();
                }
                EStructuralFeature feature = ((SingleReference)ref).getFeature();
                this.setFeatureValue(((SingleReference)ref).getObject(), feature, obj, ((SingleReference)ref).getPosition());
                continue;
            }
            if (!isEndDocument) continue;
            this.error(new UnresolvedReferenceException((String)((SingleReference)ref).getValue(), this.getLocation(), ((SingleReference)ref).getLineNumber(), ((SingleReference)ref).getColumnNumber()));
        }
        i = this.forwardManyReferences.iterator();
        while (i.hasNext()) {
            ref = (ManyReference)i.next();
            Object[] values = ((ManyReference)ref).getValues();
            boolean failure = false;
            int j = 0;
            int l = values.length;
            while (j < l) {
                String id = (String)values[j];
                EObject obj = this.xmlResource.getEObject(id);
                values[j] = obj;
                if (obj == null) {
                    failure = true;
                    if (isEndDocument) {
                        this.error(new UnresolvedReferenceException(id, this.getLocation(), ((ManyReference)ref).getLineNumber(), ((ManyReference)ref).getColumnNumber()));
                    }
                }
                ++j;
            }
            if (!failure) {
                if (!isEndDocument) {
                    i.remove();
                }
                this.setFeatureValues((ManyReference)ref);
                continue;
            }
            if (!isEndDocument) continue;
            this.setFeatureValues((ManyReference)ref);
        }
    }

    @Override
    public void endDocument() {
        if (this.deferredExtent != null) {
            this.extent.addAll(this.deferredExtent);
        }
        if (this.usedNullNamespacePackage) {
            this.helper.addPrefix("", "");
        }
        this.helper.recordPrefixToURIMapping();
        this.helper.popContext();
        this.handleForwardReferences(true);
        if (this.disableNotify) {
            TreeIterator i = EcoreUtil.getAllContents((Collection)this.xmlResource.getContents(), (boolean)false);
            while (i.hasNext()) {
                EObject eObject = (EObject)i.next();
                eObject.eSetDeliver(true);
            }
        }
        if (this.extendedMetaData != null && this.extent.size() == 1) {
            EObject root = (EObject)this.extent.get(0);
            this.recordNamespacesSchemaLocations(root);
        }
    }

    protected EMap<String, String> recordNamespacesSchemaLocations(EObject root) {
        EReference xsiSchemaLocationMapFeature;
        EClass eClass = root.eClass();
        EReference xmlnsPrefixMapFeature = this.extendedMetaData.getXMLNSPrefixMapFeature(eClass);
        EMap xmlnsPrefixMap = null;
        if (xmlnsPrefixMapFeature != null) {
            EMap newXMLNSPrefixMap;
            xmlnsPrefixMap = newXMLNSPrefixMap = (EMap)root.eGet((EStructuralFeature)xmlnsPrefixMapFeature);
            xmlnsPrefixMap.putAll(this.helper.getPrefixToNamespaceMap());
        }
        if (this.urisToLocations != null && (xsiSchemaLocationMapFeature = this.extendedMetaData.getXSISchemaLocationMapFeature(eClass)) != null) {
            EMap newXSISchemaLocationMap;
            EMap xsiSchemaLocationMap = newXSISchemaLocationMap = (EMap)root.eGet((EStructuralFeature)xsiSchemaLocationMapFeature);
            for (Map.Entry<String, URI> entry : this.urisToLocations.entrySet()) {
                xsiSchemaLocationMap.put((Object)entry.getKey(), (Object)entry.getValue().toString());
            }
        }
        return xmlnsPrefixMap;
    }

    protected EObject createObjectByType(String prefix, String name, boolean top) {
        if (top) {
            this.handleTopLocations(prefix, name);
        }
        EFactory eFactory = this.getFactoryForPrefix(prefix);
        String uri = this.helper.getURI(prefix);
        if (eFactory == null && prefix.equals("") && uri == null) {
            EPackage ePackage = this.handleMissingPackage(null);
            if (ePackage == null) {
                this.error(new PackageNotFoundException(null, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            } else {
                eFactory = ePackage.getEFactoryInstance();
            }
        }
        this.documentRoot = this.createDocumentRoot(prefix, uri, name, eFactory, top);
        if (this.documentRoot != null) {
            return this.documentRoot;
        }
        EObject newObject = null;
        newObject = this.useNewMethods ? this.createObject(eFactory, this.helper.getType(eFactory, name), false) : this.createObjectFromFactory(eFactory, name);
        newObject = this.validateCreateObjectFromFactory(eFactory, name, newObject, top);
        if (top) {
            EStructuralFeature simpleFeature;
            this.processTopObject(newObject);
            if (this.extendedMetaData != null && newObject != null && (simpleFeature = this.extendedMetaData.getSimpleFeature(newObject.eClass())) != null) {
                this.isSimpleFeature = true;
                this.isIDREF = simpleFeature instanceof EReference;
                this.objects.push(null);
                this.mixedTargets.push(null);
                this.types.push(simpleFeature);
                this.text = new StringBuffer();
            }
        }
        return newObject;
    }

    protected EObject createDocumentRoot(String prefix, String uri, String name, EFactory eFactory, boolean top) {
        if (this.extendedMetaData != null && eFactory != null) {
            EPackage ePackage = eFactory.getEPackage();
            EClass eClass = null;
            if (this.useConfigurationCache) {
                eClass = ConfigurationCache.INSTANCE.getDocumentRoot(ePackage);
                if (eClass == null) {
                    eClass = this.extendedMetaData.getDocumentRoot(ePackage);
                    ConfigurationCache.INSTANCE.putDocumentRoot(ePackage, eClass);
                }
            } else {
                eClass = this.extendedMetaData.getDocumentRoot(ePackage);
            }
            if (eClass != null) {
                String typeName = this.extendedMetaData.getName((EClassifier)eClass);
                EObject newObject = this.useNewMethods ? this.createObject(eFactory, (EClassifier)eClass, true) : this.helper.createObject(eFactory, typeName);
                this.validateCreateObjectFromFactory(eFactory, typeName, newObject);
                if (top) {
                    if (this.suppressDocumentRoot) {
                        List<EObject> oldDeferredExtent = this.deferredExtent;
                        try {
                            this.deferredExtent = new ArrayList<EObject>();
                            this.processTopObject(newObject);
                        }
                        finally {
                            this.deferredExtent = oldDeferredExtent;
                        }
                        this.handleFeature(prefix, name);
                        this.objects.remove(0);
                        this.mixedTargets.remove(0);
                        this.types.remove(0);
                        EObject peekObject = (EObject)this.objects.peek();
                        if (peekObject == null) {
                            if (this.objects.size() > 1) {
                                peekObject = (EObject)this.objects.get(0);
                                EcoreUtil.remove((EObject)peekObject);
                            } else {
                                SimpleAnyType simpleAnyType = (SimpleAnyType)EcoreUtil.create((EClass)this.anySimpleType);
                                simpleAnyType.setInstanceType(((EAttribute)this.types.peek()).getEAttributeType());
                                this.objects.set(0, simpleAnyType);
                                this.types.set(0, XMLTypePackage.Literals.SIMPLE_ANY_TYPE__RAW_VALUE);
                                this.mixedTargets.set(0, simpleAnyType.getMixed());
                                peekObject = simpleAnyType;
                            }
                        } else {
                            EcoreUtil.remove((EObject)peekObject);
                        }
                        if (this.deferredExtent != null) {
                            this.deferredExtent.add(peekObject);
                        } else {
                            this.extent.addUnique((Object)peekObject);
                        }
                        newObject = peekObject;
                    } else {
                        this.processTopObject(newObject);
                        this.handleFeature(prefix, name);
                    }
                }
                return newObject;
            }
        }
        return null;
    }

    protected void createTopObject(String prefix, String name) {
        this.createObjectByType(prefix, name, true);
    }

    protected void processTopObject(EObject object) {
        if (object != null) {
            if (this.deferredExtent != null) {
                this.deferredExtent.add(object);
            } else {
                this.extent.addUnique((Object)object);
            }
            if (this.extendedMetaData != null && !this.mixedTargets.isEmpty()) {
                FeatureMap featureMap = this.mixedTargets.pop();
                EAttribute target = this.extendedMetaData.getMixedFeature(object.eClass());
                if (target != null) {
                    FeatureMap otherFeatureMap = (FeatureMap)object.eGet((EStructuralFeature)target);
                    for (FeatureMap.Entry entry : new ArrayList(featureMap)) {
                        if (entry.getEStructuralFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT && "".equals(XMLTypeUtil.normalize((String)entry.getValue().toString(), (boolean)true))) continue;
                        otherFeatureMap.add(entry.getEStructuralFeature(), entry.getValue());
                    }
                }
                this.text = null;
            }
        }
        this.processObject(object);
    }

    @Override
    public void endElement(String uri, String localName, String name) {
        this.elements.pop();
        Object type = this.types.pop();
        if (type == OBJECT_TYPE) {
            if (this.text == null) {
                this.objects.pop();
                this.mixedTargets.pop();
            } else {
                EObject object = this.objects.popEObject();
                if (this.mixedTargets.peek() != null && (object.eContainer() != null || this.suppressDocumentRoot || this.recordUnknownFeature && (this.eObjectToExtensionMap.containsValue(object) || ((InternalEObject)object).eDirectResource() != null))) {
                    this.handleMixedText();
                    this.mixedTargets.pop();
                } else {
                    if (this.text.length() != 0) {
                        this.handleProxy((InternalEObject)object, this.text.toString().trim());
                    }
                    this.mixedTargets.pop();
                    this.text = null;
                }
            }
        } else if (this.isIDREF) {
            this.objects.pop();
            this.mixedTargets.pop();
            if (this.text != null) {
                this.setValueFromId(this.objects.peekEObject(), (EReference)type, this.text.toString());
                this.text = null;
            }
            this.isIDREF = false;
        } else if (this.isTextFeatureValue(type)) {
            EObject eObject = this.objects.popEObject();
            this.mixedTargets.pop();
            if (eObject == null) {
                eObject = this.objects.peekEObject();
            }
            this.setFeatureValue(eObject, (EStructuralFeature)type, this.text == null ? null : this.text.toString());
            this.text = null;
        }
        if (this.isSimpleFeature) {
            this.types.pop();
            this.objects.pop();
            this.mixedTargets.pop();
            this.isSimpleFeature = false;
        }
        this.helper.popContext(this.prefixesToFactories);
    }

    protected boolean isTextFeatureValue(Object type) {
        return type != ERROR_TYPE;
    }

    @Override
    public void startPrefixMapping(String prefix, String uri) {
        this.isNamespaceAware = true;
        if (this.needsPushContext) {
            this.helper.pushContext();
            this.needsPushContext = false;
        }
        this.helper.addPrefix(prefix, uri);
        this.prefixesToFactories.remove(prefix);
    }

    @Override
    public void endPrefixMapping(String prefix) {
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        if (this.text == null && this.mixedTargets.peek() != null) {
            this.text = new StringBuffer();
        }
        if (this.text != null) {
            this.text.append(ch, start, length);
        }
    }

    @Override
    public void processingInstruction(String target, String data) {
        if (this.mixedTargets.peek() != null) {
            if (this.text != null) {
                this.handleMixedText();
            }
            this.handleProcessingInstruction(target, data);
        }
    }

    protected void handleXMLNSAttribute(String attrib, String value) {
        int index = attrib.indexOf(58, 0);
        String prefix = index == -1 ? "" : attrib.substring(index + 1);
        this.helper.addPrefix(prefix, value);
        this.prefixesToFactories.remove(prefix);
    }

    protected void handleXSISchemaLocation(String schemaLocations) {
        if (this.urisToLocations == null) {
            this.urisToLocations = new HashMap<String, URI>();
            this.xmlResource.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(schemaLocations, " ");
        while (stringTokenizer.hasMoreTokens()) {
            String key = stringTokenizer.nextToken();
            if (!stringTokenizer.hasMoreTokens()) continue;
            String value = stringTokenizer.nextToken();
            URI uri = URI.createURI((String)value);
            if (this.uriHandler != null) {
                uri = this.uriHandler.resolve(uri);
            } else if (this.resolve && uri.isRelative() && uri.hasRelativePath()) {
                uri = this.helper.resolve(uri, this.resourceURI);
            }
            this.urisToLocations.put(key, uri);
        }
    }

    protected void handleXSINoNamespaceSchemaLocation(String noNamespaceSchemaLocation) {
        if (this.urisToLocations == null) {
            this.urisToLocations = new HashMap<String, URI>();
            this.xmlResource.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        }
        URI uri = URI.createURI((String)noNamespaceSchemaLocation);
        if (this.uriHandler != null) {
            uri = this.uriHandler.resolve(uri);
        } else if (this.resolve && uri.isRelative() && uri.hasRelativePath()) {
            uri = this.helper.resolve(uri, this.resourceURI);
        }
        this.urisToLocations.put(null, uri);
    }

    protected void processSchemaLocations(String prefix, String name) {
        if (this.urisToLocations != null) {
            URI locationForNull;
            if (this.processSchemaLocations) {
                try {
                    this.ecoreBuilder.generate(this.urisToLocations);
                }
                catch (Exception exception) {
                    XMIPlugin.INSTANCE.log(exception);
                }
            }
            try {
                if (this.externalURIToLocations != null) {
                    this.ecoreBuilder.generate(this.externalURIToLocations);
                }
            }
            catch (Exception exception) {
                XMIPlugin.INSTANCE.log(exception);
            }
            if ((locationForNull = this.urisToLocations.get(null)) != null && this.helper.getNoNamespacePackage() == null) {
                this.helper.setNoNamespacePackage(this.getPackageForURI(locationForNull.toString()));
            }
        } else if (this.externalURIToLocations != null) {
            try {
                this.ecoreBuilder.generate(this.externalURIToLocations);
            }
            catch (Exception exception) {
                XMIPlugin.INSTANCE.log(exception);
            }
        }
    }

    protected void handleTopLocations(String prefix, String name) {
        String uri;
        this.processSchemaLocations(prefix, name);
        if (this.processAnyXML && this.extendedMetaData.getPackage(uri = this.helper.getURI(prefix)) == null) {
            this.extendedMetaData.demandFeature(uri, name, true);
        }
    }

    protected void handleFeature(String prefix, String name) {
        EObject peekObject = this.objects.peekEObject();
        if (peekObject == null) {
            this.types.push(ERROR_TYPE);
            this.error(new FeatureNotFoundException(name, null, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            return;
        }
        EStructuralFeature feature = this.getFeature(peekObject, prefix, name, true);
        if (feature != null) {
            int kind = this.helper.getFeatureKind(feature);
            if (kind == 1 || kind == 2) {
                this.objects.push(null);
                this.mixedTargets.push(null);
                this.types.push(feature);
                if (!this.isNull()) {
                    this.text = new StringBuffer();
                }
            } else if (this.extendedMetaData != null) {
                EReference eReference = (EReference)feature;
                boolean isContainment = eReference.isContainment();
                if (!isContainment && !eReference.isResolveProxies() && this.extendedMetaData.getFeatureKind(feature) != 0) {
                    this.isIDREF = true;
                    this.objects.push(null);
                    this.mixedTargets.push(null);
                    this.types.push(feature);
                    this.text = new StringBuffer();
                } else {
                    this.createObject(peekObject, feature);
                    EObject childObject = this.objects.peekEObject();
                    if (childObject != null) {
                        if (isContainment) {
                            EStructuralFeature simpleFeature = this.extendedMetaData.getSimpleFeature(childObject.eClass());
                            if (simpleFeature != null) {
                                this.isSimpleFeature = true;
                                this.isIDREF = simpleFeature instanceof EReference;
                                this.objects.push(null);
                                this.mixedTargets.push(null);
                                this.types.push(simpleFeature);
                                this.text = new StringBuffer();
                            }
                        } else if (!childObject.eIsProxy()) {
                            this.text = new StringBuffer();
                        }
                    }
                }
            } else {
                this.createObject(peekObject, feature);
            }
        } else if (this.xmlMap != null && (feature = this.getFeature(peekObject, null, "", true)) != null) {
            EFactory eFactory = this.getFactoryForPrefix(prefix);
            if (eFactory == null) {
                eFactory = feature.getEContainingClass().getEPackage().getEFactoryInstance();
            }
            EObject newObject = null;
            newObject = this.useNewMethods ? this.createObject(eFactory, this.helper.getType(eFactory, name), false) : this.createObjectFromFactory(eFactory, name);
            if ((newObject = this.validateCreateObjectFromFactory(eFactory, name, newObject, feature)) != null) {
                this.setFeatureValue(peekObject, feature, newObject);
            }
            this.processObject(newObject);
        } else {
            if (this.xmlMap != null) {
                EFactory eFactory = this.getFactoryForPrefix(prefix);
                EObject newObject = this.createObjectFromFactory(eFactory, name);
                this.validateCreateObjectFromFactory(eFactory, name, newObject);
                if (newObject != null) {
                    for (EReference eReference : peekObject.eClass().getEAllReferences()) {
                        if (!eReference.getEType().isInstance((Object)newObject)) continue;
                        this.setFeatureValue(peekObject, (EStructuralFeature)eReference, newObject);
                        this.processObject(newObject);
                        return;
                    }
                }
            }
            this.handleUnknownFeature(prefix, name, true, peekObject, null);
        }
    }

    protected int getLineNumber() {
        if (this.locator != null) {
            return this.locator.getLineNumber();
        }
        return -1;
    }

    protected int getColumnNumber() {
        if (this.locator != null) {
            return this.locator.getColumnNumber();
        }
        return -1;
    }

    protected String getLocation() {
        return this.locator != null && this.locator.getSystemId() != null ? this.locator.getSystemId() : (this.resourceURI == null ? "" : this.resourceURI.toString());
    }

    protected AnyType getExtension(EObject peekObject) {
        AnyType anyType = this.eObjectToExtensionMap.get(peekObject);
        if (anyType == null) {
            anyType = XMLTypeFactory.eINSTANCE.createAnyType();
            this.eObjectToExtensionMap.put(peekObject, anyType);
        }
        return anyType;
    }

    protected void handleUnknownFeature(String prefix, String name, boolean isElement, EObject peekObject, String value) {
        if (this.recordUnknownFeature) {
            this.recordUnknownFeature(prefix, name, isElement, peekObject, value);
        } else {
            this.reportUnknownFeature(prefix, name, isElement, peekObject, value);
        }
    }

    protected void recordUnknownFeature(String prefix, String name, boolean isElement, EObject peekObject, String value) {
        if (isElement) {
            AnyType anyType = this.getExtension(peekObject);
            int objectsIndex = this.objects.size();
            this.objects.push(anyType);
            int mixedTargetsIndex = this.mixedTargets.size();
            this.mixedTargets.push(anyType.getAny());
            int typesIndex = this.types.size();
            this.types.push(UNKNOWN_FEATURE_TYPE);
            this.handleFeature(prefix, name);
            this.objects.remove(objectsIndex);
            this.mixedTargets.remove(mixedTargetsIndex);
            this.types.remove(typesIndex);
        } else {
            AnyType anyType = this.getExtension(peekObject);
            this.setAttribValue((EObject)anyType, prefix == null ? name : String.valueOf(prefix) + ":" + name, value);
        }
    }

    protected void reportUnknownFeature(String prefix, String name, boolean isElement, EObject peekObject, String value) {
        if (isElement) {
            this.types.push(ERROR_TYPE);
        }
        this.error(new FeatureNotFoundException(name, peekObject, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
    }

    public void error(XMIException e) {
        this.xmlResource.getErrors().add((Object)e);
    }

    public void warning(XMIException e) {
        this.xmlResource.getWarnings().add((Object)e);
    }

    public void fatalError(XMIException e) {
        this.xmlResource.getErrors().add((Object)e);
    }

    protected void createObject(EObject peekObject, EStructuralFeature feature) {
        if (this.isNull()) {
            this.setFeatureValue(peekObject, feature, null);
            this.objects.push(null);
            this.mixedTargets.push(null);
            this.types.push(OBJECT_TYPE);
        } else {
            String xsiType = this.getXSIType();
            if (xsiType != null) {
                this.createObjectFromTypeName(peekObject, xsiType, feature);
            } else {
                XMLResource.XMLInfo info;
                this.createObjectFromFeatureType(peekObject, feature);
                if (this.xmlMap != null && !((EReference)feature).isContainment() && (info = this.xmlMap.getInfo((ENamedElement)feature)) != null && info.getXMLRepresentation() == 0) {
                    this.text = new StringBuffer();
                }
            }
        }
    }

    protected EObject createObjectFromTypeName(EObject peekObject, String typeQName, EStructuralFeature feature) {
        String typeName = null;
        String prefix = "";
        int index = typeQName.indexOf(58, 0);
        if (index > 0) {
            prefix = typeQName.substring(0, index);
            typeName = typeQName.substring(index + 1);
        } else {
            typeName = typeQName;
        }
        this.contextFeature = feature;
        EFactory eFactory = this.getFactoryForPrefix(prefix);
        this.contextFeature = null;
        if (eFactory == null && prefix.equals("") && this.helper.getURI(prefix) == null) {
            this.contextFeature = feature;
            EPackage ePackage = this.handleMissingPackage(null);
            this.contextFeature = null;
            if (ePackage == null) {
                this.error(new PackageNotFoundException(null, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
            } else {
                eFactory = ePackage.getEFactoryInstance();
            }
        }
        EObject obj = null;
        obj = this.useNewMethods ? this.createObject(eFactory, this.helper.getType(eFactory, typeName), false) : this.createObjectFromFactory(eFactory, typeName);
        if ((obj = this.validateCreateObjectFromFactory(eFactory, typeName, obj, feature)) != null) {
            if (this.contextFeature == null) {
                this.setFeatureValue(peekObject, feature, obj);
            } else {
                this.contextFeature = null;
            }
        }
        this.processObject(obj);
        return obj;
    }

    protected EObject createObjectFromFeatureType(EObject peekObject, EStructuralFeature feature) {
        String typeName = null;
        EFactory factory = null;
        EClassifier eType = null;
        EObject obj = null;
        if (feature != null && (eType = feature.getEType()) != null) {
            if (this.useNewMethods) {
                if (this.extendedMetaData != null && eType == EcorePackage.Literals.EOBJECT && this.extendedMetaData.getFeatureKind(feature) != 0) {
                    eType = this.anyType;
                    typeName = this.extendedMetaData.getName((EClassifier)this.anyType);
                    factory = this.anyType.getEPackage().getEFactoryInstance();
                } else {
                    factory = eType.getEPackage().getEFactoryInstance();
                    typeName = this.extendedMetaData == null ? eType.getName() : this.extendedMetaData.getName(eType);
                }
                obj = this.createObject(factory, eType, false);
            } else {
                if (this.extendedMetaData != null && eType == EcorePackage.Literals.EOBJECT && this.extendedMetaData.getFeatureKind(feature) != 0) {
                    typeName = this.extendedMetaData.getName((EClassifier)this.anyType);
                    factory = this.anyType.getEPackage().getEFactoryInstance();
                } else {
                    EClass eClass = (EClass)eType;
                    typeName = this.extendedMetaData == null ? eClass.getName() : this.extendedMetaData.getName((EClassifier)eClass);
                    factory = eClass.getEPackage().getEFactoryInstance();
                }
                obj = this.createObjectFromFactory(factory, typeName);
            }
        }
        if ((obj = this.validateCreateObjectFromFactory(factory, typeName, obj, feature)) != null) {
            this.setFeatureValue(peekObject, feature, obj);
        }
        this.processObject(obj);
        return obj;
    }

    @Deprecated
    protected EObject createObjectFromFactory(EFactory factory, String typeName) {
        EObject newObject = null;
        if (factory != null && (newObject = this.helper.createObject(factory, typeName)) != null) {
            if (this.disableNotify) {
                newObject.eSetDeliver(false);
            }
            this.handleObjectAttribs(newObject);
        }
        return newObject;
    }

    protected EObject createObject(EFactory eFactory, EClassifier type, boolean documentRoot) {
        EObject newObject = this.helper.createObject(eFactory, type);
        if (newObject != null && !documentRoot) {
            if (this.disableNotify) {
                newObject.eSetDeliver(false);
            }
            this.handleObjectAttribs(newObject);
        }
        return newObject;
    }

    protected EObject validateCreateObjectFromFactory(EFactory factory, String typeName, EObject newObject, boolean top) {
        if (newObject == null && top && (this.recordUnknownFeature || this.processAnyXML) && factory != null && this.extendedMetaData != null) {
            String namespace = this.extendedMetaData.getNamespace(factory.getEPackage());
            if (namespace == null) {
                this.usedNullNamespacePackage = true;
            }
            if (this.useNewMethods) {
                EClassifier type = this.extendedMetaData.demandType(namespace, typeName);
                newObject = this.createObject(type.getEPackage().getEFactoryInstance(), type, false);
            } else {
                factory = this.extendedMetaData.demandType(namespace, typeName).getEPackage().getEFactoryInstance();
                newObject = this.createObjectFromFactory(factory, typeName);
            }
        }
        this.validateCreateObjectFromFactory(factory, typeName, newObject);
        return newObject;
    }

    protected void validateCreateObjectFromFactory(EFactory factory, String typeName, EObject newObject) {
        if (newObject == null) {
            this.error(new ClassNotFoundException(typeName, factory, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
        }
    }

    protected EObject validateCreateObjectFromFactory(EFactory factory, String typeName, EObject newObject, EStructuralFeature feature) {
        if (newObject != null) {
            Collection demandedPackages;
            if (this.extendedMetaData != null && !(demandedPackages = this.extendedMetaData.demandedPackages()).isEmpty() && demandedPackages.contains(newObject.eClass().getEPackage())) {
                if (this.recordUnknownFeature) {
                    EObject peekObject = this.objects.peekEObject();
                    if (!(peekObject instanceof AnyType)) {
                        AnyType anyType = this.getExtension(this.objects.peekEObject());
                        EStructuralFeature entryFeature = this.extendedMetaData.demandFeature(this.extendedMetaData.getNamespace(feature), this.extendedMetaData.getName(feature), true);
                        anyType.getAny().add(entryFeature, (Object)newObject);
                        this.contextFeature = entryFeature;
                    }
                    return newObject;
                }
                String namespace = this.extendedMetaData.getNamespace(feature);
                String name = this.extendedMetaData.getName(feature);
                EStructuralFeature wildcardFeature = this.extendedMetaData.getElementWildcardAffiliation(this.objects.peekEObject().eClass(), namespace, name);
                if (wildcardFeature != null) {
                    int processingKind = this.laxWildcardProcessing ? 2 : this.extendedMetaData.getProcessingKind(wildcardFeature);
                    switch (processingKind) {
                        case 2: 
                        case 3: {
                            return newObject;
                        }
                    }
                }
                newObject = null;
            }
        } else if (feature != null && factory != null && this.extendedMetaData != null) {
            if (this.recordUnknownFeature || this.processAnyXML) {
                EObject result = null;
                String namespace = this.extendedMetaData.getNamespace(factory.getEPackage());
                if (namespace == null) {
                    this.usedNullNamespacePackage = true;
                }
                if (this.useNewMethods) {
                    EClassifier type = this.extendedMetaData.demandType(namespace, typeName);
                    result = this.createObject(type.getEPackage().getEFactoryInstance(), type, false);
                } else {
                    factory = this.extendedMetaData.demandType(namespace, typeName).getEPackage().getEFactoryInstance();
                    result = this.createObjectFromFactory(factory, typeName);
                }
                EObject peekObject = this.objects.peekEObject();
                if (!(peekObject instanceof AnyType)) {
                    AnyType anyType = this.getExtension(peekObject);
                    EStructuralFeature entryFeature = this.extendedMetaData.demandFeature(this.extendedMetaData.getNamespace(feature), this.extendedMetaData.getName(feature), true);
                    anyType.getAny().add(entryFeature, (Object)result);
                    this.contextFeature = entryFeature;
                }
                return result;
            }
            String namespace = this.extendedMetaData.getNamespace(feature);
            String name = this.extendedMetaData.getName(feature);
            EStructuralFeature wildcardFeature = this.extendedMetaData.getElementWildcardAffiliation(this.objects.peekEObject().eClass(), namespace, name);
            if (wildcardFeature != null) {
                int processingKind = this.laxWildcardProcessing ? 2 : this.extendedMetaData.getProcessingKind(wildcardFeature);
                switch (processingKind) {
                    case 2: 
                    case 3: {
                        String factoryNamespace = this.extendedMetaData.getNamespace(factory.getEPackage());
                        if (factoryNamespace == null) {
                            this.usedNullNamespacePackage = true;
                        }
                        if (this.useNewMethods) {
                            EClassifier type = this.extendedMetaData.demandType(factoryNamespace, typeName);
                            return this.createObject(type.getEPackage().getEFactoryInstance(), type, false);
                        }
                        factory = this.extendedMetaData.demandType(factoryNamespace, typeName).getEPackage().getEFactoryInstance();
                        return this.createObjectFromFactory(factory, typeName);
                    }
                }
            }
        }
        this.validateCreateObjectFromFactory(factory, typeName, newObject);
        return newObject;
    }

    protected void processObject(EObject object) {
        if (this.recordAnyTypeNSDecls && object instanceof AnyType) {
            FeatureMap featureMap = ((AnyType)object).getAnyAttribute();
            for (Map.Entry<String, String> entry : this.helper.getAnyContentPrefixToURIMapping().entrySet()) {
                String uri = entry.getValue();
                featureMap.add(this.extendedMetaData.demandFeature("http://www.w3.org/2000/xmlns/", entry.getKey(), false), (Object)(uri == null ? "" : uri));
            }
        }
        if (object != null) {
            this.objects.push(object);
            this.types.push(OBJECT_TYPE);
            if (this.extendedMetaData != null) {
                EAttribute mixedFeature = this.extendedMetaData.getMixedFeature(object.eClass());
                if (mixedFeature != null) {
                    this.mixedTargets.push((FeatureMap)object.eGet((EStructuralFeature)mixedFeature));
                } else {
                    this.mixedTargets.push(null);
                }
            } else {
                this.mixedTargets.push(null);
            }
        } else {
            this.types.push(ERROR_TYPE);
        }
    }

    protected EFactory getFactoryForPrefix(String prefix) {
        EFactory factory = this.prefixesToFactories.get(prefix);
        if (factory == null) {
            String uri = this.helper.getURI(prefix);
            EPackage ePackage = this.getPackageForURI(uri);
            if (ePackage == null && uri == null && prefix.equals("")) {
                ePackage = this.helper.getNoNamespacePackage();
            }
            if (ePackage != null) {
                factory = ePackage.getEFactoryInstance();
                this.prefixesToFactories.put(prefix, factory);
                if (uri == null) {
                    this.usedNullNamespacePackage = true;
                }
            }
        }
        return factory;
    }

    protected EPackage getPackageForURI(String uriString) {
        EPackage ePackage;
        if (uriString == null) {
            return null;
        }
        EPackage ePackage2 = ePackage = this.extendedMetaData == null ? this.packageRegistry.getEPackage(uriString) : this.extendedMetaData.getPackage(uriString);
        if (ePackage != null && ePackage.eIsProxy()) {
            ePackage = null;
        }
        if (ePackage == null) {
            URI locationURI;
            URI uri = URI.createURI((String)uriString);
            if (uri.scheme() == null) {
                for (Map.Entry entry : this.packageRegistry.entrySet()) {
                    String nsURI = (String)entry.getKey();
                    if (nsURI == null || nsURI.length() <= uriString.length() || !nsURI.endsWith(uriString) || nsURI.charAt(nsURI.length() - uriString.length() - 1) != '/') continue;
                    this.oldStyleProxyURIs = true;
                    return (EPackage)entry.getValue();
                }
            }
            if (this.urisToLocations != null && (locationURI = this.urisToLocations.get(uriString)) != null) {
                uri = locationURI;
            }
            String fragment = uri.fragment();
            Resource resource = null;
            if ("java".equalsIgnoreCase(uri.scheme()) && uri.authority() != null) {
                try {
                    String className = uri.authority();
                    Class<?> javaClass = Class.forName(className, true, Thread.currentThread().getContextClassLoader());
                    Field field = javaClass.getField("eINSTANCE");
                    resource = ((EPackage)field.get(null)).eResource();
                }
                catch (Exception className) {
                    // empty catch block
                }
            }
            if (resource == null && this.resourceSet != null) {
                URI trimmedURI = uri.trimFragment();
                resource = this.resourceSet.getResource(trimmedURI, false);
                if (resource != null) {
                    if (!resource.isLoaded()) {
                        try {
                            resource.load(this.resourceSet.getLoadOptions());
                        }
                        catch (IOException javaClass) {}
                    }
                } else if (!"http://www.w3.org/2001/XMLSchema".equals(uriString)) {
                    try {
                        InputStream inputStream = this.getURIConverter().createInputStream(trimmedURI, null);
                        resource = this.resourceSet.createResource(trimmedURI);
                        if (resource == null) {
                            inputStream.close();
                        } else {
                            resource.load(inputStream, this.resourceSet.getLoadOptions());
                        }
                    }
                    catch (IOException inputStream) {
                        // empty catch block
                    }
                }
            }
            if (resource != null) {
                Object content = null;
                if (fragment != null) {
                    content = resource.getEObject(fragment);
                } else {
                    EList contents = resource.getContents();
                    if (!contents.isEmpty()) {
                        content = contents.get(0);
                    }
                }
                if (content instanceof EPackage) {
                    ePackage = (EPackage)content;
                    if (this.extendedMetaData != null) {
                        this.extendedMetaData.putPackage(this.extendedMetaData.getNamespace(ePackage), ePackage);
                    } else {
                        this.packageRegistry.put((Object)ePackage.getNsURI(), (Object)ePackage);
                    }
                }
            }
        }
        if (ePackage == null) {
            ePackage = this.handleMissingPackage(uriString);
        }
        if (ePackage == null) {
            this.error(new PackageNotFoundException(uriString, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
        }
        return ePackage;
    }

    protected EPackage handleMissingPackage(String uriString) {
        if ("http://www.w3.org/2001/XMLSchema".equals(uriString)) {
            return this.xmlSchemaTypePackage;
        }
        if (this.extendedMetaData != null) {
            if (this.recordUnknownFeature) {
                return this.extendedMetaData.demandPackage(uriString);
            }
            if (this.processAnyXML && this.objects.isEmpty()) {
                return this.extendedMetaData.demandPackage(uriString);
            }
            if (this.contextFeature != null) {
                String namespace = this.extendedMetaData.getNamespace(this.contextFeature);
                String name = this.extendedMetaData.getName(this.contextFeature);
                EStructuralFeature wildcardFeature = this.extendedMetaData.getElementWildcardAffiliation(this.objects.peekEObject().eClass(), namespace, name);
                if (wildcardFeature != null) {
                    int processingKind = this.laxWildcardProcessing ? 2 : this.extendedMetaData.getProcessingKind(wildcardFeature);
                    switch (processingKind) {
                        case 2: 
                        case 3: {
                            return this.extendedMetaData.demandPackage(uriString);
                        }
                    }
                }
            }
        }
        return null;
    }

    protected URIConverter getURIConverter() {
        return this.resourceSet != null ? this.resourceSet.getURIConverter() : new ExtensibleURIConverterImpl();
    }

    protected void setFeatureValue(EObject object, EStructuralFeature feature, Object value) {
        this.setFeatureValue(object, feature, value, -1);
    }

    protected void setFeatureValue(EObject object, EStructuralFeature feature, Object value, int position) {
        try {
            this.helper.setValue(object, feature, value, position);
        }
        catch (RuntimeException e) {
            this.error(new IllegalValueException(object, feature, value, e, this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
        }
    }

    protected void setFeatureValues(ManyReference reference) {
        List<XMIException> xmiExceptions = this.helper.setManyReference(reference, this.getLocation());
        if (xmiExceptions != null) {
            for (XMIException exception : xmiExceptions) {
                this.error(exception);
            }
        }
    }

    protected void setAttribValue(EObject object, String name, String value) {
        EStructuralFeature feature;
        int index = name.indexOf(58, 0);
        String prefix = null;
        String localName = name;
        if (index != -1) {
            prefix = name.substring(0, index);
            localName = name.substring(index + 1);
        }
        if ((feature = this.getFeature(object, prefix, localName, false)) == null) {
            this.handleUnknownFeature(prefix, localName, false, object, value);
        } else {
            int kind = this.helper.getFeatureKind(feature);
            if (kind == 1 || kind == 2) {
                this.setFeatureValue(object, feature, value, -2);
            } else {
                this.setValueFromId(object, (EReference)feature, value);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setValueFromId(EObject object, EReference eReference, String ids) {
        Object ref;
        StringTokenizer st = new StringTokenizer(ids);
        boolean isFirstID = true;
        boolean mustAdd = this.deferIDREFResolution;
        boolean mustAddOrNotOppositeIsMany = false;
        int size = 0;
        String qName = null;
        int position = 0;
        while (st.hasMoreTokens()) {
            String id;
            block17: {
                id = st.nextToken();
                int index = id.indexOf(35, 0);
                if (index != -1) {
                    if (index == 0) {
                        id = id.substring(1);
                        break block17;
                    } else {
                        Object oldAttributes = this.setAttributes(null);
                        InternalEObject proxy = (InternalEObject)(qName == null ? this.createObjectFromFeatureType(object, (EStructuralFeature)eReference) : this.createObjectFromTypeName(object, qName, (EStructuralFeature)eReference));
                        this.setAttributes(oldAttributes);
                        if (proxy != null) {
                            this.handleProxy(proxy, id);
                        }
                        this.objects.pop();
                        this.types.pop();
                        this.mixedTargets.pop();
                        qName = null;
                        ++position;
                        continue;
                    }
                }
                if (id.indexOf(58, 0) != -1) {
                    qName = id;
                    continue;
                }
            }
            if (isFirstID && this.extendedMetaData != null && eReference.isMany() && this.extendedMetaData.getFeatureKind((EStructuralFeature)eReference) == 4) {
                ref = new SingleReference(object, (EStructuralFeature)eReference, id, -1, this.getLineNumber(), this.getColumnNumber());
                this.forwardSingleReferences.add((SingleReference)ref);
                return;
            }
            if (!this.deferIDREFResolution) {
                EObject resolvedEObject;
                if (isFirstID) {
                    EReference eOpposite = eReference.getEOpposite();
                    if (eOpposite == null) {
                        mustAdd = true;
                        mustAddOrNotOppositeIsMany = true;
                    } else {
                        mustAdd = eOpposite.isTransient() || eReference.isMany();
                        mustAddOrNotOppositeIsMany = mustAdd || !eOpposite.isMany();
                    }
                    isFirstID = false;
                }
                if (mustAddOrNotOppositeIsMany && (resolvedEObject = this.xmlResource.getEObject(id)) != null) {
                    this.setFeatureValue(object, (EStructuralFeature)eReference, resolvedEObject);
                    qName = null;
                    ++position;
                    continue;
                }
            }
            if (mustAdd) {
                if (size == this.capacity) {
                    this.growArrays();
                }
                this.identifiers[size] = id;
                this.positions[size] = position;
                ++size;
            }
            qName = null;
            ++position;
        }
        if (position == 0) {
            this.setFeatureValue(object, (EStructuralFeature)eReference, null, -2);
            return;
        }
        if (size > 5) {
            Object[] values = new Object[size];
            int[] currentPositions = new int[size];
            System.arraycopy(this.identifiers, 0, values, 0, size);
            System.arraycopy(this.positions, 0, currentPositions, 0, size);
            ref = new ManyReference(object, (EStructuralFeature)eReference, values, currentPositions, this.getLineNumber(), this.getColumnNumber());
            this.forwardManyReferences.add((ManyReference)ref);
            return;
        }
        int i = 0;
        while (i < size) {
            SingleReference ref2 = new SingleReference(object, (EStructuralFeature)eReference, this.identifiers[i], this.positions[i], this.getLineNumber(), this.getColumnNumber());
            this.forwardSingleReferences.add(ref2);
            ++i;
        }
    }

    protected void handleProxy(InternalEObject proxy, String uriLiteral) {
        URI proxyURI;
        if (this.oldStyleProxyURIs) {
            proxyURI = URI.createURI((String)(uriLiteral.startsWith("/") ? uriLiteral : "/" + uriLiteral));
            proxy.eSetProxyURI(proxyURI);
        } else {
            URI uri = URI.createURI((String)uriLiteral);
            if (this.uriHandler != null) {
                uri = this.uriHandler.resolve(uri);
            } else if (this.resolve && uri.isRelative() && uri.hasRelativePath() && (this.extendedMetaData == null ? !this.packageRegistry.containsKey((Object)uri.trimFragment().toString()) : this.extendedMetaData.getPackage(uri.trimFragment().toString()) == null)) {
                uri = this.helper.resolve(uri, this.resourceURI);
            }
            proxyURI = uri;
            proxy.eSetProxyURI(proxyURI);
        }
        if (proxyURI.trimFragment().equals((Object)this.resourceURI)) {
            this.sameDocumentProxies.add(proxy);
        }
    }

    protected void growArrays() {
        int oldCapacity = this.capacity;
        this.capacity *= 2;
        Object[] newIdentifiers = new Object[this.capacity];
        int[] newPositions = new int[this.capacity];
        System.arraycopy(this.identifiers, 0, newIdentifiers, 0, oldCapacity);
        System.arraycopy(this.positions, 0, newPositions, 0, oldCapacity);
        this.identifiers = newIdentifiers;
        this.positions = newPositions;
    }

    protected boolean isError() {
        return this.types.peek() == ERROR_TYPE;
    }

    @Deprecated
    protected EStructuralFeature getFeature(EObject object, String prefix, String name) {
        String uri;
        EClass eClass = object.eClass();
        EStructuralFeature result = this.helper.getFeature(eClass, uri = this.helper.getURI(prefix), name, true);
        if (result == null) {
            this.helper.getFeature(eClass, uri, name, false);
        }
        return result;
    }

    protected EStructuralFeature getFeature(EObject object, String prefix, String name, boolean isElement) {
        EClass eClass;
        String uri = this.helper.getURI(prefix);
        this.eClassFeatureNamePair.eClass = eClass = object.eClass();
        this.eClassFeatureNamePair.featureName = name;
        this.eClassFeatureNamePair.namespaceURI = uri;
        this.eClassFeatureNamePair.isElement = isElement;
        EStructuralFeature result = this.eClassFeatureNamePairToEStructuralFeatureMap.get(this.eClassFeatureNamePair);
        if (result == null) {
            result = this.helper.getFeature(eClass, uri, name, isElement);
            if (result == null) {
                if (this.extendedMetaData != null) {
                    EStructuralFeature wildcardFeature;
                    EStructuralFeature eStructuralFeature = wildcardFeature = isElement ? this.extendedMetaData.getElementWildcardAffiliation(eClass, uri, name) : this.extendedMetaData.getAttributeWildcardAffiliation(eClass, uri, name);
                    if (wildcardFeature != null) {
                        int processingKind = this.laxWildcardProcessing ? 2 : this.extendedMetaData.getProcessingKind(wildcardFeature);
                        switch (processingKind) {
                            case 2: 
                            case 3: {
                                result = this.extendedMetaData.demandFeature(uri, name, isElement);
                            }
                        }
                    }
                } else {
                    result = this.getFeature(object, prefix, name);
                }
            }
            EClassFeatureNamePair entry = new EClassFeatureNamePair();
            entry.eClass = eClass;
            entry.featureName = name;
            entry.namespaceURI = uri;
            entry.isElement = isElement;
            this.eClassFeatureNamePairToEStructuralFeatureMap.put(entry, result);
        }
        return result;
    }

    public static String getXMLEncoding(byte[] bytes) {
        int lastQuoteIndex;
        String javaEncoding = null;
        if (bytes.length >= 4) {
            if (bytes[0] == -2 && bytes[1] == -1 || bytes[0] == 0 && bytes[1] == 60) {
                javaEncoding = "UnicodeBig";
            } else if (bytes[0] == -1 && bytes[1] == -2 || bytes[0] == 60 && bytes[1] == 0) {
                javaEncoding = "UnicodeLittle";
            } else if (bytes[0] == -17 && bytes[1] == -69 && bytes[2] == -65) {
                javaEncoding = "UTF8";
            }
        }
        String header = null;
        try {
            header = javaEncoding != null ? new String(bytes, 0, bytes.length, javaEncoding) : new String(bytes, 0, bytes.length);
        }
        catch (UnsupportedEncodingException e) {
            return null;
        }
        if (!header.startsWith("<?xml")) {
            return "UTF-8";
        }
        int endOfXMLPI = header.indexOf("?>");
        int encodingIndex = header.indexOf("encoding", 6);
        if (encodingIndex == -1 || encodingIndex > endOfXMLPI) {
            return "UTF-8";
        }
        int firstQuoteIndex = header.indexOf(34, encodingIndex);
        if (firstQuoteIndex == -1 || firstQuoteIndex > endOfXMLPI) {
            firstQuoteIndex = header.indexOf(39, encodingIndex);
            lastQuoteIndex = header.indexOf(39, firstQuoteIndex + 1);
        } else {
            lastQuoteIndex = header.indexOf(34, firstQuoteIndex + 1);
        }
        return header.substring(firstQuoteIndex + 1, lastQuoteIndex);
    }

    protected void handleComment(String comment) {
        FeatureMap featureMap = this.mixedTargets.peek();
        featureMap.add((EStructuralFeature)XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT, (Object)comment);
        this.text = null;
    }

    protected void handleMixedText() {
        FeatureMap featureMap = this.mixedTargets.peek();
        featureMap.add((EStructuralFeature)XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT, (Object)this.text.toString());
        this.text = null;
    }

    protected void handleCDATA() {
        FeatureMap featureMap = this.mixedTargets.peek();
        featureMap.add((EStructuralFeature)XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA, (Object)this.text.toString());
        this.text = null;
    }

    protected void handleProcessingInstruction(String target, String data) {
        FeatureMap featureMap = this.mixedTargets.peek();
        FeatureMapUtil.addProcessingInstruction((FeatureMap)featureMap, (String)target, (String)data);
        this.text = null;
    }

    protected EcoreBuilder createEcoreBuilder(Map<?, ?> options, ExtendedMetaData extendedMetaData) {
        return new DefaultEcoreBuilder(extendedMetaData);
    }

    static class EClassFeatureNamePair {
        public EClass eClass;
        public String featureName;
        public String namespaceURI;
        public boolean isElement;

        EClassFeatureNamePair() {
        }

        public boolean equals(Object that) {
            EClassFeatureNamePair typedThat = (EClassFeatureNamePair)that;
            return typedThat.eClass == this.eClass && typedThat.isElement == this.isElement && typedThat.featureName.equals(this.featureName) && (typedThat.namespaceURI != null ? typedThat.namespaceURI.equals(this.namespaceURI) : this.namespaceURI == null);
        }

        public int hashCode() {
            return this.eClass.hashCode() ^ this.featureName.hashCode() ^ (this.namespaceURI == null ? 0 : this.namespaceURI.hashCode()) + (this.isElement ? 0 : 1);
        }
    }

    protected static class ManyReference
    implements XMLHelper.ManyReference {
        private EObject object;
        private EStructuralFeature feature;
        private Object[] values;
        private int[] positions;
        private int lineNumber;
        private int columnNumber;

        public ManyReference(EObject object, EStructuralFeature feature, Object[] values, int[] positions, int lineNumber, int columnNumber) {
            this.object = object;
            this.feature = feature;
            this.values = values;
            this.positions = positions;
            this.lineNumber = lineNumber;
            this.columnNumber = columnNumber;
        }

        public EObject getObject() {
            return this.object;
        }

        public EStructuralFeature getFeature() {
            return this.feature;
        }

        public Object[] getValues() {
            return this.values;
        }

        public int[] getPositions() {
            return this.positions;
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public int getColumnNumber() {
            return this.columnNumber;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class MyEObjectStack
    extends MyStack<EObject> {
        private static final long serialVersionUID = 1L;
        protected EObject[] eObjectData;

        protected final Object[] newData(int capacity) {
            this.eObjectData = new EObject[capacity];
            return this.eObjectData;
        }

        public final EObject peekEObject() {
            return this.size == 0 ? null : this.eObjectData[this.size - 1];
        }

        public final EObject popEObject() {
            return this.size == 0 ? null : this.eObjectData[--this.size];
        }

        public void clear() {
            this.eObjectData = null;
            super.clear();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class MyStack<E>
    extends BasicEList<E> {
        private static final long serialVersionUID = 1L;

        public final E peek() {
            return (E)(this.size == 0 ? null : this.data[this.size - 1]);
        }

        public final void push(E o) {
            this.grow(this.size + 1);
            this.data[this.size++] = o;
        }

        public final E pop() {
            return (E)(this.size == 0 ? null : this.data[--this.size]);
        }
    }

    protected static class SingleReference {
        private EObject object;
        private EStructuralFeature feature;
        private Object value;
        private int position;
        private int lineNumber;
        private int columnNumber;

        public SingleReference(EObject object, EStructuralFeature feature, Object value, int position, int lineNumber, int columnNumber) {
            this.object = object;
            this.feature = feature;
            this.value = value;
            this.position = position;
            this.lineNumber = lineNumber;
            this.columnNumber = columnNumber;
        }

        public EObject getObject() {
            return this.object;
        }

        public EStructuralFeature getFeature() {
            return this.feature;
        }

        public Object getValue() {
            return this.value;
        }

        public int getPosition() {
            return this.position;
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public int getColumnNumber() {
            return this.columnNumber;
        }
    }
}

