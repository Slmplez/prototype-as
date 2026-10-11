/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import javax.xml.namespace.QName;
import org.apache.xerces.impl.RevalidationHandler;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.dv.DatatypeException;
import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidatedInfo;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.XSSimpleType;
import org.apache.xerces.impl.validation.ConfigurableValidationState;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.impl.xs.AttributePSVImpl;
import org.apache.xerces.impl.xs.ElementPSVImpl;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.xs.XMLSchemaLoader;
import org.apache.xerces.impl.xs.XSAttributeDecl;
import org.apache.xerces.impl.xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.xs.XSAttributeUseImpl;
import org.apache.xerces.impl.xs.XSComplexTypeDecl;
import org.apache.xerces.impl.xs.XSConstraints;
import org.apache.xerces.impl.xs.XSDDescription;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSGrammarBucket;
import org.apache.xerces.impl.xs.XSNotationDecl;
import org.apache.xerces.impl.xs.XSWildcardDecl;
import org.apache.xerces.impl.xs.identity.Field;
import org.apache.xerces.impl.xs.identity.FieldActivator;
import org.apache.xerces.impl.xs.identity.IdentityConstraint;
import org.apache.xerces.impl.xs.identity.KeyRef;
import org.apache.xerces.impl.xs.identity.Selector;
import org.apache.xerces.impl.xs.identity.UniqueOrKey;
import org.apache.xerces.impl.xs.identity.ValueStore;
import org.apache.xerces.impl.xs.identity.XPathMatcher;
import org.apache.xerces.impl.xs.models.CMBuilder;
import org.apache.xerces.impl.xs.models.CMNodeFactory;
import org.apache.xerces.impl.xs.models.XSCMValidator;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.IntStack;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xs.ShortList;
import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSObjectList;
import org.apache.xerces.xs.XSTypeDefinition;

