/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.traversers;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.SchemaNamespaceSupport;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.XMLSchemaException;
import org.apache.xerces.impl.xs.XMLSchemaLoader;
import org.apache.xerces.impl.xs.XSComplexTypeDecl;
import org.apache.xerces.impl.xs.XSDDescription;
import org.apache.xerces.impl.xs.XSDeclarationPool;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSGrammarBucket;
import org.apache.xerces.impl.xs.XSGroupDecl;
import org.apache.xerces.impl.xs.XSModelGroupImpl;
import org.apache.xerces.impl.xs.XSParticleDecl;
import org.apache.xerces.impl.xs.opti.ElementImpl;
import org.apache.xerces.impl.xs.opti.SchemaDOM;
import org.apache.xerces.impl.xs.opti.SchemaDOMParser;
import org.apache.xerces.impl.xs.opti.SchemaParsingConfig;
import org.apache.xerces.impl.xs.traversers.SchemaContentHandler;
import org.apache.xerces.impl.xs.traversers.XSAnnotationInfo;
import org.apache.xerces.impl.xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.xs.traversers.XSDAttributeGroupTraverser;
import org.apache.xerces.impl.xs.traversers.XSDAttributeTraverser;
import org.apache.xerces.impl.xs.traversers.XSDComplexTypeTraverser;
import org.apache.xerces.impl.xs.traversers.XSDElementTraverser;
import org.apache.xerces.impl.xs.traversers.XSDGroupTraverser;
import org.apache.xerces.impl.xs.traversers.XSDKeyrefTraverser;
import org.apache.xerces.impl.xs.traversers.XSDNotationTraverser;
import org.apache.xerces.impl.xs.traversers.XSDSimpleTypeTraverser;
import org.apache.xerces.impl.xs.traversers.XSDUniqueOrKeyTraverser;
import org.apache.xerces.impl.xs.traversers.XSDWildcardTraverser;
import org.apache.xerces.impl.xs.traversers.XSDocumentInfo;
import org.apache.xerces.impl.xs.util.SimpleLocator;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.parsers.XML11Configuration;
import org.apache.xerces.util.DOMInputSource;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.SAXInputSource;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.grammars.XMLSchemaDescription;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSParticle;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLReaderFactory;

