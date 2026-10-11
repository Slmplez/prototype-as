/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcoreFactory
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$IOWrappedException
 *  org.eclipse.emf.ecore.resource.URIConverter$Writeable
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage
 *  org.eclipse.emf.ecore.xml.type.AnyType
 *  org.eclipse.emf.ecore.xml.type.ProcessingInstruction
 *  org.eclipse.emf.ecore.xml.type.SimpleAnyType
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.internal.DataValue$XMLChar
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.DanglingHREFException;
import org.eclipse.emf.ecore.xmi.NameInfo;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.XMLSave;
import org.eclipse.emf.ecore.xmi.impl.ConfigurationCache;
import org.eclipse.emf.ecore.xmi.impl.DefaultDOMHandlerImpl;
import org.eclipse.emf.ecore.xmi.impl.NameInfoImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLString;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.internal.DataValue;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLSaveImpl
implements XMLSave {
    private static final int MAX_UTF_MAPPABLE_CODEPOINT = 0x10FFFF;
    private static final int MAX_LATIN1_MAPPABLE_CODEPOINT = 255;
    private static final int MAX_ASCII_MAPPABLE_CODEPOINT = 127;
    protected static final int INDEX_LOOKUP = 0;
    final StringBuffer buffer = new StringBuffer();
    protected XMLHelper helper;
    protected XMLString doc;
    protected boolean declareXSI;
    protected boolean useEncodedAttributeStyle;
    protected boolean declareXML;
    protected boolean saveTypeInfo;
    protected XMLSave.XMLTypeInfo xmlTypeInfo;
    protected boolean keepDefaults;
    protected Escape escape;
    protected Escape escapeURI;
    protected XMLResource.ResourceEntityHandler resourceEntityHandler;
    protected Lookup featureTable;
    protected String encoding;
    protected String xmlVersion;
    protected String idAttributeName = "id";
    protected String idAttributeNS = null;
    protected String processDanglingHREF;
    protected boolean declareSchemaLocation;
    protected boolean declareSchemaLocationImplementation;
    protected XMLResource.XMLMap map;
    protected ExtendedMetaData extendedMetaData;
    protected EClass anySimpleType;
    protected EClass anyType;
    protected Map<EObject, AnyType> eObjectToExtensionMap;
    protected EPackage xmlSchemaTypePackage = XMLTypePackage.eINSTANCE;
    protected int flushThreshold = Integer.MAX_VALUE;
    protected boolean toDOM;
    protected DOMHandler handler;
    protected Document document;
    protected Node currentNode;
    protected NameInfo nameInfo;
    protected boolean useCache;
    protected EObject root;
    protected XMLResource xmlResource;
    protected List<? extends EObject> roots;
    protected XMLResource.ElementHandler elementHandler;
    protected boolean proxyAttributes;
    protected static final int SKIP = 0;
    protected static final int SAME_DOC = 1;
    protected static final int CROSS_DOC = 2;
    protected static final int TRANSIENT = 0;
    protected static final int DATATYPE_SINGLE = 1;
    protected static final int DATATYPE_ELEMENT_SINGLE = 2;
    protected static final int DATATYPE_CONTENT_SINGLE = 3;
    protected static final int DATATYPE_SINGLE_NILLABLE = 4;
    protected static final int DATATYPE_MANY = 5;
    protected static final int OBJECT_CONTAIN_SINGLE = 6;
    protected static final int OBJECT_CONTAIN_MANY = 7;
    protected static final int OBJECT_HREF_SINGLE = 8;
    protected static final int OBJECT_HREF_MANY = 9;
    protected static final int OBJECT_CONTAIN_SINGLE_UNSETTABLE = 10;
    protected static final int OBJECT_CONTAIN_MANY_UNSETTABLE = 11;
    protected static final int OBJECT_HREF_SINGLE_UNSETTABLE = 12;
    protected static final int OBJECT_HREF_MANY_UNSETTABLE = 13;
    protected static final int OBJECT_ELEMENT_SINGLE = 14;
    protected static final int OBJECT_ELEMENT_SINGLE_UNSETTABLE = 15;
    protected static final int OBJECT_ELEMENT_MANY = 16;
    protected static final int OBJECT_ELEMENT_IDREF_SINGLE = 17;
    protected static final int OBJECT_ELEMENT_IDREF_SINGLE_UNSETTABLE = 18;
    protected static final int OBJECT_ELEMENT_IDREF_MANY = 19;
    protected static final int ATTRIBUTE_FEATURE_MAP = 20;
    protected static final int ELEMENT_FEATURE_MAP = 21;
    protected static final int OBJECT_ATTRIBUTE_SINGLE = 22;
    protected static final int OBJECT_ATTRIBUTE_MANY = 23;
    protected static final int OBJECT_ATTRIBUTE_IDREF_SINGLE = 24;
    protected static final int OBJECT_ATTRIBUTE_IDREF_MANY = 25;
    protected static final int DATATYPE_ATTRIBUTE_MANY = 26;
    protected static final String XML_VERSION = "1.0";
    protected static final String XSI_NIL = "xsi:nil";
    protected static final String XSI_TYPE_NS = "xsi:type";
    protected static final String XSI_XMLNS = "xmlns:xsi";
    protected static final String XSI_SCHEMA_LOCATION = "xsi:schemaLocation";
    protected static final String XSI_NO_NAMESPACE_SCHEMA_LOCATION = "xsi:noNamespaceSchemaLocation";
    protected static final int EMPTY_ELEMENT = 1;
    protected static final int CONTENT_ELEMENT = 2;

    public XMLSaveImpl(XMLHelper helper) {
        this.helper = helper;
    }

    public XMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding) {
        this(options, helper, encoding, XML_VERSION);
    }

    public XMLSaveImpl(Map<?, ?> options, XMLHelper helper, String encoding, String xmlVersion) {
        this.helper = helper;
        this.init(helper.getResource(), options);
        this.encoding = encoding;
        this.xmlVersion = xmlVersion;
    }

    @Override
    public Document save(XMLResource resource, Document doc, Map<?, ?> options, DOMHandler handler) {
        this.toDOM = true;
        this.document = doc;
        this.handler = handler;
        this.xmlResource = resource;
        this.init(resource, options);
        List contents = this.roots = (List)options.get("ROOT_OBJECTS");
        if (contents == null) {
            contents = resource.getContents();
        }
        this.traverse(contents);
        try {
            this.endSave(contents);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        this.xmlResource = null;
        return this.document;
    }

    @Override
    public void save(XMLResource resource, Writer writer, Map<?, ?> options) throws IOException {
        this.xmlResource = resource;
        this.init(resource, options);
        List contents = this.roots = (List)options.get("ROOT_OBJECTS");
        if (contents == null) {
            contents = resource.getContents();
        }
        this.traverse(contents);
        this.write(writer);
        writer.flush();
        this.endSave(contents);
        this.xmlResource = null;
    }

    @Override
    public void save(XMLResource resource, OutputStream outputStream, Map<?, ?> options) throws IOException {
        if (outputStream instanceof URIConverter.Writeable) {
            URIConverter.Writeable writeable = (URIConverter.Writeable)outputStream;
            resource.setEncoding(writeable.getEncoding());
            this.save(resource, writeable.asWriter(), options);
            return;
        }
        this.xmlResource = resource;
        this.init(resource, options);
        List contents = this.roots = (List)options.get("ROOT_OBJECTS");
        if (contents == null) {
            contents = resource.getContents();
        }
        this.traverse(contents);
        if ("US-ASCII".equals(this.encoding) || "ASCII".equals(this.encoding)) {
            this.writeAscii(outputStream);
            outputStream.flush();
        } else {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, this.helper.getJavaEncoding(this.encoding));
            this.write((Writer)outputStreamWriter);
            outputStreamWriter.flush();
        }
        this.endSave(contents);
        this.xmlResource = null;
    }

    protected void endSave(List<? extends EObject> contents) throws IOException {
        DanglingHREFException exception;
        EObject root;
        EClass eClass;
        EReference xmlnsPrefixMapFeature;
        if (this.extendedMetaData != null && contents.size() >= 1 && (xmlnsPrefixMapFeature = this.extendedMetaData.getXMLNSPrefixMapFeature(eClass = (root = contents.get(0)).eClass())) != null) {
            EMap xmlnsPrefixMap = (EMap)root.eGet((EStructuralFeature)xmlnsPrefixMapFeature);
            for (Map.Entry entry : this.helper.getPrefixToNamespaceMap()) {
                String key = (String)entry.getKey();
                String value = (String)entry.getValue();
                String currentValue = (String)xmlnsPrefixMap.get((Object)key);
                if (!(currentValue == null ? value != null : !currentValue.equals(value))) continue;
                xmlnsPrefixMap.put((Object)key, (Object)value);
            }
        }
        if ((this.processDanglingHREF == null || "THROW".equals(this.processDanglingHREF)) && (exception = this.helper.getDanglingHREFException()) != null) {
            this.helper = null;
            throw new Resource.IOWrappedException((Exception)exception);
        }
        if (this.useCache) {
            if (this.doc != null) {
                ConfigurationCache.INSTANCE.releasePrinter(this.doc);
            }
            if (this.escape != null) {
                ConfigurationCache.INSTANCE.releaseEscape(this.escape);
            }
        }
        this.featureTable = null;
        this.doc = null;
        this.helper = null;
    }

    protected void init(XMLResource resource, Map<?, ?> options) {
        Object extendedMetaDataOption;
        this.useCache = Boolean.TRUE.equals(options.get("CONFIGURATION_CACHE"));
        this.nameInfo = new NameInfoImpl();
        this.declareXSI = false;
        this.keepDefaults = Boolean.TRUE.equals(options.get("KEEP_DEFAULT_CONTENT"));
        this.useEncodedAttributeStyle = Boolean.TRUE.equals(options.get("USE_ENCODED_ATTRIBUTE_STYLE"));
        this.declareSchemaLocationImplementation = Boolean.TRUE.equals(options.get("SCHEMA_LOCATION_IMPLEMENTATION"));
        this.declareSchemaLocation = this.declareSchemaLocationImplementation || Boolean.TRUE.equals(options.get("SCHEMA_LOCATION"));
        Object saveTypeInfoOption = options.get("SAVE_TYPE_INFORMATION");
        if (saveTypeInfoOption instanceof Boolean) {
            this.saveTypeInfo = saveTypeInfoOption.equals(Boolean.TRUE);
            if (this.saveTypeInfo) {
                this.xmlTypeInfo = new XMLSave.XMLTypeInfo(){

                    public boolean shouldSaveType(EClass objectType, EClassifier featureType, EStructuralFeature feature) {
                        return objectType != XMLSaveImpl.this.anyType;
                    }

                    public boolean shouldSaveType(EClass objectType, EClass featureType, EStructuralFeature feature) {
                        return true;
                    }
                };
            }
        } else {
            boolean bl = this.saveTypeInfo = saveTypeInfoOption != null;
            if (this.saveTypeInfo) {
                this.xmlTypeInfo = (XMLSave.XMLTypeInfo)saveTypeInfoOption;
            }
        }
        this.anyType = (EClass)options.get("ANY_TYPE");
        this.anySimpleType = (EClass)options.get("ANY_SIMPLE_TYPE");
        if (this.anyType == null) {
            this.anyType = XMLTypePackage.eINSTANCE.getAnyType();
            this.anySimpleType = XMLTypePackage.eINSTANCE.getSimpleAnyType();
        }
        if ((extendedMetaDataOption = options.get("EXTENDED_META_DATA")) instanceof Boolean) {
            if (extendedMetaDataOption.equals(Boolean.TRUE)) {
                this.extendedMetaData = resource == null || resource.getResourceSet() == null ? ExtendedMetaData.INSTANCE : new BasicExtendedMetaData(resource.getResourceSet().getPackageRegistry());
            }
        } else {
            this.extendedMetaData = (ExtendedMetaData)options.get("EXTENDED_META_DATA");
        }
        if (!this.toDOM) {
            Integer lineWidth;
            boolean bl = this.declareXML = !Boolean.FALSE.equals(options.get("DECLARE_XML"));
            if (options.get("FLUSH_THRESHOLD") instanceof Integer) {
                this.flushThreshold = (Integer)options.get("FLUSH_THRESHOLD");
            }
            String temporaryFileName = null;
            if (Boolean.TRUE.equals(options.get("USE_FILE_BUFFER"))) {
                try {
                    temporaryFileName = File.createTempFile("XMLSave", null).getPath();
                }
                catch (IOException iOException) {
                    // empty catch block
                }
            }
            int effectiveLineWidth = (lineWidth = (Integer)options.get("LINE_WIDTH")) == null ? Integer.MAX_VALUE : lineWidth;
            String publicId = null;
            String systemId = null;
            if (resource != null && Boolean.TRUE.equals(options.get("SAVE_DOCTYPE"))) {
                publicId = resource.getPublicId();
                systemId = resource.getSystemId();
            }
            if (this.useCache) {
                this.doc = ConfigurationCache.INSTANCE.getPrinter();
                this.doc.reset(publicId, systemId, effectiveLineWidth, temporaryFileName);
                this.escape = Boolean.TRUE.equals(options.get("SKIP_ESCAPE")) ? null : ConfigurationCache.INSTANCE.getEscape();
            } else {
                this.doc = new XMLString(effectiveLineWidth, publicId, systemId, temporaryFileName);
                Escape escape = this.escape = Boolean.TRUE.equals(options.get("SKIP_ESCAPE")) ? null : new Escape();
            }
            if (Boolean.FALSE.equals(options.get("FORMATTED"))) {
                this.doc.setUnformatted(true);
            }
            Escape escape = this.escapeURI = Boolean.FALSE.equals(options.get("SKIP_ESCAPE_URI")) ? this.escape : null;
            if (options.containsKey("ENCODING")) {
                this.encoding = (String)options.get("ENCODING");
            } else if (resource != null) {
                this.encoding = resource.getEncoding();
            }
            if (options.containsKey("XML_VERSION")) {
                this.xmlVersion = (String)options.get("XML_VERSION");
            } else if (resource != null) {
                this.xmlVersion = resource.getXMLVersion();
            }
            if (this.escape != null) {
                int maxSafeChar = 0x10FFFF;
                if (this.encoding != null) {
                    if (this.encoding.equalsIgnoreCase("ASCII") || this.encoding.equalsIgnoreCase("US-ASCII")) {
                        maxSafeChar = 127;
                    } else if (this.encoding.equalsIgnoreCase("ISO-8859-1")) {
                        maxSafeChar = 255;
                    }
                }
                this.escape.setMappingLimit(maxSafeChar);
                if (!XML_VERSION.equals(this.xmlVersion)) {
                    this.escape.setAllowControlCharacters(true);
                }
                this.escape.setUseCDATA(Boolean.TRUE.equals(options.get("ESCAPE_USING_CDATA")));
            }
            this.resourceEntityHandler = (XMLResource.ResourceEntityHandler)options.get("RESOURCE_ENTITY_HANDLER");
            if (this.resourceEntityHandler instanceof XMLResource.URIHandler && !options.containsKey("URI_HANDLER")) {
                LinkedHashMap newOptions = new LinkedHashMap(options);
                newOptions.put("URI_HANDLER", this.resourceEntityHandler);
                options = newOptions;
            }
        } else if (this.handler instanceof DefaultDOMHandlerImpl) {
            ((DefaultDOMHandlerImpl)this.handler).setExtendedMetaData(this.extendedMetaData);
        }
        this.processDanglingHREF = (String)options.get("PROCESS_DANGLING_HREF");
        this.helper.setProcessDanglingHREF(this.processDanglingHREF);
        this.map = (XMLResource.XMLMap)options.get("XML_MAP");
        if (this.map != null) {
            this.helper.setXMLMap(this.map);
            if (this.map.getIDAttributeName() != null) {
                this.idAttributeName = this.map.getIDAttributeName();
            }
        }
        if (resource != null) {
            this.eObjectToExtensionMap = resource.getEObjectToExtensionMap();
            if (this.eObjectToExtensionMap.isEmpty()) {
                this.eObjectToExtensionMap = null;
            } else if (this.extendedMetaData == null) {
                Object object = this.extendedMetaData = resource.getResourceSet() == null ? ExtendedMetaData.INSTANCE : new BasicExtendedMetaData(resource.getResourceSet().getPackageRegistry());
            }
        }
        if (this.extendedMetaData != null) {
            EObject root;
            EClass eClass;
            EReference xmlnsPrefixMapFeature;
            this.helper.setExtendedMetaData(this.extendedMetaData);
            if (resource != null && resource.getContents().size() >= 1 && (xmlnsPrefixMapFeature = this.extendedMetaData.getXMLNSPrefixMapFeature(eClass = (root = (EObject)resource.getContents().get(0)).eClass())) != null) {
                EMap xmlnsPrefixMap = (EMap)root.eGet((EStructuralFeature)xmlnsPrefixMapFeature);
                this.helper.setPrefixToNamespaceMap((EMap<String, String>)xmlnsPrefixMap);
            }
        }
        this.elementHandler = (XMLResource.ElementHandler)options.get("ELEMENT_HANDLER");
        List lookup = (List)options.get("USE_CACHED_LOOKUP_TABLE");
        if (lookup != null) {
            if (lookup.isEmpty()) {
                this.featureTable = new Lookup(this.map, this.extendedMetaData, this.elementHandler);
                lookup.add(this.featureTable);
            } else {
                this.featureTable = (Lookup)lookup.get(0);
            }
        } else {
            this.featureTable = new Lookup(this.map, this.extendedMetaData, this.elementHandler);
        }
        this.helper.setOptions(options);
        this.proxyAttributes = Boolean.TRUE.equals(options.get("PROXY_ATTRIBUTES"));
    }

    public void traverse(List<? extends EObject> contents) {
        int size;
        if (!this.toDOM && this.declareXML) {
            this.doc.add("<?xml version=\"" + this.xmlVersion + "\" encoding=\"" + this.encoding + "\"?>");
            this.doc.addLine();
        }
        Object mark = (size = contents.size()) == 1 ? this.writeTopObject(contents.get(0)) : this.writeTopObjects(contents);
        if (!this.toDOM) {
            this.doc.resetToMark(mark);
        } else {
            this.currentNode = this.document.getDocumentElement();
        }
        this.addNamespaceDeclarations();
        this.addDoctypeInformation();
    }

    protected void writeTopAttributes(EObject top) {
        EReference containmentReference;
        EReference containerReference;
        InternalEObject container;
        if (this.useEncodedAttributeStyle && (container = ((InternalEObject)top).eInternalContainer()) != null && (containerReference = (containmentReference = top.eContainmentFeature()).getEOpposite()) != null && !containerReference.isTransient()) {
            this.saveEObjectSingle(top, (EStructuralFeature)containerReference);
        }
    }

    protected boolean writeTopElements(EObject top) {
        EReference containmentReference;
        EReference containerReference;
        InternalEObject container;
        if (!this.useEncodedAttributeStyle && (container = ((InternalEObject)top).eInternalContainer()) != null && (containerReference = (containmentReference = top.eContainmentFeature()).getEOpposite()) != null && !containerReference.isTransient()) {
            this.saveHref((EObject)container, (EStructuralFeature)containerReference);
            return true;
        }
        return false;
    }

    protected Object writeTopObject(EObject top) {
        EClass eClass = top.eClass();
        if (!this.toDOM) {
            if (this.extendedMetaData == null || this.featureTable.getDocumentRoot(eClass.getEPackage()) != eClass) {
                EClass eClassifier;
                EStructuralFeature rootFeature = null;
                boolean shouldSaveType = false;
                if (this.elementHandler != null && (rootFeature = this.featureTable.getRoot((EClassifier)(eClassifier = eClass == this.anySimpleType ? ((SimpleAnyType)top).getInstanceType() : eClass))) != null && rootFeature.getEType() != eClassifier) {
                    shouldSaveType = true;
                }
                String name = rootFeature != null ? this.helper.getQName(rootFeature) : (this.extendedMetaData != null && this.roots != null && top.eContainmentFeature() != null ? this.helper.getQName((EStructuralFeature)top.eContainmentFeature()) : this.helper.getQName(eClass));
                this.doc.startElement(name);
                Object mark = this.doc.mark();
                this.root = top;
                if (shouldSaveType) {
                    this.saveTypeAttribute(eClass);
                }
                this.saveElementID(top);
                return mark;
            }
            this.doc.startElement(null);
            this.root = top;
            this.saveFeatures(top);
            return null;
        }
        if (this.extendedMetaData == null || this.featureTable.getDocumentRoot(eClass.getEPackage()) != eClass) {
            EClass eClassifier;
            EStructuralFeature rootFeature = null;
            boolean shouldSaveType = false;
            if (this.elementHandler != null && (rootFeature = this.featureTable.getRoot((EClassifier)(eClassifier = eClass == this.anySimpleType ? ((SimpleAnyType)top).getInstanceType() : eClass))) != null && rootFeature.getEType() != eClassifier) {
                shouldSaveType = true;
            }
            if (rootFeature != null) {
                this.helper.populateNameInfo(this.nameInfo, rootFeature);
            } else if (this.extendedMetaData != null && this.roots != null && top.eContainmentFeature() != null) {
                this.helper.populateNameInfo(this.nameInfo, (EStructuralFeature)top.eContainmentFeature());
            } else {
                this.helper.populateNameInfo(this.nameInfo, eClass);
            }
            if (this.document.getLastChild() == null) {
                this.currentNode = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                this.currentNode = this.document.appendChild(this.currentNode);
            } else {
                this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
            }
            this.handler.recordValues(this.currentNode, null, null, top);
            this.root = top;
            if (shouldSaveType) {
                this.saveTypeAttribute(eClass);
            }
            this.saveElementID(top);
            return null;
        }
        this.root = top;
        this.currentNode = this.document;
        this.saveFeatures(top);
        return null;
    }

    protected Object writeTopObjects(List<? extends EObject> contents) {
        return this.writeTopObject(contents.get(0));
    }

    protected void addNamespaceDeclarations() {
        EPackage noNamespacePackage = this.helper.getNoNamespacePackage();
        EPackage[] packages = this.helper.packages();
        this.buffer.setLength(0);
        StringBuffer xsiSchemaLocation = this.buffer;
        String xsiNoNamespaceSchemaLocation = null;
        if (this.declareSchemaLocation) {
            EMap xsiSchemaLocationMap;
            EObject root;
            EClass eClass;
            EReference xsiSchemaLocationMapFeature;
            XMLResource resource;
            Map handledBySchemaLocationMap = Collections.emptyMap();
            if (this.extendedMetaData != null && (resource = this.helper.getResource()) != null && resource.getContents().size() >= 1 && (xsiSchemaLocationMapFeature = this.extendedMetaData.getXSISchemaLocationMapFeature(eClass = (root = this.getSchemaLocationRoot((EObject)resource.getContents().get(0))).eClass())) != null && !(xsiSchemaLocationMap = (EMap)root.eGet((EStructuralFeature)xsiSchemaLocationMapFeature)).isEmpty()) {
                handledBySchemaLocationMap = xsiSchemaLocationMap.map();
                this.declareXSI = true;
                for (Map.Entry entry : xsiSchemaLocationMap.entrySet()) {
                    String namespace = (String)entry.getKey();
                    URI location = URI.createURI((String)((String)entry.getValue()));
                    if (namespace == null) {
                        xsiNoNamespaceSchemaLocation = this.helper.deresolve(location).toString();
                        continue;
                    }
                    if (xsiSchemaLocation.length() > 0) {
                        xsiSchemaLocation.append(' ');
                    }
                    xsiSchemaLocation.append(namespace);
                    xsiSchemaLocation.append(' ');
                    xsiSchemaLocation.append(this.helper.deresolve(location).toString());
                }
            }
            int i = 0;
            while (i < packages.length) {
                EPackage ePackage = packages[i];
                String javaImplementationLocation = null;
                if (this.declareSchemaLocationImplementation) {
                    try {
                        Field field = ePackage.getClass().getField("eINSTANCE");
                        javaImplementationLocation = "java://" + field.getDeclaringClass().getName();
                    }
                    catch (Exception field) {
                        // empty catch block
                    }
                }
                if (noNamespacePackage == ePackage) {
                    if (ePackage.eResource() != null && !handledBySchemaLocationMap.containsKey(null)) {
                        this.declareXSI = true;
                        if (javaImplementationLocation != null) {
                            xsiNoNamespaceSchemaLocation = javaImplementationLocation;
                        } else {
                            xsiNoNamespaceSchemaLocation = this.helper.getHREF((EObject)ePackage);
                            if (xsiNoNamespaceSchemaLocation != null && xsiNoNamespaceSchemaLocation.endsWith("#/")) {
                                xsiNoNamespaceSchemaLocation = xsiNoNamespaceSchemaLocation.substring(0, xsiNoNamespaceSchemaLocation.length() - 2);
                            }
                        }
                    }
                } else {
                    Resource resource2 = ePackage.eResource();
                    if (resource2 != null) {
                        String nsURI;
                        String string = nsURI = this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage);
                        if (!handledBySchemaLocationMap.containsKey(nsURI)) {
                            URI uri = resource2.getURI();
                            if (javaImplementationLocation != null || (uri == null ? nsURI != null : !uri.toString().equals(nsURI))) {
                                this.declareXSI = true;
                                if (xsiSchemaLocation.length() > 0) {
                                    xsiSchemaLocation.append(' ');
                                }
                                xsiSchemaLocation.append(nsURI);
                                xsiSchemaLocation.append(' ');
                                String location = javaImplementationLocation == null ? this.helper.getHREF((EObject)ePackage) : javaImplementationLocation;
                                location = this.convertURI(location);
                                if (location.endsWith("#/")) {
                                    location = location.substring(0, location.length() - 2);
                                    if (uri != null && uri.hasFragment()) {
                                        location = String.valueOf(location) + "#" + uri.fragment();
                                    }
                                }
                                xsiSchemaLocation.append(location);
                            }
                        }
                    }
                }
                ++i;
            }
        }
        if (this.declareXSI) {
            if (!this.toDOM) {
                this.doc.addAttribute(XSI_XMLNS, "http://www.w3.org/2001/XMLSchema-instance");
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", XSI_XMLNS, "http://www.w3.org/2001/XMLSchema-instance");
            }
        }
        int i = 0;
        while (i < packages.length) {
            EPackage ePackage = packages[i];
            if (ePackage != noNamespacePackage && ePackage != XMLNamespacePackage.eINSTANCE && !"http://www.w3.org/2000/xmlns/".equals(ePackage.getNsURI())) {
                String nsURI;
                String string = nsURI = this.extendedMetaData == null ? ePackage.getNsURI() : this.extendedMetaData.getNamespace(ePackage);
                if (ePackage == this.xmlSchemaTypePackage) {
                    nsURI = "http://www.w3.org/2001/XMLSchema";
                }
                if (nsURI != null && !this.isDuplicateURI(nsURI)) {
                    List<String> nsPrefixes = this.helper.getPrefixes(ePackage);
                    for (String nsPrefix : nsPrefixes) {
                        if (!this.toDOM) {
                            if (nsPrefix != null && nsPrefix.length() > 0) {
                                if (this.declareXSI && "xsi".equals(nsPrefix)) continue;
                                this.doc.addAttributeNS("xmlns", nsPrefix, nsURI);
                                continue;
                            }
                            this.doc.addAttribute("xmlns", nsURI);
                            continue;
                        }
                        if (nsPrefix != null && nsPrefix.length() > 0) {
                            if (this.declareXSI && "xsi".equals(nsPrefix)) continue;
                            ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + nsPrefix, nsURI);
                            continue;
                        }
                        ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", nsURI);
                    }
                }
            }
            ++i;
        }
        if (xsiSchemaLocation.length() > 0) {
            if (!this.toDOM) {
                this.doc.addAttribute(XSI_SCHEMA_LOCATION, xsiSchemaLocation.toString());
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_SCHEMA_LOCATION, xsiSchemaLocation.toString());
            }
        }
        if (xsiNoNamespaceSchemaLocation != null) {
            if (!this.toDOM) {
                this.doc.addAttribute(XSI_NO_NAMESPACE_SCHEMA_LOCATION, xsiNoNamespaceSchemaLocation);
            } else {
                ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_NO_NAMESPACE_SCHEMA_LOCATION, xsiNoNamespaceSchemaLocation);
            }
        }
    }

    protected void addDoctypeInformation() {
        if (this.resourceEntityHandler != null && !this.toDOM) {
            for (Map.Entry<String, String> entry : this.resourceEntityHandler.getNameToValueMap().entrySet()) {
                this.doc.addEntity(entry.getKey(), entry.getValue());
            }
        }
    }

    protected EObject getSchemaLocationRoot(EObject eObject) {
        return eObject;
    }

    public boolean isDuplicateURI(String nsURI) {
        return false;
    }

    @Deprecated
    public void write(OutputStreamWriter os) throws IOException {
        this.write((Writer)os);
    }

    public void write(Writer os) throws IOException {
        this.doc.write(os, this.flushThreshold);
        os.flush();
    }

    public void writeAscii(OutputStream os) throws IOException {
        this.doc.writeAscii(os, this.flushThreshold);
        os.flush();
    }

    public char[] toChar() {
        int size = this.doc.getLength();
        char[] output = new char[size];
        this.doc.getChars(output, 0);
        return output;
    }

    protected void saveElement(InternalEObject o, EStructuralFeature f) {
        if (o.eDirectResource() != null || o.eIsProxy()) {
            this.saveHref((EObject)o, f);
        } else {
            this.saveElement((EObject)o, f);
        }
    }

    protected void saveElement(EObject o, EStructuralFeature f) {
        XMLResource.XMLInfo info;
        String name;
        EClass eClass = o.eClass();
        EClassifier eType = f.getEType();
        if (this.extendedMetaData != null && eClass != eType && (name = this.extendedMetaData.getName((EClassifier)eClass)).endsWith("_._type")) {
            String elementName = name.substring(0, name.indexOf("_._"));
            String prefix = this.helper.getPrefix(eClass.getEPackage());
            if (!"".equals(prefix)) {
                elementName = String.valueOf(prefix) + ":" + elementName;
            }
            if (!this.toDOM) {
                this.doc.startElement(elementName);
            } else {
                this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.helper.getNamespaceURI(prefix), elementName));
                this.handler.recordValues(this.currentNode, o.eContainer(), f, o);
            }
            this.saveElementID(o);
            return;
        }
        if (this.map != null && (info = this.map.getInfo((ENamedElement)eClass)) != null && info.getXMLRepresentation() == 0) {
            if (!this.toDOM) {
                String elementName = this.helper.getQName(eClass);
                this.doc.startElement(elementName);
            } else {
                this.helper.populateNameInfo(this.nameInfo, eClass);
                if (this.currentNode == null) {
                    this.currentNode = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    this.document.appendChild(this.currentNode);
                    this.handler.recordValues(this.currentNode, o.eContainer(), f, o);
                } else {
                    this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                    this.handler.recordValues(this.currentNode, o.eContainer(), f, o);
                }
            }
            this.saveElementID(o);
            return;
        }
        boolean isAnyType = false;
        if (o instanceof AnyType) {
            isAnyType = true;
            this.helper.pushContext();
            for (FeatureMap.Entry entry : ((AnyType)o).getAnyAttribute()) {
                if (!"http://www.w3.org/2000/xmlns/".equals(this.extendedMetaData.getNamespace(entry.getEStructuralFeature()))) continue;
                String uri = (String)entry.getValue();
                this.helper.addPrefix(this.extendedMetaData.getName(entry.getEStructuralFeature()), uri == null ? "" : uri);
            }
        }
        boolean shouldSaveType = this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, eType, f) : eClass != eType && (eClass != this.anyType || this.extendedMetaData == null || eType != EcorePackage.Literals.EOBJECT || this.extendedMetaData.getFeatureKind(f) == 0);
        EDataType eDataType = null;
        if (shouldSaveType) {
            EStructuralFeature substitutionGroup;
            EClass eClassifier;
            EClass eClass2;
            if (eClass == this.anySimpleType) {
                eDataType = ((SimpleAnyType)o).getInstanceType();
                eClass2 = eDataType;
            } else {
                eClass2 = eClassifier = eClass;
            }
            if (this.elementHandler != null && (substitutionGroup = this.featureTable.getSubstitutionGroup(f, (EClassifier)eClassifier)) != null) {
                f = substitutionGroup;
                boolean bl = shouldSaveType = substitutionGroup.getEType() != eClassifier;
            }
        }
        if (!this.toDOM) {
            String featureName = this.helper.getQName(f);
            this.doc.startElement(featureName);
        } else {
            this.helper.populateNameInfo(this.nameInfo, f);
            if (this.currentNode == null) {
                this.currentNode = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                this.document.appendChild(this.currentNode);
                this.handler.recordValues(this.currentNode, o.eContainer(), f, o);
            } else {
                this.currentNode = this.currentNode.appendChild(this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName()));
                this.handler.recordValues(this.currentNode, o.eContainer(), f, o);
            }
        }
        if (shouldSaveType) {
            if (eDataType != null) {
                this.saveTypeAttribute(eDataType);
            } else {
                this.saveTypeAttribute(eClass);
            }
        }
        this.saveElementID(o);
        if (isAnyType) {
            this.helper.popContext();
        }
    }

    protected void saveTypeAttribute(EClass eClass) {
        this.declareXSI = true;
        if (!this.toDOM) {
            this.doc.addAttribute(XSI_TYPE_NS, this.helper.getQName(eClass));
        } else {
            this.helper.populateNameInfo(this.nameInfo, eClass);
            ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_TYPE_NS, this.nameInfo.getQualifiedName());
        }
    }

    protected void saveTypeAttribute(EDataType eDataType) {
        this.declareXSI = true;
        if (!this.toDOM) {
            this.doc.addAttribute(XSI_TYPE_NS, this.helper.getQName(eDataType));
        } else {
            this.helper.populateNameInfo(this.nameInfo, eDataType);
            ((Element)this.currentNode).setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_TYPE_NS, this.nameInfo.getQualifiedName());
        }
    }

    protected boolean shouldSaveFeature(EObject o, EStructuralFeature f) {
        return o.eIsSet(f) || this.keepDefaults && f.getDefaultValueLiteral() != null;
    }

    protected boolean saveFeatures(EObject o) {
        return this.saveFeatures(o, false);
    }

    /*
     * Unable to fully structure code
     */
    protected boolean saveFeatures(EObject o, boolean attributesOnly) {
        eClass = o.eClass();
        v0 = contentKind = this.extendedMetaData == null ? 0 : this.extendedMetaData.getContentKind(eClass);
        if (!this.toDOM) {
            switch (contentKind) {
                case 2: 
                case 3: {
                    this.doc.setMixed(true);
                }
            }
        }
        if (o == this.root) {
            this.writeTopAttributes(this.root);
        }
        features = this.featureTable.getFeatures(eClass);
        featureKinds = this.featureTable.getKinds(eClass, features);
        elementFeatures = null;
        elementCount = 0;
        content = null;
        i = 0;
        while (i < features.length) {
            block70: {
                kind = featureKinds[i];
                f = features[i];
                if (kind == 0 || !this.shouldSaveFeature(o, f)) break block70;
                block3 : switch (kind) {
                    case 2: {
                        if (contentKind != 2) break;
                        content = this.getDataTypeElementSingleSimple(o, f);
                        break block70;
                    }
                    case 1: {
                        this.saveDataTypeSingle(o, f);
                        break block70;
                    }
                    case 4: {
                        if (this.isNil(o, f)) break;
                        this.saveDataTypeSingle(o, f);
                        break block70;
                    }
                    case 22: {
                        this.saveEObjectSingle(o, f);
                        break block70;
                    }
                    case 23: {
                        this.saveEObjectMany(o, f);
                        break block70;
                    }
                    case 24: {
                        this.saveIDRefSingle(o, f);
                        break block70;
                    }
                    case 25: {
                        this.saveIDRefMany(o, f);
                        break block70;
                    }
                    case 12: {
                        if (this.isNil(o, f)) break;
                    }
                    case 8: {
                        if (this.useEncodedAttributeStyle) {
                            this.saveEObjectSingle(o, f);
                        } else {
                            switch (this.sameDocSingle(o, f)) {
                                case 1: {
                                    this.saveIDRefSingle(o, f);
                                    break;
                                }
                                case 2: {
                                    break block3;
                                }
                            }
                        }
                        break block70;
                    }
                    case 13: {
                        if (!this.isEmpty(o, f)) ** GOTO lbl60
                        this.saveManyEmpty(o, f);
                        break block70;
                    }
lbl60:
                    // 2 sources

                    case 9: {
                        if (this.useEncodedAttributeStyle) {
                            this.saveEObjectMany(o, f);
                        } else {
                            switch (this.sameDocMany(o, f)) {
                                case 1: {
                                    this.saveIDRefMany(o, f);
                                    break;
                                }
                                case 2: {
                                    break block3;
                                }
                            }
                        }
                        break block70;
                    }
                    case 14: 
                    case 15: {
                        if (contentKind != 2) break;
                        content = this.getElementReferenceSingleSimple(o, f);
                        break block70;
                    }
                    case 16: {
                        if (contentKind != 2) break;
                        content = this.getElementReferenceManySimple(o, f);
                        break block70;
                    }
                    case 17: 
                    case 18: {
                        if (contentKind != 2) break;
                        content = this.getElementIDRefSingleSimple(o, f);
                        break block70;
                    }
                    case 19: {
                        if (contentKind != 2) break;
                        content = this.getElementIDRefManySimple(o, f);
                        break block70;
                    }
                    case 26: {
                        break;
                    }
                    case 5: 
                    case 11: {
                        if (!this.isEmpty(o, f)) break;
                        this.saveManyEmpty(o, f);
                        break block70;
                    }
                    case 6: 
                    case 7: 
                    case 10: 
                    case 21: {
                        break;
                    }
                    case 20: {
                        this.saveAttributeFeatureMap(o, f);
                        break block70;
                    }
                    default: {
                        break block70;
                    }
                }
                if (!attributesOnly) {
                    if (elementFeatures == null) {
                        elementFeatures = new int[features.length];
                    }
                    elementFeatures[elementCount++] = i;
                }
            }
            ++i;
        }
        this.processAttributeExtensions(o);
        if (elementFeatures == null) {
            if (content == null) {
                content = this.getContent(o, features);
            }
            if (content == null) {
                if (o == this.root && this.writeTopElements(this.root)) {
                    this.endSaveFeatures(o, 0, null);
                    return true;
                }
                this.endSaveFeatures(o, 1, null);
                return false;
            }
            this.endSaveFeatures(o, 2, content);
            return true;
        }
        if (o == this.root) {
            this.writeTopElements(this.root);
        }
        i = 0;
        while (i < elementCount) {
            kind = featureKinds[elementFeatures[i]];
            f = features[elementFeatures[i]];
            switch (kind) {
                case 4: {
                    this.saveNil(o, f);
                    break;
                }
                case 21: {
                    this.saveElementFeatureMap(o, f);
                    break;
                }
                case 5: {
                    this.saveDataTypeMany(o, f);
                    break;
                }
                case 26: {
                    this.saveDataTypeAttributeMany(o, f);
                    break;
                }
                case 2: {
                    this.saveDataTypeElementSingle(o, f);
                    break;
                }
                case 10: {
                    if (this.isNil(o, f)) {
                        this.saveNil(o, f);
                        break;
                    }
                }
                case 6: {
                    this.saveContainedSingle(o, f);
                    break;
                }
                case 7: 
                case 11: {
                    this.saveContainedMany(o, f);
                    break;
                }
                case 12: {
                    if (this.isNil(o, f)) {
                        this.saveNil(o, f);
                        break;
                    }
                }
                case 8: {
                    this.saveHRefSingle(o, f);
                    break;
                }
                case 9: 
                case 13: {
                    this.saveHRefMany(o, f);
                    break;
                }
                case 15: {
                    if (this.isNil(o, f)) {
                        this.saveNil(o, f);
                        break;
                    }
                }
                case 14: {
                    this.saveElementReferenceSingle(o, f);
                    break;
                }
                case 16: {
                    this.saveElementReferenceMany(o, f);
                    break;
                }
                case 18: {
                    if (this.isNil(o, f)) {
                        this.saveNil(o, f);
                        break;
                    }
                }
                case 17: {
                    this.saveElementIDRefSingle(o, f);
                    break;
                }
                case 19: {
                    this.saveElementIDRefMany(o, f);
                }
            }
            ++i;
        }
        this.endSaveFeatures(o, 0, null);
        return true;
    }

    protected void endSaveFeatures(EObject o, int elementType, String content) {
        if (this.processElementExtensions(o)) {
            if (!this.toDOM) {
                this.doc.endElement();
            }
        } else {
            switch (elementType) {
                case 1: {
                    if (this.toDOM) break;
                    this.doc.endEmptyElement();
                    break;
                }
                case 2: {
                    if (this.toDOM) break;
                    this.doc.endContentElement(content);
                    break;
                }
                default: {
                    if (this.toDOM) break;
                    this.doc.endElement();
                }
            }
        }
        if (this.toDOM) {
            this.currentNode = this.currentNode.getParentNode();
        }
    }

    protected boolean processElementExtensions(EObject object) {
        if (this.eObjectToExtensionMap != null) {
            AnyType anyType = this.eObjectToExtensionMap.get(object);
            return anyType != null && this.saveElementFeatureMap((EObject)anyType, (EStructuralFeature)XMLTypePackage.eINSTANCE.getAnyType_Mixed());
        }
        return false;
    }

    protected void processAttributeExtensions(EObject object) {
        AnyType anyType;
        if (this.eObjectToExtensionMap != null && (anyType = this.eObjectToExtensionMap.get(object)) != null) {
            this.saveAttributeFeatureMap((EObject)anyType, (EStructuralFeature)XMLTypePackage.eINSTANCE.getAnyType_AnyAttribute());
        }
    }

    protected void saveDataTypeSingle(EObject o, EStructuralFeature f) {
        Object value = this.helper.getValue(o, f);
        String svalue = this.getDatatypeValue(value, f, true);
        if (svalue != null) {
            if (!this.toDOM) {
                this.doc.addAttribute(this.helper.getQName(f), svalue);
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                attr.setNodeValue(svalue);
                ((Element)this.currentNode).setAttributeNodeNS(attr);
                this.handler.recordValues(attr, o, f, value);
            }
        }
    }

    protected boolean isNil(EObject o, EStructuralFeature f) {
        return this.helper.getValue(o, f) == null;
    }

    protected boolean isEmpty(EObject o, EStructuralFeature f) {
        return ((List)this.helper.getValue(o, f)).isEmpty();
    }

    protected void saveNil(EObject o, EStructuralFeature f) {
        if (!this.toDOM) {
            this.saveNil(f);
        } else {
            this.declareXSI = true;
            this.helper.populateNameInfo(this.nameInfo, f);
            Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
            elem.setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_NIL, "true");
            this.currentNode.appendChild(elem);
            this.handler.recordValues(this.currentNode.getLastChild(), o, f, null);
        }
    }

    protected void saveNil(EStructuralFeature f) {
        this.declareXSI = true;
        this.doc.saveNilElement(this.helper.getQName(f));
    }

    protected void saveManyEmpty(EObject o, EStructuralFeature f) {
        if (!this.toDOM) {
            this.saveManyEmpty(f);
        } else {
            this.helper.populateNameInfo(this.nameInfo, f);
            Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
            ((Element)this.currentNode).setAttributeNodeNS(attr);
            this.handler.recordValues(attr, o, f, null);
        }
    }

    protected void saveManyEmpty(EStructuralFeature f) {
        this.doc.addAttribute(this.helper.getQName(f), "");
    }

    protected void saveDataTypeMany(EObject o, EStructuralFeature f) {
        block9: {
            List values = (List)this.helper.getValue(o, f);
            int size = values.size();
            if (size <= 0) break block9;
            if (!this.toDOM) {
                EDataType d = (EDataType)f.getEType();
                EPackage ePackage = d.getEPackage();
                EFactory fac = ePackage.getEFactoryInstance();
                String name = this.helper.getQName(f);
                int i = 0;
                while (i < size) {
                    Object value = values.get(i);
                    if (value == null) {
                        this.doc.startElement(name);
                        this.doc.addAttribute(XSI_NIL, "true");
                        this.doc.endEmptyElement();
                        this.declareXSI = true;
                    } else {
                        String svalue = this.helper.convertToString(fac, d, value);
                        if (this.escape != null) {
                            svalue = this.escape.convertText(svalue);
                        }
                        this.doc.saveDataValueElement(name, svalue);
                    }
                    ++i;
                }
            } else {
                EDataType d = (EDataType)f.getEType();
                EPackage ePackage = d.getEPackage();
                EFactory fac = ePackage.getEFactoryInstance();
                this.helper.populateNameInfo(this.nameInfo, f);
                int i = 0;
                while (i < size) {
                    Element elem;
                    Object value = values.get(i);
                    if (value == null) {
                        elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                        elem.setAttributeNS("http://www.w3.org/2001/XMLSchema-instance", XSI_NIL, "true");
                        this.currentNode.appendChild(elem);
                        this.handler.recordValues(elem, o, f, null);
                        this.declareXSI = true;
                    } else {
                        elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                        Text text = this.document.createTextNode(this.helper.convertToString(fac, d, value));
                        elem.appendChild(text);
                        this.currentNode.appendChild(elem);
                        this.handler.recordValues(elem, o, f, value);
                        this.handler.recordValues(text, o, f, value);
                    }
                    ++i;
                }
            }
        }
    }

    protected void saveDataTypeAttributeMany(EObject o, EStructuralFeature f) {
        List values = (List)this.helper.getValue(o, f);
        int size = values.size();
        if (size > 0) {
            Object value;
            EDataType d = (EDataType)f.getEType();
            EPackage ePackage = d.getEPackage();
            EFactory fac = ePackage.getEFactoryInstance();
            StringBuffer stringValues = new StringBuffer();
            int i = 0;
            while (i < size) {
                value = values.get(i);
                if (value != null) {
                    String svalue = this.helper.convertToString(fac, d, value);
                    if (this.escape != null) {
                        svalue = this.escape.convert(svalue);
                    }
                    if (i > 0) {
                        stringValues.append(' ');
                    }
                    stringValues.append(svalue);
                }
                ++i;
            }
            if (!this.toDOM) {
                String name = this.helper.getQName(f);
                this.doc.startAttribute(name);
                this.doc.addAttributeContent(stringValues.toString());
                this.doc.endAttribute();
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                value = stringValues.toString();
                attr.setNodeValue((String)value);
                ((Element)this.currentNode).setAttributeNodeNS(attr);
                this.handler.recordValues(attr, o, f, value);
            }
        }
    }

    protected void saveEObjectSingle(EObject o, EStructuralFeature f) {
        String id;
        EObject value = (EObject)this.helper.getValue(o, f);
        if (value != null && (id = this.helper.getHREF(value)) != null) {
            id = this.convertURI(id);
            this.buffer.setLength(0);
            if (!id.startsWith("#")) {
                EClass eClass = value.eClass();
                EClass expectedType = (EClass)f.getEType();
                if (this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, expectedType, f) : eClass != expectedType && (expectedType.isAbstract() || f.getEGenericType().getETypeParameter() != null)) {
                    this.buffer.append(this.helper.getQName(eClass));
                    this.buffer.append(' ');
                }
            }
            this.buffer.append(id);
            if (!this.toDOM) {
                String name = this.helper.getQName(f);
                this.doc.startAttribute(name);
                this.doc.addAttributeContent(this.buffer.toString());
                this.doc.endAttribute();
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                attr.setNodeValue(this.buffer.toString());
                ((Element)this.currentNode).setAttributeNodeNS(attr);
                this.handler.recordValues(attr, o, f, value);
            }
        }
    }

    protected void saveEObjectMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        if (!values.isEmpty()) {
            this.buffer.setLength(0);
            boolean failure = false;
            Iterator i = values.basicIterator();
            while (true) {
                EObject value;
                String id;
                if ((id = this.helper.getHREF(value = (EObject)i.next())) == null) {
                    failure = true;
                    if (i.hasNext()) continue;
                    break;
                }
                if (!(id = this.convertURI(id)).startsWith("#")) {
                    EClass eClass = value.eClass();
                    EClass expectedType = (EClass)f.getEType();
                    if (this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, expectedType, f) : eClass != expectedType && (expectedType.isAbstract() || f.getEGenericType().getETypeParameter() != null)) {
                        this.buffer.append(this.helper.getQName(eClass));
                        this.buffer.append(' ');
                    }
                }
                this.buffer.append(id);
                if (!i.hasNext()) break;
                this.buffer.append(' ');
            }
            String string = this.buffer.toString();
            if (!failure || (string = string.trim()).length() != 0) {
                if (!this.toDOM) {
                    String name = this.helper.getQName(f);
                    this.doc.startAttribute(name);
                    this.doc.addAttributeContent(string);
                    this.doc.endAttribute();
                } else {
                    this.helper.populateNameInfo(this.nameInfo, f);
                    Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    attr.setNodeValue(string);
                    ((Element)this.currentNode).setAttributeNodeNS(attr);
                    this.handler.recordValues(attr, o, f, values);
                }
            }
        }
    }

    protected void saveIDRefSingle(EObject o, EStructuralFeature f) {
        String id;
        EObject value = (EObject)this.helper.getValue(o, f);
        if (value != null && (id = this.helper.getIDREF(value)) != null) {
            if (!this.toDOM) {
                String name = this.helper.getQName(f);
                this.doc.addAttribute(name, id);
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                attr.setNodeValue(id);
                ((Element)this.currentNode).setAttributeNodeNS(attr);
                this.handler.recordValues(attr, o, f, value);
            }
        }
    }

    protected void saveIDRefMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        if (!values.isEmpty()) {
            this.buffer.setLength(0);
            StringBuffer ids = this.buffer;
            boolean failure = false;
            Iterator i = values.basicIterator();
            while (true) {
                EObject value;
                String id;
                if ((id = this.helper.getIDREF(value = (EObject)i.next())) == null) {
                    failure = true;
                    if (i.hasNext()) continue;
                    break;
                }
                ids.append(id);
                if (!i.hasNext()) break;
                ids.append(' ');
            }
            String idsString = ids.toString();
            if (!failure || (idsString = idsString.trim()).length() != 0) {
                if (!this.toDOM) {
                    String name = this.helper.getQName(f);
                    this.doc.addAttribute(name, idsString);
                } else {
                    this.helper.populateNameInfo(this.nameInfo, f);
                    Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    attr.setNodeValue(idsString);
                    ((Element)this.currentNode).setAttributeNodeNS(attr);
                    this.handler.recordValues(attr, o, f, values);
                }
            }
        }
    }

    protected void saveElementReference(EObject remote, EStructuralFeature f) {
        String href = this.helper.getHREF(remote);
        if (href != null) {
            EStructuralFeature substitutionGroup;
            boolean shouldSaveType;
            href = this.convertURI(href);
            EClass eClass = remote.eClass();
            EClass expectedType = (EClass)f.getEType();
            boolean bl = this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, expectedType, f) : (shouldSaveType = eClass != expectedType && (expectedType.isAbstract() || f.getEGenericType().getETypeParameter() != null));
            if (this.elementHandler != null && shouldSaveType && (substitutionGroup = this.featureTable.getSubstitutionGroup(f, (EClassifier)eClass)) != null) {
                f = substitutionGroup;
                boolean bl2 = shouldSaveType = substitutionGroup.getEType() != eClass;
            }
            if (!this.toDOM) {
                this.doc.startElement(this.helper.getQName(f));
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                Text text = this.document.createTextNode(href);
                elem.appendChild(text);
                this.currentNode = this.currentNode.appendChild(elem);
                this.handler.recordValues(elem, remote.eContainer(), f, remote);
                this.handler.recordValues(text, remote.eContainer(), f, remote);
            }
            if (shouldSaveType) {
                this.saveTypeAttribute(eClass);
            }
            if (!this.toDOM) {
                this.doc.endContentElement(href);
            } else {
                this.currentNode = this.currentNode.getParentNode();
            }
        }
    }

    protected void saveElementReferenceSingle(EObject o, EStructuralFeature f) {
        EObject value = (EObject)this.helper.getValue(o, f);
        if (value != null) {
            this.saveElementReference(value, f);
        }
    }

    protected void saveElementReferenceMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        int size = values.size();
        int i = 0;
        while (i < size) {
            this.saveElementReference((EObject)values.basicGet(i), f);
            ++i;
        }
    }

    protected String getElementReferenceSingleSimple(EObject o, EStructuralFeature f) {
        EObject value = (EObject)this.helper.getValue(o, f);
        String svalue = this.helper.getHREF(value);
        if (svalue != null) {
            svalue = this.convertURI(svalue);
            if (this.toDOM) {
                Text text = this.document.createTextNode(svalue);
                this.currentNode.appendChild(text);
                this.handler.recordValues(text, o, f, value);
            }
        }
        return svalue;
    }

    protected String getElementReferenceManySimple(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        this.buffer.setLength(0);
        StringBuffer result = this.buffer;
        int size = values.size();
        String href = null;
        boolean failure = false;
        int i = 0;
        while (i < size) {
            href = this.helper.getHREF((EObject)values.basicGet(i));
            if (href == null) {
                failure = true;
            } else {
                href = this.convertURI(href);
                result.append(href);
                result.append(' ');
            }
            ++i;
        }
        String svalue = result.substring(0, result.length() - 1);
        if (failure && (svalue = svalue.trim()).length() == 0) {
            return null;
        }
        if (this.toDOM) {
            Text text = this.document.createTextNode(svalue);
            this.currentNode.appendChild(text);
            this.handler.recordValues(text, o, f, values);
        }
        return svalue;
    }

    protected void saveElementIDRef(EObject o, EObject target, EStructuralFeature f) {
        if (!this.toDOM) {
            this.saveElementIDRef(target, f);
        } else {
            String id = this.helper.getIDREF(target);
            if (id != null) {
                this.helper.populateNameInfo(this.nameInfo, f);
                Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                Text text = this.document.createTextNode(id);
                elem.appendChild(text);
                this.currentNode.appendChild(elem);
                this.handler.recordValues(elem, o, f, target);
                this.handler.recordValues(text, o, f, target);
            }
        }
    }

    protected void saveElementIDRef(EObject target, EStructuralFeature f) {
        String name = this.helper.getQName(f);
        String id = this.helper.getIDREF(target);
        if (id != null) {
            this.doc.saveDataValueElement(name, id);
        }
    }

    protected void saveElementIDRefSingle(EObject o, EStructuralFeature f) {
        EObject value = (EObject)this.helper.getValue(o, f);
        if (value != null) {
            this.saveElementIDRef(o, value, f);
        }
    }

    protected void saveElementIDRefMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        int size = values.size();
        int i = 0;
        while (i < size) {
            this.saveElementIDRef(o, (EObject)values.basicGet(i), f);
            ++i;
        }
    }

    protected String getElementIDRefSingleSimple(EObject o, EStructuralFeature f) {
        EObject value = (EObject)this.helper.getValue(o, f);
        String svalue = this.helper.getIDREF(value);
        if (svalue == null) {
            return null;
        }
        if (this.toDOM) {
            Text text = this.document.createTextNode(svalue);
            this.currentNode.appendChild(text);
            this.handler.recordValues(text, o, f, value);
        }
        return svalue;
    }

    protected String getElementIDRefManySimple(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        this.buffer.setLength(0);
        StringBuffer result = this.buffer;
        boolean failure = false;
        int i = 0;
        int size = values.size();
        while (i < size) {
            String idref = this.helper.getIDREF((EObject)values.basicGet(i));
            if (idref == null) {
                failure = true;
            } else {
                result.append(idref);
                result.append(' ');
            }
            ++i;
        }
        String svalue = result.substring(0, result.length() - 1);
        if (failure && (svalue = svalue.trim()).length() == 0) {
            return null;
        }
        if (this.toDOM) {
            Text text = this.document.createTextNode(svalue);
            this.currentNode.appendChild(text);
            this.handler.recordValues(text, o, f, values);
        }
        return svalue;
    }

    protected void saveHref(EObject remote, EStructuralFeature f) {
        String href = this.helper.getHREF(remote);
        if (href != null) {
            EStructuralFeature substitutionGroup;
            boolean shouldSaveType;
            href = this.convertURI(href);
            EClass eClass = remote.eClass();
            EClass expectedType = (EClass)f.getEType();
            boolean bl = this.saveTypeInfo ? this.xmlTypeInfo.shouldSaveType(eClass, expectedType, f) : (shouldSaveType = eClass != expectedType && (this.proxyAttributes && eClass.getEAllAttributes().size() > expectedType.getEAllAttributes().size() || expectedType.isAbstract() || f.getEGenericType().getETypeParameter() != null));
            if (this.elementHandler != null && (substitutionGroup = this.featureTable.getSubstitutionGroup(f, (EClassifier)eClass)) != null) {
                f = substitutionGroup;
                boolean bl2 = shouldSaveType = substitutionGroup.getEType() != eClass;
            }
            if (!this.toDOM) {
                String name = this.helper.getQName(f);
                this.doc.startElement(name);
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                this.currentNode = this.currentNode.appendChild(elem);
                this.handler.recordValues(elem, remote.eContainer(), f, remote);
            }
            if (shouldSaveType) {
                this.saveTypeAttribute(eClass);
            }
            if (!this.toDOM) {
                this.doc.addAttribute("href", href);
                if (this.proxyAttributes) {
                    this.saveFeatures(remote, true);
                } else if (this.eObjectToExtensionMap != null) {
                    this.processAttributeExtensions(remote);
                    if (this.processElementExtensions(remote)) {
                        this.doc.endElement();
                    } else {
                        this.doc.endEmptyElement();
                    }
                } else {
                    this.doc.endEmptyElement();
                }
            } else {
                ((Element)this.currentNode).setAttributeNS(null, "href", href);
                if (this.proxyAttributes) {
                    this.saveFeatures(remote, true);
                } else if (this.eObjectToExtensionMap != null) {
                    this.processAttributeExtensions(remote);
                    this.processElementExtensions(remote);
                }
                this.currentNode = this.currentNode.getParentNode();
            }
        }
    }

    protected void saveHRefSingle(EObject o, EStructuralFeature f) {
        EObject value = (EObject)this.helper.getValue(o, f);
        if (value != null) {
            this.saveHref(value, f);
        }
    }

    protected void saveHRefMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        int size = values.size();
        int i = 0;
        while (i < size) {
            this.saveHref((EObject)values.basicGet(i), f);
            ++i;
        }
    }

    protected void saveContainedSingle(EObject o, EStructuralFeature f) {
        InternalEObject value = (InternalEObject)this.helper.getValue(o, f);
        if (value != null) {
            this.saveElement(value, f);
        }
    }

    protected void saveContainedMany(EObject o, EStructuralFeature f) {
        List values = ((InternalEList)this.helper.getValue(o, f)).basicList();
        int size = values.size();
        int i = 0;
        while (i < size) {
            InternalEObject value = (InternalEObject)values.get(i);
            if (value != null) {
                this.saveElement(value, f);
            }
            ++i;
        }
    }

    protected void saveFeatureMapElementReference(EObject o, EReference f) {
        this.saveElementReference(o, (EStructuralFeature)f);
    }

    protected boolean saveElementFeatureMap(EObject o, EStructuralFeature f) {
        List values = (List)this.helper.getValue(o, f);
        int size = values.size();
        int i = 0;
        while (i < size) {
            String stringValue;
            FeatureMap.Entry entry = (FeatureMap.Entry)values.get(i);
            EStructuralFeature entryFeature = entry.getEStructuralFeature();
            Object value = entry.getValue();
            if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION) {
                ProcessingInstruction pi = (ProcessingInstruction)value;
                String target = pi.getTarget();
                String data = pi.getData();
                if (this.escape != null && data != null) {
                    data = this.escape.convertLines(data);
                }
                if (!this.toDOM) {
                    this.doc.addProcessingInstruction(target, data);
                } else {
                    this.currentNode.appendChild(this.document.createProcessingInstruction(target, data));
                }
            } else if (entryFeature instanceof EReference) {
                if (value == null) {
                    this.saveNil(o, entryFeature);
                } else {
                    EReference referenceEntryFeature = (EReference)entryFeature;
                    if (referenceEntryFeature.isContainment()) {
                        this.saveElement((InternalEObject)value, entryFeature);
                    } else if (referenceEntryFeature.isResolveProxies()) {
                        this.saveFeatureMapElementReference((EObject)value, referenceEntryFeature);
                    } else {
                        this.saveElementIDRef(o, (EObject)value, entryFeature);
                    }
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT) {
                String svalue = value.toString();
                if (this.escape != null) {
                    svalue = this.escape.convertText(svalue);
                }
                if (!this.toDOM) {
                    this.doc.addText(svalue);
                } else {
                    Text text = this.document.createTextNode(svalue);
                    this.currentNode.appendChild(text);
                    this.handler.recordValues(text, o, f, entry);
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA) {
                stringValue = value.toString();
                if (this.escape != null) {
                    stringValue = this.escape.convertLines(stringValue);
                }
                if (!this.toDOM) {
                    this.doc.addCDATA(stringValue);
                } else {
                    CDATASection cdata = this.document.createCDATASection(stringValue);
                    this.currentNode.appendChild(cdata);
                    this.handler.recordValues(cdata, o, f, entry);
                }
            } else if (entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT) {
                stringValue = value.toString();
                if (this.escape != null) {
                    stringValue = this.escape.convertLines(stringValue);
                }
                if (!this.toDOM) {
                    this.doc.addComment(stringValue);
                } else {
                    this.currentNode.appendChild(this.document.createComment(stringValue));
                }
            } else {
                this.saveElement(o, value, entryFeature);
            }
            ++i;
        }
        return size > 0;
    }

    protected void saveAttributeFeatureMap(EObject o, EStructuralFeature f) {
        List values = (List)this.helper.getValue(o, f);
        int size = values.size();
        HashSet<EReference> repeats = null;
        int i = 0;
        while (i < size) {
            block13: {
                EStructuralFeature entryFeature;
                FeatureMap.Entry entry;
                block9: {
                    EReference referenceEntryFeature;
                    block10: {
                        block12: {
                            block11: {
                                entry = (FeatureMap.Entry)values.get(i);
                                entryFeature = entry.getEStructuralFeature();
                                if (!(entryFeature instanceof EReference)) break block9;
                                referenceEntryFeature = (EReference)entryFeature;
                                if (!referenceEntryFeature.isMany()) break block10;
                                if (repeats != null) break block11;
                                repeats = new HashSet<EReference>();
                                break block12;
                            }
                            if (repeats.contains(referenceEntryFeature)) break block13;
                        }
                        repeats.add(referenceEntryFeature);
                        if (referenceEntryFeature.isResolveProxies()) {
                            this.saveEObjectMany(o, entryFeature);
                        } else {
                            this.saveIDRefMany(o, entryFeature);
                        }
                        break block13;
                    }
                    if (referenceEntryFeature.isResolveProxies()) {
                        this.saveEObjectSingle(o, entryFeature);
                    } else {
                        this.saveIDRefSingle(o, entryFeature);
                    }
                    break block13;
                }
                Object value = entry.getValue();
                String svalue = this.getDatatypeValue(value, entryFeature, true);
                if (!this.toDOM) {
                    this.doc.addAttribute(this.helper.getQName(entryFeature), svalue);
                } else {
                    this.helper.populateNameInfo(this.nameInfo, entryFeature);
                    Attr attr = this.document.createAttributeNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                    attr.setNodeValue(svalue);
                    ((Element)this.currentNode).setAttributeNodeNS(attr);
                    this.handler.recordValues(attr, o, f, value);
                }
            }
            ++i;
        }
    }

    protected int sameDocSingle(EObject o, EStructuralFeature f) {
        InternalEObject value = (InternalEObject)this.helper.getValue(o, f);
        if (value == null) {
            return 0;
        }
        if (value.eIsProxy()) {
            return 2;
        }
        Resource res = value.eResource();
        return res == this.helper.getResource() || res == null ? 1 : 2;
    }

    protected int sameDocMany(EObject o, EStructuralFeature f) {
        InternalEList values = (InternalEList)this.helper.getValue(o, f);
        if (values.isEmpty()) {
            return 0;
        }
        Iterator i = values.basicIterator();
        while (i.hasNext()) {
            InternalEObject value = (InternalEObject)i.next();
            if (value.eIsProxy()) {
                return 2;
            }
            Resource resource = value.eResource();
            if (resource == this.helper.getResource() || resource == null) continue;
            return 2;
        }
        return 1;
    }

    protected String getContent(EObject o, EStructuralFeature[] features) {
        if (this.map == null) {
            return null;
        }
        int i = 0;
        while (i < features.length) {
            EStructuralFeature feature = features[i];
            XMLResource.XMLInfo info = this.map.getInfo((ENamedElement)feature);
            if (info != null && info.getXMLRepresentation() == 2) {
                Object value = this.helper.getValue(o, feature);
                String svalue = this.getDatatypeValue(value, feature, false);
                if (this.toDOM) {
                    Text text = this.document.createTextNode(svalue);
                    this.currentNode.appendChild(text);
                    this.handler.recordValues(text, o, feature, value);
                }
                return svalue;
            }
            ++i;
        }
        return null;
    }

    protected void saveDataTypeElementSingle(EObject o, EStructuralFeature f) {
        this.saveElement(o, this.helper.getValue(o, f), f);
    }

    protected String getDataTypeElementSingleSimple(EObject o, EStructuralFeature f) {
        Object value = this.helper.getValue(o, f);
        String svalue = this.getDatatypeValue(value, f, false);
        if (this.toDOM) {
            Text text = this.document.createTextNode(svalue);
            this.currentNode.appendChild(text);
            this.handler.recordValues(text, o, f, value);
        }
        return svalue;
    }

    protected void saveElementID(EObject o) {
        String id = this.helper.getID(o);
        if (id != null) {
            if (!this.toDOM) {
                this.doc.addAttribute(this.idAttributeName, id);
            } else {
                Attr attr = this.document.createAttributeNS(this.idAttributeNS, this.idAttributeName);
                attr.setNodeValue(id);
                ((Element)this.currentNode).setAttributeNodeNS(attr);
                this.handler.recordValues(attr, o, null, o);
            }
        }
        this.saveFeatures(o);
    }

    protected String getDatatypeValue(Object value, EStructuralFeature f, boolean isAttribute) {
        if (value == null) {
            return null;
        }
        EDataType d = (EDataType)f.getEType();
        EPackage ePackage = d.getEPackage();
        EFactory fac = ePackage.getEFactoryInstance();
        String svalue = this.helper.convertToString(fac, d, value);
        if (this.escape != null) {
            svalue = isAttribute ? this.escape.convert(svalue) : this.escape.convertText(svalue);
        }
        return svalue;
    }

    protected void saveElement(EObject o, Object value, EStructuralFeature f) {
        if (value == null) {
            this.saveNil(o, f);
        } else {
            String svalue = this.getDatatypeValue(value, f, false);
            if (!this.toDOM) {
                this.doc.saveDataValueElement(this.helper.getQName(f), svalue);
            } else {
                this.helper.populateNameInfo(this.nameInfo, f);
                Element elem = this.document.createElementNS(this.nameInfo.getNamespaceURI(), this.nameInfo.getQualifiedName());
                Text text = this.document.createTextNode(svalue);
                elem.appendChild(text);
                this.currentNode.appendChild(elem);
                this.handler.recordValues(elem, o, f, value);
                this.handler.recordValues(text, o, f, value);
            }
        }
    }

    protected String convertURI(String uri) {
        int index;
        if (this.resourceEntityHandler != null && (index = uri.indexOf(35)) > 0) {
            String baseURI = uri.substring(0, index);
            String fragment = uri.substring(index + 1);
            String entityName = this.resourceEntityHandler.getEntityName(baseURI);
            if (entityName != null) {
                return "&" + entityName + ";#" + (this.escapeURI == null ? fragment : this.escapeURI.convert(fragment));
            }
        }
        return this.escapeURI != null ? this.escapeURI.convert(uri) : uri;
    }

    protected static class Escape {
        protected char[] value;
        protected int mappableLimit;
        protected boolean allowControlCharacters;
        protected boolean useCDATA;
        protected final char[] NUL = new char[]{'&', '#', 'x', '0', ';'};
        protected final char[] SOH = new char[]{'&', '#', 'x', '1', ';'};
        protected final char[] STX = new char[]{'&', '#', 'x', '2', ';'};
        protected final char[] ETX = new char[]{'&', '#', 'x', '3', ';'};
        protected final char[] EOT = new char[]{'&', '#', 'x', '4', ';'};
        protected final char[] ENQ = new char[]{'&', '#', 'x', '5', ';'};
        protected final char[] ACK = new char[]{'&', '#', 'x', '6', ';'};
        protected final char[] BEL = new char[]{'&', '#', 'x', '7', ';'};
        protected final char[] BS = new char[]{'&', '#', 'x', '8', ';'};
        protected final char[] TAB = new char[]{'&', '#', 'x', '9', ';'};
        protected final char[] LF = new char[]{'&', '#', 'x', 'A', ';'};
        protected final char[] VT = new char[]{'&', '#', 'x', 'B', ';'};
        protected final char[] FF = new char[]{'&', '#', 'x', 'C', ';'};
        protected final char[] CR = new char[]{'&', '#', 'x', 'D', ';'};
        protected final char[] SO = new char[]{'&', '#', 'x', 'E', ';'};
        protected final char[] SI = new char[]{'&', '#', 'x', 'F', ';'};
        protected final char[] DLE = new char[]{'&', '#', 'x', '1', '0', ';'};
        protected final char[] DC1 = new char[]{'&', '#', 'x', '1', '1', ';'};
        protected final char[] DC2 = new char[]{'&', '#', 'x', '1', '2', ';'};
        protected final char[] DC3 = new char[]{'&', '#', 'x', '1', '3', ';'};
        protected final char[] DC4 = new char[]{'&', '#', 'x', '1', '4', ';'};
        protected final char[] NAK = new char[]{'&', '#', 'x', '1', '5', ';'};
        protected final char[] SYN = new char[]{'&', '#', 'x', '1', '6', ';'};
        protected final char[] ETB = new char[]{'&', '#', 'x', '1', '7', ';'};
        protected final char[] CAN = new char[]{'&', '#', 'x', '1', '8', ';'};
        protected final char[] EM = new char[]{'&', '#', 'x', '1', '9', ';'};
        protected final char[] SUB = new char[]{'&', '#', 'x', '1', 'A', ';'};
        protected final char[] ESC = new char[]{'&', '#', 'x', '1', 'B', ';'};
        protected final char[] FS = new char[]{'&', '#', 'x', '1', 'C', ';'};
        protected final char[] GS = new char[]{'&', '#', 'x', '1', 'D', ';'};
        protected final char[] RS = new char[]{'&', '#', 'x', '1', 'E', ';'};
        protected final char[] US = new char[]{'&', '#', 'x', '1', 'F', ';'};
        protected final char[][] CONTROL_CHARACTERS = new char[][]{this.NUL, this.SOH, this.STX, this.ETX, this.EOT, this.ENQ, this.ACK, this.BEL, this.BS, this.TAB, this.LF, this.VT, this.FF, this.CR, this.SO, this.SI, this.DLE, this.DC1, this.DC2, this.DC3, this.DC4, this.NAK, this.SYN, this.ETB, this.CAN, this.EM, this.SUB, this.ESC, this.FS, this.GS, this.RS, this.US};
        protected final char[] AMP = new char[]{'&', 'a', 'm', 'p', ';'};
        protected final char[] LESS = new char[]{'&', 'l', 't', ';'};
        protected final char[] GREATER = new char[]{'&', 'g', 't', ';'};
        protected final char[] QUOTE = new char[]{'&', 'q', 'u', 'o', 't', ';'};
        protected final char[] LINE_FEED = System.getProperty("line.separator").toCharArray();

        public Escape() {
            this.value = new char[100];
        }

        public void setMappingLimit(int mappingLimit) {
            this.mappableLimit = mappingLimit;
        }

        public void setAllowControlCharacters(boolean allowControlCharacters) {
            this.allowControlCharacters = allowControlCharacters;
        }

        public void setUseCDATA(boolean useCDATA) {
            this.useCDATA = useCDATA;
        }

        public String convert(String input) {
            boolean changed = false;
            int inputLength = input.length();
            this.grow(inputLength);
            int outputPos = 0;
            int inputPos = 0;
            char ch = '\u0000';
            while (inputLength-- > 0) {
                ch = input.charAt(inputPos++);
                switch (ch) {
                    case '\u0001': 
                    case '\u0002': 
                    case '\u0003': 
                    case '\u0004': 
                    case '\u0005': 
                    case '\u0006': 
                    case '\u0007': 
                    case '\b': 
                    case '\u000b': 
                    case '\f': 
                    case '\u000e': 
                    case '\u000f': 
                    case '\u0010': 
                    case '\u0011': 
                    case '\u0012': 
                    case '\u0013': 
                    case '\u0014': 
                    case '\u0015': 
                    case '\u0016': 
                    case '\u0017': 
                    case '\u0018': 
                    case '\u0019': 
                    case '\u001a': 
                    case '\u001b': 
                    case '\u001c': 
                    case '\u001d': 
                    case '\u001e': 
                    case '\u001f': {
                        if (this.allowControlCharacters) {
                            outputPos = this.replaceChars(outputPos, this.CONTROL_CHARACTERS[ch], inputLength);
                            changed = true;
                            break;
                        }
                        throw new RuntimeException("An invalid XML character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                    }
                    case '&': {
                        outputPos = this.replaceChars(outputPos, this.AMP, inputLength);
                        changed = true;
                        break;
                    }
                    case '<': {
                        outputPos = this.replaceChars(outputPos, this.LESS, inputLength);
                        changed = true;
                        break;
                    }
                    case '\"': {
                        outputPos = this.replaceChars(outputPos, this.QUOTE, inputLength);
                        changed = true;
                        break;
                    }
                    case '\n': {
                        outputPos = this.replaceChars(outputPos, this.LF, inputLength);
                        changed = true;
                        break;
                    }
                    case '\r': {
                        outputPos = this.replaceChars(outputPos, this.CR, inputLength);
                        changed = true;
                        break;
                    }
                    case '\t': {
                        outputPos = this.replaceChars(outputPos, this.TAB, inputLength);
                        changed = true;
                        break;
                    }
                    default: {
                        if (!DataValue.XMLChar.isValid((int)ch)) {
                            if (DataValue.XMLChar.isHighSurrogate((int)ch)) {
                                char high = ch;
                                if (inputLength-- > 0) {
                                    if (DataValue.XMLChar.isLowSurrogate((int)(ch = input.charAt(inputPos++)))) {
                                        if (this.mappableLimit == 0x10FFFF) {
                                            this.value[outputPos++] = high;
                                            this.value[outputPos++] = ch;
                                            break;
                                        }
                                        outputPos = this.replaceChars(outputPos, ("&#x" + Integer.toHexString(DataValue.XMLChar.supplemental((char)high, (char)ch)) + ";").toCharArray(), inputLength);
                                        changed = true;
                                        break;
                                    }
                                    throw new RuntimeException("An invalid low surrogate character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                                }
                                throw new RuntimeException("An unpaired high surrogate character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                            }
                            throw new RuntimeException("An invalid XML character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                        }
                        if (ch <= this.mappableLimit) {
                            this.value[outputPos++] = ch;
                            break;
                        }
                        outputPos = this.replaceChars(outputPos, ("&#x" + Integer.toHexString(ch) + ";").toCharArray(), inputLength);
                        changed = true;
                    }
                }
            }
            return changed ? new String(this.value, 0, outputPos) : input;
        }

        public String convertText(String input) {
            boolean changed = false;
            boolean cdataCloseBracket = false;
            int inputLength = input.length();
            this.grow(inputLength);
            int outputPos = 0;
            int inputPos = 0;
            while (inputLength-- > 0) {
                char ch = input.charAt(inputPos++);
                switch (ch) {
                    case '\u0001': 
                    case '\u0002': 
                    case '\u0003': 
                    case '\u0004': 
                    case '\u0005': 
                    case '\u0006': 
                    case '\u0007': 
                    case '\b': 
                    case '\u000b': 
                    case '\f': 
                    case '\u000e': 
                    case '\u000f': 
                    case '\u0010': 
                    case '\u0011': 
                    case '\u0012': 
                    case '\u0013': 
                    case '\u0014': 
                    case '\u0015': 
                    case '\u0016': 
                    case '\u0017': 
                    case '\u0018': 
                    case '\u0019': 
                    case '\u001a': 
                    case '\u001b': 
                    case '\u001c': 
                    case '\u001d': 
                    case '\u001e': 
                    case '\u001f': {
                        if (this.allowControlCharacters) {
                            outputPos = this.replaceChars(outputPos, this.CONTROL_CHARACTERS[ch], inputLength);
                            changed = true;
                            break;
                        }
                        throw new RuntimeException("An invalid XML character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                    }
                    case '&': {
                        outputPos = this.replaceChars(outputPos, this.AMP, inputLength);
                        changed = true;
                        break;
                    }
                    case '<': {
                        outputPos = this.replaceChars(outputPos, this.LESS, inputLength);
                        changed = true;
                        break;
                    }
                    case '\"': {
                        outputPos = this.replaceChars(outputPos, this.QUOTE, inputLength);
                        changed = true;
                        break;
                    }
                    case '\n': {
                        outputPos = this.replaceChars(outputPos, this.LINE_FEED, inputLength);
                        changed = true;
                        break;
                    }
                    case '\r': {
                        outputPos = this.replaceChars(outputPos, this.CR, inputLength);
                        changed = true;
                        break;
                    }
                    case '>': {
                        if (inputPos >= 3 && input.charAt(inputPos - 2) == ']' && input.charAt(inputPos - 3) == ']') {
                            outputPos = this.replaceChars(outputPos, this.GREATER, inputLength);
                            cdataCloseBracket = true;
                            changed = true;
                            break;
                        }
                    }
                    default: {
                        if (!DataValue.XMLChar.isValid((int)ch)) {
                            if (DataValue.XMLChar.isHighSurrogate((int)ch)) {
                                char high = ch;
                                if (inputLength-- > 0) {
                                    if (DataValue.XMLChar.isLowSurrogate((int)(ch = input.charAt(inputPos++)))) {
                                        if (this.mappableLimit == 0x10FFFF) {
                                            this.value[outputPos++] = high;
                                            this.value[outputPos++] = ch;
                                            break;
                                        }
                                        outputPos = this.replaceChars(outputPos, ("&#x" + Integer.toHexString(DataValue.XMLChar.supplemental((char)high, (char)ch)) + ";").toCharArray(), inputLength);
                                        changed = true;
                                        break;
                                    }
                                    throw new RuntimeException("An invalid low surrogate character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                                }
                                throw new RuntimeException("An unpaired high surrogate character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                            }
                            throw new RuntimeException("An invalid XML character (Unicode: 0x" + Integer.toHexString(ch) + ") was found in the element content:" + input);
                        }
                        if (ch <= this.mappableLimit) {
                            this.value[outputPos++] = ch;
                            break;
                        }
                        outputPos = this.replaceChars(outputPos, ("&#x" + Integer.toHexString(ch) + ";").toCharArray(), inputLength);
                        changed = true;
                    }
                }
            }
            return changed ? (!this.useCDATA || cdataCloseBracket ? new String(this.value, 0, outputPos) : "<![CDATA[" + input + "]]>") : input;
        }

        public String convertLines(String input) {
            boolean changed = false;
            int inputLength = input.length();
            this.grow(inputLength);
            int outputPos = 0;
            int inputPos = 0;
            while (inputLength-- > 0) {
                char ch = input.charAt(inputPos++);
                switch (ch) {
                    case '\n': {
                        outputPos = this.replaceChars(outputPos, this.LINE_FEED, inputLength);
                        changed = true;
                        break;
                    }
                    default: {
                        this.value[outputPos++] = ch;
                    }
                }
            }
            return changed ? new String(this.value, 0, outputPos) : input;
        }

        protected int replaceChars(int pos, char[] replacement, int inputLength) {
            int rlen = replacement.length;
            int newPos = pos + rlen;
            this.grow(newPos + inputLength);
            System.arraycopy(replacement, 0, this.value, pos, rlen);
            return newPos;
        }

        @Deprecated
        protected int replace(int pos, char[] replacement, int inputLength) {
            int rlen = replacement.length;
            int newPos = pos + rlen;
            this.grow(newPos + inputLength);
            System.arraycopy(this.value, pos + 1, this.value, newPos, inputLength);
            System.arraycopy(replacement, 0, this.value, pos, rlen);
            return newPos;
        }

        protected void grow(int newSize) {
            int vlen = this.value.length;
            if (vlen < newSize) {
                char[] newValue = new char[newSize + newSize / 2];
                System.arraycopy(this.value, 0, newValue, 0, vlen);
                this.value = newValue;
            }
        }
    }

    protected static class Lookup {
        protected static final int SHIFT = 10;
        protected static final int SIZE = 1024;
        protected static final int MASK = 1023;
        protected EClass[] classes;
        protected EStructuralFeature[][] features;
        protected int[][] featureKinds;
        protected XMLResource.XMLMap map;
        protected ExtendedMetaData extendedMetaData;
        protected ArrayList<EObject> docRoots = new ArrayList();
        protected XMLResource.ElementHandler elementHandler;
        protected FeatureClassifierPair featureClassifierPair;
        protected Map<FeatureClassifierPair, EStructuralFeature> substitutionGroupMap;
        protected static final EStructuralFeature NULL_FEATURE = EcoreFactory.eINSTANCE.createEAttribute();

        public Lookup(XMLResource.XMLMap map) {
            this(map, null, null);
        }

        public Lookup(XMLResource.XMLMap map, ExtendedMetaData extendedMetaData) {
            this(map, extendedMetaData, null);
        }

        public Lookup(XMLResource.XMLMap map, ExtendedMetaData extendedMetaData, XMLResource.ElementHandler elementHandler) {
            this.map = map;
            this.extendedMetaData = extendedMetaData;
            this.elementHandler = elementHandler;
            this.classes = new EClass[1024];
            this.features = new EStructuralFeature[1024][];
            this.featureKinds = new int[1024][];
            if (elementHandler != null) {
                this.featureClassifierPair = new FeatureClassifierPair();
                this.substitutionGroupMap = new HashMap<FeatureClassifierPair, EStructuralFeature>();
            }
        }

        public EClass getDocumentRoot(EPackage epackage) {
            int i = 0;
            while (i < this.docRoots.size()) {
                if (this.docRoots.get(i) == epackage) {
                    return (EClass)this.docRoots.get(++i);
                }
                i += 2;
            }
            this.docRoots.add((EObject)epackage);
            EClass docRoot = this.extendedMetaData.getDocumentRoot(epackage);
            this.docRoots.add((EObject)docRoot);
            return docRoot;
        }

        public EStructuralFeature[] getFeatures(EClass cls) {
            int index = this.getIndex(cls);
            EClass c = this.classes[index];
            if (c == cls) {
                return this.features[index];
            }
            EStructuralFeature[] featureList = this.listFeatures(cls);
            if (c == null) {
                this.classes[index] = cls;
                this.features[index] = featureList;
                this.featureKinds[index] = this.listKinds(featureList);
            }
            return featureList;
        }

        public int[] getKinds(EClass cls, EStructuralFeature[] featureList) {
            int index = this.getIndex(cls);
            EClass c = this.classes[index];
            if (c == cls) {
                return this.featureKinds[index];
            }
            int[] kindsList = this.listKinds(featureList);
            if (c == null) {
                this.classes[index] = cls;
                this.features[index] = featureList;
                this.featureKinds[index] = kindsList;
            }
            return kindsList;
        }

        public EStructuralFeature getSubstitutionGroup(EStructuralFeature eStructuralFeature, EClassifier eClassifier) {
            if (this.elementHandler == null) {
                return null;
            }
            this.featureClassifierPair.eStructuralFeature = eStructuralFeature;
            this.featureClassifierPair.eClassifier = eClassifier;
            EStructuralFeature result = this.substitutionGroupMap.get(this.featureClassifierPair);
            if (result == NULL_FEATURE) {
                result = null;
            } else {
                result = this.elementHandler.getSubstitutionGroup(this.extendedMetaData, eStructuralFeature, eClassifier);
                this.substitutionGroupMap.put(this.featureClassifierPair, result == null ? NULL_FEATURE : result);
                this.featureClassifierPair = new FeatureClassifierPair();
            }
            return result;
        }

        public EStructuralFeature getRoot(EClassifier eClassifier) {
            if (this.elementHandler == null) {
                return null;
            }
            this.featureClassifierPair.eStructuralFeature = NULL_FEATURE;
            this.featureClassifierPair.eClassifier = eClassifier;
            EStructuralFeature result = this.substitutionGroupMap.get(this.featureClassifierPair);
            if (result == NULL_FEATURE) {
                result = null;
            } else {
                result = this.elementHandler.getRoot(this.extendedMetaData, eClassifier);
                this.substitutionGroupMap.put(this.featureClassifierPair, result == null ? NULL_FEATURE : result);
                this.featureClassifierPair = new FeatureClassifierPair();
            }
            return result;
        }

        protected int getIndex(EClass cls) {
            String name = cls.getInstanceClassName();
            int index = 0;
            index = name != null ? name.hashCode() & 0x3FF : cls.hashCode() >> 10 & 0x3FF;
            return index;
        }

        protected EStructuralFeature[] listFeatures(EClass cls) {
            if (this.extendedMetaData != null) {
                ArrayList f = new ArrayList();
                f.addAll(cls.getEAllStructuralFeatures());
                List orderedElements = this.extendedMetaData.getAllElements(cls);
                f.removeAll(orderedElements);
                f.addAll(orderedElements);
                return f.toArray(new EStructuralFeature[f.size()]);
            }
            EList f = this.map == null ? cls.getEAllStructuralFeatures() : this.map.getFeatures(cls);
            return f.toArray(new EStructuralFeature[f.size()]);
        }

        protected int[] listKinds(EStructuralFeature[] featureList) {
            int[] kinds = new int[featureList.length];
            int i = featureList.length - 1;
            while (i >= 0) {
                kinds[i] = this.featureKind(featureList[i]);
                --i;
            }
            return kinds;
        }

        protected int featureKind(EStructuralFeature f) {
            if (f.isTransient()) {
                return 0;
            }
            boolean isMany = f.isMany();
            boolean isUnsettable = f.isUnsettable();
            if (f instanceof EReference) {
                XMLResource.XMLInfo info;
                EReference r = (EReference)f;
                if (r.isContainment()) {
                    return isMany ? (isUnsettable ? 11 : 7) : (isUnsettable ? 10 : 6);
                }
                EReference opposite = r.getEOpposite();
                if (opposite != null && opposite.isContainment()) {
                    return 0;
                }
                if (this.map != null && (info = this.map.getInfo((ENamedElement)f)) != null && info.getXMLRepresentation() == 0) {
                    return isMany ? 16 : (r.isUnsettable() ? 15 : 14);
                }
                if (this.extendedMetaData != null) {
                    switch (this.extendedMetaData.getFeatureKind(f)) {
                        case 2: {
                            return r.isResolveProxies() ? (isMany ? 23 : 22) : (isMany ? 25 : 24);
                        }
                        case 1: {
                            if (f == XMLTypePackage.Literals.SIMPLE_ANY_TYPE__INSTANCE_TYPE) {
                                return 0;
                            }
                        }
                        case 4: {
                            return r.isResolveProxies() ? (isMany ? 16 : (r.isUnsettable() ? 15 : 14)) : (isMany ? 19 : (r.isUnsettable() ? 18 : 17));
                        }
                    }
                }
                return isMany ? (isUnsettable ? 13 : 9) : (isUnsettable ? 12 : 8);
            }
            EDataType d = (EDataType)f.getEType();
            if (!d.isSerializable() && d != EcorePackage.Literals.EFEATURE_MAP_ENTRY) {
                return 0;
            }
            if (d.getInstanceClass() == FeatureMap.Entry.class) {
                return this.extendedMetaData != null && this.extendedMetaData.getFeatureKind(f) == 3 ? 20 : 21;
            }
            if (this.extendedMetaData != null) {
                switch (this.extendedMetaData.getFeatureKind(f)) {
                    case 1: {
                        return 2;
                    }
                    case 4: {
                        return f.isMany() ? 5 : 2;
                    }
                    case 2: {
                        return f.isMany() ? 26 : 1;
                    }
                }
            }
            if (isMany) {
                return 5;
            }
            if (isUnsettable && this.map == null) {
                return 4;
            }
            if (this.map == null) {
                return 1;
            }
            XMLResource.XMLInfo info = this.map.getInfo((ENamedElement)f);
            if (info != null && info.getXMLRepresentation() == 0) {
                return 2;
            }
            if (info != null && info.getXMLRepresentation() == 2) {
                return 3;
            }
            if (isUnsettable) {
                return 4;
            }
            return 1;
        }

        protected static final class FeatureClassifierPair {
            EStructuralFeature eStructuralFeature;
            EClassifier eClassifier;

            protected FeatureClassifierPair() {
            }

            public boolean equals(Object o) {
                if (o == this) {
                    return true;
                }
                if (o instanceof FeatureClassifierPair) {
                    FeatureClassifierPair featureClassifierPair = (FeatureClassifierPair)o;
                    return this.eStructuralFeature == featureClassifierPair.eStructuralFeature && this.eClassifier == featureClassifierPair.eClassifier;
                }
                return false;
            }

            public int hashCode() {
                return this.eStructuralFeature.hashCode() ^ this.eClassifier.hashCode();
            }
        }
    }

    protected class XMLTypeInfoImpl
    implements XMLSave.XMLTypeInfo {
        protected XMLTypeInfoImpl() {
        }

        public boolean shouldSaveType(EClass objectType, EClassifier featureType, EStructuralFeature feature) {
            return objectType != featureType && objectType != XMLSaveImpl.this.anyType;
        }

        public boolean shouldSaveType(EClass objectType, EClass featureType, EStructuralFeature feature) {
            return objectType != featureType && (featureType.isAbstract() || feature.getEGenericType().getETypeParameter() != null);
        }
    }
}

