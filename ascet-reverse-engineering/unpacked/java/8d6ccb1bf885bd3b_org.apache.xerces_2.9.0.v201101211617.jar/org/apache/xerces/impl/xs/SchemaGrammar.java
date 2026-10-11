/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import java.lang.ref.SoftReference;
import java.util.Vector;
import org.apache.xerces.impl.dv.SchemaDVFactory;
import org.apache.xerces.impl.dv.ValidatedInfo;
import org.apache.xerces.impl.dv.XSSimpleType;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.XSAnnotationImpl;
import org.apache.xerces.impl.xs.XSAttributeDecl;
import org.apache.xerces.impl.xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.xs.XSAttributeUseImpl;
import org.apache.xerces.impl.xs.XSComplexTypeDecl;
import org.apache.xerces.impl.xs.XSDDescription;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSGroupDecl;
import org.apache.xerces.impl.xs.XSModelGroupImpl;
import org.apache.xerces.impl.xs.XSModelImpl;
import org.apache.xerces.impl.xs.XSNotationDecl;
import org.apache.xerces.impl.xs.XSParticleDecl;
import org.apache.xerces.impl.xs.XSWildcardDecl;
import org.apache.xerces.impl.xs.identity.IdentityConstraint;
import org.apache.xerces.impl.xs.util.SimpleLocator;
import org.apache.xerces.impl.xs.util.StringListImpl;
import org.apache.xerces.impl.xs.util.XSNamedMap4Types;
import org.apache.xerces.impl.xs.util.XSNamedMapImpl;
import org.apache.xerces.impl.xs.util.XSObjectListImpl;
import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.parsers.XML11Configuration;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XSGrammar;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.apache.xerces.xs.StringList;
import org.apache.xerces.xs.XSAnnotation;
import org.apache.xerces.xs.XSAttributeDeclaration;
import org.apache.xerces.xs.XSAttributeGroupDefinition;
import org.apache.xerces.xs.XSElementDeclaration;
import org.apache.xerces.xs.XSModel;
import org.apache.xerces.xs.XSModelGroupDefinition;
import org.apache.xerces.xs.XSNamedMap;
import org.apache.xerces.xs.XSNamespaceItem;
import org.apache.xerces.xs.XSNotationDeclaration;
import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSObjectList;
import org.apache.xerces.xs.XSParticle;
import org.apache.xerces.xs.XSTypeDefinition;
import org.apache.xerces.xs.XSWildcard;
import org.xml.sax.SAXException;