public class XSDHandler {
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String XMLSCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String DISALLOW_DOCTYPE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    private static final String NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final boolean DEBUG_NODE_POOL = false;
    static final int ATTRIBUTE_TYPE = 1;
    static final int ATTRIBUTEGROUP_TYPE = 2;
    static final int ELEMENT_TYPE = 3;
    static final int GROUP_TYPE = 4;
    static final int IDENTITYCONSTRAINT_TYPE = 5;
    static final int NOTATION_TYPE = 6;
    static final int TYPEDECL_TYPE = 7;
    public static final String REDEF_IDENTIFIER = "_fn3dktizrknc9pi";
    protected Hashtable fNotationRegistry = new Hashtable();
    protected XSDeclarationPool fDeclPool = null;
    private Hashtable fUnparsedAttributeRegistry = new Hashtable();
    private Hashtable fUnparsedAttributeGroupRegistry = new Hashtable();
    private Hashtable fUnparsedElementRegistry = new Hashtable();
    private Hashtable fUnparsedGroupRegistry = new Hashtable();
    private Hashtable fUnparsedIdentityConstraintRegistry = new Hashtable();
    private Hashtable fUnparsedNotationRegistry = new Hashtable();
    private Hashtable fUnparsedTypeRegistry = new Hashtable();
    private Hashtable fUnparsedAttributeRegistrySub = new Hashtable();
    private Hashtable fUnparsedAttributeGroupRegistrySub = new Hashtable();
    private Hashtable fUnparsedElementRegistrySub = new Hashtable();
    private Hashtable fUnparsedGroupRegistrySub = new Hashtable();
    private Hashtable fUnparsedIdentityConstraintRegistrySub = new Hashtable();
    private Hashtable fUnparsedNotationRegistrySub = new Hashtable();
    private Hashtable fUnparsedTypeRegistrySub = new Hashtable();
    private Hashtable fXSDocumentInfoRegistry = new Hashtable();
    private Hashtable fDependencyMap = new Hashtable();
    private Hashtable fImportMap = new Hashtable();
    private Vector fAllTNSs = new Vector();
    private Hashtable fLocationPairs = null;
    private static final Hashtable EMPTY_TABLE = new Hashtable();
    Hashtable fHiddenNodes = null;
    private Hashtable fTraversed = new Hashtable();
    private Hashtable fDoc2SystemId = new Hashtable();
    private XSDocumentInfo fRoot = null;
    private Hashtable fDoc2XSDocumentMap = new Hashtable();
    private Hashtable fRedefine2XSDMap = new Hashtable();
    private Hashtable fRedefine2NSSupport = new Hashtable();
    private Hashtable fRedefinedRestrictedAttributeGroupRegistry = new Hashtable();
    private Hashtable fRedefinedRestrictedGroupRegistry = new Hashtable();
    private boolean fLastSchemaWasDuplicate;
    private boolean fValidateAnnotations = false;
    private boolean fHonourAllSchemaLocations = false;
    private XMLErrorReporter fErrorReporter;
    private XMLEntityResolver fEntityResolver;
    private XSAttributeChecker fAttributeChecker;
    private SymbolTable fSymbolTable;
    private XSGrammarBucket fGrammarBucket;
    private XSDDescription fSchemaGrammarDescription;
    private XMLGrammarPool fGrammarPool;
    XSDAttributeGroupTraverser fAttributeGroupTraverser;
    XSDAttributeTraverser fAttributeTraverser;
    XSDComplexTypeTraverser fComplexTypeTraverser;
    XSDElementTraverser fElementTraverser;
    XSDGroupTraverser fGroupTraverser;
    XSDKeyrefTraverser fKeyrefTraverser;
    XSDNotationTraverser fNotationTraverser;
    XSDSimpleTypeTraverser fSimpleTypeTraverser;
    XSDUniqueOrKeyTraverser fUniqueOrKeyTraverser;
    XSDWildcardTraverser fWildCardTraverser;
    SchemaDOMParser fSchemaParser;
    SchemaContentHandler fXSContentHandler;
    XML11Configuration fAnnotationValidator;
    XSAnnotationGrammarPool fGrammarBucketAdapter;
    private static final int INIT_STACK_SIZE = 30;
    private static final int INC_STACK_SIZE = 10;
    private int fLocalElemStackPos = 0;
    private XSParticleDecl[] fParticle = new XSParticleDecl[30];
    private Element[] fLocalElementDecl = new Element[30];
    private XSDocumentInfo[] fLocalElementDecl_schema = new XSDocumentInfo[30];
    private int[] fAllContext = new int[30];
    private XSObject[] fParent = new XSObject[30];
    private String[][] fLocalElemNamespaceContext = new String[30][1];
    private static final int INIT_KEYREF_STACK = 2;
    private static final int INC_KEYREF_STACK_AMOUNT = 2;
    private int fKeyrefStackPos = 0;
    private Element[] fKeyrefs = new Element[2];
    private XSDocumentInfo[] fKeyrefsMapXSDocumentInfo = new XSDocumentInfo[2];
    private XSElementDecl[] fKeyrefElems = new XSElementDecl[2];
    private String[][] fKeyrefNamespaceContext = new String[2][1];
    private static final String[][] NS_ERROR_CODES = new String[][]{{"src-include.2.1", "src-include.2.1"}, {"src-redefine.3.1", "src-redefine.3.1"}, {"src-import.3.1", "src-import.3.2"}, null, {"TargetNamespace.1", "TargetNamespace.2"}, {"TargetNamespace.1", "TargetNamespace.2"}, {"TargetNamespace.1", "TargetNamespace.2"}, {"TargetNamespace.1", "TargetNamespace.2"}};
    private static final String[] ELE_ERROR_CODES = new String[]{"src-include.1", "src-redefine.2", "src-import.2", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4"};
    private Vector fReportedTNS = null;
    private static final String[] COMP_TYPE = new String[]{null, "attribute declaration", "attribute group", "element declaration", "group", "identity constraint", "notation", "type definition"};
    private static final String[] CIRCULAR_CODES = new String[]{"Internal-Error", "Internal-Error", "src-attribute_group.3", "e-props-correct.6", "mg-props-correct.2", "Internal-Error", "Internal-Error", "st-props-correct.2"};
    private SimpleLocator xl = new SimpleLocator();

    private String null2EmptyString(String string) {
        return string == null ? XMLSymbols.EMPTY_STRING : string;
    }

    private String emptyString2Null(String string) {
        return string == XMLSymbols.EMPTY_STRING ? null : string;
    }

    private String doc2SystemId(Element element) {
        String string = null;
        if (element.getOwnerDocument() instanceof SchemaDOM) {
            string = ((SchemaDOM)element.getOwnerDocument()).getDocumentURI();
        }
        return string != null ? string : (String)this.fDoc2SystemId.get(element);
    }

    public XSDHandler() {
        this.fHiddenNodes = new Hashtable();
        this.fSchemaParser = new SchemaDOMParser(new SchemaParsingConfig());
    }

    public XSDHandler(XSGrammarBucket xSGrammarBucket) {
        this();
        this.fGrammarBucket = xSGrammarBucket;
        this.fSchemaGrammarDescription = new XSDDescription();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public SchemaGrammar parseSchema(XMLInputSource xMLInputSource, XSDDescription xSDDescription, Hashtable hashtable) throws IOException {
        Object object;
        Object object2;
        this.fLocationPairs = hashtable;
        this.fSchemaParser.resetNodePool();
        SchemaGrammar schemaGrammar = null;
        String string = null;
        short s = xSDDescription.getContextType();
        if (s != 3) {
            schemaGrammar = this.fHonourAllSchemaLocations && s == 2 && this.isExistingGrammar(xSDDescription) ? this.fGrammarBucket.getGrammar(xSDDescription.getTargetNamespace()) : this.findGrammar(xSDDescription);
            if (schemaGrammar != null) {
                return schemaGrammar;
            }
            string = xSDDescription.getTargetNamespace();
            if (string != null) {
                string = this.fSymbolTable.addSymbol(string);
            }
        }
        this.prepareForParse();
        Document document = null;
        Element element = null;
        if (xMLInputSource instanceof DOMInputSource) {
            this.fHiddenNodes.clear();
            object2 = ((DOMInputSource)xMLInputSource).getNode();
            if (object2 instanceof Document) {
                document = (Document)object2;
                element = DOMUtil.getRoot(document);
            } else {
                if (!(object2 instanceof Element)) return null;
                element = (Element)object2;
            }
        } else if (xMLInputSource instanceof SAXInputSource) {
            object2 = ((SAXInputSource)xMLInputSource).getXMLReader();
            object = ((SAXInputSource)xMLInputSource).getInputSource();
            boolean bl = false;
            if (object2 != null) {
                try {
                    bl = object2.getFeature(NAMESPACE_PREFIXES);
                }
                catch (SAXException sAXException) {}
            } else {
                try {
                    object2 = XMLReaderFactory.createXMLReader();
                }
                catch (SAXException sAXException) {
                    object2 = new SAXParser();
                }
                try {
                    object2.setFeature(NAMESPACE_PREFIXES, true);
                    bl = true;
                }
                catch (SAXException sAXException) {
                    // empty catch block
                }
            }
            boolean bl2 = false;
            try {
                bl2 = object2.getFeature(STRING_INTERNING);
            }
            catch (SAXException sAXException) {
                // empty catch block
            }
            if (this.fXSContentHandler == null) {
                this.fXSContentHandler = new SchemaContentHandler();
            }
            this.fXSContentHandler.reset(this.fSchemaParser, this.fSymbolTable, bl, bl2);
            object2.setContentHandler(this.fXSContentHandler);
            object2.setErrorHandler(this.fErrorReporter.getSAXErrorHandler());
            try {
                object2.parse((InputSource)object);
            }
            catch (SAXException sAXException) {
                return null;
            }
            document = this.fXSContentHandler.getDocument();
            if (document == null) {
                return null;
            }
            element = DOMUtil.getRoot(document);
        } else {
            element = this.getSchemaDocument(string, xMLInputSource, s == 3, s, null);
        }
        if (element == null) {
            return null;
        }
        if (s == 3) {
            object2 = element;
            string = DOMUtil.getAttrValue((Element)object2, SchemaSymbols.ATT_TARGETNAMESPACE);
            if (string != null && string.length() > 0) {
                string = this.fSymbolTable.addSymbol(string);
                xSDDescription.setTargetNamespace(string);
            } else {
                string = null;
            }
            schemaGrammar = this.findGrammar(xSDDescription);
            if (schemaGrammar != null) {
                return schemaGrammar;
            }
            object = XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false);
            XSDKey xSDKey = new XSDKey((String)object, s, string);
            this.fTraversed.put(xSDKey, element);
            if (object != null) {
                this.fDoc2SystemId.put(element, object);
            }
        }
        this.prepareForTraverse();
        this.fRoot = this.constructTrees(element, xMLInputSource.getSystemId(), xSDDescription);
        if (this.fRoot == null) {
            return null;
        }
        this.buildGlobalNameRegistries();
        object2 = this.fValidateAnnotations ? new ArrayList() : null;
        this.traverseSchemas((ArrayList)object2);
        this.traverseLocalElements();
        this.resolveKeyRefs();
        int n = this.fAllTNSs.size() - 1;
        while (n >= 0) {
            String string2 = (String)this.fAllTNSs.elementAt(n);
            Vector vector = (Vector)this.fImportMap.get(string2);
            SchemaGrammar schemaGrammar2 = this.fGrammarBucket.getGrammar(this.emptyString2Null(string2));
            if (schemaGrammar2 != null) {
                int n2 = 0;
                int n3 = 0;
                while (n3 < vector.size()) {
                    SchemaGrammar schemaGrammar3 = this.fGrammarBucket.getGrammar((String)vector.elementAt(n3));
                    if (schemaGrammar3 != null) {
                        vector.setElementAt(schemaGrammar3, n2++);
                    }
                    ++n3;
                }
                vector.setSize(n2);
                schemaGrammar2.setImportedGrammars(vector);
            }
            --n;
        }
        if (!this.fValidateAnnotations || ((ArrayList)object2).size() <= 0) return this.fGrammarBucket.getGrammar(this.fRoot.fTargetNamespace);
        this.validateAnnotations((ArrayList)object2);
        return this.fGrammarBucket.getGrammar(this.fRoot.fTargetNamespace);
    }

    private void validateAnnotations(ArrayList arrayList) {
        if (this.fAnnotationValidator == null) {
            this.createAnnotationValidator();
        }
        int n = arrayList.size();
        XMLInputSource xMLInputSource = new XMLInputSource(null, null, null);
        this.fGrammarBucketAdapter.refreshGrammars(this.fGrammarBucket);
        int n2 = 0;
        while (n2 < n) {
            xMLInputSource.setSystemId((String)arrayList.get(n2));
            XSAnnotationInfo xSAnnotationInfo = (XSAnnotationInfo)arrayList.get(n2 + 1);
            while (xSAnnotationInfo != null) {
                xMLInputSource.setCharacterStream(new StringReader(xSAnnotationInfo.fAnnotation));
                try {
                    this.fAnnotationValidator.parse(xMLInputSource);
                }
                catch (IOException iOException) {
                    // empty catch block
                }
                xSAnnotationInfo = xSAnnotationInfo.next;
            }
            n2 += 2;
        }
    }

    private void createAnnotationValidator() {
        this.fAnnotationValidator = new XML11Configuration();
        this.fGrammarBucketAdapter = new XSAnnotationGrammarPool();
        this.fAnnotationValidator.setFeature(VALIDATION, true);
        this.fAnnotationValidator.setFeature(XMLSCHEMA_VALIDATION, true);
        this.fAnnotationValidator.setProperty(XMLGRAMMAR_POOL, this.fGrammarBucketAdapter);
        XMLErrorHandler xMLErrorHandler = this.fErrorReporter.getErrorHandler();
        this.fAnnotationValidator.setProperty(ERROR_HANDLER, xMLErrorHandler != null ? xMLErrorHandler : new DefaultErrorHandler());
    }

    SchemaGrammar getGrammar(String string) {
        return this.fGrammarBucket.getGrammar(string);
    }

    protected SchemaGrammar findGrammar(XSDDescription xSDDescription) {
        SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(xSDDescription.getTargetNamespace());
        if (schemaGrammar == null && this.fGrammarPool != null && (schemaGrammar = (SchemaGrammar)this.fGrammarPool.retrieveGrammar(xSDDescription)) != null && !this.fGrammarBucket.putGrammar(schemaGrammar, true)) {
            this.reportSchemaWarning("GrammarConflict", null, null);
            schemaGrammar = null;
        }
        return schemaGrammar;
    }

    protected XSDocumentInfo constructTrees(Element element, String string, XSDDescription xSDDescription) {
        if (element == null) {
            return null;
        }
        String string2 = xSDDescription.getTargetNamespace();
        short s = xSDDescription.getContextType();
        XSDocumentInfo xSDocumentInfo = null;
        try {
            xSDocumentInfo = new XSDocumentInfo(element, this.fAttributeChecker, this.fSymbolTable);
        }
        catch (XMLSchemaException xMLSchemaException) {
            this.reportSchemaError(ELE_ERROR_CODES[s], new Object[]{string}, element);
            return null;
        }
        if (xSDocumentInfo.fTargetNamespace != null && xSDocumentInfo.fTargetNamespace.length() == 0) {
            this.reportSchemaWarning("EmptyTargetNamespace", new Object[]{string}, element);
            xSDocumentInfo.fTargetNamespace = null;
        }
        if (string2 != null) {
            int n = 0;
            if (s == 0 || s == 1) {
                if (xSDocumentInfo.fTargetNamespace == null) {
                    xSDocumentInfo.fTargetNamespace = string2;
                    xSDocumentInfo.fIsChameleonSchema = true;
                } else if (string2 != xSDocumentInfo.fTargetNamespace) {
                    this.reportSchemaError(NS_ERROR_CODES[s][n], new Object[]{string2, xSDocumentInfo.fTargetNamespace}, element);
                    return null;
                }
            } else if (s != 3 && string2 != xSDocumentInfo.fTargetNamespace) {
                this.reportSchemaError(NS_ERROR_CODES[s][n], new Object[]{string2, xSDocumentInfo.fTargetNamespace}, element);
                return null;
            }
        } else if (xSDocumentInfo.fTargetNamespace != null) {
            if (s == 3) {
                xSDDescription.setTargetNamespace(xSDocumentInfo.fTargetNamespace);
                string2 = xSDocumentInfo.fTargetNamespace;
            } else {
                int n = 1;
                this.reportSchemaError(NS_ERROR_CODES[s][n], new Object[]{string2, xSDocumentInfo.fTargetNamespace}, element);
                return null;
            }
        }
        xSDocumentInfo.addAllowedNS(xSDocumentInfo.fTargetNamespace);
        SchemaGrammar schemaGrammar = null;
        if (s == 0 || s == 1) {
            schemaGrammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
        } else if (this.fHonourAllSchemaLocations && s == 2) {
            schemaGrammar = this.findGrammar(xSDDescription);
            if (schemaGrammar == null) {
                schemaGrammar = new SchemaGrammar(xSDocumentInfo.fTargetNamespace, xSDDescription.makeClone(), this.fSymbolTable);
                this.fGrammarBucket.putGrammar(schemaGrammar);
            }
        } else {
            schemaGrammar = new SchemaGrammar(xSDocumentInfo.fTargetNamespace, xSDDescription.makeClone(), this.fSymbolTable);
            this.fGrammarBucket.putGrammar(schemaGrammar);
        }
        schemaGrammar.addDocument(null, (String)this.fDoc2SystemId.get(xSDocumentInfo.fSchemaElement));
        this.fDoc2XSDocumentMap.put(element, xSDocumentInfo);
        Vector<Object[]> vector = new Vector<Object[]>();
        Element element2 = element;
        Element element3 = null;
        Element element4 = DOMUtil.getFirstChildElement(element2);
        while (element4 != null) {
            block45: {
                Object object;
                String string3;
                String string4;
                block49: {
                    short s2;
                    String string5;
                    block52: {
                        Object object2;
                        String string6;
                        Element element5;
                        block50: {
                            block51: {
                                block46: {
                                    block48: {
                                        block47: {
                                            string5 = null;
                                            string4 = null;
                                            string3 = DOMUtil.getLocalName(element4);
                                            s2 = -1;
                                            if (string3.equals(SchemaSymbols.ELT_ANNOTATION)) break block45;
                                            if (!string3.equals(SchemaSymbols.ELT_IMPORT)) break block46;
                                            s2 = 2;
                                            object = this.fAttributeChecker.checkAttributes(element4, true, xSDocumentInfo);
                                            string4 = (String)object[XSAttributeChecker.ATTIDX_SCHEMALOCATION];
                                            string5 = (String)object[XSAttributeChecker.ATTIDX_NAMESPACE];
                                            if (string5 != null) {
                                                string5 = this.fSymbolTable.addSymbol(string5);
                                            }
                                            if (string5 == xSDocumentInfo.fTargetNamespace) {
                                                this.reportSchemaError(string5 != null ? "src-import.1.1" : "src-import.1.2", new Object[]{string5}, element4);
                                            }
                                            if ((element5 = DOMUtil.getFirstChildElement(element4)) != null) {
                                                string6 = DOMUtil.getLocalName(element5);
                                                if (string6.equals(SchemaSymbols.ELT_ANNOTATION)) {
                                                    schemaGrammar.addAnnotation(this.fElementTraverser.traverseAnnotationDecl(element5, (Object[])object, true, xSDocumentInfo));
                                                } else {
                                                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{string3, "annotation?", string6}, element4);
                                                }
                                                if (DOMUtil.getNextSiblingElement(element5) != null) {
                                                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{string3, "annotation?", DOMUtil.getLocalName(DOMUtil.getNextSiblingElement(element5))}, element4);
                                                }
                                            } else {
                                                string6 = DOMUtil.getSyntheticAnnotation(element4);
                                                if (string6 != null) {
                                                    schemaGrammar.addAnnotation(this.fElementTraverser.traverseSyntheticAnnotation(element4, string6, (Object[])object, true, xSDocumentInfo));
                                                }
                                            }
                                            this.fAttributeChecker.returnAttrArray((Object[])object, xSDocumentInfo);
                                            if (!xSDocumentInfo.isAllowedNS(string5)) break block47;
                                            if (this.fHonourAllSchemaLocations) break block48;
                                            break block45;
                                        }
                                        xSDocumentInfo.addAllowedNS(string5);
                                    }
                                    if ((object2 = (Vector)this.fImportMap.get(string6 = this.null2EmptyString(xSDocumentInfo.fTargetNamespace))) == null) {
                                        this.fAllTNSs.addElement(string6);
                                        object2 = new Vector<String>();
                                        this.fImportMap.put(string6, object2);
                                        ((Vector)object2).addElement(string5);
                                    } else if (!((Vector)object2).contains(string5)) {
                                        ((Vector)object2).addElement(string5);
                                    }
                                    this.fSchemaGrammarDescription.reset();
                                    this.fSchemaGrammarDescription.setContextType((short)2);
                                    this.fSchemaGrammarDescription.setBaseSystemId(this.doc2SystemId(element));
                                    this.fSchemaGrammarDescription.setLocationHints(new String[]{string4});
                                    this.fSchemaGrammarDescription.setTargetNamespace(string5);
                                    if (!this.fHonourAllSchemaLocations && this.findGrammar(this.fSchemaGrammarDescription) != null || this.isExistingGrammar(this.fSchemaGrammarDescription)) break block45;
                                    element3 = this.resolveSchema(this.fSchemaGrammarDescription, false, element4, this.findGrammar(this.fSchemaGrammarDescription) == null);
                                    break block49;
                                }
                                if (!string3.equals(SchemaSymbols.ELT_INCLUDE) && !string3.equals(SchemaSymbols.ELT_REDEFINE)) break;
                                object = this.fAttributeChecker.checkAttributes(element4, true, xSDocumentInfo);
                                string4 = (String)object[XSAttributeChecker.ATTIDX_SCHEMALOCATION];
                                if (string3.equals(SchemaSymbols.ELT_REDEFINE)) {
                                    this.fRedefine2NSSupport.put(element4, new SchemaNamespaceSupport(xSDocumentInfo.fNamespaceSupport));
                                }
                                if (!string3.equals(SchemaSymbols.ELT_INCLUDE)) break block50;
                                element5 = DOMUtil.getFirstChildElement(element4);
                                if (element5 == null) break block51;
                                string6 = DOMUtil.getLocalName(element5);
                                if (string6.equals(SchemaSymbols.ELT_ANNOTATION)) {
                                    schemaGrammar.addAnnotation(this.fElementTraverser.traverseAnnotationDecl(element5, (Object[])object, true, xSDocumentInfo));
                                } else {
                                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{string3, "annotation?", string6}, element4);
                                }
                                if (DOMUtil.getNextSiblingElement(element5) != null) {
                                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{string3, "annotation?", DOMUtil.getLocalName(DOMUtil.getNextSiblingElement(element5))}, element4);
                                }
                                break block52;
                            }
                            string6 = DOMUtil.getSyntheticAnnotation(element4);
                            if (string6 == null) break block52;
                            schemaGrammar.addAnnotation(this.fElementTraverser.traverseSyntheticAnnotation(element4, string6, (Object[])object, true, xSDocumentInfo));
                            break block52;
                        }
                        element5 = DOMUtil.getFirstChildElement(element4);
                        while (element5 != null) {
                            string6 = DOMUtil.getLocalName(element5);
                            if (string6.equals(SchemaSymbols.ELT_ANNOTATION)) {
                                schemaGrammar.addAnnotation(this.fElementTraverser.traverseAnnotationDecl(element5, (Object[])object, true, xSDocumentInfo));
                                DOMUtil.setHidden(element5, this.fHiddenNodes);
                            } else {
                                object2 = DOMUtil.getSyntheticAnnotation(element4);
                                if (object2 != null) {
                                    schemaGrammar.addAnnotation(this.fElementTraverser.traverseSyntheticAnnotation(element4, (String)object2, (Object[])object, true, xSDocumentInfo));
                                }
                            }
                            element5 = DOMUtil.getNextSiblingElement(element5);
                        }
                    }
                    this.fAttributeChecker.returnAttrArray((Object[])object, xSDocumentInfo);
                    if (string4 == null) {
                        this.reportSchemaError("s4s-att-must-appear", new Object[]{"<include> or <redefine>", "schemaLocation"}, element4);
                    }
                    boolean bl = false;
                    s2 = 0;
                    if (string3.equals(SchemaSymbols.ELT_REDEFINE)) {
                        bl = this.nonAnnotationContent(element4);
                        s2 = 1;
                    }
                    this.fSchemaGrammarDescription.reset();
                    this.fSchemaGrammarDescription.setContextType(s2);
                    this.fSchemaGrammarDescription.setBaseSystemId(this.doc2SystemId(element));
                    this.fSchemaGrammarDescription.setLocationHints(new String[]{string4});
                    this.fSchemaGrammarDescription.setTargetNamespace(string2);
                    element3 = this.resolveSchema(this.fSchemaGrammarDescription, bl, element4, true);
                    string5 = xSDocumentInfo.fTargetNamespace;
                }
                object = null;
                object = this.fLastSchemaWasDuplicate ? (element3 == null ? null : (XSDocumentInfo)this.fDoc2XSDocumentMap.get(element3)) : this.constructTrees(element3, string4, this.fSchemaGrammarDescription);
                if (string3.equals(SchemaSymbols.ELT_REDEFINE) && object != null) {
                    this.fRedefine2XSDMap.put(element4, object);
                }
                if (element3 != null) {
                    if (object != null) {
                        vector.addElement((Object[])object);
                    }
                    element3 = null;
                }
            }
            element4 = DOMUtil.getNextSiblingElement(element4);
        }
        this.fDependencyMap.put(xSDocumentInfo, vector);
        return xSDocumentInfo;
    }

    private boolean isExistingGrammar(XSDDescription xSDDescription) {
        SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(xSDDescription.getTargetNamespace());
        if (schemaGrammar == null) {
            return this.findGrammar(xSDDescription) != null;
        }
        try {
            return schemaGrammar.getDocumentLocations().contains(XMLEntityManager.expandSystemId(xSDDescription.getLiteralSystemId(), xSDDescription.getBaseSystemId(), false));
        }
        catch (URI.MalformedURIException malformedURIException) {
            return false;
        }
    }

    protected void buildGlobalNameRegistries() {
        Stack<XSDocumentInfo> stack = new Stack<XSDocumentInfo>();
        stack.push(this.fRoot);
        while (!stack.empty()) {
            Object object;
            XSDocumentInfo xSDocumentInfo = (XSDocumentInfo)stack.pop();
            Element element = xSDocumentInfo.fSchemaElement;
            if (DOMUtil.isHidden(element, this.fHiddenNodes)) continue;
            Element element2 = element;
            boolean bl = true;
            Element element3 = DOMUtil.getFirstChildElement(element2);
            while (element3 != null) {
                if (!DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    String string;
                    String string2;
                    if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_INCLUDE) || DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_IMPORT)) {
                        if (!bl) {
                            this.reportSchemaError("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(element3)}, element3);
                        }
                        DOMUtil.setHidden(element3, this.fHiddenNodes);
                    } else if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_REDEFINE)) {
                        if (!bl) {
                            this.reportSchemaError("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(element3)}, element3);
                        }
                        object = DOMUtil.getFirstChildElement(element3);
                        while (object != null) {
                            string2 = DOMUtil.getAttrValue((Element)object, SchemaSymbols.ATT_NAME);
                            if (string2.length() != 0) {
                                String string3;
                                string = xSDocumentInfo.fTargetNamespace == null ? "," + string2 : xSDocumentInfo.fTargetNamespace + "," + string2;
                                String string4 = DOMUtil.getLocalName((Node)object);
                                if (string4.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                    this.checkForDuplicateNames(string, this.fUnparsedAttributeGroupRegistry, this.fUnparsedAttributeGroupRegistrySub, (Element)object, xSDocumentInfo);
                                    string3 = DOMUtil.getAttrValue((Element)object, SchemaSymbols.ATT_NAME) + REDEF_IDENTIFIER;
                                    this.renameRedefiningComponents(xSDocumentInfo, (Element)object, SchemaSymbols.ELT_ATTRIBUTEGROUP, string2, string3);
                                } else if (string4.equals(SchemaSymbols.ELT_COMPLEXTYPE) || string4.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                    this.checkForDuplicateNames(string, this.fUnparsedTypeRegistry, this.fUnparsedTypeRegistrySub, (Element)object, xSDocumentInfo);
                                    string3 = DOMUtil.getAttrValue((Element)object, SchemaSymbols.ATT_NAME) + REDEF_IDENTIFIER;
                                    if (string4.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                                        this.renameRedefiningComponents(xSDocumentInfo, (Element)object, SchemaSymbols.ELT_COMPLEXTYPE, string2, string3);
                                    } else {
                                        this.renameRedefiningComponents(xSDocumentInfo, (Element)object, SchemaSymbols.ELT_SIMPLETYPE, string2, string3);
                                    }
                                } else if (string4.equals(SchemaSymbols.ELT_GROUP)) {
                                    this.checkForDuplicateNames(string, this.fUnparsedGroupRegistry, this.fUnparsedGroupRegistrySub, (Element)object, xSDocumentInfo);
                                    string3 = DOMUtil.getAttrValue((Element)object, SchemaSymbols.ATT_NAME) + REDEF_IDENTIFIER;
                                    this.renameRedefiningComponents(xSDocumentInfo, (Element)object, SchemaSymbols.ELT_GROUP, string2, string3);
                                }
                            }
                            object = DOMUtil.getNextSiblingElement((Node)object);
                        }
                    } else {
                        bl = false;
                        object = DOMUtil.getAttrValue(element3, SchemaSymbols.ATT_NAME);
                        if (((String)object).length() != 0) {
                            string2 = xSDocumentInfo.fTargetNamespace == null ? "," + (String)object : xSDocumentInfo.fTargetNamespace + "," + (String)object;
                            string = DOMUtil.getLocalName(element3);
                            if (string.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedAttributeRegistry, this.fUnparsedAttributeRegistrySub, element3, xSDocumentInfo);
                            } else if (string.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedAttributeGroupRegistry, this.fUnparsedAttributeGroupRegistrySub, element3, xSDocumentInfo);
                            } else if (string.equals(SchemaSymbols.ELT_COMPLEXTYPE) || string.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedTypeRegistry, this.fUnparsedTypeRegistrySub, element3, xSDocumentInfo);
                            } else if (string.equals(SchemaSymbols.ELT_ELEMENT)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedElementRegistry, this.fUnparsedElementRegistrySub, element3, xSDocumentInfo);
                            } else if (string.equals(SchemaSymbols.ELT_GROUP)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedGroupRegistry, this.fUnparsedGroupRegistrySub, element3, xSDocumentInfo);
                            } else if (string.equals(SchemaSymbols.ELT_NOTATION)) {
                                this.checkForDuplicateNames(string2, this.fUnparsedNotationRegistry, this.fUnparsedNotationRegistrySub, element3, xSDocumentInfo);
                            }
                        }
                    }
                }
                element3 = DOMUtil.getNextSiblingElement(element3);
            }
            DOMUtil.setHidden(element, this.fHiddenNodes);
            object = (Vector)this.fDependencyMap.get(xSDocumentInfo);
            int n = 0;
            while (n < ((Vector)object).size()) {
                stack.push((XSDocumentInfo)((Vector)object).elementAt(n));
                ++n;
            }
        }
    }

    protected void traverseSchemas(ArrayList arrayList) {
        this.setSchemasVisible(this.fRoot);
        Stack<XSDocumentInfo> stack = new Stack<XSDocumentInfo>();
        stack.push(this.fRoot);
        while (!stack.empty()) {
            Object object;
            XSDocumentInfo xSDocumentInfo = (XSDocumentInfo)stack.pop();
            Element element = xSDocumentInfo.fSchemaElement;
            SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
            if (DOMUtil.isHidden(element, this.fHiddenNodes)) continue;
            Element element2 = element;
            boolean bl = false;
            Element element3 = DOMUtil.getFirstVisibleChildElement(element2, this.fHiddenNodes);
            while (element3 != null) {
                DOMUtil.setHidden(element3, this.fHiddenNodes);
                object = DOMUtil.getLocalName(element3);
                if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_REDEFINE)) {
                    xSDocumentInfo.backupNSSupport((SchemaNamespaceSupport)this.fRedefine2NSSupport.get(element3));
                    Element element4 = DOMUtil.getFirstVisibleChildElement(element3, this.fHiddenNodes);
                    while (element4 != null) {
                        String string = DOMUtil.getLocalName(element4);
                        DOMUtil.setHidden(element4, this.fHiddenNodes);
                        if (string.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                            this.fAttributeGroupTraverser.traverseGlobal(element4, xSDocumentInfo, schemaGrammar);
                        } else if (string.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                            this.fComplexTypeTraverser.traverseGlobal(element4, xSDocumentInfo, schemaGrammar);
                        } else if (string.equals(SchemaSymbols.ELT_GROUP)) {
                            this.fGroupTraverser.traverseGlobal(element4, xSDocumentInfo, schemaGrammar);
                        } else if (string.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                            this.fSimpleTypeTraverser.traverseGlobal(element4, xSDocumentInfo, schemaGrammar);
                        } else {
                            this.reportSchemaError("s4s-elt-must-match.1", new Object[]{DOMUtil.getLocalName(element3), "(annotation | (simpleType | complexType | group | attributeGroup))*", string}, element4);
                        }
                        element4 = DOMUtil.getNextVisibleSiblingElement(element4, this.fHiddenNodes);
                    }
                    xSDocumentInfo.restoreNSSupport();
                } else if (((String)object).equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                    this.fAttributeTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                    this.fAttributeGroupTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                    this.fComplexTypeTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_ELEMENT)) {
                    this.fElementTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_GROUP)) {
                    this.fGroupTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_NOTATION)) {
                    this.fNotationTraverser.traverse(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                    this.fSimpleTypeTraverser.traverseGlobal(element3, xSDocumentInfo, schemaGrammar);
                } else if (((String)object).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    schemaGrammar.addAnnotation(this.fElementTraverser.traverseAnnotationDecl(element3, xSDocumentInfo.getSchemaAttrs(), true, xSDocumentInfo));
                    bl = true;
                } else {
                    this.reportSchemaError("s4s-elt-invalid-content.1", new Object[]{SchemaSymbols.ELT_SCHEMA, DOMUtil.getLocalName(element3)}, element3);
                }
                element3 = DOMUtil.getNextVisibleSiblingElement(element3, this.fHiddenNodes);
            }
            if (!bl && (object = DOMUtil.getSyntheticAnnotation(element2)) != null) {
                schemaGrammar.addAnnotation(this.fElementTraverser.traverseSyntheticAnnotation(element2, (String)object, xSDocumentInfo.getSchemaAttrs(), true, xSDocumentInfo));
            }
            if (arrayList != null && (object = xSDocumentInfo.getAnnotations()) != null) {
                arrayList.add(this.doc2SystemId(element));
                arrayList.add(object);
            }
            xSDocumentInfo.returnSchemaAttrs();
            DOMUtil.setHidden(element, this.fHiddenNodes);
            object = (Vector)this.fDependencyMap.get(xSDocumentInfo);
            int n = 0;
            while (n < ((Vector)object).size()) {
                stack.push((XSDocumentInfo)((Vector)object).elementAt(n));
                ++n;
            }
        }
    }

    private final boolean needReportTNSError(String string) {
        if (this.fReportedTNS == null) {
            this.fReportedTNS = new Vector();
        } else if (this.fReportedTNS.contains(string)) {
            return false;
        }
        this.fReportedTNS.addElement(string);
        return true;
    }

    protected Object getGlobalDecl(XSDocumentInfo xSDocumentInfo, int n, QName qName, Element element) {
        Object object;
        if (qName.uri != null && qName.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA && n == 7 && (object = SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName.localpart)) != null) {
            return object;
        }
        if (!xSDocumentInfo.isAllowedNS(qName.uri)) {
            if (xSDocumentInfo.needReportTNSError(qName.uri)) {
                object = qName.uri == null ? "src-resolve.4.1" : "src-resolve.4.2";
                this.reportSchemaError((String)object, new Object[]{this.fDoc2SystemId.get(xSDocumentInfo.fSchemaElement), qName.uri, qName.rawname}, element);
            }
            return null;
        }
        object = this.fGrammarBucket.getGrammar(qName.uri);
        if (object == null) {
            if (this.needReportTNSError(qName.uri)) {
                this.reportSchemaError("src-resolve", new Object[]{qName.rawname, COMP_TYPE[n]}, element);
            }
            return null;
        }
        XSObject xSObject = null;
        switch (n) {
            case 1: {
                xSObject = ((SchemaGrammar)object).getGlobalAttributeDecl(qName.localpart);
                break;
            }
            case 2: {
                xSObject = ((SchemaGrammar)object).getGlobalAttributeGroupDecl(qName.localpart);
                break;
            }
            case 3: {
                xSObject = ((SchemaGrammar)object).getGlobalElementDecl(qName.localpart);
                break;
            }
            case 4: {
                xSObject = ((SchemaGrammar)object).getGlobalGroupDecl(qName.localpart);
                break;
            }
            case 5: {
                xSObject = ((SchemaGrammar)object).getIDConstraintDecl(qName.localpart);
                break;
            }
            case 6: {
                xSObject = ((SchemaGrammar)object).getGlobalNotationDecl(qName.localpart);
                break;
            }
            case 7: {
                xSObject = ((SchemaGrammar)object).getGlobalTypeDecl(qName.localpart);
            }
        }
        if (xSObject != null) {
            return xSObject;
        }
        XSDocumentInfo xSDocumentInfo2 = null;
        Element element2 = null;
        XSDocumentInfo xSDocumentInfo3 = null;
        String string = qName.uri == null ? "," + qName.localpart : qName.uri + "," + qName.localpart;
        switch (n) {
            case 1: {
                element2 = (Element)this.fUnparsedAttributeRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedAttributeRegistrySub.get(string);
                break;
            }
            case 2: {
                element2 = (Element)this.fUnparsedAttributeGroupRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedAttributeGroupRegistrySub.get(string);
                break;
            }
            case 3: {
                element2 = (Element)this.fUnparsedElementRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedElementRegistrySub.get(string);
                break;
            }
            case 4: {
                element2 = (Element)this.fUnparsedGroupRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedGroupRegistrySub.get(string);
                break;
            }
            case 5: {
                element2 = (Element)this.fUnparsedIdentityConstraintRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedIdentityConstraintRegistrySub.get(string);
                break;
            }
            case 6: {
                element2 = (Element)this.fUnparsedNotationRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedNotationRegistrySub.get(string);
                break;
            }
            case 7: {
                element2 = (Element)this.fUnparsedTypeRegistry.get(string);
                xSDocumentInfo3 = (XSDocumentInfo)this.fUnparsedTypeRegistrySub.get(string);
                break;
            }
            default: {
                this.reportSchemaError("Internal-Error", new Object[]{"XSDHandler asked to locate component of type " + n + "; it does not recognize this type!"}, element);
            }
        }
        if (element2 == null) {
            this.reportSchemaError("src-resolve", new Object[]{qName.rawname, COMP_TYPE[n]}, element);
            return null;
        }
        xSDocumentInfo2 = this.findXSDocumentForDecl(xSDocumentInfo, element2, xSDocumentInfo3);
        if (xSDocumentInfo2 == null) {
            String string2 = qName.uri == null ? "src-resolve.4.1" : "src-resolve.4.2";
            this.reportSchemaError(string2, new Object[]{this.fDoc2SystemId.get(xSDocumentInfo.fSchemaElement), qName.uri, qName.rawname}, element);
            return null;
        }
        if (DOMUtil.isHidden(element2, this.fHiddenNodes)) {
            String string3 = CIRCULAR_CODES[n];
            if (n == 7 && SchemaSymbols.ELT_COMPLEXTYPE.equals(DOMUtil.getLocalName(element2))) {
                string3 = "ct-props-correct.3";
            }
            this.reportSchemaError(string3, new Object[]{qName.prefix + ":" + qName.localpart}, element);
            return null;
        }
        DOMUtil.setHidden(element2, this.fHiddenNodes);
        SchemaNamespaceSupport schemaNamespaceSupport = null;
        Element element3 = DOMUtil.getParent(element2);
        if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_REDEFINE)) {
            schemaNamespaceSupport = (SchemaNamespaceSupport)this.fRedefine2NSSupport.get(element3);
        }
        xSDocumentInfo2.backupNSSupport(schemaNamespaceSupport);
        switch (n) {
            case 1: {
                xSObject = this.fAttributeTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object);
                break;
            }
            case 2: {
                xSObject = this.fAttributeGroupTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object);
                break;
            }
            case 3: {
                xSObject = this.fElementTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object);
                break;
            }
            case 4: {
                xSObject = this.fGroupTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object);
                break;
            }
            case 5: {
                xSObject = null;
                break;
            }
            case 6: {
                xSObject = this.fNotationTraverser.traverse(element2, xSDocumentInfo2, (SchemaGrammar)object);
                break;
            }
            case 7: {
                xSObject = DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_COMPLEXTYPE) ? this.fComplexTypeTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object) : this.fSimpleTypeTraverser.traverseGlobal(element2, xSDocumentInfo2, (SchemaGrammar)object);
            }
        }
        xSDocumentInfo2.restoreNSSupport();
        return xSObject;
    }

    Object getGrpOrAttrGrpRedefinedByRestriction(int n, QName qName, XSDocumentInfo xSDocumentInfo, Element element) {
        String string = qName.uri != null ? qName.uri + "," + qName.localpart : "," + qName.localpart;
        String string2 = null;
        switch (n) {
            case 2: {
                string2 = (String)this.fRedefinedRestrictedAttributeGroupRegistry.get(string);
                break;
            }
            case 4: {
                string2 = (String)this.fRedefinedRestrictedGroupRegistry.get(string);
                break;
            }
            default: {
                return null;
            }
        }
        if (string2 == null) {
            return null;
        }
        int n2 = string2.indexOf(",");
        QName qName2 = new QName(XMLSymbols.EMPTY_STRING, string2.substring(n2 + 1), string2.substring(n2), n2 == 0 ? null : string2.substring(0, n2));
        Object object = this.getGlobalDecl(xSDocumentInfo, n, qName2, element);
        if (object == null) {
            switch (n) {
                case 2: {
                    this.reportSchemaError("src-redefine.7.2.1", new Object[]{qName.localpart}, element);
                    break;
                }
                case 4: {
                    this.reportSchemaError("src-redefine.6.2.1", new Object[]{qName.localpart}, element);
                }
            }
            return null;
        }
        return object;
    }

    protected void resolveKeyRefs() {
        int n = 0;
        while (n < this.fKeyrefStackPos) {
            XSDocumentInfo xSDocumentInfo = this.fKeyrefsMapXSDocumentInfo[n];
            xSDocumentInfo.fNamespaceSupport.makeGlobal();
            xSDocumentInfo.fNamespaceSupport.setEffectiveContext(this.fKeyrefNamespaceContext[n]);
            SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
            DOMUtil.setHidden(this.fKeyrefs[n], this.fHiddenNodes);
            this.fKeyrefTraverser.traverse(this.fKeyrefs[n], this.fKeyrefElems[n], xSDocumentInfo, schemaGrammar);
            ++n;
        }
    }

    protected Hashtable getIDRegistry() {
        return this.fUnparsedIdentityConstraintRegistry;
    }

    protected Hashtable getIDRegistry_sub() {
        return this.fUnparsedIdentityConstraintRegistrySub;
    }

    protected void storeKeyRef(Element element, XSDocumentInfo xSDocumentInfo, XSElementDecl xSElementDecl) {
        Object object;
        String string = DOMUtil.getAttrValue(element, SchemaSymbols.ATT_NAME);
        if (string.length() != 0) {
            object = xSDocumentInfo.fTargetNamespace == null ? "," + string : xSDocumentInfo.fTargetNamespace + "," + string;
            this.checkForDuplicateNames((String)object, this.fUnparsedIdentityConstraintRegistry, this.fUnparsedIdentityConstraintRegistrySub, element, xSDocumentInfo);
        }
        if (this.fKeyrefStackPos == this.fKeyrefs.length) {
            object = new Element[this.fKeyrefStackPos + 2];
            System.arraycopy(this.fKeyrefs, 0, object, 0, this.fKeyrefStackPos);
            this.fKeyrefs = object;
            XSElementDecl[] xSElementDeclArray = new XSElementDecl[this.fKeyrefStackPos + 2];
            System.arraycopy(this.fKeyrefElems, 0, xSElementDeclArray, 0, this.fKeyrefStackPos);
            this.fKeyrefElems = xSElementDeclArray;
            String[][] stringArrayArray = new String[this.fKeyrefStackPos + 2][];
            System.arraycopy(this.fKeyrefNamespaceContext, 0, stringArrayArray, 0, this.fKeyrefStackPos);
            this.fKeyrefNamespaceContext = stringArrayArray;
            XSDocumentInfo[] xSDocumentInfoArray = new XSDocumentInfo[this.fKeyrefStackPos + 2];
            System.arraycopy(this.fKeyrefsMapXSDocumentInfo, 0, xSDocumentInfoArray, 0, this.fKeyrefStackPos);
            this.fKeyrefsMapXSDocumentInfo = xSDocumentInfoArray;
        }
        this.fKeyrefs[this.fKeyrefStackPos] = element;
        this.fKeyrefElems[this.fKeyrefStackPos] = xSElementDecl;
        this.fKeyrefNamespaceContext[this.fKeyrefStackPos] = xSDocumentInfo.fNamespaceSupport.getEffectiveLocalContext();
        this.fKeyrefsMapXSDocumentInfo[this.fKeyrefStackPos++] = xSDocumentInfo;
    }

    private Element resolveSchema(XSDDescription xSDDescription, boolean bl, Element element, boolean bl2) {
        Object object;
        XMLInputSource xMLInputSource = null;
        try {
            object = bl2 ? this.fLocationPairs : EMPTY_TABLE;
            xMLInputSource = XMLSchemaLoader.resolveDocument(xSDDescription, (Hashtable)object, this.fEntityResolver);
        }
        catch (IOException iOException) {
            if (bl) {
                this.reportSchemaError("schema_reference.4", new Object[]{xSDDescription.getLocationHints()[0]}, element);
            }
            this.reportSchemaWarning("schema_reference.4", new Object[]{xSDDescription.getLocationHints()[0]}, element);
        }
        if (xMLInputSource instanceof DOMInputSource) {
            this.fHiddenNodes.clear();
            object = ((DOMInputSource)xMLInputSource).getNode();
            if (object instanceof Document) {
                return DOMUtil.getRoot((Document)object);
            }
            if (object instanceof Element) {
                return (Element)object;
            }
            return null;
        }
        if (xMLInputSource instanceof SAXInputSource) {
            object = ((SAXInputSource)xMLInputSource).getXMLReader();
            InputSource inputSource = ((SAXInputSource)xMLInputSource).getInputSource();
            boolean bl3 = false;
            if (object != null) {
                try {
                    bl3 = object.getFeature(NAMESPACE_PREFIXES);
                }
                catch (SAXException sAXException) {}
            } else {
                try {
                    object = XMLReaderFactory.createXMLReader();
                }
                catch (SAXException sAXException) {
                    object = new SAXParser();
                }
                try {
                    object.setFeature(NAMESPACE_PREFIXES, true);
                    bl3 = true;
                }
                catch (SAXException sAXException) {
                    // empty catch block
                }
            }
            boolean bl4 = false;
            try {
                bl4 = object.getFeature(STRING_INTERNING);
            }
            catch (SAXException sAXException) {
                // empty catch block
            }
            if (this.fXSContentHandler == null) {
                this.fXSContentHandler = new SchemaContentHandler();
            }
            this.fXSContentHandler.reset(this.fSchemaParser, this.fSymbolTable, bl3, bl4);
            object.setContentHandler(this.fXSContentHandler);
            object.setErrorHandler(this.fErrorReporter.getSAXErrorHandler());
            try {
                object.parse(inputSource);
            }
            catch (SAXException sAXException) {
                return null;
            }
            catch (IOException iOException) {
                return null;
            }
            Document document = this.fXSContentHandler.getDocument();
            if (document == null) {
                return null;
            }
            return DOMUtil.getRoot(document);
        }
        return this.getSchemaDocument(xSDDescription.getTargetNamespace(), xMLInputSource, bl, xSDDescription.getContextType(), element);
    }

    private Element getSchemaDocument(String string, XMLInputSource xMLInputSource, boolean bl, short s, Element element) {
        boolean bl2 = true;
        Element element2 = null;
        try {
            if (xMLInputSource != null && (xMLInputSource.getSystemId() != null || xMLInputSource.getByteStream() != null || xMLInputSource.getCharacterStream() != null)) {
                XSDKey xSDKey = null;
                String string2 = null;
                if (s != 3 && (element2 = (Element)this.fTraversed.get(xSDKey = new XSDKey(string2 = XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false), s, string))) != null) {
                    this.fLastSchemaWasDuplicate = true;
                    return element2;
                }
                this.fSchemaParser.parse(xMLInputSource);
                Element element3 = element2 = this.fSchemaParser.getDocument2() == null ? null : DOMUtil.getRoot(this.fSchemaParser.getDocument2());
                if (xSDKey != null) {
                    this.fTraversed.put(xSDKey, element2);
                }
                if (string2 != null) {
                    this.fDoc2SystemId.put(element2, string2);
                }
                this.fLastSchemaWasDuplicate = false;
                return element2;
            }
            bl2 = false;
        }
        catch (IOException iOException) {
            // empty catch block
        }
        if (bl) {
            if (bl2) {
                this.reportSchemaError("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element);
            } else {
                this.reportSchemaError("schema_reference.4", new Object[]{xMLInputSource == null ? "" : xMLInputSource.getSystemId()}, element);
            }
        } else if (bl2) {
            this.reportSchemaWarning("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element);
        }
        this.fLastSchemaWasDuplicate = false;
        return null;
    }

    private void createTraversers() {
        this.fAttributeChecker = new XSAttributeChecker(this);
        this.fAttributeGroupTraverser = new XSDAttributeGroupTraverser(this, this.fAttributeChecker);
        this.fAttributeTraverser = new XSDAttributeTraverser(this, this.fAttributeChecker);
        this.fComplexTypeTraverser = new XSDComplexTypeTraverser(this, this.fAttributeChecker);
        this.fElementTraverser = new XSDElementTraverser(this, this.fAttributeChecker);
        this.fGroupTraverser = new XSDGroupTraverser(this, this.fAttributeChecker);
        this.fKeyrefTraverser = new XSDKeyrefTraverser(this, this.fAttributeChecker);
        this.fNotationTraverser = new XSDNotationTraverser(this, this.fAttributeChecker);
        this.fSimpleTypeTraverser = new XSDSimpleTypeTraverser(this, this.fAttributeChecker);
        this.fUniqueOrKeyTraverser = new XSDUniqueOrKeyTraverser(this, this.fAttributeChecker);
        this.fWildCardTraverser = new XSDWildcardTraverser(this, this.fAttributeChecker);
    }

    void prepareForParse() {
        this.fTraversed.clear();
        this.fDoc2SystemId.clear();
        this.fHiddenNodes.clear();
        this.fLastSchemaWasDuplicate = false;
    }

    void prepareForTraverse() {
        this.fUnparsedAttributeRegistry.clear();
        this.fUnparsedAttributeGroupRegistry.clear();
        this.fUnparsedElementRegistry.clear();
        this.fUnparsedGroupRegistry.clear();
        this.fUnparsedIdentityConstraintRegistry.clear();
        this.fUnparsedNotationRegistry.clear();
        this.fUnparsedTypeRegistry.clear();
        this.fUnparsedAttributeRegistrySub.clear();
        this.fUnparsedAttributeGroupRegistrySub.clear();
        this.fUnparsedElementRegistrySub.clear();
        this.fUnparsedGroupRegistrySub.clear();
        this.fUnparsedIdentityConstraintRegistrySub.clear();
        this.fUnparsedNotationRegistrySub.clear();
        this.fUnparsedTypeRegistrySub.clear();
        this.fXSDocumentInfoRegistry.clear();
        this.fDependencyMap.clear();
        this.fDoc2XSDocumentMap.clear();
        this.fRedefine2XSDMap.clear();
        this.fRedefine2NSSupport.clear();
        this.fAllTNSs.removeAllElements();
        this.fImportMap.clear();
        this.fRoot = null;
        int n = 0;
        while (n < this.fLocalElemStackPos) {
            this.fParticle[n] = null;
            this.fLocalElementDecl[n] = null;
            this.fLocalElementDecl_schema[n] = null;
            this.fLocalElemNamespaceContext[n] = null;
            ++n;
        }
        this.fLocalElemStackPos = 0;
        int n2 = 0;
        while (n2 < this.fKeyrefStackPos) {
            this.fKeyrefs[n2] = null;
            this.fKeyrefElems[n2] = null;
            this.fKeyrefNamespaceContext[n2] = null;
            this.fKeyrefsMapXSDocumentInfo[n2] = null;
            ++n2;
        }
        this.fKeyrefStackPos = 0;
        if (this.fAttributeChecker == null) {
            this.createTraversers();
        }
        this.fAttributeChecker.reset(this.fSymbolTable);
        this.fAttributeGroupTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fAttributeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fComplexTypeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fElementTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fGroupTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fKeyrefTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fNotationTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fSimpleTypeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fUniqueOrKeyTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fWildCardTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fRedefinedRestrictedAttributeGroupRegistry.clear();
        this.fRedefinedRestrictedGroupRegistry.clear();
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }

    public void reset(XMLComponentManager xMLComponentManager) {
        Object object;
        this.fSymbolTable = (SymbolTable)xMLComponentManager.getProperty(SYMBOL_TABLE);
        this.fEntityResolver = (XMLEntityResolver)xMLComponentManager.getProperty(ENTITY_MANAGER);
        XMLEntityResolver xMLEntityResolver = (XMLEntityResolver)xMLComponentManager.getProperty(ENTITY_RESOLVER);
        if (xMLEntityResolver != null) {
            this.fSchemaParser.setEntityResolver(xMLEntityResolver);
        }
        this.fErrorReporter = (XMLErrorReporter)xMLComponentManager.getProperty(ERROR_REPORTER);
        try {
            object = this.fErrorReporter.getErrorHandler();
            if (object != this.fSchemaParser.getProperty(ERROR_HANDLER)) {
                this.fSchemaParser.setProperty(ERROR_HANDLER, object != null ? object : new DefaultErrorHandler());
                if (this.fAnnotationValidator != null) {
                    this.fAnnotationValidator.setProperty(ERROR_HANDLER, object != null ? object : new DefaultErrorHandler());
                }
            }
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
        try {
            this.fValidateAnnotations = xMLComponentManager.getFeature(VALIDATE_ANNOTATIONS);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fValidateAnnotations = false;
        }
        try {
            this.fHonourAllSchemaLocations = xMLComponentManager.getFeature(HONOUR_ALL_SCHEMALOCATIONS);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fHonourAllSchemaLocations = false;
        }
        try {
            this.fSchemaParser.setFeature(CONTINUE_AFTER_FATAL_ERROR, this.fErrorReporter.getFeature(CONTINUE_AFTER_FATAL_ERROR));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
        try {
            this.fSchemaParser.setFeature(ALLOW_JAVA_ENCODINGS, xMLComponentManager.getFeature(ALLOW_JAVA_ENCODINGS));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
        try {
            this.fSchemaParser.setFeature(STANDARD_URI_CONFORMANT_FEATURE, xMLComponentManager.getFeature(STANDARD_URI_CONFORMANT_FEATURE));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
        try {
            this.fGrammarPool = (XMLGrammarPool)xMLComponentManager.getProperty(XMLGRAMMAR_POOL);
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            this.fGrammarPool = null;
        }
        try {
            this.fSchemaParser.setFeature(DISALLOW_DOCTYPE, xMLComponentManager.getFeature(DISALLOW_DOCTYPE));
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
        try {
            object = xMLComponentManager.getProperty(SECURITY_MANAGER);
            if (object != null) {
                this.fSchemaParser.setProperty(SECURITY_MANAGER, object);
            }
        }
        catch (XMLConfigurationException xMLConfigurationException) {
            // empty catch block
        }
    }

    void traverseLocalElements() {
        this.fElementTraverser.fDeferTraversingLocalElements = false;
        int n = 0;
        while (n < this.fLocalElemStackPos) {
            Element element = this.fLocalElementDecl[n];
            XSDocumentInfo xSDocumentInfo = this.fLocalElementDecl_schema[n];
            SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
            this.fElementTraverser.traverseLocal(this.fParticle[n], element, xSDocumentInfo, schemaGrammar, this.fAllContext[n], this.fParent[n], this.fLocalElemNamespaceContext[n]);
            if (this.fParticle[n].fType == 0) {
                XSModelGroupImpl xSModelGroupImpl = null;
                if (this.fParent[n] instanceof XSComplexTypeDecl) {
                    XSParticle xSParticle = ((XSComplexTypeDecl)this.fParent[n]).getParticle();
                    if (xSParticle != null) {
                        xSModelGroupImpl = (XSModelGroupImpl)xSParticle.getTerm();
                    }
                } else {
                    xSModelGroupImpl = ((XSGroupDecl)this.fParent[n]).fModelGroup;
                }
                if (xSModelGroupImpl != null) {
                    this.removeParticle(xSModelGroupImpl, this.fParticle[n]);
                }
            }
            ++n;
        }
    }

    private boolean removeParticle(XSModelGroupImpl xSModelGroupImpl, XSParticleDecl xSParticleDecl) {
        int n = 0;
        while (n < xSModelGroupImpl.fParticleCount) {
            XSParticleDecl xSParticleDecl2 = xSModelGroupImpl.fParticles[n];
            if (xSParticleDecl2 == xSParticleDecl) {
                int n2 = n;
                while (n2 < xSModelGroupImpl.fParticleCount - 1) {
                    xSModelGroupImpl.fParticles[n2] = xSModelGroupImpl.fParticles[n2 + 1];
                    ++n2;
                }
                --xSModelGroupImpl.fParticleCount;
                return true;
            }
            if (xSParticleDecl2.fType == 3 && this.removeParticle((XSModelGroupImpl)xSParticleDecl2.fValue, xSParticleDecl)) {
                return true;
            }
            ++n;
        }
        return false;
    }

    void fillInLocalElemInfo(Element element, XSDocumentInfo xSDocumentInfo, int n, XSObject xSObject, XSParticleDecl xSParticleDecl) {
        if (this.fParticle.length == this.fLocalElemStackPos) {
            XSParticleDecl[] xSParticleDeclArray = new XSParticleDecl[this.fLocalElemStackPos + 10];
            System.arraycopy(this.fParticle, 0, xSParticleDeclArray, 0, this.fLocalElemStackPos);
            this.fParticle = xSParticleDeclArray;
            Element[] elementArray = new Element[this.fLocalElemStackPos + 10];
            System.arraycopy(this.fLocalElementDecl, 0, elementArray, 0, this.fLocalElemStackPos);
            this.fLocalElementDecl = elementArray;
            XSDocumentInfo[] xSDocumentInfoArray = new XSDocumentInfo[this.fLocalElemStackPos + 10];
            System.arraycopy(this.fLocalElementDecl_schema, 0, xSDocumentInfoArray, 0, this.fLocalElemStackPos);
            this.fLocalElementDecl_schema = xSDocumentInfoArray;
            int[] nArray = new int[this.fLocalElemStackPos + 10];
            System.arraycopy(this.fAllContext, 0, nArray, 0, this.fLocalElemStackPos);
            this.fAllContext = nArray;
            XSObject[] xSObjectArray = new XSObject[this.fLocalElemStackPos + 10];
            System.arraycopy(this.fParent, 0, xSObjectArray, 0, this.fLocalElemStackPos);
            this.fParent = xSObjectArray;
            String[][] stringArrayArray = new String[this.fLocalElemStackPos + 10][];
            System.arraycopy(this.fLocalElemNamespaceContext, 0, stringArrayArray, 0, this.fLocalElemStackPos);
            this.fLocalElemNamespaceContext = stringArrayArray;
        }
        this.fParticle[this.fLocalElemStackPos] = xSParticleDecl;
        this.fLocalElementDecl[this.fLocalElemStackPos] = element;
        this.fLocalElementDecl_schema[this.fLocalElemStackPos] = xSDocumentInfo;
        this.fAllContext[this.fLocalElemStackPos] = n;
        this.fParent[this.fLocalElemStackPos] = xSObject;
        this.fLocalElemNamespaceContext[this.fLocalElemStackPos++] = xSDocumentInfo.fNamespaceSupport.getEffectiveLocalContext();
    }

    void checkForDuplicateNames(String string, Hashtable hashtable, Hashtable hashtable2, Element element, XSDocumentInfo xSDocumentInfo) {
        Object var6_6 = null;
        Object v = hashtable.get(string);
        var6_6 = v;
        if (v == null) {
            hashtable.put(string, element);
            hashtable2.put(string, xSDocumentInfo);
        } else {
            Element element2 = var6_6;
            XSDocumentInfo xSDocumentInfo2 = (XSDocumentInfo)hashtable2.get(string);
            if (element2 == element) {
                return;
            }
            Element element3 = null;
            XSDocumentInfo xSDocumentInfo3 = null;
            boolean bl = true;
            element3 = DOMUtil.getParent(element2);
            if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_REDEFINE)) {
                xSDocumentInfo3 = (XSDocumentInfo)this.fRedefine2XSDMap.get(element3);
            } else if (DOMUtil.getLocalName(DOMUtil.getParent(element)).equals(SchemaSymbols.ELT_REDEFINE)) {
                xSDocumentInfo3 = xSDocumentInfo2;
                bl = false;
            }
            if (xSDocumentInfo3 != null) {
                if (xSDocumentInfo2 == xSDocumentInfo) {
                    this.reportSchemaError("sch-props-correct.2", new Object[]{string}, element);
                    return;
                }
                String string2 = string.substring(string.lastIndexOf(44) + 1) + REDEF_IDENTIFIER;
                if (xSDocumentInfo3 == xSDocumentInfo) {
                    element.setAttribute(SchemaSymbols.ATT_NAME, string2);
                    if (xSDocumentInfo.fTargetNamespace == null) {
                        hashtable.put("," + string2, element);
                        hashtable2.put("," + string2, xSDocumentInfo);
                    } else {
                        hashtable.put(xSDocumentInfo.fTargetNamespace + "," + string2, element);
                        hashtable2.put(xSDocumentInfo.fTargetNamespace + "," + string2, xSDocumentInfo);
                    }
                    if (xSDocumentInfo.fTargetNamespace == null) {
                        this.checkForDuplicateNames("," + string2, hashtable, hashtable2, element, xSDocumentInfo);
                    } else {
                        this.checkForDuplicateNames(xSDocumentInfo.fTargetNamespace + "," + string2, hashtable, hashtable2, element, xSDocumentInfo);
                    }
                } else if (bl) {
                    if (xSDocumentInfo.fTargetNamespace == null) {
                        this.checkForDuplicateNames("," + string2, hashtable, hashtable2, element, xSDocumentInfo);
                    } else {
                        this.checkForDuplicateNames(xSDocumentInfo.fTargetNamespace + "," + string2, hashtable, hashtable2, element, xSDocumentInfo);
                    }
                } else {
                    this.reportSchemaError("sch-props-correct.2", new Object[]{string}, element);
                }
            } else {
                this.reportSchemaError("sch-props-correct.2", new Object[]{string}, element);
            }
        }
    }

    private void renameRedefiningComponents(XSDocumentInfo xSDocumentInfo, Element element, String string, String string2, String string3) {
        if (string.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
            Element element2 = DOMUtil.getFirstChildElement(element);
            if (element2 == null) {
                this.reportSchemaError("src-redefine.5.a.a", null, element);
            } else {
                String string4 = DOMUtil.getLocalName(element2);
                if (string4.equals(SchemaSymbols.ELT_ANNOTATION)) {
                    element2 = DOMUtil.getNextSiblingElement(element2);
                }
                if (element2 == null) {
                    this.reportSchemaError("src-redefine.5.a.a", null, element);
                } else {
                    string4 = DOMUtil.getLocalName(element2);
                    if (!string4.equals(SchemaSymbols.ELT_RESTRICTION)) {
                        this.reportSchemaError("src-redefine.5.a.b", new Object[]{string4}, element);
                    } else {
                        Object[] objectArray = this.fAttributeChecker.checkAttributes(element2, false, xSDocumentInfo);
                        QName qName = (QName)objectArray[XSAttributeChecker.ATTIDX_BASE];
                        if (qName == null || qName.uri != xSDocumentInfo.fTargetNamespace || !qName.localpart.equals(string2)) {
                            this.reportSchemaError("src-redefine.5.a.c", new Object[]{string4, (xSDocumentInfo.fTargetNamespace == null ? "" : xSDocumentInfo.fTargetNamespace) + "," + string2}, element);
                        } else if (qName.prefix != null && qName.prefix.length() > 0) {
                            element2.setAttribute(SchemaSymbols.ATT_BASE, qName.prefix + ":" + string3);
                        } else {
                            element2.setAttribute(SchemaSymbols.ATT_BASE, string3);
                        }
                        this.fAttributeChecker.returnAttrArray(objectArray, xSDocumentInfo);
                    }
                }
            }
        } else if (string.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
            Element element3 = DOMUtil.getFirstChildElement(element);
            if (element3 == null) {
                this.reportSchemaError("src-redefine.5.b.a", null, element);
            } else {
                if (DOMUtil.getLocalName(element3).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    element3 = DOMUtil.getNextSiblingElement(element3);
                }
                if (element3 == null) {
                    this.reportSchemaError("src-redefine.5.b.a", null, element);
                } else {
                    Element element4 = DOMUtil.getFirstChildElement(element3);
                    if (element4 == null) {
                        this.reportSchemaError("src-redefine.5.b.b", null, element3);
                    } else {
                        String string5 = DOMUtil.getLocalName(element4);
                        if (string5.equals(SchemaSymbols.ELT_ANNOTATION)) {
                            element4 = DOMUtil.getNextSiblingElement(element4);
                        }
                        if (element4 == null) {
                            this.reportSchemaError("src-redefine.5.b.b", null, element3);
                        } else {
                            string5 = DOMUtil.getLocalName(element4);
                            if (!string5.equals(SchemaSymbols.ELT_RESTRICTION) && !string5.equals(SchemaSymbols.ELT_EXTENSION)) {
                                this.reportSchemaError("src-redefine.5.b.c", new Object[]{string5}, element4);
                            } else {
                                Object[] objectArray = this.fAttributeChecker.checkAttributes(element4, false, xSDocumentInfo);
                                QName qName = (QName)objectArray[XSAttributeChecker.ATTIDX_BASE];
                                if (qName == null || qName.uri != xSDocumentInfo.fTargetNamespace || !qName.localpart.equals(string2)) {
                                    this.reportSchemaError("src-redefine.5.b.d", new Object[]{string5, (xSDocumentInfo.fTargetNamespace == null ? "" : xSDocumentInfo.fTargetNamespace) + "," + string2}, element4);
                                } else if (qName.prefix != null && qName.prefix.length() > 0) {
                                    element4.setAttribute(SchemaSymbols.ATT_BASE, qName.prefix + ":" + string3);
                                } else {
                                    element4.setAttribute(SchemaSymbols.ATT_BASE, string3);
                                }
                            }
                        }
                    }
                }
            }
        } else if (string.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
            String string6 = xSDocumentInfo.fTargetNamespace == null ? "," + string2 : xSDocumentInfo.fTargetNamespace + "," + string2;
            int n = this.changeRedefineGroup(string6, string, string3, element, xSDocumentInfo);
            if (n > 1) {
                this.reportSchemaError("src-redefine.7.1", new Object[]{new Integer(n)}, element);
            } else if (n != 1) {
                if (xSDocumentInfo.fTargetNamespace == null) {
                    this.fRedefinedRestrictedAttributeGroupRegistry.put(string6, "," + string3);
                } else {
                    this.fRedefinedRestrictedAttributeGroupRegistry.put(string6, xSDocumentInfo.fTargetNamespace + "," + string3);
                }
            }
        } else if (string.equals(SchemaSymbols.ELT_GROUP)) {
            String string7 = xSDocumentInfo.fTargetNamespace == null ? "," + string2 : xSDocumentInfo.fTargetNamespace + "," + string2;
            int n = this.changeRedefineGroup(string7, string, string3, element, xSDocumentInfo);
            if (n > 1) {
                this.reportSchemaError("src-redefine.6.1.1", new Object[]{new Integer(n)}, element);
            } else if (n != 1) {
                if (xSDocumentInfo.fTargetNamespace == null) {
                    this.fRedefinedRestrictedGroupRegistry.put(string7, "," + string3);
                } else {
                    this.fRedefinedRestrictedGroupRegistry.put(string7, xSDocumentInfo.fTargetNamespace + "," + string3);
                }
            }
        } else {
            this.reportSchemaError("Internal-Error", new Object[]{"could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"}, element);
        }
    }

    private String findQName(String string, XSDocumentInfo xSDocumentInfo) {
        String string2;
        SchemaNamespaceSupport schemaNamespaceSupport = xSDocumentInfo.fNamespaceSupport;
        int n = string.indexOf(58);
        String string3 = XMLSymbols.EMPTY_STRING;
        if (n > 0) {
            string3 = string.substring(0, n);
        }
        String string4 = schemaNamespaceSupport.getURI(this.fSymbolTable.addSymbol(string3));
        String string5 = string2 = n == 0 ? string : string.substring(n + 1);
        if (string3 == XMLSymbols.EMPTY_STRING && string4 == null && xSDocumentInfo.fIsChameleonSchema) {
            string4 = xSDocumentInfo.fTargetNamespace;
        }
        if (string4 == null) {
            return "," + string2;
        }
        return string4 + "," + string2;
    }

    private int changeRedefineGroup(String string, String string2, String string3, Element element, XSDocumentInfo xSDocumentInfo) {
        int n = 0;
        Element element2 = DOMUtil.getFirstChildElement(element);
        while (element2 != null) {
            String string4 = DOMUtil.getLocalName(element2);
            if (!string4.equals(string2)) {
                n += this.changeRedefineGroup(string, string2, string3, element2, xSDocumentInfo);
            } else {
                String string5;
                String string6 = element2.getAttribute(SchemaSymbols.ATT_REF);
                if (string6.length() != 0 && string.equals(string5 = this.findQName(string6, xSDocumentInfo))) {
                    String string7 = XMLSymbols.EMPTY_STRING;
                    int n2 = string6.indexOf(":");
                    if (n2 > 0) {
                        string7 = string6.substring(0, n2);
                        element2.setAttribute(SchemaSymbols.ATT_REF, string7 + ":" + string3);
                    } else {
                        element2.setAttribute(SchemaSymbols.ATT_REF, string3);
                    }
                    ++n;
                    if (string2.equals(SchemaSymbols.ELT_GROUP)) {
                        String string8 = element2.getAttribute(SchemaSymbols.ATT_MINOCCURS);
                        String string9 = element2.getAttribute(SchemaSymbols.ATT_MAXOCCURS);
                        if (string9.length() != 0 && !string9.equals("1") || string8.length() != 0 && !string8.equals("1")) {
                            this.reportSchemaError("src-redefine.6.1.2", new Object[]{string6}, element2);
                        }
                    }
                }
            }
            element2 = DOMUtil.getNextSiblingElement(element2);
        }
        return n;
    }

    private XSDocumentInfo findXSDocumentForDecl(XSDocumentInfo xSDocumentInfo, Element element, XSDocumentInfo xSDocumentInfo2) {
        XSDocumentInfo xSDocumentInfo3 = xSDocumentInfo2;
        if (xSDocumentInfo3 == null) {
            return null;
        }
        XSDocumentInfo xSDocumentInfo4 = xSDocumentInfo3;
        return xSDocumentInfo4;
    }

    private boolean nonAnnotationContent(Element element) {
        Element element2 = DOMUtil.getFirstChildElement(element);
        while (element2 != null) {
            if (!DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_ANNOTATION)) {
                return true;
            }
            element2 = DOMUtil.getNextSiblingElement(element2);
        }
        return false;
    }

    private void setSchemasVisible(XSDocumentInfo xSDocumentInfo) {
        if (DOMUtil.isHidden(xSDocumentInfo.fSchemaElement, this.fHiddenNodes)) {
            DOMUtil.setVisible(xSDocumentInfo.fSchemaElement, this.fHiddenNodes);
            Vector vector = (Vector)this.fDependencyMap.get(xSDocumentInfo);
            int n = 0;
            while (n < vector.size()) {
                this.setSchemasVisible((XSDocumentInfo)vector.elementAt(n));
                ++n;
            }
        }
    }

    public SimpleLocator element2Locator(Element element) {
        if (!(element instanceof ElementImpl)) {
            return null;
        }
        SimpleLocator simpleLocator = new SimpleLocator();
        return this.element2Locator(element, simpleLocator) ? simpleLocator : null;
    }

    public boolean element2Locator(Element element, SimpleLocator simpleLocator) {
        if (simpleLocator == null) {
            return false;
        }
        if (element instanceof ElementImpl) {
            ElementImpl elementImpl = (ElementImpl)element;
            Document document = elementImpl.getOwnerDocument();
            String string = (String)this.fDoc2SystemId.get(DOMUtil.getRoot(document));
            int n = elementImpl.getLineNumber();
            int n2 = elementImpl.getColumnNumber();
            simpleLocator.setValues(string, string, n, n2, elementImpl.getCharacterOffset());
            return true;
        }
        return false;
    }

    void reportSchemaError(String string, Object[] objectArray, Element element) {
        if (this.element2Locator(element, this.xl)) {
            this.fErrorReporter.reportError(this.xl, "http://www.w3.org/TR/xml-schema-1", string, objectArray, (short)1);
        } else {
            this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", string, objectArray, (short)1);
        }
    }

    void reportSchemaWarning(String string, Object[] objectArray, Element element) {
        if (this.element2Locator(element, this.xl)) {
            this.fErrorReporter.reportError(this.xl, "http://www.w3.org/TR/xml-schema-1", string, objectArray, (short)0);
        } else {
            this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", string, objectArray, (short)0);
        }
    }

    public void setGenerateSyntheticAnnotations(boolean bl) {
        this.fSchemaParser.setFeature(GENERATE_SYNTHETIC_ANNOTATIONS, bl);
    }

    private static class XSAnnotationGrammarPool
    implements XMLGrammarPool {
        private XSGrammarBucket fGrammarBucket;
        private Grammar[] fInitialGrammarSet;

        private XSAnnotationGrammarPool() {
        }

        public Grammar[] retrieveInitialGrammarSet(String string) {
            if (string == "http://www.w3.org/2001/XMLSchema") {
                if (this.fInitialGrammarSet == null) {
                    if (this.fGrammarBucket == null) {
                        this.fInitialGrammarSet = new Grammar[]{SchemaGrammar.SG_Schema4Annotations};
                    } else {
                        SchemaGrammar[] schemaGrammarArray = this.fGrammarBucket.getGrammars();
                        int n = 0;
                        while (n < schemaGrammarArray.length) {
                            if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(schemaGrammarArray[n].getTargetNamespace())) {
                                this.fInitialGrammarSet = schemaGrammarArray;
                                return this.fInitialGrammarSet;
                            }
                            ++n;
                        }
                        Grammar[] grammarArray = new Grammar[schemaGrammarArray.length + 1];
                        System.arraycopy(schemaGrammarArray, 0, grammarArray, 0, schemaGrammarArray.length);
                        grammarArray[grammarArray.length - 1] = SchemaGrammar.SG_Schema4Annotations;
                        this.fInitialGrammarSet = grammarArray;
                    }
                }
                return this.fInitialGrammarSet;
            }
            return new Grammar[0];
        }

        public void cacheGrammars(String string, Grammar[] grammarArray) {
        }

        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            if (xMLGrammarDescription.getGrammarType() == "http://www.w3.org/2001/XMLSchema") {
                SchemaGrammar schemaGrammar;
                String string = ((XMLSchemaDescription)xMLGrammarDescription).getTargetNamespace();
                if (this.fGrammarBucket != null && (schemaGrammar = this.fGrammarBucket.getGrammar(string)) != null) {
                    return schemaGrammar;
                }
                if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(string)) {
                    return SchemaGrammar.SG_Schema4Annotations;
                }
            }
            return null;
        }

        public void refreshGrammars(XSGrammarBucket xSGrammarBucket) {
            this.fGrammarBucket = xSGrammarBucket;
            this.fInitialGrammarSet = null;
        }

        public void lockPool() {
        }

        public void unlockPool() {
        }

        public void clear() {
        }
    }

    private static class XSDKey {
        String systemId;
        short referType;
        String referNS;

        XSDKey(String string, short s, String string2) {
            this.systemId = string;
            this.referType = s;
            this.referNS = string2;
        }

        public int hashCode() {
            return this.referNS == null ? 0 : this.referNS.hashCode();
        }

        public boolean equals(Object object) {
            if (!(object instanceof XSDKey)) {
                return false;
            }
            XSDKey xSDKey = (XSDKey)object;
            if (this.referNS != xSDKey.referNS) {
                return false;
            }
            return this.systemId != null && this.systemId.equals(xSDKey.systemId);
        }
    }
}

