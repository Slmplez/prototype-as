/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xml.type.AnyType
 */
package org.eclipse.emf.ecore.xmi;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.DOMHelper;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLResource
extends Resource {
    public static final String OPTION_USE_PARSER_POOL = "USE_PARSER_POOL";
    public static final String OPTION_USE_XML_NAME_TO_FEATURE_MAP = "USE_XML_NAME_TO_FEATURE_MAP";
    public static final String OPTION_USE_CACHED_LOOKUP_TABLE = "USE_CACHED_LOOKUP_TABLE";
    public static final String OPTION_USE_DEPRECATED_METHODS = "USE_DEPRECATED_METHODS";
    public static final String OPTION_CONFIGURATION_CACHE = "CONFIGURATION_CACHE";
    public static final String OPTION_SAVE_TYPE_INFORMATION = "SAVE_TYPE_INFORMATION";
    public static final String OPTION_PARSER_FEATURES = "PARSER_FEATURES";
    public static final String OPTION_PARSER_PROPERTIES = "PARSER_PROPERTIES";
    public static final String OPTION_USE_LEXICAL_HANDLER = "USE_LEXICAL_HANDLER";
    public static final String OPTION_DOM_USE_NAMESPACES_IN_SCOPE = "DOM_USE_NAMESPACES_IN_SCOPE";
    public static final String OPTION_EXTENDED_META_DATA = "EXTENDED_META_DATA";
    public static final String OPTION_ANY_TYPE = "ANY_TYPE";
    public static final String OPTION_ANY_SIMPLE_TYPE = "ANY_SIMPLE_TYPE";
    public static final String OPTION_XML_MAP = "XML_MAP";
    public static final String OPTION_USE_ENCODED_ATTRIBUTE_STYLE = "USE_ENCODED_ATTRIBUTE_STYLE";
    public static final String OPTION_FORMATTED = "FORMATTED";
    public static final String OPTION_LINE_WIDTH = "LINE_WIDTH";
    public static final String OPTION_DECLARE_XML = "DECLARE_XML";
    public static final String OPTION_KEEP_DEFAULT_CONTENT = "KEEP_DEFAULT_CONTENT";
    public static final String OPTION_SAVE_DOCTYPE = "SAVE_DOCTYPE";
    public static final String OPTION_RESOURCE_ENTITY_HANDLER = "RESOURCE_ENTITY_HANDLER";
    public static final String OPTION_SKIP_ESCAPE = "SKIP_ESCAPE";
    public static final String OPTION_SKIP_ESCAPE_URI = "SKIP_ESCAPE_URI";
    public static final String OPTION_PROCESS_DANGLING_HREF = "PROCESS_DANGLING_HREF";
    public static final String OPTION_PROCESS_DANGLING_HREF_THROW = "THROW";
    public static final String OPTION_PROCESS_DANGLING_HREF_DISCARD = "DISCARD";
    public static final String OPTION_PROCESS_DANGLING_HREF_RECORD = "RECORD";
    public static final String OPTION_RECORD_UNKNOWN_FEATURE = "RECORD_UNKNOWN_FEATURE";
    public static final String OPTION_LAX_FEATURE_PROCESSING = "LAX_FEATURE_PROCESSING";
    public static final String OPTION_LAX_WILDCARD_PROCESSING = "LAX_WILDCARD_PROCESSING";
    public static final String OPTION_XML_OPTIONS = "XML_OPTIONS";
    public static final String OPTION_DISABLE_NOTIFY = "DISABLE_NOTIFY";
    public static final String OPTION_SCHEMA_LOCATION = "SCHEMA_LOCATION";
    public static final String OPTION_SCHEMA_LOCATION_IMPLEMENTATION = "SCHEMA_LOCATION_IMPLEMENTATION";
    public static final String OPTION_ENCODING = "ENCODING";
    public static final String OPTION_XML_VERSION = "XML_VERSION";
    public static final String OPTION_RECORD_ANY_TYPE_NAMESPACE_DECLARATIONS = "RECORD_ANY_TYPE_NAMESPACE_DECLARATIONS";
    public static final String OPTION_FLUSH_THRESHOLD = "FLUSH_THRESHOLD";
    public static final String OPTION_USE_FILE_BUFFER = "USE_FILE_BUFFER";
    public static final String OPTION_DEFER_IDREF_RESOLUTION = "DEFER_IDREF_RESOLUTION";
    public static final String OPTION_ROOT_OBJECTS = "ROOT_OBJECTS";
    public static final String OPTION_RESOURCE_HANDLER = "RESOURCE_HANDLER";
    public static final String OPTION_DEFER_ATTACHMENT = "DEFER_ATTACHMENT";
    public static final String OPTION_URI_HANDLER = "URI_HANDLER";
    public static final String OPTION_ELEMENT_HANDLER = "ELEMENT_HANDLER";
    public static final String OPTION_SUPPRESS_DOCUMENT_ROOT = "SUPPRESS_DOCUMENT_ROOT";
    public static final String OPTION_ESCAPE_USING_CDATA = "ESCAPE_USING_CDATA";
    public static final String OPTION_BINARY = "BINARY";
    public static final String OPTION_PROXY_ATTRIBUTES = "PROXY_ATTRIBUTES";
    public static final String HREF = "href";
    public static final String NIL = "nil";
    public static final String TYPE = "type";
    public static final String SCHEMA_LOCATION = "schemaLocation";
    public static final String NO_NAMESPACE_SCHEMA_LOCATION = "noNamespaceSchemaLocation";
    public static final String XML_NS = "xmlns";
    public static final String XSI_NS = "xsi";
    public static final String XSI_URI = "http://www.w3.org/2001/XMLSchema-instance";
    public static final String XML_SCHEMA_URI = "http://www.w3.org/2001/XMLSchema";

    public boolean useZip();

    public void setUseZip(boolean var1);

    public Map<Object, Object> getDefaultSaveOptions();

    public Map<Object, Object> getDefaultLoadOptions();

    public String getPublicId();

    public String getSystemId();

    public void setDoctypeInfo(String var1, String var2);

    public String getEncoding();

    public void setEncoding(String var1);

    public String getXMLVersion();

    public void setXMLVersion(String var1);

    @Deprecated
    public Map<String, EObject> getIDToEObjectMap();

    @Deprecated
    public Map<EObject, String> getEObjectToIDMap();

    public String getID(EObject var1);

    public void setID(EObject var1, String var2);

    public Map<EObject, AnyType> getEObjectToExtensionMap();

    public Document save(Document var1, Map<?, ?> var2, DOMHandler var3);

    public void save(Writer var1, Map<?, ?> var2) throws IOException;

    public DOMHelper getDOMHelper();

    public void load(Node var1, Map<?, ?> var2) throws IOException;

    public void load(InputSource var1, Map<?, ?> var2) throws IOException;

    public static interface ElementHandler {
        public EStructuralFeature getRoot(ExtendedMetaData var1, EClassifier var2);

        public EStructuralFeature getSubstitutionGroup(ExtendedMetaData var1, EStructuralFeature var2, EClassifier var3);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ResourceEntityHandler {
        public void reset();

        public void handleEntity(String var1, String var2);

        public String getEntityName(String var1);

        public Map<String, String> getNameToValueMap();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ResourceHandler {
        public void preLoad(XMLResource var1, InputStream var2, Map<?, ?> var3);

        public void postLoad(XMLResource var1, InputStream var2, Map<?, ?> var3);

        public void preSave(XMLResource var1, OutputStream var2, Map<?, ?> var3);

        public void postSave(XMLResource var1, OutputStream var2, Map<?, ?> var3);
    }

    public static interface URIHandler {
        public void setBaseURI(URI var1);

        public URI resolve(URI var1);

        public URI deresolve(URI var1);
    }

    public static interface XMLInfo {
        public static final int UNSPECIFIED = -1;
        public static final int ELEMENT = 0;
        public static final int ATTRIBUTE = 1;
        public static final int CONTENT = 2;

        public int getXMLRepresentation();

        public void setXMLRepresentation(int var1);

        public void setTargetNamespace(String var1);

        public String getTargetNamespace();

        public String getName();

        public void setName(String var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface XMLMap {
        public void add(ENamedElement var1, XMLInfo var2);

        public XMLInfo getInfo(ENamedElement var1);

        public void setNoNamespacePackage(EPackage var1);

        public EPackage getNoNamespacePackage();

        public void setIDAttributeName(String var1);

        public String getIDAttributeName();

        public EClassifier getClassifier(String var1, String var2);

        public EStructuralFeature getFeature(EClass var1, String var2, String var3);

        public List<EStructuralFeature> getFeatures(EClass var1);
    }
}

