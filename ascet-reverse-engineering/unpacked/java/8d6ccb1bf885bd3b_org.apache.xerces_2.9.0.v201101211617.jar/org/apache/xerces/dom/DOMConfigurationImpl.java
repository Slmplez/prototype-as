/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.Vector;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DOMStringListImpl;
import org.apache.xerces.dom.ObjectFactory;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.dv.DTDDVFactory;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMErrorHandlerWrapper;
import org.apache.xerces.util.MessageFormatter;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSResourceResolver;

public class DOMConfigurationImpl
extends ParserConfigurationSettings
implements XMLParserConfiguration,
DOMConfiguration {
    protected static final String XML11_DATATYPE_VALIDATOR_FACTORY = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl";
    protected static final String XERCES_VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String XERCES_NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String SCHEMA = "http://apache.org/xml/features/validation/schema";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SEND_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    protected static final String DISALLOW_DOCTYPE_DECL_FEATURE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String BALANCE_SYNTAX_TREES = "http://apache.org/xml/features/validation/balance-syntax-trees";
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String XML_STRING = "http://xml.org/sax/properties/xml-string";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String DTD_VALIDATOR_PROPERTY = "http://apache.org/xml/properties/internal/validator/dtd";
    protected static final String DTD_VALIDATOR_FACTORY_PROPERTY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    XMLDocumentHandler fDocumentHandler;
    protected short features = 0;
    protected static final short NAMESPACES = 1;
    protected static final short DTNORMALIZATION = 2;
    protected static final short ENTITIES = 4;
    protected static final short CDATA = 8;
    protected static final short SPLITCDATA = 16;
    protected static final short COMMENTS = 32;
    protected static final short VALIDATE = 64;
    protected static final short PSVI = 128;
    protected static final short WELLFORMED = 256;
    protected static final short NSDECL = 512;
    protected static final short INFOSET_TRUE_PARAMS = 801;
    protected static final short INFOSET_FALSE_PARAMS = 14;
    protected static final short INFOSET_MASK = 815;
    protected SymbolTable fSymbolTable;
    protected ArrayList fComponents;
    protected ValidationManager fValidationManager;
    protected Locale fLocale;
    protected XMLErrorReporter fErrorReporter;
    protected final DOMErrorHandlerWrapper fErrorHandlerWrapper = new DOMErrorHandlerWrapper();
    protected DTDDVFactory fCurrentDVFactory;
    protected DTDDVFactory fDatatypeValidatorFactory;
    protected DTDDVFactory fXML11DatatypeFactory;
    private String fSchemaLocation = null;
    private DOMStringList fRecognizedParameters;

    protected DOMConfigurationImpl() {
        this(null, null);
    }

    protected DOMConfigurationImpl(SymbolTable symbolTable) {
        this(symbolTable, null);
    }

    protected DOMConfigurationImpl(SymbolTable symbolTable, XMLComponentManager xMLComponentManager) {
        super(xMLComponentManager);
        MessageFormatter messageFormatter;
        this.fRecognizedFeatures = new ArrayList();
        this.fRecognizedProperties = new ArrayList();
        this.fFeatures = new HashMap();
        this.fProperties = new HashMap();
        String[] stringArray = new String[]{XERCES_VALIDATION, XERCES_NAMESPACES, SCHEMA, SCHEMA_FULL_CHECKING, DYNAMIC_VALIDATION, NORMALIZE_DATA, SCHEMA_ELEMENT_DEFAULT, SEND_PSVI, GENERATE_SYNTHETIC_ANNOTATIONS, VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, USE_GRAMMAR_POOL_ONLY, DISALLOW_DOCTYPE_DECL_FEATURE, BALANCE_SYNTAX_TREES, WARN_ON_DUPLICATE_ATTDEF, "http://apache.org/xml/features/internal/parser-settings"};
        this.addRecognizedFeatures(stringArray);
        this.setFeature(XERCES_VALIDATION, false);
        this.setFeature(SCHEMA, false);
        this.setFeature(SCHEMA_FULL_CHECKING, false);
        this.setFeature(DYNAMIC_VALIDATION, false);
        this.setFeature(NORMALIZE_DATA, false);
        this.setFeature(SCHEMA_ELEMENT_DEFAULT, false);
        this.setFeature(XERCES_NAMESPACES, true);
        this.setFeature(SEND_PSVI, true);
        this.setFeature(GENERATE_SYNTHETIC_ANNOTATIONS, false);
        this.setFeature(VALIDATE_ANNOTATIONS, false);
        this.setFeature(HONOUR_ALL_SCHEMALOCATIONS, false);
        this.setFeature(USE_GRAMMAR_POOL_ONLY, false);
        this.setFeature(DISALLOW_DOCTYPE_DECL_FEATURE, false);
        this.setFeature(BALANCE_SYNTAX_TREES, false);
        this.setFeature(WARN_ON_DUPLICATE_ATTDEF, false);
        this.setFeature("http://apache.org/xml/features/internal/parser-settings", true);
        String[] stringArray2 = new String[]{XML_STRING, SYMBOL_TABLE, ERROR_HANDLER, ENTITY_RESOLVER, ERROR_REPORTER, ENTITY_MANAGER, VALIDATION_MANAGER, GRAMMAR_POOL, JAXP_SCHEMA_SOURCE, JAXP_SCHEMA_LANGUAGE, SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, DTD_VALIDATOR_PROPERTY, DTD_VALIDATOR_FACTORY_PROPERTY};
        this.addRecognizedProperties(stringArray2);
        this.features = (short)(this.features | 1);
        this.features = (short)(this.features | 4);
        this.features = (short)(this.features | 0x20);
        this.features = (short)(this.features | 8);
        this.features = (short)(this.features | 0x10);
        this.features = (short)(this.features | 0x100);
        this.features = (short)(this.features | 0x200);
        if (symbolTable == null) {
            symbolTable = new SymbolTable();
        }
        this.fSymbolTable = symbolTable;
        this.fComponents = new ArrayList();
        this.setProperty(SYMBOL_TABLE, this.fSymbolTable);
        this.fErrorReporter = new XMLErrorReporter();
        this.setProperty(ERROR_REPORTER, this.fErrorReporter);
        this.addComponent(this.fErrorReporter);
        this.fDatatypeValidatorFactory = DTDDVFactory.getInstance();
        this.fXML11DatatypeFactory = DTDDVFactory.getInstance(XML11_DATATYPE_VALIDATOR_FACTORY);
        this.fCurrentDVFactory = this.fDatatypeValidatorFactory;
        this.setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, this.fCurrentDVFactory);
        XMLEntityManager xMLEntityManager = new XMLEntityManager();
        this.setProperty(ENTITY_MANAGER, xMLEntityManager);
        this.addComponent(xMLEntityManager);
        this.fValidationManager = this.createValidationManager();
        this.setProperty(VALIDATION_MANAGER, this.fValidationManager);
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            messageFormatter = new XMLMessageFormatter();
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", messageFormatter);
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", messageFormatter);
        }
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            messageFormatter = null;
            try {
                messageFormatter = (MessageFormatter)ObjectFactory.newInstance("org.apache.xerces.impl.xs.XSMessageFormatter", ObjectFactory.findClassLoader(), true);
            }
            catch (Exception exception) {
                // empty catch block
            }
            if (messageFormatter != null) {
                this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", messageFormatter);
            }
        }
        try {
            this.setLocale(Locale.getDefault());
        }
        catch (XNIException xNIException) {
            // empty catch block
        }
    }

    public void parse(XMLInputSource xMLInputSource) throws XNIException, IOException {
    }

    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
    }

    public XMLDTDHandler getDTDHandler() {
        return null;
    }

    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
    }

    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return null;
    }

    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.fProperties.put(ENTITY_RESOLVER, xMLEntityResolver);
    }

    public XMLEntityResolver getEntityResolver() {
        return (XMLEntityResolver)this.fProperties.get(ENTITY_RESOLVER);
    }

    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        if (xMLErrorHandler != null) {
            this.fProperties.put(ERROR_HANDLER, xMLErrorHandler);
        }
    }

    public XMLErrorHandler getErrorHandler() {
        return (XMLErrorHandler)this.fProperties.get(ERROR_HANDLER);
    }

    public boolean getFeature(String string) throws XMLConfigurationException {
        if (string.equals("http://apache.org/xml/features/internal/parser-settings")) {
            return true;
        }
        return super.getFeature(string);
    }

    public void setFeature(String string, boolean bl) throws XMLConfigurationException {
        super.setFeature(string, bl);
    }

    public void setProperty(String string, Object object) throws XMLConfigurationException {
        super.setProperty(string, object);
    }

    public void setLocale(Locale locale) throws XNIException {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
    }

    public Locale getLocale() {
        return this.fLocale;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setParameter(String string, Object object) throws DOMException {
        boolean bl = true;
        if (object instanceof Boolean) {
            boolean bl2 = (Boolean)object;
            if (string.equalsIgnoreCase("comments")) {
                this.features = bl2 ? (short)(this.features | 0x20) : (short)(this.features & 0xFFFFFFDF);
            } else if (string.equalsIgnoreCase("datatype-normalization")) {
                this.setFeature(NORMALIZE_DATA, bl2);
                short s = this.features = bl2 ? (short)(this.features | 2) : (short)(this.features & 0xFFFFFFFD);
                if (bl2) {
                    this.features = (short)(this.features | 0x40);
                }
            } else if (string.equalsIgnoreCase("namespaces")) {
                this.features = bl2 ? (short)(this.features | 1) : (short)(this.features & 0xFFFFFFFE);
            } else if (string.equalsIgnoreCase("cdata-sections")) {
                this.features = bl2 ? (short)(this.features | 8) : (short)(this.features & 0xFFFFFFF7);
            } else if (string.equalsIgnoreCase("entities")) {
                this.features = bl2 ? (short)(this.features | 4) : (short)(this.features & 0xFFFFFFFB);
            } else if (string.equalsIgnoreCase("split-cdata-sections")) {
                this.features = bl2 ? (short)(this.features | 0x10) : (short)(this.features & 0xFFFFFFEF);
            } else if (string.equalsIgnoreCase("validate")) {
                this.features = bl2 ? (short)(this.features | 0x40) : (short)(this.features & 0xFFFFFFBF);
            } else if (string.equalsIgnoreCase("well-formed")) {
                this.features = bl2 ? (short)(this.features | 0x100) : (short)(this.features & 0xFFFFFEFF);
            } else if (string.equalsIgnoreCase("namespace-declarations")) {
                this.features = bl2 ? (short)(this.features | 0x200) : (short)(this.features & 0xFFFFFDFF);
            } else if (string.equalsIgnoreCase("infoset")) {
                if (bl2) {
                    this.features = (short)(this.features | 0x321);
                    this.features = (short)(this.features & 0xFFFFFFF1);
                    this.setFeature(NORMALIZE_DATA, false);
                }
            } else if (string.equalsIgnoreCase("normalize-characters") || string.equalsIgnoreCase("canonical-form") || string.equalsIgnoreCase("validate-if-schema") || string.equalsIgnoreCase("check-character-normalization")) {
                if (bl2) {
                    String string2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{string});
                    throw new DOMException(9, string2);
                }
            } else if (string.equalsIgnoreCase("element-content-whitespace")) {
                if (!bl2) {
                    String string3 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{string});
                    throw new DOMException(9, string3);
                }
            } else if (string.equalsIgnoreCase(SEND_PSVI)) {
                if (!bl2) {
                    String string4 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{string});
                    throw new DOMException(9, string4);
                }
            } else if (string.equalsIgnoreCase("psvi")) {
                this.features = bl2 ? (short)(this.features | 0x80) : (short)(this.features & 0xFFFFFF7F);
            } else {
                bl = false;
            }
        }
        if (bl) {
            if (object instanceof Boolean) return;
        }
        bl = true;
        if (string.equalsIgnoreCase("error-handler")) {
            if (!(object instanceof DOMErrorHandler) && object != null) {
                String string5 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
                throw new DOMException(17, string5);
            }
            this.fErrorHandlerWrapper.setErrorHandler((DOMErrorHandler)object);
            this.setErrorHandler(this.fErrorHandlerWrapper);
            return;
        }
        if (string.equalsIgnoreCase("resource-resolver")) {
            if (!(object instanceof LSResourceResolver) && object != null) {
                String string6 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
                throw new DOMException(17, string6);
            }
            try {
                this.setEntityResolver(new DOMEntityResolverWrapper((LSResourceResolver)object));
                return;
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                return;
            }
        }
        if (string.equalsIgnoreCase("schema-location")) {
            if (!(object instanceof String) && object != null) {
                String string7 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
                throw new DOMException(17, string7);
            }
            try {
                if (object == null) {
                    this.fSchemaLocation = null;
                    this.setProperty(JAXP_SCHEMA_SOURCE, null);
                    return;
                }
                this.fSchemaLocation = (String)object;
                StringTokenizer stringTokenizer = new StringTokenizer(this.fSchemaLocation, " \n\t\r");
                if (!stringTokenizer.hasMoreTokens()) {
                    this.setProperty(JAXP_SCHEMA_SOURCE, new String[]{(String)object});
                    return;
                }
                ArrayList<String> arrayList = new ArrayList<String>();
                arrayList.add(stringTokenizer.nextToken());
                while (true) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        this.setProperty(JAXP_SCHEMA_SOURCE, arrayList.toArray(new String[arrayList.size()]));
                        return;
                    }
                    arrayList.add(stringTokenizer.nextToken());
                }
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                return;
            }
        }
        if (string.equalsIgnoreCase("schema-type")) {
            if (!(object instanceof String) && object != null) {
                String string8 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
                throw new DOMException(17, string8);
            }
            try {
                if (object == null) {
                    this.setProperty(JAXP_SCHEMA_LANGUAGE, null);
                    return;
                }
                if (object.equals(Constants.NS_XMLSCHEMA)) {
                    this.setProperty(JAXP_SCHEMA_LANGUAGE, Constants.NS_XMLSCHEMA);
                    return;
                }
                if (!object.equals(Constants.NS_DTD)) return;
                this.setProperty(JAXP_SCHEMA_LANGUAGE, Constants.NS_DTD);
                return;
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                return;
            }
        }
        if (string.equalsIgnoreCase(ENTITY_RESOLVER)) {
            if (!(object instanceof XMLEntityResolver) && object != null) {
                String string9 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
                throw new DOMException(17, string9);
            }
            try {
                this.setEntityResolver((XMLEntityResolver)object);
                return;
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                return;
            }
        }
        if (string.equalsIgnoreCase(SYMBOL_TABLE)) {
            if (object instanceof SymbolTable) {
                this.setProperty(SYMBOL_TABLE, object);
                return;
            }
            String string10 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
            throw new DOMException(17, string10);
        }
        if (!string.equalsIgnoreCase(GRAMMAR_POOL)) {
            String string11 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{string});
            throw new DOMException(8, string11);
        }
        if (!(object instanceof XMLGrammarPool) && object != null) {
            String string12 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{string});
            throw new DOMException(17, string12);
        }
        this.setProperty(GRAMMAR_POOL, object);
    }

    public Object getParameter(String string) throws DOMException {
        if (string.equalsIgnoreCase("comments")) {
            return (this.features & 0x20) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("namespaces")) {
            return (this.features & 1) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("datatype-normalization")) {
            return (this.features & 2) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("cdata-sections")) {
            return (this.features & 8) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("entities")) {
            return (this.features & 4) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("split-cdata-sections")) {
            return (this.features & 0x10) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("validate")) {
            return (this.features & 0x40) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("well-formed")) {
            return (this.features & 0x100) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("namespace-declarations")) {
            return (this.features & 0x200) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("infoset")) {
            return (this.features & 0x32F) == 801 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("normalize-characters") || string.equalsIgnoreCase("canonical-form") || string.equalsIgnoreCase("validate-if-schema") || string.equalsIgnoreCase("check-character-normalization")) {
            return Boolean.FALSE;
        }
        if (string.equalsIgnoreCase(SEND_PSVI)) {
            return Boolean.TRUE;
        }
        if (string.equalsIgnoreCase("psvi")) {
            return (this.features & 0x80) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("element-content-whitespace")) {
            return Boolean.TRUE;
        }
        if (string.equalsIgnoreCase("error-handler")) {
            return this.fErrorHandlerWrapper.getErrorHandler();
        }
        if (string.equalsIgnoreCase("resource-resolver")) {
            XMLEntityResolver xMLEntityResolver = this.getEntityResolver();
            if (xMLEntityResolver != null && xMLEntityResolver instanceof DOMEntityResolverWrapper) {
                return ((DOMEntityResolverWrapper)xMLEntityResolver).getEntityResolver();
            }
            return null;
        }
        if (string.equalsIgnoreCase("schema-type")) {
            return this.getProperty(JAXP_SCHEMA_LANGUAGE);
        }
        if (string.equalsIgnoreCase("schema-location")) {
            return this.fSchemaLocation;
        }
        if (string.equalsIgnoreCase(ENTITY_RESOLVER)) {
            return this.getEntityResolver();
        }
        if (string.equalsIgnoreCase(SYMBOL_TABLE)) {
            return this.getProperty(SYMBOL_TABLE);
        }
        if (string.equalsIgnoreCase(GRAMMAR_POOL)) {
            return this.getProperty(GRAMMAR_POOL);
        }
        String string2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{string});
        throw new DOMException(8, string2);
    }

    public boolean canSetParameter(String string, Object object) {
        if (object == null) {
            return true;
        }
        if (object instanceof Boolean) {
            if (string.equalsIgnoreCase("comments") || string.equalsIgnoreCase("datatype-normalization") || string.equalsIgnoreCase("cdata-sections") || string.equalsIgnoreCase("entities") || string.equalsIgnoreCase("split-cdata-sections") || string.equalsIgnoreCase("namespaces") || string.equalsIgnoreCase("validate") || string.equalsIgnoreCase("well-formed") || string.equalsIgnoreCase("infoset") || string.equalsIgnoreCase("namespace-declarations")) {
                return true;
            }
            if (string.equalsIgnoreCase("normalize-characters") || string.equalsIgnoreCase("canonical-form") || string.equalsIgnoreCase("validate-if-schema") || string.equalsIgnoreCase("check-character-normalization")) {
                return !object.equals(Boolean.TRUE);
            }
            if (string.equalsIgnoreCase("element-content-whitespace") || string.equalsIgnoreCase(SEND_PSVI)) {
                return object.equals(Boolean.TRUE);
            }
            return false;
        }
        if (string.equalsIgnoreCase("error-handler")) {
            return object instanceof DOMErrorHandler;
        }
        if (string.equalsIgnoreCase("resource-resolver")) {
            return object instanceof LSResourceResolver;
        }
        if (string.equalsIgnoreCase("schema-location")) {
            return object instanceof String;
        }
        if (string.equalsIgnoreCase("schema-type")) {
            return object instanceof String && (object.equals(Constants.NS_XMLSCHEMA) || object.equals(Constants.NS_DTD));
        }
        if (string.equalsIgnoreCase(ENTITY_RESOLVER)) {
            return object instanceof XMLEntityResolver;
        }
        if (string.equalsIgnoreCase(SYMBOL_TABLE)) {
            return object instanceof SymbolTable;
        }
        if (string.equalsIgnoreCase(GRAMMAR_POOL)) {
            return object instanceof XMLGrammarPool;
        }
        return false;
    }

    public DOMStringList getParameterNames() {
        if (this.fRecognizedParameters == null) {
            Vector<String> vector = new Vector<String>();
            vector.add("comments");
            vector.add("datatype-normalization");
            vector.add("cdata-sections");
            vector.add("entities");
            vector.add("split-cdata-sections");
            vector.add("namespaces");
            vector.add("validate");
            vector.add("infoset");
            vector.add("normalize-characters");
            vector.add("canonical-form");
            vector.add("validate-if-schema");
            vector.add("check-character-normalization");
            vector.add("well-formed");
            vector.add("namespace-declarations");
            vector.add("element-content-whitespace");
            vector.add("error-handler");
            vector.add("schema-type");
            vector.add("schema-location");
            vector.add("resource-resolver");
            vector.add(ENTITY_RESOLVER);
            vector.add(GRAMMAR_POOL);
            vector.add(SYMBOL_TABLE);
            vector.add(SEND_PSVI);
            this.fRecognizedParameters = new DOMStringListImpl(vector);
        }
        return this.fRecognizedParameters;
    }

    protected void reset() throws XNIException {
        if (this.fValidationManager != null) {
            this.fValidationManager.reset();
        }
        int n = this.fComponents.size();
        int n2 = 0;
        while (n2 < n) {
            XMLComponent xMLComponent = (XMLComponent)this.fComponents.get(n2);
            xMLComponent.reset(this);
            ++n2;
        }
    }

    protected void checkProperty(String string) throws XMLConfigurationException {
        int n;
        if (string.startsWith("http://xml.org/sax/properties/") && (n = string.length() - "http://xml.org/sax/properties/".length()) == "xml-string".length() && string.endsWith("xml-string")) {
            short s = 1;
            throw new XMLConfigurationException(s, string);
        }
        super.checkProperty(string);
    }

    protected void addComponent(XMLComponent xMLComponent) {
        if (this.fComponents.contains(xMLComponent)) {
            return;
        }
        this.fComponents.add(xMLComponent);
        String[] stringArray = xMLComponent.getRecognizedFeatures();
        this.addRecognizedFeatures(stringArray);
        String[] stringArray2 = xMLComponent.getRecognizedProperties();
        this.addRecognizedProperties(stringArray2);
    }

    protected ValidationManager createValidationManager() {
        return new ValidationManager();
    }

    protected final void setDTDValidatorFactory(String string) {
        if ("1.1".equals(string)) {
            if (this.fCurrentDVFactory != this.fXML11DatatypeFactory) {
                this.fCurrentDVFactory = this.fXML11DatatypeFactory;
                this.setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, this.fCurrentDVFactory);
            }
        } else if (this.fCurrentDVFactory != this.fDatatypeValidatorFactory) {
            this.fCurrentDVFactory = this.fDatatypeValidatorFactory;
            this.setProperty(DTD_VALIDATOR_FACTORY_PROPERTY, this.fCurrentDVFactory);
        }
    }
}