public class SchemaGrammar
implements XSGrammar,
XSNamespaceItem {
    String fTargetNamespace;
    SymbolHash fGlobalAttrDecls;
    SymbolHash fGlobalAttrGrpDecls;
    SymbolHash fGlobalElemDecls;
    SymbolHash fGlobalGroupDecls;
    SymbolHash fGlobalNotationDecls;
    SymbolHash fGlobalIDConstraintDecls;
    SymbolHash fGlobalTypeDecls;
    XSDDescription fGrammarDescription = null;
    XSAnnotationImpl[] fAnnotations = null;
    int fNumAnnotations;
    private SymbolTable fSymbolTable = null;
    private SoftReference fSAXParser = null;
    private SoftReference fDOMParser = null;
    private static final int BASICSET_COUNT = 29;
    private static final int FULLSET_COUNT = 46;
    private static final int GRAMMAR_XS = 1;
    private static final int GRAMMAR_XSI = 2;
    Vector fImported = null;
    private static final int INITIAL_SIZE = 16;
    private static final int INC_SIZE = 16;
    private int fCTCount = 0;
    private XSComplexTypeDecl[] fComplexTypeDecls = new XSComplexTypeDecl[16];
    private SimpleLocator[] fCTLocators = new SimpleLocator[16];
    private static final int REDEFINED_GROUP_INIT_SIZE = 2;
    private int fRGCount = 0;
    private XSGroupDecl[] fRedefinedGroupDecls = new XSGroupDecl[2];
    private SimpleLocator[] fRGLocators = new SimpleLocator[1];
    boolean fFullChecked = false;
    private int fSubGroupCount = 0;
    private XSElementDecl[] fSubGroups = new XSElementDecl[16];
    public static final XSComplexTypeDecl fAnyType = new XSAnyType();
    public static final BuiltinSchemaGrammar SG_SchemaNS = new BuiltinSchemaGrammar(1);
    public static final Schema4Annotations SG_Schema4Annotations = new Schema4Annotations();
    public static final XSSimpleType fAnySimpleType = (XSSimpleType)SG_SchemaNS.getGlobalTypeDecl("anySimpleType");
    public static final BuiltinSchemaGrammar SG_XSI = new BuiltinSchemaGrammar(2);
    private static final short MAX_COMP_IDX = 16;
    private static final boolean[] GLOBAL_COMP = new boolean[]{false, true, true, true, false, true, true, false, false, false, false, true, false, false, false, true, true};
    private XSNamedMap[] fComponents = null;
    private Vector fDocuments = null;
    private Vector fLocations = null;

    protected SchemaGrammar() {
    }

    public SchemaGrammar(String string, XSDDescription xSDDescription, SymbolTable symbolTable) {
        this.fTargetNamespace = string;
        this.fGrammarDescription = xSDDescription;
        this.fSymbolTable = symbolTable;
        this.fGlobalAttrDecls = new SymbolHash();
        this.fGlobalAttrGrpDecls = new SymbolHash();
        this.fGlobalElemDecls = new SymbolHash();
        this.fGlobalGroupDecls = new SymbolHash();
        this.fGlobalNotationDecls = new SymbolHash();
        this.fGlobalIDConstraintDecls = new SymbolHash();
        this.fGlobalTypeDecls = this.fTargetNamespace == SchemaSymbols.URI_SCHEMAFORSCHEMA ? SchemaGrammar.SG_SchemaNS.fGlobalTypeDecls.makeClone() : new SymbolHash();
    }

    public XMLGrammarDescription getGrammarDescription() {
        return this.fGrammarDescription;
    }

    public boolean isNamespaceAware() {
        return true;
    }

    public void setImportedGrammars(Vector vector) {
        this.fImported = vector;
    }

    public Vector getImportedGrammars() {
        return this.fImported;
    }

    public final String getTargetNamespace() {
        return this.fTargetNamespace;
    }

    public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        this.fGlobalAttrDecls.put(xSAttributeDecl.fName, xSAttributeDecl);
    }

    public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        this.fGlobalAttrGrpDecls.put(xSAttributeGroupDecl.fName, xSAttributeGroupDecl);
    }

    public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        this.fGlobalElemDecls.put(xSElementDecl.fName, xSElementDecl);
        if (xSElementDecl.fSubGroup != null) {
            if (this.fSubGroupCount == this.fSubGroups.length) {
                this.fSubGroups = SchemaGrammar.resize(this.fSubGroups, this.fSubGroupCount + 16);
            }
            this.fSubGroups[this.fSubGroupCount++] = xSElementDecl;
        }
    }

    public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        this.fGlobalGroupDecls.put(xSGroupDecl.fName, xSGroupDecl);
    }

    public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        this.fGlobalNotationDecls.put(xSNotationDecl.fName, xSNotationDecl);
    }

    public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        this.fGlobalTypeDecls.put(xSTypeDefinition.getName(), xSTypeDefinition);
    }

    public final void addIDConstraintDecl(XSElementDecl xSElementDecl, IdentityConstraint identityConstraint) {
        xSElementDecl.addIDConstraint(identityConstraint);
        this.fGlobalIDConstraintDecls.put(identityConstraint.getIdentityConstraintName(), identityConstraint);
    }

    public final XSAttributeDecl getGlobalAttributeDecl(String string) {
        return (XSAttributeDecl)this.fGlobalAttrDecls.get(string);
    }

    public final XSAttributeGroupDecl getGlobalAttributeGroupDecl(String string) {
        return (XSAttributeGroupDecl)this.fGlobalAttrGrpDecls.get(string);
    }

    public final XSElementDecl getGlobalElementDecl(String string) {
        return (XSElementDecl)this.fGlobalElemDecls.get(string);
    }

    public final XSGroupDecl getGlobalGroupDecl(String string) {
        return (XSGroupDecl)this.fGlobalGroupDecls.get(string);
    }

    public final XSNotationDecl getGlobalNotationDecl(String string) {
        return (XSNotationDecl)this.fGlobalNotationDecls.get(string);
    }

    public final XSTypeDefinition getGlobalTypeDecl(String string) {
        return (XSTypeDefinition)this.fGlobalTypeDecls.get(string);
    }

    public final IdentityConstraint getIDConstraintDecl(String string) {
        return (IdentityConstraint)this.fGlobalIDConstraintDecls.get(string);
    }

    public final boolean hasIDConstraints() {
        return this.fGlobalIDConstraintDecls.getLength() > 0;
    }

    public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        if (this.fCTCount == this.fComplexTypeDecls.length) {
            this.fComplexTypeDecls = SchemaGrammar.resize(this.fComplexTypeDecls, this.fCTCount + 16);
            this.fCTLocators = SchemaGrammar.resize(this.fCTLocators, this.fCTCount + 16);
        }
        this.fCTLocators[this.fCTCount] = simpleLocator;
        this.fComplexTypeDecls[this.fCTCount++] = xSComplexTypeDecl;
    }

    public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        if (this.fRGCount == this.fRedefinedGroupDecls.length) {
            this.fRedefinedGroupDecls = SchemaGrammar.resize(this.fRedefinedGroupDecls, this.fRGCount << 1);
            this.fRGLocators = SchemaGrammar.resize(this.fRGLocators, this.fRGCount);
        }
        this.fRGLocators[this.fRGCount / 2] = simpleLocator;
        this.fRedefinedGroupDecls[this.fRGCount++] = xSGroupDecl;
        this.fRedefinedGroupDecls[this.fRGCount++] = xSGroupDecl2;
    }

    final XSComplexTypeDecl[] getUncheckedComplexTypeDecls() {
        if (this.fCTCount < this.fComplexTypeDecls.length) {
            this.fComplexTypeDecls = SchemaGrammar.resize(this.fComplexTypeDecls, this.fCTCount);
            this.fCTLocators = SchemaGrammar.resize(this.fCTLocators, this.fCTCount);
        }
        return this.fComplexTypeDecls;
    }

    final SimpleLocator[] getUncheckedCTLocators() {
        if (this.fCTCount < this.fCTLocators.length) {
            this.fComplexTypeDecls = SchemaGrammar.resize(this.fComplexTypeDecls, this.fCTCount);
            this.fCTLocators = SchemaGrammar.resize(this.fCTLocators, this.fCTCount);
        }
        return this.fCTLocators;
    }

    final XSGroupDecl[] getRedefinedGroupDecls() {
        if (this.fRGCount < this.fRedefinedGroupDecls.length) {
            this.fRedefinedGroupDecls = SchemaGrammar.resize(this.fRedefinedGroupDecls, this.fRGCount);
            this.fRGLocators = SchemaGrammar.resize(this.fRGLocators, this.fRGCount / 2);
        }
        return this.fRedefinedGroupDecls;
    }

    final SimpleLocator[] getRGLocators() {
        if (this.fRGCount < this.fRedefinedGroupDecls.length) {
            this.fRedefinedGroupDecls = SchemaGrammar.resize(this.fRedefinedGroupDecls, this.fRGCount);
            this.fRGLocators = SchemaGrammar.resize(this.fRGLocators, this.fRGCount / 2);
        }
        return this.fRGLocators;
    }

    final void setUncheckedTypeNum(int n) {
        this.fCTCount = n;
        this.fComplexTypeDecls = SchemaGrammar.resize(this.fComplexTypeDecls, this.fCTCount);
        this.fCTLocators = SchemaGrammar.resize(this.fCTLocators, this.fCTCount);
    }

    final XSElementDecl[] getSubstitutionGroups() {
        if (this.fSubGroupCount < this.fSubGroups.length) {
            this.fSubGroups = SchemaGrammar.resize(this.fSubGroups, this.fSubGroupCount);
        }
        return this.fSubGroups;
    }

    static final XSComplexTypeDecl[] resize(XSComplexTypeDecl[] xSComplexTypeDeclArray, int n) {
        XSComplexTypeDecl[] xSComplexTypeDeclArray2 = new XSComplexTypeDecl[n];
        System.arraycopy(xSComplexTypeDeclArray, 0, xSComplexTypeDeclArray2, 0, Math.min(xSComplexTypeDeclArray.length, n));
        return xSComplexTypeDeclArray2;
    }

    static final XSGroupDecl[] resize(XSGroupDecl[] xSGroupDeclArray, int n) {
        XSGroupDecl[] xSGroupDeclArray2 = new XSGroupDecl[n];
        System.arraycopy(xSGroupDeclArray, 0, xSGroupDeclArray2, 0, Math.min(xSGroupDeclArray.length, n));
        return xSGroupDeclArray2;
    }

    static final XSElementDecl[] resize(XSElementDecl[] xSElementDeclArray, int n) {
        XSElementDecl[] xSElementDeclArray2 = new XSElementDecl[n];
        System.arraycopy(xSElementDeclArray, 0, xSElementDeclArray2, 0, Math.min(xSElementDeclArray.length, n));
        return xSElementDeclArray2;
    }

    static final SimpleLocator[] resize(SimpleLocator[] simpleLocatorArray, int n) {
        SimpleLocator[] simpleLocatorArray2 = new SimpleLocator[n];
        System.arraycopy(simpleLocatorArray, 0, simpleLocatorArray2, 0, Math.min(simpleLocatorArray.length, n));
        return simpleLocatorArray2;
    }

    public synchronized void addDocument(Object object, String string) {
        if (this.fDocuments == null) {
            this.fDocuments = new Vector();
            this.fLocations = new Vector();
        }
        this.fDocuments.addElement(object);
        this.fLocations.addElement(string);
    }

    public String getSchemaNamespace() {
        return this.fTargetNamespace;
    }

    synchronized DOMParser getDOMParser() {
        Object object;
        if (this.fDOMParser != null && (object = (DOMParser)this.fDOMParser.get()) != null) {
            return object;
        }
        object = new XML11Configuration(this.fSymbolTable);
        ((XML11Configuration)object).setFeature("http://xml.org/sax/features/namespaces", true);
        ((XML11Configuration)object).setFeature("http://xml.org/sax/features/validation", false);
        DOMParser dOMParser = new DOMParser((XMLParserConfiguration)object);
        try {
            dOMParser.setFeature("http://apache.org/xml/features/dom/defer-node-expansion", false);
        }
        catch (SAXException sAXException) {
            // empty catch block
        }
        this.fDOMParser = new SoftReference<DOMParser>(dOMParser);
        return dOMParser;
    }

    synchronized SAXParser getSAXParser() {
        Object object;
        if (this.fSAXParser != null && (object = (SAXParser)this.fSAXParser.get()) != null) {
            return object;
        }
        object = new XML11Configuration(this.fSymbolTable);
        ((XML11Configuration)object).setFeature("http://xml.org/sax/features/namespaces", true);
        ((XML11Configuration)object).setFeature("http://xml.org/sax/features/validation", false);
        SAXParser sAXParser = new SAXParser((XMLParserConfiguration)object);
        this.fSAXParser = new SoftReference<SAXParser>(sAXParser);
        return sAXParser;
    }

    public synchronized XSNamedMap getComponents(short s) {
        if (s <= 0 || s > 16 || !GLOBAL_COMP[s]) {
            return XSNamedMapImpl.EMPTY_MAP;
        }
        if (this.fComponents == null) {
            this.fComponents = new XSNamedMap[17];
        }
        if (this.fComponents[s] == null) {
            SymbolHash symbolHash = null;
            switch (s) {
                case 3: 
                case 15: 
                case 16: {
                    symbolHash = this.fGlobalTypeDecls;
                    break;
                }
                case 1: {
                    symbolHash = this.fGlobalAttrDecls;
                    break;
                }
                case 2: {
                    symbolHash = this.fGlobalElemDecls;
                    break;
                }
                case 5: {
                    symbolHash = this.fGlobalAttrGrpDecls;
                    break;
                }
                case 6: {
                    symbolHash = this.fGlobalGroupDecls;
                    break;
                }
                case 11: {
                    symbolHash = this.fGlobalNotationDecls;
                }
            }
            this.fComponents[s] = s == 15 || s == 16 ? new XSNamedMap4Types(this.fTargetNamespace, symbolHash, s) : new XSNamedMapImpl(this.fTargetNamespace, symbolHash);
        }
        return this.fComponents[s];
    }

    public XSTypeDefinition getTypeDefinition(String string) {
        return this.getGlobalTypeDecl(string);
    }

    public XSAttributeDeclaration getAttributeDeclaration(String string) {
        return this.getGlobalAttributeDecl(string);
    }

    public XSElementDeclaration getElementDeclaration(String string) {
        return this.getGlobalElementDecl(string);
    }

    public XSAttributeGroupDefinition getAttributeGroup(String string) {
        return this.getGlobalAttributeGroupDecl(string);
    }

    public XSModelGroupDefinition getModelGroupDefinition(String string) {
        return this.getGlobalGroupDecl(string);
    }

    public XSNotationDeclaration getNotationDeclaration(String string) {
        return this.getGlobalNotationDecl(string);
    }

    public StringList getDocumentLocations() {
        return new StringListImpl(this.fLocations);
    }

    public XSModel toXSModel() {
        return new XSModelImpl(new SchemaGrammar[]{this});
    }

    public XSModel toXSModel(XSGrammar[] xSGrammarArray) {
        if (xSGrammarArray == null || xSGrammarArray.length == 0) {
            return this.toXSModel();
        }
        int n = xSGrammarArray.length;
        boolean bl = false;
        int n2 = 0;
        while (n2 < n) {
            if (xSGrammarArray[n2] == this) {
                bl = true;
                break;
            }
            ++n2;
        }
        SchemaGrammar[] schemaGrammarArray = new SchemaGrammar[bl ? n : n + 1];
        int n3 = 0;
        while (n3 < n) {
            schemaGrammarArray[n3] = (SchemaGrammar)xSGrammarArray[n3];
            ++n3;
        }
        if (!bl) {
            schemaGrammarArray[n] = this;
        }
        return new XSModelImpl(schemaGrammarArray);
    }

    public XSObjectList getAnnotations() {
        return new XSObjectListImpl(this.fAnnotations, this.fNumAnnotations);
    }

    public void addAnnotation(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        if (this.fAnnotations == null) {
            this.fAnnotations = new XSAnnotationImpl[2];
        } else if (this.fNumAnnotations == this.fAnnotations.length) {
            XSAnnotationImpl[] xSAnnotationImplArray = new XSAnnotationImpl[this.fNumAnnotations << 1];
            System.arraycopy(this.fAnnotations, 0, xSAnnotationImplArray, 0, this.fNumAnnotations);
            this.fAnnotations = xSAnnotationImplArray;
        }
        this.fAnnotations[this.fNumAnnotations++] = xSAnnotationImpl;
    }

    private static class BuiltinAttrDecl
    extends XSAttributeDecl {
        public BuiltinAttrDecl(String string, String string2, XSSimpleType xSSimpleType, short s) {
            this.fName = string;
            this.fTargetNamespace = string2;
            this.fType = xSSimpleType;
            this.fScope = s;
        }

        public void setValues(String string, String string2, XSSimpleType xSSimpleType, short s, short s2, ValidatedInfo validatedInfo, XSComplexTypeDecl xSComplexTypeDecl) {
        }

        public void reset() {
        }

        public XSAnnotation getAnnotation() {
            return null;
        }
    }

    public static class BuiltinSchemaGrammar
    extends SchemaGrammar {
        public BuiltinSchemaGrammar(int n) {
            SchemaDVFactory schemaDVFactory = SchemaDVFactory.getInstance();
            if (n == 1) {
                this.fTargetNamespace = SchemaSymbols.URI_SCHEMAFORSCHEMA;
                this.fGrammarDescription = new XSDDescription();
                this.fGrammarDescription.fContextType = (short)3;
                this.fGrammarDescription.setNamespace(SchemaSymbols.URI_SCHEMAFORSCHEMA);
                this.fGlobalAttrDecls = new SymbolHash(1);
                this.fGlobalAttrGrpDecls = new SymbolHash(1);
                this.fGlobalElemDecls = new SymbolHash(1);
                this.fGlobalGroupDecls = new SymbolHash(1);
                this.fGlobalNotationDecls = new SymbolHash(1);
                this.fGlobalIDConstraintDecls = new SymbolHash(1);
                this.fGlobalTypeDecls = schemaDVFactory.getBuiltInTypes();
                this.fGlobalTypeDecls.put(fAnyType.getName(), fAnyType);
            } else if (n == 2) {
                this.fTargetNamespace = SchemaSymbols.URI_XSI;
                this.fGrammarDescription = new XSDDescription();
                this.fGrammarDescription.fContextType = (short)3;
                this.fGrammarDescription.setNamespace(SchemaSymbols.URI_XSI);
                this.fGlobalAttrGrpDecls = new SymbolHash(1);
                this.fGlobalElemDecls = new SymbolHash(1);
                this.fGlobalGroupDecls = new SymbolHash(1);
                this.fGlobalNotationDecls = new SymbolHash(1);
                this.fGlobalIDConstraintDecls = new SymbolHash(1);
                this.fGlobalTypeDecls = new SymbolHash(1);
                this.fGlobalAttrDecls = new SymbolHash(8);
                String string = null;
                String string2 = null;
                XSSimpleType xSSimpleType = null;
                short s = 1;
                string = SchemaSymbols.XSI_TYPE;
                string2 = SchemaSymbols.URI_XSI;
                xSSimpleType = schemaDVFactory.getBuiltInType("QName");
                this.fGlobalAttrDecls.put(string, new BuiltinAttrDecl(string, string2, xSSimpleType, s));
                string = SchemaSymbols.XSI_NIL;
                string2 = SchemaSymbols.URI_XSI;
                xSSimpleType = schemaDVFactory.getBuiltInType("boolean");
                this.fGlobalAttrDecls.put(string, new BuiltinAttrDecl(string, string2, xSSimpleType, s));
                XSSimpleType xSSimpleType2 = schemaDVFactory.getBuiltInType("anyURI");
                string = SchemaSymbols.XSI_SCHEMALOCATION;
                string2 = SchemaSymbols.URI_XSI;
                xSSimpleType = schemaDVFactory.createTypeList(null, SchemaSymbols.URI_XSI, (short)0, xSSimpleType2, null);
                this.fGlobalAttrDecls.put(string, new BuiltinAttrDecl(string, string2, xSSimpleType, s));
                string = SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION;
                string2 = SchemaSymbols.URI_XSI;
                xSSimpleType = xSSimpleType2;
                this.fGlobalAttrDecls.put(string, new BuiltinAttrDecl(string, string2, xSSimpleType, s));
            }
        }

        public XMLGrammarDescription getGrammarDescription() {
            return this.fGrammarDescription.makeClone();
        }

        public void setImportedGrammars(Vector vector) {
        }

        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        public synchronized void addDocument(Object object, String string) {
        }

        synchronized DOMParser getDOMParser() {
            return null;
        }

        synchronized SAXParser getSAXParser() {
            return null;
        }
    }

    public static final class Schema4Annotations
    extends SchemaGrammar {
        public Schema4Annotations() {
            this.fTargetNamespace = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fGrammarDescription = new XSDDescription();
            this.fGrammarDescription.fContextType = (short)3;
            this.fGrammarDescription.setNamespace(SchemaSymbols.URI_SCHEMAFORSCHEMA);
            this.fGlobalAttrDecls = new SymbolHash(1);
            this.fGlobalAttrGrpDecls = new SymbolHash(1);
            this.fGlobalElemDecls = new SymbolHash(6);
            this.fGlobalGroupDecls = new SymbolHash(1);
            this.fGlobalNotationDecls = new SymbolHash(1);
            this.fGlobalIDConstraintDecls = new SymbolHash(1);
            this.fGlobalTypeDecls = SchemaGrammar.SG_SchemaNS.fGlobalTypeDecls;
            XSElementDecl xSElementDecl = this.createAnnotationElementDecl(SchemaSymbols.ELT_ANNOTATION);
            XSElementDecl xSElementDecl2 = this.createAnnotationElementDecl(SchemaSymbols.ELT_DOCUMENTATION);
            XSElementDecl xSElementDecl3 = this.createAnnotationElementDecl(SchemaSymbols.ELT_APPINFO);
            this.fGlobalElemDecls.put(xSElementDecl.fName, xSElementDecl);
            this.fGlobalElemDecls.put(xSElementDecl2.fName, xSElementDecl2);
            this.fGlobalElemDecls.put(xSElementDecl3.fName, xSElementDecl3);
            XSComplexTypeDecl xSComplexTypeDecl = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl2 = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl3 = new XSComplexTypeDecl();
            xSElementDecl.fType = xSComplexTypeDecl;
            xSElementDecl2.fType = xSComplexTypeDecl2;
            xSElementDecl3.fType = xSComplexTypeDecl3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl2 = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl3 = new XSAttributeGroupDecl();
            XSObject xSObject = new XSAttributeUseImpl();
            xSObject.fAttrDecl = new XSAttributeDecl();
            xSObject.fAttrDecl.setValues(SchemaSymbols.ATT_ID, null, (XSSimpleType)this.fGlobalTypeDecls.get("ID"), (short)0, (short)2, null, xSComplexTypeDecl, null);
            xSObject.fUse = 0;
            xSObject.fConstraintType = 0;
            XSObject xSObject2 = new XSAttributeUseImpl();
            xSObject2.fAttrDecl = new XSAttributeDecl();
            xSObject2.fAttrDecl.setValues(SchemaSymbols.ATT_SOURCE, null, (XSSimpleType)this.fGlobalTypeDecls.get("anyURI"), (short)0, (short)2, null, xSComplexTypeDecl2, null);
            xSObject2.fUse = 0;
            xSObject2.fConstraintType = 0;
            XSAttributeUseImpl xSAttributeUseImpl = new XSAttributeUseImpl();
            xSAttributeUseImpl.fAttrDecl = new XSAttributeDecl();
            xSAttributeUseImpl.fAttrDecl.setValues("lang".intern(), NamespaceContext.XML_URI, (XSSimpleType)this.fGlobalTypeDecls.get("language"), (short)0, (short)2, null, xSComplexTypeDecl2, null);
            xSAttributeUseImpl.fUse = 0;
            xSAttributeUseImpl.fConstraintType = 0;
            XSAttributeUseImpl xSAttributeUseImpl2 = new XSAttributeUseImpl();
            xSAttributeUseImpl2.fAttrDecl = new XSAttributeDecl();
            xSAttributeUseImpl2.fAttrDecl.setValues(SchemaSymbols.ATT_SOURCE, null, (XSSimpleType)this.fGlobalTypeDecls.get("anyURI"), (short)0, (short)2, null, xSComplexTypeDecl3, null);
            xSAttributeUseImpl2.fUse = 0;
            xSAttributeUseImpl2.fConstraintType = 0;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = new String[]{this.fTargetNamespace, null};
            xSWildcardDecl.fType = (short)2;
            xSWildcardDecl.fProcessContents = (short)3;
            xSAttributeGroupDecl.addAttributeUse((XSAttributeUseImpl)xSObject);
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl2.addAttributeUse((XSAttributeUseImpl)xSObject2);
            xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl);
            xSAttributeGroupDecl2.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl3.addAttributeUse(xSAttributeUseImpl2);
            xSAttributeGroupDecl3.fAttributeWC = xSWildcardDecl;
            xSObject = this.createUnboundedModelGroupParticle();
            xSObject2 = new XSModelGroupImpl();
            ((XSModelGroupImpl)xSObject2).fCompositor = (short)101;
            ((XSModelGroupImpl)xSObject2).fParticleCount = 2;
            ((XSModelGroupImpl)xSObject2).fParticles = new XSParticleDecl[2];
            ((XSModelGroupImpl)xSObject2).fParticles[0] = this.createChoiceElementParticle(xSElementDecl3);
            ((XSModelGroupImpl)xSObject2).fParticles[1] = this.createChoiceElementParticle(xSElementDecl2);
            ((XSParticleDecl)xSObject).fValue = xSObject2;
            xSObject2 = this.createUnboundedAnyWildcardSequenceParticle();
            xSComplexTypeDecl.setValues("#AnonType_" + SchemaSymbols.ELT_ANNOTATION, this.fTargetNamespace, fAnyType, (short)2, (short)0, (short)3, (short)2, false, xSAttributeGroupDecl, null, (XSParticleDecl)xSObject, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl.setName("#AnonType_" + SchemaSymbols.ELT_ANNOTATION);
            xSComplexTypeDecl.setIsAnonymous();
            xSComplexTypeDecl2.setValues("#AnonType_" + SchemaSymbols.ELT_DOCUMENTATION, this.fTargetNamespace, fAnyType, (short)2, (short)0, (short)3, (short)3, false, xSAttributeGroupDecl2, null, (XSParticleDecl)xSObject2, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl2.setName("#AnonType_" + SchemaSymbols.ELT_DOCUMENTATION);
            xSComplexTypeDecl2.setIsAnonymous();
            xSComplexTypeDecl3.setValues("#AnonType_" + SchemaSymbols.ELT_APPINFO, this.fTargetNamespace, fAnyType, (short)2, (short)0, (short)3, (short)3, false, xSAttributeGroupDecl3, null, (XSParticleDecl)xSObject2, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl3.setName("#AnonType_" + SchemaSymbols.ELT_APPINFO);
            xSComplexTypeDecl3.setIsAnonymous();
        }

        public XMLGrammarDescription getGrammarDescription() {
            return this.fGrammarDescription.makeClone();
        }

        public void setImportedGrammars(Vector vector) {
        }

        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        public synchronized void addDocument(Object object, String string) {
        }

        synchronized DOMParser getDOMParser() {
            return null;
        }

        synchronized SAXParser getSAXParser() {
            return null;
        }

        private XSElementDecl createAnnotationElementDecl(String string) {
            XSElementDecl xSElementDecl = new XSElementDecl();
            xSElementDecl.fName = string;
            xSElementDecl.fTargetNamespace = this.fTargetNamespace;
            xSElementDecl.setIsGlobal();
            xSElementDecl.fBlock = (short)7;
            xSElementDecl.setConstraintType((short)0);
            return xSElementDecl;
        }

        private XSParticleDecl createUnboundedModelGroupParticle() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short)3;
            return xSParticleDecl;
        }

        private XSParticleDecl createChoiceElementParticle(XSElementDecl xSElementDecl) {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = 1;
            xSParticleDecl.fValue = xSElementDecl;
            return xSParticleDecl;
        }

        private XSParticleDecl createUnboundedAnyWildcardSequenceParticle() {
            XSParticleDecl xSParticleDecl = this.createUnboundedModelGroupParticle();
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short)102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = new XSParticleDecl[1];
            xSModelGroupImpl.fParticles[0] = this.createAnyLaxWildcardParticle();
            xSParticleDecl.fValue = xSModelGroupImpl;
            return xSParticleDecl;
        }

        private XSParticleDecl createAnyLaxWildcardParticle() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = (short)2;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = null;
            xSWildcardDecl.fType = 1;
            xSWildcardDecl.fProcessContents = (short)3;
            xSParticleDecl.fValue = xSWildcardDecl;
            return xSParticleDecl;
        }
    }

    private static class XSAnyType
    extends XSComplexTypeDecl {
        public XSAnyType() {
            this.fName = "anyType";
            this.fTargetNamespace = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fBaseType = this;
            this.fDerivedBy = (short)2;
            this.fContentType = (short)3;
            this.fParticle = null;
            this.fAttrGrp = null;
        }

        public void setValues(String string, String string2, XSTypeDefinition xSTypeDefinition, short s, short s2, short s3, short s4, boolean bl, XSAttributeGroupDecl xSAttributeGroupDecl, XSSimpleType xSSimpleType, XSParticleDecl xSParticleDecl) {
        }

        public void setName(String string) {
        }

        public void setIsAbstractType() {
        }

        public void setContainsTypeID() {
        }

        public void setIsAnonymous() {
        }

        public void reset() {
        }

        public XSObjectList getAttributeUses() {
            return new XSObjectListImpl(null, 0);
        }

        public XSAttributeGroupDecl getAttrGrp() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short)3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            return xSAttributeGroupDecl;
        }

        public XSWildcard getAttributeWildcard() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short)3;
            return xSWildcardDecl;
        }

        public XSParticle getParticle() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short)3;
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short)2;
            xSParticleDecl.fValue = xSWildcardDecl;
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short)102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = new XSParticleDecl[1];
            xSModelGroupImpl.fParticles[0] = xSParticleDecl;
            XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
            xSParticleDecl2.fType = (short)3;
            xSParticleDecl2.fValue = xSModelGroupImpl;
            return xSParticleDecl2;
        }

        public XSObjectList getAnnotations() {
            return null;
        }
    }
}