public class XMLSchemaValidator
implements XMLComponent,
XMLDocumentFilter,
FieldActivator,
RevalidationHandler {
    private static final boolean DEBUG = false;
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SCHEMA_AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String IGNORE_XSI_TYPE = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl";
    protected static final String ID_IDREF_CHECKING = "http://apache.org/xml/features/validation/id-idref-checking";
    protected static final String UNPARSED_ENTITY_CHECKING = "http://apache.org/xml/features/validation/unparsed-entity-checking";
    protected static final String IDENTITY_CONSTRAINT_CHECKING = "http://apache.org/xml/features/validation/identity-constraint-checking";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String ROOT_TYPE_DEF = "http://apache.org/xml/properties/validation/schema/root-type-definition";
    private static final String[] RECOGNIZED_FEATURES = new String[]{"http://xml.org/sax/features/validation", "http://apache.org/xml/features/validation/schema", "http://apache.org/xml/features/validation/dynamic", "http://apache.org/xml/features/validation/schema-full-checking", "http://apache.org/xml/features/allow-java-encodings", "http://apache.org/xml/features/continue-after-fatal-error", "http://apache.org/xml/features/standard-uri-conformant", "http://apache.org/xml/features/generate-synthetic-annotations", "http://apache.org/xml/features/validate-annotations", "http://apache.org/xml/features/honour-all-schemaLocations", "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only", "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl", "http://apache.org/xml/features/validation/id-idref-checking", "http://apache.org/xml/features/validation/identity-constraint-checking", "http://apache.org/xml/features/validation/unparsed-entity-checking"};
    private static final Boolean[] FEATURE_DEFAULTS = new Boolean[]{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    private static final String[] RECOGNIZED_PROPERTIES = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/validation-manager", "http://apache.org/xml/properties/schema/external-schemaLocation", "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation", "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://apache.org/xml/properties/validation/schema/root-type-definition"};
    private static final Object[] PROPERTY_DEFAULTS = new Object[]{null, null, null, null, null, null, null, null, null};
    protected static final int ID_CONSTRAINT_NUM = 1;
    static final XSAttributeDecl XSI_TYPE = SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_TYPE);
    static final XSAttributeDecl XSI_NIL = SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_NIL);
    static final XSAttributeDecl XSI_SCHEMALOCATION = SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_SCHEMALOCATION);
    static final XSAttributeDecl XSI_NONAMESPACESCHEMALOCATION = SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION);
    protected ElementPSVImpl fCurrentPSVI = new ElementPSVImpl();
    protected final AugmentationsImpl fAugmentations = new AugmentationsImpl();
    protected XMLString fDefaultValue;
    protected boolean fDynamicValidation = false;
    protected boolean fSchemaDynamicValidation = false;
    protected boolean fDoValidation = false;
    protected boolean fFullChecking = false;
    protected boolean fNormalizeData = true;
    protected boolean fSchemaElementDefault = true;
    protected boolean fAugPSVI = true;
    protected boolean fIdConstraint = false;
    protected boolean fUseGrammarPoolOnly = false;
    private String fSchemaType = null;
    protected boolean fEntityRef = false;
    protected boolean fInCDATA = false;
    protected SymbolTable fSymbolTable;
    private XMLLocator fLocator;
    protected final XSIErrorReporter fXSIErrorReporter = new XSIErrorReporter();
    protected XMLEntityResolver fEntityResolver;
    protected ValidationManager fValidationManager = null;
    protected ConfigurableValidationState fValidationState = new ConfigurableValidationState();
    protected XMLGrammarPool fGrammarPool;
    protected String fExternalSchemas = null;
    protected String fExternalNoNamespaceSchema = null;
    protected Object fJaxpSchemaSource = null;
    protected final XSDDescription fXSDDescription = new XSDDescription();
    protected final Hashtable fLocationPairs = new Hashtable();
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    static final int INITIAL_STACK_SIZE = 8;
    static final int INC_STACK_SIZE = 8;
    private static final boolean DEBUG_NORMALIZATION = false;
    private final XMLString fEmptyXMLStr = new XMLString(null, 0, -1);
    private static final int BUFFER_SIZE = 20;
    private final XMLString fNormalizedStr = new XMLString();
    private boolean fFirstChunk = true;
    private boolean fTrailing = false;
    private short fWhiteSpace = (short)-1;
    private boolean fUnionType = false;
    private final XSGrammarBucket fGrammarBucket = new XSGrammarBucket();
    private final SubstitutionGroupHandler fSubGroupHandler = new SubstitutionGroupHandler(this.fGrammarBucket);
    private final XSSimpleType fQNameDV = (XSSimpleType)SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");
    private final CMNodeFactory nodeFactory = new CMNodeFactory();
    private final CMBuilder fCMBuilder = new CMBuilder(this.nodeFactory);
    private final XMLSchemaLoader fSchemaLoader;
    private String fValidationRoot;
    private int fSkipValidationDepth;
    private int fNFullValidationDepth;
    private int fNNoneValidationDepth;
    private int fElementDepth;
    private boolean fSubElement;
    private boolean[] fSubElementStack;
    private XSElementDecl fCurrentElemDecl;
    private XSElementDecl[] fElemDeclStack;
    private boolean fNil;
    private boolean[] fNilStack;
    private XSNotationDecl fNotation;
    private XSNotationDecl[] fNotationStack;
    private XSTypeDefinition fCurrentType;
    private XSTypeDefinition[] fTypeStack;
    private XSCMValidator fCurrentCM;
    private XSCMValidator[] fCMStack;
    private int[] fCurrCMState;
    private int[][] fCMStateStack;
    private boolean fStrictAssess;
    private boolean[] fStrictAssessStack;
    private final StringBuffer fBuffer;
    private boolean fAppendBuffer;
    private boolean fSawText;
    private boolean[] fSawTextStack;
    private boolean fSawCharacters;
    private boolean[] fStringContent;
    private final org.apache.xerces.xni.QName fTempQName;
    private QName fRootTypeQName;
    private int fIgnoreXSITypeDepth;
    private boolean fIDCChecking;
    private ValidatedInfo fValidatedInfo;
    private ValidationState fState4XsiType;
    private ValidationState fState4ApplyDefault;
    protected XPathMatcherStack fMatcherStack;
    protected ValueStoreCache fValueStoreCache;

    public String[] getRecognizedFeatures() {
        return (String[])RECOGNIZED_FEATURES.clone();
    }

    public void setFeature(String string, boolean bl) throws XMLConfigurationException {
    }

    public String[] getRecognizedProperties() {
        return (String[])RECOGNIZED_PROPERTIES.clone();
    }

    public void setProperty(String string, Object object) throws XMLConfigurationException {
        if (string.equals(ROOT_TYPE_DEF)) {
            this.fRootTypeQName = (QName)object;
        }
    }

    public Boolean getFeatureDefault(String string) {
        int n = 0;
        while (n < RECOGNIZED_FEATURES.length) {
            if (RECOGNIZED_FEATURES[n].equals(string)) {
                return FEATURE_DEFAULTS[n];
            }
            ++n;
        }
        return null;
    }

    public Object getPropertyDefault(String string) {
        int n = 0;
        while (n < RECOGNIZED_PROPERTIES.length) {
            if (RECOGNIZED_PROPERTIES[n].equals(string)) {
                return PROPERTY_DEFAULTS[n];
            }
            ++n;
        }
        return null;
    }

    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    public void startDocument(XMLLocator xMLLocator, String string, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.fValidationState.setNamespaceSupport(namespaceContext);
        this.fState4XsiType.setNamespaceSupport(namespaceContext);
        this.fState4ApplyDefault.setNamespaceSupport(namespaceContext);
        this.fLocator = xMLLocator;
        this.handleStartDocument(xMLLocator, string);
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.startDocument(xMLLocator, string, namespaceContext, augmentations);
        }
    }

    public void xmlDecl(String string, String string2, String string3, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.xmlDecl(string, string2, string3, augmentations);
        }
    }

    public void doctypeDecl(String string, String string2, String string3, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.doctypeDecl(string, string2, string3, augmentations);
        }
    }

    public void startElement(org.apache.xerces.xni.QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations augmentations2 = this.handleStartElement(qName, xMLAttributes, augmentations);
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.startElement(qName, xMLAttributes, augmentations2);
        }
    }

    public void emptyElement(org.apache.xerces.xni.QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations augmentations2 = this.handleStartElement(qName, xMLAttributes, augmentations);
        this.fDefaultValue = null;
        if (this.fElementDepth != -2) {
            augmentations2 = this.handleEndElement(qName, augmentations2);
        }
        if (this.fDocumentHandler != null) {
            if (!this.fSchemaElementDefault || this.fDefaultValue == null) {
                this.fDocumentHandler.emptyElement(qName, xMLAttributes, augmentations2);
            } else {
                this.fDocumentHandler.startElement(qName, xMLAttributes, augmentations2);
                this.fDocumentHandler.characters(this.fDefaultValue, null);
                this.fDocumentHandler.endElement(qName, augmentations2);
            }
        }
    }

    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        xMLString = this.handleCharacters(xMLString);
        if (this.fDocumentHandler != null) {
            if (this.fNormalizeData && this.fUnionType) {
                if (augmentations != null) {
                    this.fDocumentHandler.characters(this.fEmptyXMLStr, augmentations);
                }
            } else {
                this.fDocumentHandler.characters(xMLString, augmentations);
            }
        }
    }

    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.handleIgnorableWhitespace(xMLString);
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.ignorableWhitespace(xMLString, augmentations);
        }
    }

    public void endElement(org.apache.xerces.xni.QName qName, Augmentations augmentations) throws XNIException {
        this.fDefaultValue = null;
        Augmentations augmentations2 = this.handleEndElement(qName, augmentations);
        if (this.fDocumentHandler != null) {
            if (!this.fSchemaElementDefault || this.fDefaultValue == null) {
                this.fDocumentHandler.endElement(qName, augmentations2);
            } else {
                this.fDocumentHandler.characters(this.fDefaultValue, null);
                this.fDocumentHandler.endElement(qName, augmentations2);
            }
        }
    }

    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = true;
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.startCDATA(augmentations);
        }
    }

    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = false;
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.endCDATA(augmentations);
        }
    }

    public void endDocument(Augmentations augmentations) throws XNIException {
        this.handleEndDocument();
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.endDocument(augmentations);
        }
        this.fLocator = null;
    }

    public boolean characterData(String string, Augmentations augmentations) {
        boolean bl = this.fSawText = this.fSawText || string.length() > 0;
        if (this.fNormalizeData && this.fWhiteSpace != -1 && this.fWhiteSpace != 0) {
            this.normalizeWhitespace(string, this.fWhiteSpace == 2);
            this.fBuffer.append(this.fNormalizedStr.ch, this.fNormalizedStr.offset, this.fNormalizedStr.length);
        } else if (this.fAppendBuffer) {
            this.fBuffer.append(string);
        }
        boolean bl2 = true;
        if (this.fCurrentType != null && this.fCurrentType.getTypeCategory() == 15) {
            XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl)this.fCurrentType;
            if (xSComplexTypeDecl.fContentType == 2) {
                int n = 0;
                while (n < string.length()) {
                    if (!XMLChar.isSpace(string.charAt(n))) {
                        bl2 = false;
                        this.fSawCharacters = true;
                        break;
                    }
                    ++n;
                }
            }
        }
        return bl2;
    }

    public void elementDefault(String string) {
    }

    public void startGeneralEntity(String string, XMLResourceIdentifier xMLResourceIdentifier, String string2, Augmentations augmentations) throws XNIException {
        this.fEntityRef = true;
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.startGeneralEntity(string, xMLResourceIdentifier, string2, augmentations);
        }
    }

    public void textDecl(String string, String string2, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.textDecl(string, string2, augmentations);
        }
    }

    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.comment(xMLString, augmentations);
        }
    }

    public void processingInstruction(String string, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.processingInstruction(string, xMLString, augmentations);
        }
    }

    public void endGeneralEntity(String string, Augmentations augmentations) throws XNIException {
        this.fEntityRef = false;
        if (this.fDocumentHandler != null) {
            this.fDocumentHandler.endGeneralEntity(string, augmentations);
        }
    }

    public XMLSchemaValidator() {
        this.fSchemaLoader = new XMLSchemaLoader(this.fXSIErrorReporter.fErrorReporter, this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder);
        this.fSubElementStack = new boolean[8];
        this.fElemDeclStack = new XSElementDecl[8];
        this.fNilStack = new boolean[8];
        this.fNotationStack = new XSNotationDecl[8];
        this.fTypeStack = new XSTypeDefinition[8];
        this.fCMStack = new XSCMValidator[8];
        this.fCMStateStack = new int[8][];
        this.fStrictAssess = true;
        this.fStrictAssessStack = new boolean[8];
        this.fBuffer = new StringBuffer();
        this.fAppendBuffer = true;
        this.fSawText = false;
        this.fSawTextStack = new boolean[8];
        this.fSawCharacters = false;
        this.fStringContent = new boolean[8];
        this.fTempQName = new org.apache.xerces.xni.QName();
        this.fRootTypeQName = null;
        this.fValidatedInfo = new ValidatedInfo();
        this.fState4XsiType = new ValidationState();
        this.fState4ApplyDefault = new ValidationState();
        this.fMatcherStack = new XPathMatcherStack();
        this.fValueStoreCache = new ValueStoreCache();
        this.fState4XsiType.setExtraChecking(false);
        this.fState4ApplyDefault.setFacetChecking(false);
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean bl;
        boolean bl2;
        this.fIdConstraint = false;
        this.fLocationPairs.clear();
        this.fValidationState.resetIDTables();
        this.nodeFactory.reset(xMLComponentManager);
        this.fSchemaLoader.reset(xMLComponentManager);
        this.fCurrentElemDecl = null;
        this.fCurrentCM = null;
        this.fCurrCMState = null;
        this.fSkipValidationDepth = -1;
        this.fNFullValidationDepth = -1;
        this.fNNoneValidationDepth = -1;
        this.fElementDepth = -1;
        this.fSubElement = false;
        this.fSchemaDynamicValidation = false;
        this.fEntityRef = false;
        this.fInCDATA = false;
        this.fMatcherStack.clear();
        this.fXSIErrorReporter.reset((XMLErrorReporter)xMLComponentManager.getProperty(ERROR_REPORTER));
        try {
            bl2 = xMLComponentManager.getFeature(PARSER_SETTINGS);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            bl2 = true;
        }
        if (!bl2) {
            this.fValidationManager.addValidationState(this.fValidationState);
            XMLSchemaLoader.processExternalHints(this.fExternalSchemas, this.fExternalNoNamespaceSchema, this.fLocationPairs, this.fXSIErrorReporter.fErrorReporter);
            return;
        }
        SymbolTable symbolTable = (SymbolTable)xMLComponentManager.getProperty(SYMBOL_TABLE);
        if (symbolTable != this.fSymbolTable) {
            this.fSymbolTable = symbolTable;
        }
        try {
            this.fDynamicValidation = xMLComponentManager.getFeature(DYNAMIC_VALIDATION);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fDynamicValidation = false;
        }
        if (this.fDynamicValidation) {
            this.fDoValidation = true;
        } else {
            try {
                this.fDoValidation = xMLComponentManager.getFeature(VALIDATION);
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                this.fDoValidation = false;
            }
        }
        if (this.fDoValidation) {
            try {
                this.fDoValidation = xMLComponentManager.getFeature(SCHEMA_VALIDATION);
            }
            catch (XMLConfigurationException xMLConfigurationException) {
                // empty catch block
            }
        }
        try {
            this.fFullChecking = xMLComponentManager.getFeature(SCHEMA_FULL_CHECKING);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fFullChecking = false;
        }
        try {
            this.fNormalizeData = xMLComponentManager.getFeature(NORMALIZE_DATA);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fNormalizeData = false;
        }
        try {
            this.fSchemaElementDefault = xMLComponentManager.getFeature(SCHEMA_ELEMENT_DEFAULT);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fSchemaElementDefault = false;
        }
        try {
            this.fAugPSVI = xMLComponentManager.getFeature(SCHEMA_AUGMENT_PSVI);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fAugPSVI = true;
        }
        try {
            this.fSchemaType = (String)xMLComponentManager.getProperty(JAXP_SCHEMA_LANGUAGE);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fSchemaType = null;
        }
        try {
            this.fUseGrammarPoolOnly = xMLComponentManager.getFeature(USE_GRAMMAR_POOL_ONLY);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fUseGrammarPoolOnly = false;
        }
        this.fEntityResolver = (XMLEntityResolver)xMLComponentManager.getProperty(ENTITY_MANAGER);
        this.fValidationManager = (ValidationManager)xMLComponentManager.getProperty(VALIDATION_MANAGER);
        this.fValidationManager.addValidationState(this.fValidationState);
        this.fValidationState.setSymbolTable(this.fSymbolTable);
        try {
            this.fRootTypeQName = (QName)xMLComponentManager.getProperty(ROOT_TYPE_DEF);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fRootTypeQName = null;
        }
        try {
            bl = xMLComponentManager.getFeature(IGNORE_XSI_TYPE);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            bl = false;
        }
        this.fIgnoreXSITypeDepth = bl ? 0 : -1;
        try {
            this.fIDCChecking = xMLComponentManager.getFeature(IDENTITY_CONSTRAINT_CHECKING);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fIDCChecking = true;
        }
        try {
            this.fValidationState.setIdIdrefChecking(xMLComponentManager.getFeature(ID_IDREF_CHECKING));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fValidationState.setIdIdrefChecking(true);
        }
        try {
            this.fValidationState.setUnparsedEntityChecking(xMLComponentManager.getFeature(UNPARSED_ENTITY_CHECKING));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fValidationState.setUnparsedEntityChecking(true);
        }
        try {
            this.fExternalSchemas = (String)xMLComponentManager.getProperty(SCHEMA_LOCATION);
            this.fExternalNoNamespaceSchema = (String)xMLComponentManager.getProperty(SCHEMA_NONS_LOCATION);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fExternalSchemas = null;
            this.fExternalNoNamespaceSchema = null;
        }
        XMLSchemaLoader.processExternalHints(this.fExternalSchemas, this.fExternalNoNamespaceSchema, this.fLocationPairs, this.fXSIErrorReporter.fErrorReporter);
        try {
            this.fJaxpSchemaSource = xMLComponentManager.getProperty(JAXP_SCHEMA_SOURCE);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fJaxpSchemaSource = null;
        }
        try {
            this.fGrammarPool = (XMLGrammarPool)xMLComponentManager.getProperty(XMLGRAMMAR_POOL);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fGrammarPool = null;
        }
        this.fState4XsiType.setSymbolTable(symbolTable);
        this.fState4ApplyDefault.setSymbolTable(symbolTable);
    }

    public void startValueScopeFor(IdentityConstraint identityConstraint, int n) {
        ValueStoreBase valueStoreBase = this.fValueStoreCache.getValueStoreFor(identityConstraint, n);
        valueStoreBase.startValueScope();
    }

    public XPathMatcher activateField(Field field, int n) {
        ValueStoreBase valueStoreBase = this.fValueStoreCache.getValueStoreFor(field.getIdentityConstraint(), n);
        XPathMatcher xPathMatcher = field.createMatcher(valueStoreBase);
        this.fMatcherStack.addMatcher(xPathMatcher);
        xPathMatcher.startDocumentFragment();
        return xPathMatcher;
    }

    public void endValueScopeFor(IdentityConstraint identityConstraint, int n) {
        ValueStoreBase valueStoreBase = this.fValueStoreCache.getValueStoreFor(identityConstraint, n);
        valueStoreBase.endValueScope();
    }

    private void activateSelectorFor(IdentityConstraint identityConstraint) {
        Selector selector = identityConstraint.getSelector();
        XMLSchemaValidator xMLSchemaValidator = this;
        if (selector == null) {
            return;
        }
        XPathMatcher xPathMatcher = selector.createMatcher(xMLSchemaValidator, this.fElementDepth);
        this.fMatcherStack.addMatcher(xPathMatcher);
        xPathMatcher.startDocumentFragment();
    }

    void ensureStackCapacity() {
        if (this.fElementDepth == this.fElemDeclStack.length) {
            int n = this.fElementDepth + 8;
            boolean[] blArray = new boolean[n];
            System.arraycopy(this.fSubElementStack, 0, blArray, 0, this.fElementDepth);
            this.fSubElementStack = blArray;
            XSElementDecl[] xSElementDeclArray = new XSElementDecl[n];
            System.arraycopy(this.fElemDeclStack, 0, xSElementDeclArray, 0, this.fElementDepth);
            this.fElemDeclStack = xSElementDeclArray;
            blArray = new boolean[n];
            System.arraycopy(this.fNilStack, 0, blArray, 0, this.fElementDepth);
            this.fNilStack = blArray;
            XSNotationDecl[] xSNotationDeclArray = new XSNotationDecl[n];
            System.arraycopy(this.fNotationStack, 0, xSNotationDeclArray, 0, this.fElementDepth);
            this.fNotationStack = xSNotationDeclArray;
            XSTypeDefinition[] xSTypeDefinitionArray = new XSTypeDefinition[n];
            System.arraycopy(this.fTypeStack, 0, xSTypeDefinitionArray, 0, this.fElementDepth);
            this.fTypeStack = xSTypeDefinitionArray;
            XSCMValidator[] xSCMValidatorArray = new XSCMValidator[n];
            System.arraycopy(this.fCMStack, 0, xSCMValidatorArray, 0, this.fElementDepth);
            this.fCMStack = xSCMValidatorArray;
            blArray = new boolean[n];
            System.arraycopy(this.fSawTextStack, 0, blArray, 0, this.fElementDepth);
            this.fSawTextStack = blArray;
            blArray = new boolean[n];
            System.arraycopy(this.fStringContent, 0, blArray, 0, this.fElementDepth);
            this.fStringContent = blArray;
            blArray = new boolean[n];
            System.arraycopy(this.fStrictAssessStack, 0, blArray, 0, this.fElementDepth);
            this.fStrictAssessStack = blArray;
            int[][] nArrayArray = new int[n][];
            System.arraycopy(this.fCMStateStack, 0, nArrayArray, 0, this.fElementDepth);
            this.fCMStateStack = nArrayArray;
        }
    }

    void handleStartDocument(XMLLocator xMLLocator, String string) {
        if (this.fIDCChecking) {
            this.fValueStoreCache.startDocument();
        }
        if (this.fAugPSVI) {
            this.fCurrentPSVI.fGrammars = null;
            this.fCurrentPSVI.fSchemaInformation = null;
        }
    }

    void handleEndDocument() {
        if (this.fIDCChecking) {
            this.fValueStoreCache.endDocument();
        }
    }

    XMLString handleCharacters(XMLString xMLString) {
        if (this.fSkipValidationDepth >= 0) {
            return xMLString;
        }
        boolean bl = this.fSawText = this.fSawText || xMLString.length > 0;
        if (this.fNormalizeData && this.fWhiteSpace != -1 && this.fWhiteSpace != 0) {
            this.normalizeWhitespace(xMLString, this.fWhiteSpace == 2);
            xMLString = this.fNormalizedStr;
        }
        if (this.fAppendBuffer) {
            this.fBuffer.append(xMLString.ch, xMLString.offset, xMLString.length);
        }
        if (this.fCurrentType != null && this.fCurrentType.getTypeCategory() == 15) {
            XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl)this.fCurrentType;
            if (xSComplexTypeDecl.fContentType == 2) {
                int n = xMLString.offset;
                while (n < xMLString.offset + xMLString.length) {
                    if (!XMLChar.isSpace(xMLString.ch[n])) {
                        this.fSawCharacters = true;
                        break;
                    }
                    ++n;
                }
            }
        }
        return xMLString;
    }

    private void normalizeWhitespace(XMLString xMLString, boolean bl) {
        boolean bl2 = bl;
        boolean bl3 = false;
        boolean bl4 = false;
        boolean bl5 = false;
        int n = xMLString.offset + xMLString.length;
        if (this.fNormalizedStr.ch == null || this.fNormalizedStr.ch.length < xMLString.length + 1) {
            this.fNormalizedStr.ch = new char[xMLString.length + 1];
        }
        this.fNormalizedStr.offset = 1;
        this.fNormalizedStr.length = 1;
        int n2 = xMLString.offset;
        while (n2 < n) {
            char c = xMLString.ch[n2];
            if (XMLChar.isSpace(c)) {
                if (!bl2) {
                    this.fNormalizedStr.ch[this.fNormalizedStr.length++] = 32;
                    bl2 = bl;
                }
                if (!bl3) {
                    bl4 = true;
                }
            } else {
                this.fNormalizedStr.ch[this.fNormalizedStr.length++] = c;
                bl2 = false;
                bl3 = true;
            }
            ++n2;
        }
        if (bl2) {
            if (this.fNormalizedStr.length > 1) {
                --this.fNormalizedStr.length;
                bl5 = true;
            } else if (bl4 && !this.fFirstChunk) {
                bl5 = true;
            }
        }
        if (this.fNormalizedStr.length > 1 && !this.fFirstChunk && this.fWhiteSpace == 2) {
            if (this.fTrailing) {
                this.fNormalizedStr.offset = 0;
                this.fNormalizedStr.ch[0] = 32;
            } else if (bl4) {
                this.fNormalizedStr.offset = 0;
                this.fNormalizedStr.ch[0] = 32;
            }
        }
        this.fNormalizedStr.length -= this.fNormalizedStr.offset;
        this.fTrailing = bl5;
        if (bl5 || bl3) {
            this.fFirstChunk = false;
        }
    }

    private void normalizeWhitespace(String string, boolean bl) {
        boolean bl2 = bl;
        int n = string.length();
        if (this.fNormalizedStr.ch == null || this.fNormalizedStr.ch.length < n) {
            this.fNormalizedStr.ch = new char[n];
        }
        this.fNormalizedStr.offset = 0;
        this.fNormalizedStr.length = 0;
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (XMLChar.isSpace(c)) {
                if (!bl2) {
                    this.fNormalizedStr.ch[this.fNormalizedStr.length++] = 32;
                    bl2 = bl;
                }
            } else {
                this.fNormalizedStr.ch[this.fNormalizedStr.length++] = c;
                bl2 = false;
            }
            ++n2;
        }
        if (bl2 && this.fNormalizedStr.length != 0) {
            --this.fNormalizedStr.length;
        }
    }

    void handleIgnorableWhitespace(XMLString xMLString) {
        if (this.fSkipValidationDepth >= 0) {
            return;
        }
    }

    Augmentations handleStartElement(org.apache.xerces.xni.QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) {
        Object object;
        Object object2;
        XSObject xSObject;
        if (this.fElementDepth == -1 && this.fValidationManager.isGrammarFound() && this.fSchemaType == null) {
            this.fSchemaDynamicValidation = true;
        }
        String string = xMLAttributes.getValue(SchemaSymbols.URI_XSI, SchemaSymbols.XSI_SCHEMALOCATION);
        String string2 = xMLAttributes.getValue(SchemaSymbols.URI_XSI, SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION);
        this.storeLocations(string, string2);
        if (this.fSkipValidationDepth >= 0) {
            ++this.fElementDepth;
            if (this.fAugPSVI) {
                augmentations = this.getEmptyAugs(augmentations);
            }
            return augmentations;
        }
        SchemaGrammar schemaGrammar = this.findSchemaGrammar((short)5, qName.uri, null, qName, xMLAttributes);
        Object object3 = null;
        if (this.fCurrentCM != null) {
            object3 = this.fCurrentCM.oneTransition(qName, this.fCurrCMState, this.fSubGroupHandler);
            if (this.fCurrCMState[0] == -1) {
                xSObject = (XSComplexTypeDecl)this.fCurrentType;
                if (xSObject.fParticle != null && ((Vector)(object2 = this.fCurrentCM.whatCanGoHere(this.fCurrCMState))).size() > 0) {
                    object = this.expectedStr((Vector)object2);
                    this.reportSchemaError("cvc-complex-type.2.4.a", new Object[]{qName.rawname, object});
                } else {
                    this.reportSchemaError("cvc-complex-type.2.4.d", new Object[]{qName.rawname});
                }
            }
        }
        if (this.fElementDepth != -1) {
            this.ensureStackCapacity();
            this.fSubElementStack[this.fElementDepth] = true;
            this.fSubElement = false;
            this.fElemDeclStack[this.fElementDepth] = this.fCurrentElemDecl;
            this.fNilStack[this.fElementDepth] = this.fNil;
            this.fNotationStack[this.fElementDepth] = this.fNotation;
            this.fTypeStack[this.fElementDepth] = this.fCurrentType;
            this.fStrictAssessStack[this.fElementDepth] = this.fStrictAssess;
            this.fCMStack[this.fElementDepth] = this.fCurrentCM;
            this.fCMStateStack[this.fElementDepth] = this.fCurrCMState;
            this.fSawTextStack[this.fElementDepth] = this.fSawText;
            this.fStringContent[this.fElementDepth] = this.fSawCharacters;
        }
        ++this.fElementDepth;
        this.fCurrentElemDecl = null;
        xSObject = null;
        this.fCurrentType = null;
        this.fStrictAssess = true;
        this.fNil = false;
        this.fNotation = null;
        this.fBuffer.setLength(0);
        this.fSawText = false;
        this.fSawCharacters = false;
        if (object3 != null) {
            if (object3 instanceof XSElementDecl) {
                this.fCurrentElemDecl = (XSElementDecl)object3;
            } else {
                xSObject = (XSWildcardDecl)object3;
            }
        }
        if (xSObject != null && ((XSWildcardDecl)xSObject).fProcessContents == 2) {
            this.fSkipValidationDepth = this.fElementDepth;
            if (this.fAugPSVI) {
                augmentations = this.getEmptyAugs(augmentations);
            }
            return augmentations;
        }
        if (this.fElementDepth == 0 && this.fRootTypeQName != null) {
            object2 = this.fRootTypeQName.getNamespaceURI();
            if (object2 != null && ((String)object2).equals("")) {
                object2 = null;
            }
            if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(object2)) {
                this.fCurrentType = SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(this.fRootTypeQName.getLocalPart());
            } else {
                object = this.findSchemaGrammar((short)5, (String)object2, null, null, null);
                if (object != null) {
                    this.fCurrentType = ((SchemaGrammar)object).getGlobalTypeDecl(this.fRootTypeQName.getLocalPart());
                }
            }
            if (this.fCurrentType == null) {
                object = this.fRootTypeQName.getPrefix().equals("") ? this.fRootTypeQName.getLocalPart() : this.fRootTypeQName.getPrefix() + ":" + this.fRootTypeQName.getLocalPart();
                this.reportSchemaError("cvc-type.1", new Object[]{object});
            }
        }
        if (this.fCurrentType == null) {
            if (this.fCurrentElemDecl == null && schemaGrammar != null) {
                this.fCurrentElemDecl = schemaGrammar.getGlobalElementDecl(qName.localpart);
            }
            if (this.fCurrentElemDecl != null) {
                this.fCurrentType = this.fCurrentElemDecl.fType;
            }
        }
        if (this.fElementDepth == this.fIgnoreXSITypeDepth && this.fCurrentElemDecl == null) {
            ++this.fIgnoreXSITypeDepth;
        }
        object2 = null;
        if (this.fElementDepth >= this.fIgnoreXSITypeDepth) {
            object2 = xMLAttributes.getValue(SchemaSymbols.URI_XSI, SchemaSymbols.XSI_TYPE);
        }
        if (this.fCurrentType == null && object2 == null) {
            if (this.fElementDepth == 0) {
                if (this.fDynamicValidation || this.fSchemaDynamicValidation) {
                    if (this.fDocumentSource != null) {
                        this.fDocumentSource.setDocumentHandler(this.fDocumentHandler);
                        if (this.fDocumentHandler != null) {
                            this.fDocumentHandler.setDocumentSource(this.fDocumentSource);
                        }
                        this.fElementDepth = -2;
                        return augmentations;
                    }
                    this.fSkipValidationDepth = this.fElementDepth;
                    if (this.fAugPSVI) {
                        augmentations = this.getEmptyAugs(augmentations);
                    }
                    return augmentations;
                }
                this.fXSIErrorReporter.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "cvc-elt.1", new Object[]{qName.rawname}, (short)1);
            } else if (xSObject != null && ((XSWildcardDecl)xSObject).fProcessContents == 1) {
                this.reportSchemaError("cvc-complex-type.2.4.c", new Object[]{qName.rawname});
            }
            this.fCurrentType = SchemaGrammar.fAnyType;
            this.fStrictAssess = false;
            this.fNFullValidationDepth = this.fElementDepth;
            this.fAppendBuffer = false;
            this.fXSIErrorReporter.pushContext();
        } else {
            this.fXSIErrorReporter.pushContext();
            if (object2 != null) {
                object = this.fCurrentType;
                this.fCurrentType = this.getAndCheckXsiType(qName, (String)object2, xMLAttributes);
                if (this.fCurrentType == null) {
                    this.fCurrentType = object == null ? SchemaGrammar.fAnyType : object;
                }
            }
            this.fNNoneValidationDepth = this.fElementDepth;
            if (this.fCurrentElemDecl != null && this.fCurrentElemDecl.getConstraintType() == 2) {
                this.fAppendBuffer = true;
            } else if (this.fCurrentType.getTypeCategory() == 16) {
                this.fAppendBuffer = true;
            } else {
                object = (XSComplexTypeDecl)this.fCurrentType;
                boolean bl = this.fAppendBuffer = ((XSComplexTypeDecl)object).fContentType == 1;
            }
        }
        if (this.fCurrentElemDecl != null && this.fCurrentElemDecl.getAbstract()) {
            this.reportSchemaError("cvc-elt.2", new Object[]{qName.rawname});
        }
        if (this.fElementDepth == 0) {
            this.fValidationRoot = qName.rawname;
        }
        if (this.fNormalizeData) {
            this.fFirstChunk = true;
            this.fTrailing = false;
            this.fUnionType = false;
            this.fWhiteSpace = (short)-1;
        }
        if (this.fCurrentType.getTypeCategory() == 15) {
            object = (XSComplexTypeDecl)this.fCurrentType;
            if (((XSComplexTypeDecl)object).getAbstract()) {
                this.reportSchemaError("cvc-type.2", new Object[]{qName.rawname});
            }
            if (this.fNormalizeData && ((XSComplexTypeDecl)object).fContentType == 1) {
                if (((XSComplexTypeDecl)object).fXSSimpleType.getVariety() == 3) {
                    this.fUnionType = true;
                } else {
                    try {
                        this.fWhiteSpace = ((XSComplexTypeDecl)object).fXSSimpleType.getWhitespace();
                    }
                    catch (DatatypeException datatypeException) {}
                }
            }
        } else if (this.fNormalizeData) {
            object = (XSSimpleType)this.fCurrentType;
            if (object.getVariety() == 3) {
                this.fUnionType = true;
            } else {
                try {
                    this.fWhiteSpace = object.getWhitespace();
                }
                catch (DatatypeException datatypeException) {
                    // empty catch block
                }
            }
        }
        this.fCurrentCM = null;
        if (this.fCurrentType.getTypeCategory() == 15) {
            this.fCurrentCM = ((XSComplexTypeDecl)this.fCurrentType).getContentModel(this.fCMBuilder);
        }
        this.fCurrCMState = null;
        if (this.fCurrentCM != null) {
            this.fCurrCMState = this.fCurrentCM.startContentModel();
        }
        if ((object = xMLAttributes.getValue(SchemaSymbols.URI_XSI, SchemaSymbols.XSI_NIL)) != null && this.fCurrentElemDecl != null) {
            this.fNil = this.getXsiNil(qName, (String)object);
        }
        XSAttributeGroupDecl xSAttributeGroupDecl = null;
        if (this.fCurrentType.getTypeCategory() == 15) {
            XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl)this.fCurrentType;
            xSAttributeGroupDecl = xSComplexTypeDecl.getAttrGrp();
        }
        if (this.fIDCChecking) {
            this.fValueStoreCache.startElement();
            this.fMatcherStack.pushContext();
            if (this.fCurrentElemDecl != null && this.fCurrentElemDecl.fIDCPos > 0) {
                this.fIdConstraint = true;
                this.fValueStoreCache.initValueStoresFor(this.fCurrentElemDecl, this);
            }
        }
        this.processAttributes(qName, xMLAttributes, xSAttributeGroupDecl);
        if (xSAttributeGroupDecl != null) {
            this.addDefaultAttributes(qName, xMLAttributes, xSAttributeGroupDecl);
        }
        int n = this.fMatcherStack.getMatcherCount();
        int n2 = 0;
        while (n2 < n) {
            XPathMatcher xPathMatcher = this.fMatcherStack.getMatcherAt(n2);
            xPathMatcher.startElement(qName, xMLAttributes);
            ++n2;
        }
        if (this.fAugPSVI) {
            augmentations = this.getEmptyAugs(augmentations);
            this.fCurrentPSVI.fValidationContext = this.fValidationRoot;
            this.fCurrentPSVI.fDeclaration = this.fCurrentElemDecl;
            this.fCurrentPSVI.fTypeDecl = this.fCurrentType;
            this.fCurrentPSVI.fNotation = this.fNotation;
            this.fCurrentPSVI.fNil = this.fNil;
        }
        return augmentations;
    }

    Augmentations handleEndElement(org.apache.xerces.xni.QName qName, Augmentations augmentations) {
        if (this.fSkipValidationDepth >= 0) {
            if (this.fSkipValidationDepth == this.fElementDepth && this.fSkipValidationDepth > 0) {
                this.fNFullValidationDepth = this.fSkipValidationDepth - 1;
                this.fSkipValidationDepth = -1;
                --this.fElementDepth;
                this.fSubElement = this.fSubElementStack[this.fElementDepth];
                this.fCurrentElemDecl = this.fElemDeclStack[this.fElementDepth];
                this.fNil = this.fNilStack[this.fElementDepth];
                this.fNotation = this.fNotationStack[this.fElementDepth];
                this.fCurrentType = this.fTypeStack[this.fElementDepth];
                this.fCurrentCM = this.fCMStack[this.fElementDepth];
                this.fStrictAssess = this.fStrictAssessStack[this.fElementDepth];
                this.fCurrCMState = this.fCMStateStack[this.fElementDepth];
                this.fSawText = this.fSawTextStack[this.fElementDepth];
                this.fSawCharacters = this.fStringContent[this.fElementDepth];
            } else {
                --this.fElementDepth;
            }
            if (this.fElementDepth == -1 && this.fFullChecking && !this.fUseGrammarPoolOnly) {
                XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fXSIErrorReporter.fErrorReporter);
            }
            if (this.fAugPSVI) {
                augmentations = this.getEmptyAugs(augmentations);
            }
            return augmentations;
        }
        this.processElementContent(qName);
        if (this.fIDCChecking) {
            XPathMatcher xPathMatcher;
            Object object;
            int n = this.fMatcherStack.getMatcherCount();
            int n2 = n - 1;
            while (n2 >= 0) {
                XPathMatcher xPathMatcher2 = this.fMatcherStack.getMatcherAt(n2);
                if (this.fCurrentElemDecl == null) {
                    xPathMatcher2.endElement(qName, this.fCurrentType, false, this.fValidatedInfo.actualValue, this.fValidatedInfo.actualValueType, this.fValidatedInfo.itemValueTypes);
                } else {
                    xPathMatcher2.endElement(qName, this.fCurrentType, this.fCurrentElemDecl.getNillable(), this.fDefaultValue == null ? this.fValidatedInfo.actualValue : this.fCurrentElemDecl.fDefault.actualValue, this.fDefaultValue == null ? this.fValidatedInfo.actualValueType : this.fCurrentElemDecl.fDefault.actualValueType, this.fDefaultValue == null ? this.fValidatedInfo.itemValueTypes : this.fCurrentElemDecl.fDefault.itemValueTypes);
                }
                --n2;
            }
            if (this.fMatcherStack.size() > 0) {
                this.fMatcherStack.popContext();
            }
            int n3 = this.fMatcherStack.getMatcherCount();
            int n4 = n - 1;
            while (n4 >= n3) {
                XPathMatcher xPathMatcher3 = this.fMatcherStack.getMatcherAt(n4);
                if (xPathMatcher3 instanceof Selector.Matcher && (object = ((Selector.Matcher)(xPathMatcher = (Selector.Matcher)xPathMatcher3)).getIdentityConstraint()) != null && ((IdentityConstraint)object).getCategory() != 2) {
                    this.fValueStoreCache.transplant((IdentityConstraint)object, ((Selector.Matcher)xPathMatcher).getInitialDepth());
                }
                --n4;
            }
            int n5 = n - 1;
            while (n5 >= n3) {
                ValueStoreBase valueStoreBase;
                IdentityConstraint identityConstraint;
                xPathMatcher = this.fMatcherStack.getMatcherAt(n5);
                if (xPathMatcher instanceof Selector.Matcher && (identityConstraint = ((Selector.Matcher)(object = xPathMatcher)).getIdentityConstraint()) != null && identityConstraint.getCategory() == 2 && (valueStoreBase = this.fValueStoreCache.getValueStoreFor(identityConstraint, ((Selector.Matcher)object).getInitialDepth())) != null) {
                    valueStoreBase.endDocumentFragment();
                }
                --n5;
            }
            this.fValueStoreCache.endElement();
        }
        if (this.fElementDepth < this.fIgnoreXSITypeDepth) {
            --this.fIgnoreXSITypeDepth;
        }
        Grammar[] grammarArray = null;
        if (this.fElementDepth == 0) {
            String string = this.fValidationState.checkIDRefID();
            this.fValidationState.resetIDTables();
            if (string != null) {
                this.reportSchemaError("cvc-id.1", new Object[]{string});
            }
            if (this.fFullChecking && !this.fUseGrammarPoolOnly) {
                XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fXSIErrorReporter.fErrorReporter);
            }
            grammarArray = this.fGrammarBucket.getGrammars();
            if (this.fGrammarPool != null) {
                this.fGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", grammarArray);
            }
            augmentations = this.endElementPSVI(true, (SchemaGrammar[])grammarArray, augmentations);
        } else {
            augmentations = this.endElementPSVI(false, (SchemaGrammar[])grammarArray, augmentations);
            --this.fElementDepth;
            this.fSubElement = this.fSubElementStack[this.fElementDepth];
            this.fCurrentElemDecl = this.fElemDeclStack[this.fElementDepth];
            this.fNil = this.fNilStack[this.fElementDepth];
            this.fNotation = this.fNotationStack[this.fElementDepth];
            this.fCurrentType = this.fTypeStack[this.fElementDepth];
            this.fCurrentCM = this.fCMStack[this.fElementDepth];
            this.fStrictAssess = this.fStrictAssessStack[this.fElementDepth];
            this.fCurrCMState = this.fCMStateStack[this.fElementDepth];
            this.fSawText = this.fSawTextStack[this.fElementDepth];
            this.fSawCharacters = this.fStringContent[this.fElementDepth];
            this.fWhiteSpace = (short)-1;
            this.fAppendBuffer = false;
            this.fUnionType = false;
        }
        return augmentations;
    }

    final Augmentations endElementPSVI(boolean bl, SchemaGrammar[] schemaGrammarArray, Augmentations augmentations) {
        if (this.fAugPSVI) {
            augmentations = this.getEmptyAugs(augmentations);
            this.fCurrentPSVI.fDeclaration = this.fCurrentElemDecl;
            this.fCurrentPSVI.fTypeDecl = this.fCurrentType;
            this.fCurrentPSVI.fNotation = this.fNotation;
            this.fCurrentPSVI.fValidationContext = this.fValidationRoot;
            this.fCurrentPSVI.fNil = this.fNil;
            this.fCurrentPSVI.fValidationAttempted = this.fElementDepth > this.fNFullValidationDepth ? (short)2 : (this.fElementDepth > this.fNNoneValidationDepth ? (short)0 : 1);
            if (this.fNFullValidationDepth == this.fElementDepth) {
                this.fNFullValidationDepth = this.fElementDepth - 1;
            }
            if (this.fNNoneValidationDepth == this.fElementDepth) {
                this.fNNoneValidationDepth = this.fElementDepth - 1;
            }
            if (this.fDefaultValue != null) {
                this.fCurrentPSVI.fSpecified = true;
            }
            this.fCurrentPSVI.fMemberType = this.fValidatedInfo.memberType;
            this.fCurrentPSVI.fNormalizedValue = this.fValidatedInfo.normalizedValue;
            this.fCurrentPSVI.fActualValue = this.fValidatedInfo.actualValue;
            this.fCurrentPSVI.fActualValueType = this.fValidatedInfo.actualValueType;
            this.fCurrentPSVI.fItemValueTypes = this.fValidatedInfo.itemValueTypes;
            if (this.fStrictAssess) {
                String[] stringArray = this.fXSIErrorReporter.mergeContext();
                this.fCurrentPSVI.fErrorCodes = stringArray;
                this.fCurrentPSVI.fValidity = (short)(stringArray == null ? 2 : 1);
            } else {
                this.fCurrentPSVI.fValidity = 0;
                this.fXSIErrorReporter.popContext();
            }
            if (bl) {
                this.fCurrentPSVI.fGrammars = schemaGrammarArray;
                this.fCurrentPSVI.fSchemaInformation = null;
            }
        }
        return augmentations;
    }

    Augmentations getEmptyAugs(Augmentations augmentations) {
        if (augmentations == null) {
            augmentations = this.fAugmentations;
            augmentations.removeAllItems();
        }
        augmentations.putItem("ELEMENT_PSVI", this.fCurrentPSVI);
        this.fCurrentPSVI.reset();
        return augmentations;
    }

    void storeLocations(String string, String string2) {
        if (string != null && !XMLSchemaLoader.tokenizeSchemaLocationStr(string, this.fLocationPairs)) {
            this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "SchemaLocation", new Object[]{string}, (short)0);
        }
        if (string2 != null) {
            XMLSchemaLoader.LocationArray locationArray = (XMLSchemaLoader.LocationArray)this.fLocationPairs.get(XMLSymbols.EMPTY_STRING);
            if (locationArray == null) {
                locationArray = new XMLSchemaLoader.LocationArray();
                this.fLocationPairs.put(XMLSymbols.EMPTY_STRING, locationArray);
            }
            locationArray.addLocation(string2);
        }
    }

    SchemaGrammar findSchemaGrammar(short s, String string, org.apache.xerces.xni.QName qName, org.apache.xerces.xni.QName qName2, XMLAttributes xMLAttributes) {
        SchemaGrammar schemaGrammar = null;
        schemaGrammar = this.fGrammarBucket.getGrammar(string);
        if (schemaGrammar == null) {
            this.fXSDDescription.reset();
            this.fXSDDescription.fContextType = s;
            this.fXSDDescription.setNamespace(string);
            this.fXSDDescription.fEnclosedElementName = qName;
            this.fXSDDescription.fTriggeringComponent = qName2;
            this.fXSDDescription.fAttributes = xMLAttributes;
            if (this.fLocator != null) {
                this.fXSDDescription.setBaseSystemId(this.fLocator.getExpandedSystemId());
            }
            String[] stringArray = null;
            Object v = this.fLocationPairs.get(string == null ? XMLSymbols.EMPTY_STRING : string);
            if (v != null) {
                stringArray = ((XMLSchemaLoader.LocationArray)v).getLocationArray();
            }
            if (stringArray != null && stringArray.length != 0) {
                this.fXSDDescription.fLocationHints = new String[stringArray.length];
                System.arraycopy(stringArray, 0, this.fXSDDescription.fLocationHints, 0, stringArray.length);
            }
            if (this.fGrammarPool != null && (schemaGrammar = (SchemaGrammar)this.fGrammarPool.retrieveGrammar(this.fXSDDescription)) != null && !this.fGrammarBucket.putGrammar(schemaGrammar, true)) {
                this.fXSIErrorReporter.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "GrammarConflict", null, (short)0);
                schemaGrammar = null;
            }
            if (schemaGrammar == null && !this.fUseGrammarPoolOnly) {
                try {
                    XMLInputSource xMLInputSource = XMLSchemaLoader.resolveDocument(this.fXSDDescription, this.fLocationPairs, this.fEntityResolver);
                    schemaGrammar = this.fSchemaLoader.loadSchema(this.fXSDDescription, xMLInputSource, this.fLocationPairs);
                }
                catch (IOException iOException) {
                    String[] stringArray2 = this.fXSDDescription.getLocationHints();
                    this.fXSIErrorReporter.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", new Object[]{stringArray2 != null ? stringArray2[0] : XMLSymbols.EMPTY_STRING}, (short)0);
                }
            }
        }
        return schemaGrammar;
    }

    XSTypeDefinition getAndCheckXsiType(org.apache.xerces.xni.QName qName, String string, XMLAttributes xMLAttributes) {
        SchemaGrammar schemaGrammar;
        org.apache.xerces.xni.QName qName2 = null;
        try {
            qName2 = (org.apache.xerces.xni.QName)this.fQNameDV.validate(string, (ValidationContext)this.fValidationState, null);
        }
        catch (InvalidDatatypeValueException invalidDatatypeValueException) {
            this.reportSchemaError(invalidDatatypeValueException.getKey(), invalidDatatypeValueException.getArgs());
            this.reportSchemaError("cvc-elt.4.1", new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_TYPE, string});
            return null;
        }
        XSTypeDefinition xSTypeDefinition = null;
        if (qName2.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA) {
            xSTypeDefinition = SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName2.localpart);
        }
        if (xSTypeDefinition == null && (schemaGrammar = this.findSchemaGrammar((short)7, qName2.uri, qName, qName2, xMLAttributes)) != null) {
            xSTypeDefinition = schemaGrammar.getGlobalTypeDecl(qName2.localpart);
        }
        if (xSTypeDefinition == null) {
            this.reportSchemaError("cvc-elt.4.2", new Object[]{qName.rawname, string});
            return null;
        }
        if (this.fCurrentType != null) {
            short s = 0;
            if (this.fCurrentElemDecl != null) {
                s = this.fCurrentElemDecl.fBlock;
            }
            if (this.fCurrentType.getTypeCategory() == 15) {
                s = (short)(s | ((XSComplexTypeDecl)this.fCurrentType).fBlock);
            }
            if (!XSConstraints.checkTypeDerivationOk(xSTypeDefinition, this.fCurrentType, s)) {
                this.reportSchemaError("cvc-elt.4.3", new Object[]{qName.rawname, string, this.fCurrentType.getName()});
            }
        }
        return xSTypeDefinition;
    }

    boolean getXsiNil(org.apache.xerces.xni.QName qName, String string) {
        if (this.fCurrentElemDecl != null && !this.fCurrentElemDecl.getNillable()) {
            this.reportSchemaError("cvc-elt.3.1", new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
        } else {
            String string2 = XMLChar.trim(string);
            if (string2.equals("true") || string2.equals("1")) {
                if (this.fCurrentElemDecl != null && this.fCurrentElemDecl.getConstraintType() == 2) {
                    this.reportSchemaError("cvc-elt.3.2.2", new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
                }
                return true;
            }
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    void processAttributes(org.apache.xerces.xni.QName var1_1, XMLAttributes var2_2, XSAttributeGroupDecl var3_3) {
        var4_4 = null;
        var5_5 = var2_2.getLength();
        var6_6 = null;
        var7_7 = null;
        var8_8 = this.fCurrentType == null || this.fCurrentType.getTypeCategory() == 16;
        var9_9 = null;
        var10_10 = 0;
        var11_11 = null;
        if (!var8_8) {
            var9_9 = var3_3.getAttributeUses();
            var10_10 = var9_9.getLength();
            var11_11 = var3_3.fAttributeWC;
        }
        var12_12 = 0;
        while (var12_12 < var5_5) {
            block26: {
                block29: {
                    block28: {
                        block27: {
                            block25: {
                                var2_2.getName(var12_12, this.fTempQName);
                                if (this.fAugPSVI || this.fIdConstraint) {
                                    var6_6 = var2_2.getAugmentations(var12_12);
                                    var7_7 = (AttributePSVImpl)var6_6.getItem("ATTRIBUTE_PSVI");
                                    if (var7_7 != null) {
                                        var7_7.reset();
                                    } else {
                                        var7_7 = new AttributePSVImpl();
                                        var6_6.putItem("ATTRIBUTE_PSVI", var7_7);
                                    }
                                    var7_7.fValidationContext = this.fValidationRoot;
                                }
                                if (this.fTempQName.uri != SchemaSymbols.URI_XSI) break block25;
                                var13_13 /* !! */  = null;
                                if (this.fTempQName.localpart == SchemaSymbols.XSI_TYPE) {
                                    var13_13 /* !! */  = XMLSchemaValidator.XSI_TYPE;
                                } else if (this.fTempQName.localpart == SchemaSymbols.XSI_NIL) {
                                    var13_13 /* !! */  = XMLSchemaValidator.XSI_NIL;
                                } else if (this.fTempQName.localpart == SchemaSymbols.XSI_SCHEMALOCATION) {
                                    var13_13 /* !! */  = XMLSchemaValidator.XSI_SCHEMALOCATION;
                                } else if (this.fTempQName.localpart == SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION) {
                                    var13_13 /* !! */  = XMLSchemaValidator.XSI_NONAMESPACESCHEMALOCATION;
                                }
                                if (var13_13 /* !! */  == null) break block25;
                                this.processOneAttribute(var1_1, var2_2, var12_12, var13_13 /* !! */ , null, var7_7);
                                break block26;
                            }
                            if (this.fTempQName.rawname == XMLSymbols.PREFIX_XMLNS || this.fTempQName.rawname.startsWith("xmlns:")) break block26;
                            if (!var8_8) break block27;
                            this.reportSchemaError("cvc-type.3.1.1", new Object[]{var1_1.rawname, this.fTempQName.rawname});
                            break block26;
                        }
                        var13_13 /* !! */  = null;
                        var15_15 = 0;
                        while (var15_15 < var10_10) {
                            var14_14 = (XSAttributeUseImpl)var9_9.item(var15_15);
                            if (var14_14.fAttrDecl.fName == this.fTempQName.localpart && var14_14.fAttrDecl.fTargetNamespace == this.fTempQName.uri) {
                                var13_13 /* !! */  = var14_14;
                                break;
                            }
                            ++var15_15;
                        }
                        if (var13_13 /* !! */  != null || var11_11 != null && var11_11.allowNamespace(this.fTempQName.uri)) break block28;
                        this.reportSchemaError("cvc-complex-type.3.2.2", new Object[]{var1_1.rawname, this.fTempQName.rawname});
                        break block26;
                    }
                    var16_16 = null;
                    if (var13_13 /* !! */  == null) break block29;
                    var16_16 = var13_13 /* !! */ .fAttrDecl;
                    ** GOTO lbl79
                }
                if (var11_11.fProcessContents == 2) break block26;
                var17_17 = this.findSchemaGrammar((short)6, this.fTempQName.uri, var1_1, this.fTempQName, var2_2);
                if (var17_17 != null) {
                    var16_16 = var17_17.getGlobalAttributeDecl(this.fTempQName.localpart);
                }
                if (var16_16 == null) {
                    if (var11_11.fProcessContents == 1) {
                        this.reportSchemaError("cvc-complex-type.3.2.2", new Object[]{var1_1.rawname, this.fTempQName.rawname});
                    }
                } else {
                    if (var16_16.fType.getTypeCategory() == 16 && var16_16.fType.isIDType()) {
                        if (var4_4 != null) {
                            this.reportSchemaError("cvc-complex-type.5.1", new Object[]{var1_1.rawname, var16_16.fName, var4_4});
                        } else {
                            var4_4 = var16_16.fName;
                        }
                    }
lbl79:
                    // 5 sources

                    this.processOneAttribute(var1_1, var2_2, var12_12, var16_16, (XSAttributeUseImpl)var13_13 /* !! */ , var7_7);
                }
            }
            ++var12_12;
        }
        if (!var8_8 && var3_3.fIDAttrName != null && var4_4 != null) {
            this.reportSchemaError("cvc-complex-type.5.2", new Object[]{var1_1.rawname, var4_4, var3_3.fIDAttrName});
        }
    }

    void processOneAttribute(org.apache.xerces.xni.QName qName, XMLAttributes xMLAttributes, int n, XSAttributeDecl xSAttributeDecl, XSAttributeUseImpl xSAttributeUseImpl, AttributePSVImpl attributePSVImpl) {
        String[] stringArray;
        String string = xMLAttributes.getValue(n);
        this.fXSIErrorReporter.pushContext();
        XSSimpleType xSSimpleType = xSAttributeDecl.fType;
        Object object = null;
        try {
            object = xSSimpleType.validate(string, (ValidationContext)this.fValidationState, this.fValidatedInfo);
            if (this.fNormalizeData) {
                xMLAttributes.setValue(n, this.fValidatedInfo.normalizedValue);
            }
            if (xMLAttributes instanceof XMLAttributesImpl) {
                stringArray = (XMLAttributesImpl)xMLAttributes;
                boolean bl = this.fValidatedInfo.memberType != null ? this.fValidatedInfo.memberType.isIDType() : xSSimpleType.isIDType();
                stringArray.setSchemaId(n, bl);
            }
            if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20) {
                stringArray = (org.apache.xerces.xni.QName)object;
                SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(stringArray.uri);
                if (schemaGrammar != null) {
                    this.fNotation = schemaGrammar.getGlobalNotationDecl(stringArray.localpart);
                }
            }
        }
        catch (InvalidDatatypeValueException invalidDatatypeValueException) {
            this.reportSchemaError(invalidDatatypeValueException.getKey(), invalidDatatypeValueException.getArgs());
            this.reportSchemaError("cvc-attribute.3", new Object[]{qName.rawname, this.fTempQName.rawname, string, xSSimpleType.getName()});
        }
        if (!(object == null || xSAttributeDecl.getConstraintType() != 2 || ValidatedInfo.isComparable(this.fValidatedInfo, xSAttributeDecl.fDefault) && object.equals(xSAttributeDecl.fDefault.actualValue))) {
            this.reportSchemaError("cvc-attribute.4", new Object[]{qName.rawname, this.fTempQName.rawname, string, xSAttributeDecl.fDefault.stringValue()});
        }
        if (!(object == null || xSAttributeUseImpl == null || xSAttributeUseImpl.fConstraintType != 2 || ValidatedInfo.isComparable(this.fValidatedInfo, xSAttributeUseImpl.fDefault) && object.equals(xSAttributeUseImpl.fDefault.actualValue))) {
            this.reportSchemaError("cvc-complex-type.3.1", new Object[]{qName.rawname, this.fTempQName.rawname, string, xSAttributeUseImpl.fDefault.stringValue()});
        }
        if (this.fIdConstraint) {
            attributePSVImpl.fActualValue = object;
        }
        if (this.fAugPSVI) {
            attributePSVImpl.fDeclaration = xSAttributeDecl;
            attributePSVImpl.fTypeDecl = xSSimpleType;
            attributePSVImpl.fMemberType = this.fValidatedInfo.memberType;
            attributePSVImpl.fNormalizedValue = this.fValidatedInfo.normalizedValue;
            attributePSVImpl.fActualValue = this.fValidatedInfo.actualValue;
            attributePSVImpl.fActualValueType = this.fValidatedInfo.actualValueType;
            attributePSVImpl.fItemValueTypes = this.fValidatedInfo.itemValueTypes;
            attributePSVImpl.fValidationAttempted = (short)2;
            stringArray = this.fXSIErrorReporter.mergeContext();
            attributePSVImpl.fErrorCodes = stringArray;
            attributePSVImpl.fValidity = (short)(stringArray == null ? 2 : 1);
        }
    }

    void addDefaultAttributes(org.apache.xerces.xni.QName qName, XMLAttributes xMLAttributes, XSAttributeGroupDecl xSAttributeGroupDecl) {
        XSObjectList xSObjectList = xSAttributeGroupDecl.getAttributeUses();
        int n = xSObjectList.getLength();
        int n2 = 0;
        while (n2 < n) {
            boolean bl;
            XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl)xSObjectList.item(n2);
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            short s = xSAttributeUseImpl.fConstraintType;
            ValidatedInfo validatedInfo = xSAttributeUseImpl.fDefault;
            if (s == 0) {
                s = xSAttributeDecl.getConstraintType();
                validatedInfo = xSAttributeDecl.fDefault;
            }
            boolean bl2 = bl = xMLAttributes.getValue(xSAttributeDecl.fTargetNamespace, xSAttributeDecl.fName) != null;
            if (xSAttributeUseImpl.fUse == 1 && !bl) {
                this.reportSchemaError("cvc-complex-type.4", new Object[]{qName.rawname, xSAttributeDecl.fName});
            }
            if (!bl && s != 0) {
                int n3;
                Object object;
                String string;
                org.apache.xerces.xni.QName qName2 = new org.apache.xerces.xni.QName(null, xSAttributeDecl.fName, xSAttributeDecl.fName, xSAttributeDecl.fTargetNamespace);
                String string2 = string = validatedInfo != null ? validatedInfo.stringValue() : "";
                if (xMLAttributes instanceof XMLAttributesImpl) {
                    object = (XMLAttributesImpl)xMLAttributes;
                    n3 = ((XMLAttributesImpl)object).getLength();
                    ((XMLAttributesImpl)object).addAttributeNS(qName2, "CDATA", string);
                    boolean bl3 = validatedInfo != null && validatedInfo.memberType != null ? validatedInfo.memberType.isIDType() : xSAttributeDecl.fType.isIDType();
                    ((XMLAttributesImpl)object).setSchemaId(n3, bl3);
                } else {
                    n3 = xMLAttributes.addAttribute(qName2, "CDATA", string);
                }
                if (this.fAugPSVI) {
                    object = xMLAttributes.getAugmentations(n3);
                    AttributePSVImpl attributePSVImpl = new AttributePSVImpl();
                    object.putItem("ATTRIBUTE_PSVI", attributePSVImpl);
                    attributePSVImpl.fDeclaration = xSAttributeDecl;
                    attributePSVImpl.fTypeDecl = xSAttributeDecl.fType;
                    attributePSVImpl.fMemberType = validatedInfo.memberType;
                    attributePSVImpl.fNormalizedValue = string;
                    attributePSVImpl.fActualValue = validatedInfo.actualValue;
                    attributePSVImpl.fActualValueType = validatedInfo.actualValueType;
                    attributePSVImpl.fItemValueTypes = validatedInfo.itemValueTypes;
                    attributePSVImpl.fValidationContext = this.fValidationRoot;
                    attributePSVImpl.fValidity = (short)2;
                    attributePSVImpl.fValidationAttempted = (short)2;
                    attributePSVImpl.fSpecified = true;
                }
            }
            ++n2;
        }
    }

    void processElementContent(org.apache.xerces.xni.QName qName) {
        int n;
        Object object;
        if (!(this.fCurrentElemDecl == null || this.fCurrentElemDecl.fDefault == null || this.fSawText || this.fSubElement || this.fNil)) {
            object = this.fCurrentElemDecl.fDefault.stringValue();
            n = ((String)object).length();
            if (this.fNormalizedStr.ch == null || this.fNormalizedStr.ch.length < n) {
                this.fNormalizedStr.ch = new char[n];
            }
            ((String)object).getChars(0, n, this.fNormalizedStr.ch, 0);
            this.fNormalizedStr.offset = 0;
            this.fNormalizedStr.length = n;
            this.fDefaultValue = this.fNormalizedStr;
        }
        this.fValidatedInfo.normalizedValue = null;
        if (this.fNil && (this.fSubElement || this.fSawText)) {
            this.reportSchemaError("cvc-elt.3.2.1", new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
        }
        this.fValidatedInfo.reset();
        if (!(this.fCurrentElemDecl == null || this.fCurrentElemDecl.getConstraintType() == 0 || this.fSubElement || this.fSawText || this.fNil)) {
            if (this.fCurrentType != this.fCurrentElemDecl.fType && XSConstraints.ElementDefaultValidImmediate(this.fCurrentType, this.fCurrentElemDecl.fDefault.stringValue(), this.fState4XsiType, null) == null) {
                this.reportSchemaError("cvc-elt.5.1.1", new Object[]{qName.rawname, this.fCurrentType.getName(), this.fCurrentElemDecl.fDefault.stringValue()});
            }
            this.elementLocallyValidType(qName, this.fCurrentElemDecl.fDefault.stringValue());
        } else {
            object = this.elementLocallyValidType(qName, this.fBuffer);
            if (this.fCurrentElemDecl != null && this.fCurrentElemDecl.getConstraintType() == 2 && !this.fNil) {
                String string = this.fBuffer.toString();
                if (this.fSubElement) {
                    this.reportSchemaError("cvc-elt.5.2.2.1", new Object[]{qName.rawname});
                }
                if (this.fCurrentType.getTypeCategory() == 15) {
                    XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl)this.fCurrentType;
                    if (xSComplexTypeDecl.fContentType == 3) {
                        if (!this.fCurrentElemDecl.fDefault.normalizedValue.equals(string)) {
                            this.reportSchemaError("cvc-elt.5.2.2.2.1", new Object[]{qName.rawname, string, this.fCurrentElemDecl.fDefault.normalizedValue});
                        }
                    } else if (!(xSComplexTypeDecl.fContentType != 1 || object == null || ValidatedInfo.isComparable(this.fValidatedInfo, this.fCurrentElemDecl.fDefault) && object.equals(this.fCurrentElemDecl.fDefault.actualValue))) {
                        this.reportSchemaError("cvc-elt.5.2.2.2.2", new Object[]{qName.rawname, string, this.fCurrentElemDecl.fDefault.stringValue()});
                    }
                } else if (!(this.fCurrentType.getTypeCategory() != 16 || object == null || ValidatedInfo.isComparable(this.fValidatedInfo, this.fCurrentElemDecl.fDefault) && object.equals(this.fCurrentElemDecl.fDefault.actualValue))) {
                    this.reportSchemaError("cvc-elt.5.2.2.2.2", new Object[]{qName.rawname, string, this.fCurrentElemDecl.fDefault.stringValue()});
                }
            }
        }
        if (this.fDefaultValue == null && this.fNormalizeData && this.fDocumentHandler != null && this.fUnionType) {
            object = this.fValidatedInfo.normalizedValue;
            if (object == null) {
                object = this.fBuffer.toString();
            }
            n = ((String)object).length();
            if (this.fNormalizedStr.ch == null || this.fNormalizedStr.ch.length < n) {
                this.fNormalizedStr.ch = new char[n];
            }
            ((String)object).getChars(0, n, this.fNormalizedStr.ch, 0);
            this.fNormalizedStr.offset = 0;
            this.fNormalizedStr.length = n;
            this.fDocumentHandler.characters(this.fNormalizedStr, null);
        }
    }

    Object elementLocallyValidType(org.apache.xerces.xni.QName qName, Object object) {
        if (this.fCurrentType == null) {
            return null;
        }
        Object object2 = null;
        if (this.fCurrentType.getTypeCategory() == 16) {
            if (this.fSubElement) {
                this.reportSchemaError("cvc-type.3.1.2", new Object[]{qName.rawname});
            }
            if (!this.fNil) {
                XSSimpleType xSSimpleType = (XSSimpleType)this.fCurrentType;
                try {
                    if (!this.fNormalizeData || this.fUnionType) {
                        this.fValidationState.setNormalizationRequired(true);
                    }
                    object2 = xSSimpleType.validate(object, (ValidationContext)this.fValidationState, this.fValidatedInfo);
                }
                catch (InvalidDatatypeValueException invalidDatatypeValueException) {
                    this.reportSchemaError(invalidDatatypeValueException.getKey(), invalidDatatypeValueException.getArgs());
                    this.reportSchemaError("cvc-type.3.1.3", new Object[]{qName.rawname, object});
                }
            }
        } else {
            object2 = this.elementLocallyValidComplexType(qName, object);
        }
        return object2;
    }

    Object elementLocallyValidComplexType(org.apache.xerces.xni.QName qName, Object object) {
        Object object2 = null;
        XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl)this.fCurrentType;
        if (!this.fNil) {
            Object object3;
            if (xSComplexTypeDecl.fContentType == 0 && (this.fSubElement || this.fSawText)) {
                this.reportSchemaError("cvc-complex-type.2.1", new Object[]{qName.rawname});
            } else if (xSComplexTypeDecl.fContentType == 1) {
                if (this.fSubElement) {
                    this.reportSchemaError("cvc-complex-type.2.2", new Object[]{qName.rawname});
                }
                object3 = xSComplexTypeDecl.fXSSimpleType;
                try {
                    if (!this.fNormalizeData || this.fUnionType) {
                        this.fValidationState.setNormalizationRequired(true);
                    }
                    object2 = object3.validate(object, (ValidationContext)this.fValidationState, this.fValidatedInfo);
                }
                catch (InvalidDatatypeValueException invalidDatatypeValueException) {
                    this.reportSchemaError(invalidDatatypeValueException.getKey(), invalidDatatypeValueException.getArgs());
                    this.reportSchemaError("cvc-complex-type.2.2", new Object[]{qName.rawname});
                }
            } else if (xSComplexTypeDecl.fContentType == 2 && this.fSawCharacters) {
                this.reportSchemaError("cvc-complex-type.2.3", new Object[]{qName.rawname});
            }
            if (!(xSComplexTypeDecl.fContentType != 2 && xSComplexTypeDecl.fContentType != 3 || this.fCurrCMState[0] < 0 || this.fCurrentCM.endContentModel(this.fCurrCMState))) {
                object3 = this.expectedStr(this.fCurrentCM.whatCanGoHere(this.fCurrCMState));
                this.reportSchemaError("cvc-complex-type.2.4.b", new Object[]{qName.rawname, object3});
            }
        }
        return object2;
    }

    void reportSchemaError(String string, Object[] objectArray) {
        if (this.fDoValidation) {
            this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", string, objectArray, (short)1);
        }
    }

    private String expectedStr(Vector vector) {
        StringBuffer stringBuffer = new StringBuffer("{");
        int n = vector.size();
        int n2 = 0;
        while (n2 < n) {
            if (n2 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(vector.elementAt(n2).toString());
            ++n2;
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    protected class KeyRefValueStore
    extends ValueStoreBase {
        protected ValueStoreBase fKeyValueStore;

        public KeyRefValueStore(KeyRef keyRef, KeyValueStore keyValueStore) {
            super(keyRef);
            this.fKeyValueStore = keyValueStore;
        }

        public void endDocumentFragment() {
            super.endDocumentFragment();
            this.fKeyValueStore = (ValueStoreBase)XMLSchemaValidator.this.fValueStoreCache.fGlobalIDConstraintMap.get(((KeyRef)this.fIdentityConstraint).getKey());
            if (this.fKeyValueStore == null) {
                String string = "KeyRefOutOfScope";
                String string2 = this.fIdentityConstraint.toString();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string2});
                return;
            }
            int n = this.fKeyValueStore.contains(this);
            if (n != -1) {
                String string = "KeyNotFound";
                String string3 = this.toString(this.fValues, n, this.fFieldCount);
                String string4 = this.fIdentityConstraint.getElementName();
                String string5 = this.fIdentityConstraint.getName();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string5, string3, string4});
            }
        }

        public void endDocument() {
            super.endDocument();
        }
    }

    protected class KeyValueStore
    extends ValueStoreBase {
        public KeyValueStore(UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
        }

        protected void checkDuplicateValues() {
            if (this.contains()) {
                String string = "DuplicateKey";
                String string2 = this.toString(this.fLocalValues);
                String string3 = this.fIdentityConstraint.getElementName();
                String string4 = this.fIdentityConstraint.getIdentityConstraintName();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string2, string3, string4});
            }
        }
    }

    protected static final class LocalIDKey {
        public IdentityConstraint fId;
        public int fDepth;

        public LocalIDKey() {
        }

        public LocalIDKey(IdentityConstraint identityConstraint, int n) {
            this.fId = identityConstraint;
            this.fDepth = n;
        }

        public int hashCode() {
            return this.fId.hashCode() + this.fDepth;
        }

        public boolean equals(Object object) {
            if (object instanceof LocalIDKey) {
                LocalIDKey localIDKey = (LocalIDKey)object;
                return localIDKey.fId == this.fId && localIDKey.fDepth == this.fDepth;
            }
            return false;
        }
    }

    protected static final class ShortVector {
        private int fLength;
        private short[] fData;

        public ShortVector() {
        }

        public ShortVector(int n) {
            this.fData = new short[n];
        }

        public int length() {
            return this.fLength;
        }

        public void add(short s) {
            this.ensureCapacity(this.fLength + 1);
            this.fData[this.fLength++] = s;
        }

        public short valueAt(int n) {
            return this.fData[n];
        }

        public void clear() {
            this.fLength = 0;
        }

        public boolean contains(short s) {
            int n = 0;
            while (n < this.fLength) {
                if (this.fData[n] == s) {
                    return true;
                }
                ++n;
            }
            return false;
        }

        private void ensureCapacity(int n) {
            if (this.fData == null) {
                this.fData = new short[8];
            } else if (this.fData.length <= n) {
                short[] sArray = new short[this.fData.length * 2];
                System.arraycopy(this.fData, 0, sArray, 0, this.fData.length);
                this.fData = sArray;
            }
        }
    }

    protected class UniqueValueStore
    extends ValueStoreBase {
        public UniqueValueStore(UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
        }

        protected void checkDuplicateValues() {
            if (this.contains()) {
                String string = "DuplicateUnique";
                String string2 = this.toString(this.fLocalValues);
                String string3 = this.fIdentityConstraint.getElementName();
                String string4 = this.fIdentityConstraint.getIdentityConstraintName();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string2, string3, string4});
            }
        }
    }

    protected abstract class ValueStoreBase
    implements ValueStore {
        protected IdentityConstraint fIdentityConstraint;
        protected int fFieldCount = 0;
        protected Field[] fFields = null;
        protected Object[] fLocalValues = null;
        protected short[] fLocalValueTypes = null;
        protected ShortList[] fLocalItemValueTypes = null;
        protected int fValuesCount;
        public final Vector fValues = new Vector();
        public ShortVector fValueTypes = null;
        public Vector fItemValueTypes = null;
        private boolean fUseValueTypeVector = false;
        private int fValueTypesLength = 0;
        private short fValueType = 0;
        private boolean fUseItemValueTypeVector = false;
        private int fItemValueTypesLength = 0;
        private ShortList fItemValueType = null;
        final StringBuffer fTempBuffer = new StringBuffer();

        protected ValueStoreBase(IdentityConstraint identityConstraint) {
            this.fIdentityConstraint = identityConstraint;
            this.fFieldCount = this.fIdentityConstraint.getFieldCount();
            this.fFields = new Field[this.fFieldCount];
            this.fLocalValues = new Object[this.fFieldCount];
            this.fLocalValueTypes = new short[this.fFieldCount];
            this.fLocalItemValueTypes = new ShortList[this.fFieldCount];
            int n = 0;
            while (n < this.fFieldCount) {
                this.fFields[n] = this.fIdentityConstraint.getFieldAt(n);
                ++n;
            }
        }

        public void clear() {
            this.fValuesCount = 0;
            this.fUseValueTypeVector = false;
            this.fValueTypesLength = 0;
            this.fValueType = 0;
            this.fUseItemValueTypeVector = false;
            this.fItemValueTypesLength = 0;
            this.fItemValueType = null;
            this.fValues.setSize(0);
            if (this.fValueTypes != null) {
                this.fValueTypes.clear();
            }
            if (this.fItemValueTypes != null) {
                this.fItemValueTypes.setSize(0);
            }
        }

        public void append(ValueStoreBase valueStoreBase) {
            int n = 0;
            while (n < valueStoreBase.fValues.size()) {
                this.fValues.addElement(valueStoreBase.fValues.elementAt(n));
                ++n;
            }
        }

        public void startValueScope() {
            this.fValuesCount = 0;
            int n = 0;
            while (n < this.fFieldCount) {
                this.fLocalValues[n] = null;
                this.fLocalValueTypes[n] = 0;
                this.fLocalItemValueTypes[n] = null;
                ++n;
            }
        }

        public void endValueScope() {
            if (this.fValuesCount == 0) {
                if (this.fIdentityConstraint.getCategory() == 1) {
                    String string = "AbsentKeyValue";
                    String string2 = this.fIdentityConstraint.getElementName();
                    String string3 = this.fIdentityConstraint.getIdentityConstraintName();
                    XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string2, string3});
                }
                return;
            }
            if (this.fValuesCount != this.fFieldCount) {
                if (this.fIdentityConstraint.getCategory() == 1) {
                    String string = "KeyNotEnoughValues";
                    UniqueOrKey uniqueOrKey = (UniqueOrKey)this.fIdentityConstraint;
                    String string4 = this.fIdentityConstraint.getElementName();
                    String string5 = uniqueOrKey.getIdentityConstraintName();
                    XMLSchemaValidator.this.reportSchemaError(string, new Object[]{string4, string5});
                }
                return;
            }
        }

        public void endDocumentFragment() {
        }

        public void endDocument() {
        }

        public void reportError(String string, Object[] objectArray) {
            XMLSchemaValidator.this.reportSchemaError(string, objectArray);
        }

        public void addValue(Field field, boolean bl, Object object, short s, ShortList shortList) {
            int n = this.fFieldCount - 1;
            while (n > -1) {
                if (this.fFields[n] == field) break;
                --n;
            }
            if (n == -1) {
                String string = "UnknownField";
                String string2 = this.fIdentityConstraint.getElementName();
                String string3 = this.fIdentityConstraint.getIdentityConstraintName();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{field.toString(), string2, string3});
                return;
            }
            if (!bl) {
                String string = "FieldMultipleMatch";
                String string4 = this.fIdentityConstraint.getIdentityConstraintName();
                XMLSchemaValidator.this.reportSchemaError(string, new Object[]{field.toString(), string4});
            } else {
                ++this.fValuesCount;
            }
            this.fLocalValues[n] = object;
            this.fLocalValueTypes[n] = s;
            this.fLocalItemValueTypes[n] = shortList;
            if (this.fValuesCount == this.fFieldCount) {
                this.checkDuplicateValues();
                n = 0;
                while (n < this.fFieldCount) {
                    this.fValues.addElement(this.fLocalValues[n]);
                    this.addValueType(this.fLocalValueTypes[n]);
                    this.addItemValueType(this.fLocalItemValueTypes[n]);
                    ++n;
                }
            }
        }

        public boolean contains() {
            int n = 0;
            int n2 = this.fValues.size();
            int n3 = 0;
            while (n3 < n2) {
                block4: {
                    n = n3 + this.fFieldCount;
                    int n4 = 0;
                    while (n4 < this.fFieldCount) {
                        Object object = this.fLocalValues[n4];
                        Object e = this.fValues.elementAt(n3);
                        short s = this.fLocalValueTypes[n4];
                        short s2 = this.getValueTypeAt(n3);
                        if (object == null || e == null || s != s2 || !object.equals(e)) break block4;
                        if (s == 44 || s == 43) {
                            ShortList shortList = this.fLocalItemValueTypes[n4];
                            ShortList shortList2 = this.getItemValueTypeAt(n3);
                            if (shortList == null || shortList2 == null || !shortList.equals(shortList2)) break block4;
                        }
                        ++n3;
                        ++n4;
                    }
                    return true;
                }
                n3 = n;
            }
            return false;
        }

        public int contains(ValueStoreBase valueStoreBase) {
            block11: {
                int n;
                Vector vector;
                block10: {
                    vector = valueStoreBase.fValues;
                    n = vector.size();
                    if (this.fFieldCount > 1) break block10;
                    int n2 = 0;
                    while (n2 < n) {
                        ShortList shortList;
                        short s = valueStoreBase.getValueTypeAt(n2);
                        if (!this.valueTypeContains(s) || !this.fValues.contains(vector.elementAt(n2))) {
                            return n2;
                        }
                        if (!(s != 44 && s != 43 || this.itemValueTypeContains(shortList = valueStoreBase.getItemValueTypeAt(n2)))) {
                            return n2;
                        }
                        ++n2;
                    }
                    break block11;
                }
                int n3 = this.fValues.size();
                int n4 = 0;
                while (n4 < n) {
                    block9: {
                        int n5 = 0;
                        block2: while (n5 < n3) {
                            int n6 = 0;
                            while (n6 < this.fFieldCount) {
                                block12: {
                                    block13: {
                                        Object e = vector.elementAt(n4 + n6);
                                        Object e2 = this.fValues.elementAt(n5 + n6);
                                        short s = valueStoreBase.getValueTypeAt(n4 + n6);
                                        short s2 = this.getValueTypeAt(n5 + n6);
                                        if (e != e2 && (s != s2 || e == null || !e.equals(e2))) break block12;
                                        if (s != 44 && s != 43) break block13;
                                        ShortList shortList = valueStoreBase.getItemValueTypeAt(n4 + n6);
                                        ShortList shortList2 = this.getItemValueTypeAt(n5 + n6);
                                        if (shortList == null || shortList2 == null || !shortList.equals(shortList2)) break block12;
                                    }
                                    ++n6;
                                    continue;
                                }
                                n5 += this.fFieldCount;
                                continue block2;
                            }
                            break block9;
                        }
                        return n4;
                    }
                    n4 += this.fFieldCount;
                }
            }
            return -1;
        }

        protected void checkDuplicateValues() {
        }

        protected String toString(Object[] objectArray) {
            int n = objectArray.length;
            if (n == 0) {
                return "";
            }
            this.fTempBuffer.setLength(0);
            int n2 = 0;
            while (n2 < n) {
                if (n2 > 0) {
                    this.fTempBuffer.append(',');
                }
                this.fTempBuffer.append(objectArray[n2]);
                ++n2;
            }
            return this.fTempBuffer.toString();
        }

        protected String toString(Vector vector, int n, int n2) {
            if (n2 == 0) {
                return "";
            }
            if (n2 == 1) {
                return String.valueOf(vector.elementAt(n));
            }
            StringBuffer stringBuffer = new StringBuffer();
            int n3 = 0;
            while (n3 < n2) {
                if (n3 > 0) {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(n + n3));
                ++n3;
            }
            return stringBuffer.toString();
        }

        public String toString() {
            int n;
            String string = super.toString();
            int n2 = string.lastIndexOf(36);
            if (n2 != -1) {
                string = string.substring(n2 + 1);
            }
            if ((n = string.lastIndexOf(46)) != -1) {
                string = string.substring(n + 1);
            }
            return string + '[' + this.fIdentityConstraint + ']';
        }

        private void addValueType(short s) {
            if (this.fUseValueTypeVector) {
                this.fValueTypes.add(s);
            } else if (this.fValueTypesLength++ == 0) {
                this.fValueType = s;
            } else if (this.fValueType != s) {
                this.fUseValueTypeVector = true;
                if (this.fValueTypes == null) {
                    this.fValueTypes = new ShortVector(this.fValueTypesLength * 2);
                }
                int n = 1;
                while (n < this.fValueTypesLength) {
                    this.fValueTypes.add(this.fValueType);
                    ++n;
                }
                this.fValueTypes.add(s);
            }
        }

        private short getValueTypeAt(int n) {
            if (this.fUseValueTypeVector) {
                return this.fValueTypes.valueAt(n);
            }
            return this.fValueType;
        }

        private boolean valueTypeContains(short s) {
            if (this.fUseValueTypeVector) {
                return this.fValueTypes.contains(s);
            }
            return this.fValueType == s;
        }

        private void addItemValueType(ShortList shortList) {
            if (this.fUseItemValueTypeVector) {
                this.fItemValueTypes.add(shortList);
            } else if (this.fItemValueTypesLength++ == 0) {
                this.fItemValueType = shortList;
            } else if (!(this.fItemValueType == shortList || this.fItemValueType != null && this.fItemValueType.equals(shortList))) {
                this.fUseItemValueTypeVector = true;
                if (this.fItemValueTypes == null) {
                    this.fItemValueTypes = new Vector(this.fItemValueTypesLength * 2);
                }
                int n = 1;
                while (n < this.fItemValueTypesLength) {
                    this.fItemValueTypes.add(this.fItemValueType);
                    ++n;
                }
                this.fItemValueTypes.add(shortList);
            }
        }

        private ShortList getItemValueTypeAt(int n) {
            if (this.fUseItemValueTypeVector) {
                return (ShortList)this.fItemValueTypes.elementAt(n);
            }
            return this.fItemValueType;
        }

        private boolean itemValueTypeContains(ShortList shortList) {
            if (this.fUseItemValueTypeVector) {
                return this.fItemValueTypes.contains(shortList);
            }
            return this.fItemValueType == shortList || this.fItemValueType != null && this.fItemValueType.equals(shortList);
        }
    }

    protected class ValueStoreCache {
        final LocalIDKey fLocalId = new LocalIDKey();
        protected final Vector fValueStores = new Vector();
        protected final Hashtable fIdentityConstraint2ValueStoreMap = new Hashtable();
        protected final Stack fGlobalMapStack = new Stack();
        protected final Hashtable fGlobalIDConstraintMap = new Hashtable();

        public void startDocument() {
            this.fValueStores.removeAllElements();
            this.fIdentityConstraint2ValueStoreMap.clear();
            this.fGlobalIDConstraintMap.clear();
            this.fGlobalMapStack.removeAllElements();
        }

        public void startElement() {
            if (this.fGlobalIDConstraintMap.size() > 0) {
                this.fGlobalMapStack.push(this.fGlobalIDConstraintMap.clone());
            } else {
                this.fGlobalMapStack.push(null);
            }
            this.fGlobalIDConstraintMap.clear();
        }

        public void endElement() {
            if (this.fGlobalMapStack.isEmpty()) {
                return;
            }
            Hashtable hashtable = (Hashtable)this.fGlobalMapStack.pop();
            if (hashtable == null) {
                return;
            }
            Enumeration enumeration = hashtable.keys();
            while (enumeration.hasMoreElements()) {
                IdentityConstraint identityConstraint = (IdentityConstraint)enumeration.nextElement();
                ValueStoreBase valueStoreBase = (ValueStoreBase)hashtable.get(identityConstraint);
                if (valueStoreBase == null) continue;
                ValueStoreBase valueStoreBase2 = (ValueStoreBase)this.fGlobalIDConstraintMap.get(identityConstraint);
                if (valueStoreBase2 == null) {
                    this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase);
                    continue;
                }
                if (valueStoreBase2 == valueStoreBase) continue;
                valueStoreBase2.append(valueStoreBase);
            }
        }

        public void initValueStoresFor(XSElementDecl xSElementDecl, FieldActivator fieldActivator) {
            IdentityConstraint[] identityConstraintArray = xSElementDecl.fIDConstraints;
            int n = xSElementDecl.fIDCPos;
            int n2 = 0;
            while (n2 < n) {
                switch (identityConstraintArray[n2].getCategory()) {
                    case 3: {
                        UniqueOrKey uniqueOrKey = (UniqueOrKey)identityConstraintArray[n2];
                        LocalIDKey localIDKey = new LocalIDKey(uniqueOrKey, XMLSchemaValidator.this.fElementDepth);
                        UniqueValueStore uniqueValueStore = (UniqueValueStore)this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
                        if (uniqueValueStore == null) {
                            uniqueValueStore = new UniqueValueStore(uniqueOrKey);
                            this.fIdentityConstraint2ValueStoreMap.put(localIDKey, uniqueValueStore);
                        } else {
                            uniqueValueStore.clear();
                        }
                        this.fValueStores.addElement(uniqueValueStore);
                        XMLSchemaValidator.this.activateSelectorFor(identityConstraintArray[n2]);
                        break;
                    }
                    case 1: {
                        UniqueOrKey uniqueOrKey = (UniqueOrKey)identityConstraintArray[n2];
                        LocalIDKey localIDKey = new LocalIDKey(uniqueOrKey, XMLSchemaValidator.this.fElementDepth);
                        KeyValueStore keyValueStore = (KeyValueStore)this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
                        if (keyValueStore == null) {
                            keyValueStore = new KeyValueStore(uniqueOrKey);
                            this.fIdentityConstraint2ValueStoreMap.put(localIDKey, keyValueStore);
                        } else {
                            keyValueStore.clear();
                        }
                        this.fValueStores.addElement(keyValueStore);
                        XMLSchemaValidator.this.activateSelectorFor(identityConstraintArray[n2]);
                        break;
                    }
                    case 2: {
                        KeyRef keyRef = (KeyRef)identityConstraintArray[n2];
                        LocalIDKey localIDKey = new LocalIDKey(keyRef, XMLSchemaValidator.this.fElementDepth);
                        KeyRefValueStore keyRefValueStore = (KeyRefValueStore)this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
                        if (keyRefValueStore == null) {
                            keyRefValueStore = new KeyRefValueStore(keyRef, null);
                            this.fIdentityConstraint2ValueStoreMap.put(localIDKey, keyRefValueStore);
                        } else {
                            keyRefValueStore.clear();
                        }
                        this.fValueStores.addElement(keyRefValueStore);
                        XMLSchemaValidator.this.activateSelectorFor(identityConstraintArray[n2]);
                    }
                }
                ++n2;
            }
        }

        public ValueStoreBase getValueStoreFor(IdentityConstraint identityConstraint, int n) {
            this.fLocalId.fDepth = n;
            this.fLocalId.fId = identityConstraint;
            return (ValueStoreBase)this.fIdentityConstraint2ValueStoreMap.get(this.fLocalId);
        }

        public ValueStoreBase getGlobalValueStoreFor(IdentityConstraint identityConstraint) {
            return (ValueStoreBase)this.fGlobalIDConstraintMap.get(identityConstraint);
        }

        public void transplant(IdentityConstraint identityConstraint, int n) {
            this.fLocalId.fDepth = n;
            this.fLocalId.fId = identityConstraint;
            ValueStoreBase valueStoreBase = (ValueStoreBase)this.fIdentityConstraint2ValueStoreMap.get(this.fLocalId);
            if (identityConstraint.getCategory() == 2) {
                return;
            }
            ValueStoreBase valueStoreBase2 = (ValueStoreBase)this.fGlobalIDConstraintMap.get(identityConstraint);
            if (valueStoreBase2 != null) {
                valueStoreBase2.append(valueStoreBase);
                this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase2);
            } else {
                this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase);
            }
        }

        public void endDocument() {
            int n = this.fValueStores.size();
            int n2 = 0;
            while (n2 < n) {
                ValueStoreBase valueStoreBase = (ValueStoreBase)this.fValueStores.elementAt(n2);
                valueStoreBase.endDocument();
                ++n2;
            }
        }

        public String toString() {
            String string = super.toString();
            int n = string.lastIndexOf(36);
            if (n != -1) {
                return string.substring(n + 1);
            }
            int n2 = string.lastIndexOf(46);
            if (n2 != -1) {
                return string.substring(n2 + 1);
            }
            return string;
        }
    }

    protected static class XPathMatcherStack {
        protected XPathMatcher[] fMatchers = new XPathMatcher[4];
        protected int fMatchersCount;
        protected IntStack fContextStack = new IntStack();

        public void clear() {
            int n = 0;
            while (n < this.fMatchersCount) {
                this.fMatchers[n] = null;
                ++n;
            }
            this.fMatchersCount = 0;
            this.fContextStack.clear();
        }

        public int size() {
            return this.fContextStack.size();
        }

        public int getMatcherCount() {
            return this.fMatchersCount;
        }

        public void addMatcher(XPathMatcher xPathMatcher) {
            this.ensureMatcherCapacity();
            this.fMatchers[this.fMatchersCount++] = xPathMatcher;
        }

        public XPathMatcher getMatcherAt(int n) {
            return this.fMatchers[n];
        }

        public void pushContext() {
            this.fContextStack.push(this.fMatchersCount);
        }

        public void popContext() {
            this.fMatchersCount = this.fContextStack.pop();
        }

        private void ensureMatcherCapacity() {
            if (this.fMatchersCount == this.fMatchers.length) {
                XPathMatcher[] xPathMatcherArray = new XPathMatcher[this.fMatchers.length * 2];
                System.arraycopy(this.fMatchers, 0, xPathMatcherArray, 0, this.fMatchers.length);
                this.fMatchers = xPathMatcherArray;
            }
        }
    }

    protected final class XSIErrorReporter {
        XMLErrorReporter fErrorReporter;
        Vector fErrors = new Vector();
        int[] fContext = new int[8];
        int fContextCount;

        protected XSIErrorReporter() {
        }

        public void reset(XMLErrorReporter xMLErrorReporter) {
            this.fErrorReporter = xMLErrorReporter;
            this.fErrors.removeAllElements();
            this.fContextCount = 0;
        }

        public void pushContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return;
            }
            if (this.fContextCount == this.fContext.length) {
                int n = this.fContextCount + 8;
                int[] nArray = new int[n];
                System.arraycopy(this.fContext, 0, nArray, 0, this.fContextCount);
                this.fContext = nArray;
            }
            this.fContext[this.fContextCount++] = this.fErrors.size();
        }

        public String[] popContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int n = this.fContext[--this.fContextCount];
            int n2 = this.fErrors.size() - n;
            if (n2 == 0) {
                return null;
            }
            String[] stringArray = new String[n2];
            int n3 = 0;
            while (n3 < n2) {
                stringArray[n3] = (String)this.fErrors.elementAt(n + n3);
                ++n3;
            }
            this.fErrors.setSize(n);
            return stringArray;
        }

        public String[] mergeContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int n = this.fContext[--this.fContextCount];
            int n2 = this.fErrors.size() - n;
            if (n2 == 0) {
                return null;
            }
            String[] stringArray = new String[n2];
            int n3 = 0;
            while (n3 < n2) {
                stringArray[n3] = (String)this.fErrors.elementAt(n + n3);
                ++n3;
            }
            return stringArray;
        }

        public void reportError(String string, String string2, Object[] objectArray, short s) throws XNIException {
            this.fErrorReporter.reportError(string, string2, objectArray, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.fErrors.addElement(string2);
            }
        }

        public void reportError(XMLLocator xMLLocator, String string, String string2, Object[] objectArray, short s) throws XNIException {
            this.fErrorReporter.reportError(xMLLocator, string, string2, objectArray, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.fErrors.addElement(string2);
            }
        }
    }
}

