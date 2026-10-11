/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import java.util.Vector;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.xs.XSAnnotationImpl;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.util.NSItemListImpl;
import org.apache.xerces.impl.xs.util.StringListImpl;
import org.apache.xerces.impl.xs.util.XSNamedMap4Types;
import org.apache.xerces.impl.xs.util.XSNamedMapImpl;
import org.apache.xerces.impl.xs.util.XSObjectListImpl;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xs.StringList;
import org.apache.xerces.xs.XSAttributeDeclaration;
import org.apache.xerces.xs.XSAttributeGroupDefinition;
import org.apache.xerces.xs.XSElementDeclaration;
import org.apache.xerces.xs.XSModel;
import org.apache.xerces.xs.XSModelGroupDefinition;
import org.apache.xerces.xs.XSNamedMap;
import org.apache.xerces.xs.XSNamespaceItemList;
import org.apache.xerces.xs.XSNotationDeclaration;
import org.apache.xerces.xs.XSObject;
import org.apache.xerces.xs.XSObjectList;
import org.apache.xerces.xs.XSTypeDefinition;

public class XSModelImpl
implements XSModel {
    private static final short MAX_COMP_IDX = 16;
    private static final boolean[] GLOBAL_COMP = new boolean[]{false, true, true, true, false, true, true, false, false, false, false, true, false, false, false, true, true};
    private int fGrammarCount;
    private String[] fNamespaces;
    private SchemaGrammar[] fGrammarList;
    private SymbolHash fGrammarMap;
    private SymbolHash fSubGroupMap;
    private XSNamedMap[] fGlobalComponents;
    private XSNamedMap[][] fNSComponents;
    private XSObjectListImpl fAnnotations = null;
    private boolean fHasIDC = false;

    public XSModelImpl(SchemaGrammar[] schemaGrammarArray) {
        int n = schemaGrammarArray.length;
        this.fNamespaces = new String[Math.max(n + 1, 5)];
        this.fGrammarList = new SchemaGrammar[Math.max(n + 1, 5)];
        boolean bl = false;
        int n2 = 0;
        while (n2 < n) {
            this.fNamespaces[n2] = schemaGrammarArray[n2].getTargetNamespace();
            this.fGrammarList[n2] = schemaGrammarArray[n2];
            if (this.fNamespaces[n2] == SchemaSymbols.URI_SCHEMAFORSCHEMA) {
                bl = true;
            }
            ++n2;
        }
        if (!bl) {
            this.fNamespaces[n] = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fGrammarList[n++] = SchemaGrammar.SG_SchemaNS;
        }
        int n3 = 0;
        while (n3 < n) {
            SchemaGrammar schemaGrammar = this.fGrammarList[n3];
            Vector vector = schemaGrammar.getImportedGrammars();
            int n4 = vector == null ? -1 : vector.size() - 1;
            while (n4 >= 0) {
                SchemaGrammar schemaGrammar2 = (SchemaGrammar)vector.elementAt(n4);
                int n5 = 0;
                while (n5 < n) {
                    if (schemaGrammar2 == this.fGrammarList[n5]) break;
                    ++n5;
                }
                if (n5 == n) {
                    if (n == this.fGrammarList.length) {
                        String[] stringArray = new String[n * 2];
                        System.arraycopy(this.fNamespaces, 0, stringArray, 0, n);
                        this.fNamespaces = stringArray;
                        SchemaGrammar[] schemaGrammarArray2 = new SchemaGrammar[n * 2];
                        System.arraycopy(this.fGrammarList, 0, schemaGrammarArray2, 0, n);
                        this.fGrammarList = schemaGrammarArray2;
                    }
                    this.fNamespaces[n] = schemaGrammar2.getTargetNamespace();
                    this.fGrammarList[n] = schemaGrammar2;
                    ++n;
                }
                --n4;
            }
            ++n3;
        }
        this.fGrammarMap = new SymbolHash(n * 2);
        n3 = 0;
        while (n3 < n) {
            this.fGrammarMap.put(XSModelImpl.null2EmptyString(this.fNamespaces[n3]), this.fGrammarList[n3]);
            if (this.fGrammarList[n3].hasIDConstraints()) {
                this.fHasIDC = true;
            }
            ++n3;
        }
        this.fGrammarCount = n;
        this.fGlobalComponents = new XSNamedMap[17];
        this.fNSComponents = new XSNamedMap[n][17];
        this.buildSubGroups();
    }

    private void buildSubGroups() {
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(null);
        int n = 0;
        while (n < this.fGrammarCount) {
            substitutionGroupHandler.addSubstitutionGroup(this.fGrammarList[n].getSubstitutionGroups());
            ++n;
        }
        XSNamedMap xSNamedMap = this.getComponents((short)2);
        int n2 = xSNamedMap.getLength();
        this.fSubGroupMap = new SymbolHash(n2 * 2);
        int n3 = 0;
        while (n3 < n2) {
            XSElementDecl xSElementDecl;
            XSObject[] xSObjectArray = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl = (XSElementDecl)xSNamedMap.item(n3));
            this.fSubGroupMap.put(xSElementDecl, xSObjectArray.length > 0 ? new XSObjectListImpl(xSObjectArray, xSObjectArray.length) : XSObjectListImpl.EMPTY_LIST);
            ++n3;
        }
    }

    public StringList getNamespaces() {
        return new StringListImpl(this.fNamespaces, this.fGrammarCount);
    }

    public XSNamespaceItemList getNamespaceItems() {
        return new NSItemListImpl(this.fGrammarList, this.fGrammarCount);
    }

    public synchronized XSNamedMap getComponents(short s) {
        if (s <= 0 || s > 16 || !GLOBAL_COMP[s]) {
            return XSNamedMapImpl.EMPTY_MAP;
        }
        SymbolHash[] symbolHashArray = new SymbolHash[this.fGrammarCount];
        if (this.fGlobalComponents[s] == null) {
            int n = 0;
            while (n < this.fGrammarCount) {
                switch (s) {
                    case 3: 
                    case 15: 
                    case 16: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalTypeDecls;
                        break;
                    }
                    case 1: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalAttrDecls;
                        break;
                    }
                    case 2: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalElemDecls;
                        break;
                    }
                    case 5: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalAttrGrpDecls;
                        break;
                    }
                    case 6: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalGroupDecls;
                        break;
                    }
                    case 11: {
                        symbolHashArray[n] = this.fGrammarList[n].fGlobalNotationDecls;
                    }
                }
                ++n;
            }
            this.fGlobalComponents[s] = s == 15 || s == 16 ? new XSNamedMap4Types(this.fNamespaces, symbolHashArray, this.fGrammarCount, s) : new XSNamedMapImpl(this.fNamespaces, symbolHashArray, this.fGrammarCount);
        }
        return this.fGlobalComponents[s];
    }

    /*
     * Unable to fully structure code
     */
    public synchronized XSNamedMap getComponentsByNamespace(short var1_1, String var2_2) {
        block14: {
            if (var1_1 <= 0 || var1_1 > 16 || !XSModelImpl.GLOBAL_COMP[var1_1]) {
                return XSNamedMapImpl.EMPTY_MAP;
            }
            var3_3 = 0;
            if (var2_2 == null) ** GOTO lbl13
            while (var3_3 < this.fGrammarCount) {
                if (!var2_2.equals(this.fNamespaces[var3_3])) {
                    ++var3_3;
                    continue;
                }
                break block14;
            }
            break block14;
            while (this.fNamespaces[var3_3] != null) {
                ++var3_3;
lbl13:
                // 2 sources

                if (var3_3 < this.fGrammarCount) continue;
            }
        }
        if (var3_3 == this.fGrammarCount) {
            return XSNamedMapImpl.EMPTY_MAP;
        }
        if (this.fNSComponents[var3_3][var1_1] == null) {
            var4_4 = null;
            switch (var1_1) {
                case 3: 
                case 15: 
                case 16: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalTypeDecls;
                    break;
                }
                case 1: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalAttrDecls;
                    break;
                }
                case 2: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalElemDecls;
                    break;
                }
                case 5: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalAttrGrpDecls;
                    break;
                }
                case 6: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalGroupDecls;
                    break;
                }
                case 11: {
                    var4_4 = this.fGrammarList[var3_3].fGlobalNotationDecls;
                }
            }
            this.fNSComponents[var3_3][var1_1] = var1_1 == 15 || var1_1 == 16 ? new XSNamedMap4Types(var2_2, var4_4, var1_1) : new XSNamedMapImpl(var2_2, var4_4);
        }
        return this.fNSComponents[var3_3][var1_1];
    }

    public XSTypeDefinition getTypeDefinition(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSTypeDefinition)schemaGrammar.fGlobalTypeDecls.get(string);
    }

    public XSAttributeDeclaration getAttributeDeclaration(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeDeclaration)schemaGrammar.fGlobalAttrDecls.get(string);
    }

    public XSElementDeclaration getElementDeclaration(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSElementDeclaration)schemaGrammar.fGlobalElemDecls.get(string);
    }

    public XSAttributeGroupDefinition getAttributeGroup(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeGroupDefinition)schemaGrammar.fGlobalAttrGrpDecls.get(string);
    }

    public XSModelGroupDefinition getModelGroupDefinition(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSModelGroupDefinition)schemaGrammar.fGlobalGroupDecls.get(string);
    }

    public XSNotationDeclaration getNotationDeclaration(String string, String string2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar)this.fGrammarMap.get(XSModelImpl.null2EmptyString(string2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSNotationDeclaration)schemaGrammar.fGlobalNotationDecls.get(string);
    }

    public synchronized XSObjectList getAnnotations() {
        if (this.fAnnotations != null) {
            return this.fAnnotations;
        }
        int n = 0;
        int n2 = 0;
        while (n2 < this.fGrammarCount) {
            n += this.fGrammarList[n2].fNumAnnotations;
            ++n2;
        }
        XSObject[] xSObjectArray = new XSAnnotationImpl[n];
        int n3 = 0;
        int n4 = 0;
        while (n4 < this.fGrammarCount) {
            SchemaGrammar schemaGrammar = this.fGrammarList[n4];
            if (schemaGrammar.fNumAnnotations > 0) {
                System.arraycopy(schemaGrammar.fAnnotations, 0, xSObjectArray, n3, schemaGrammar.fNumAnnotations);
                n3 += schemaGrammar.fNumAnnotations;
            }
            ++n4;
        }
        this.fAnnotations = new XSObjectListImpl(xSObjectArray, xSObjectArray.length);
        return this.fAnnotations;
    }

    private static final String null2EmptyString(String string) {
        return string == null ? XMLSymbols.EMPTY_STRING : string;
    }

    public boolean hasIDConstraints() {
        return this.fHasIDC;
    }

    public XSObjectList getSubstitutionGroup(XSElementDeclaration xSElementDeclaration) {
        return (XSObjectList)this.fSubGroupMap.get(xSElementDeclaration);
    }
}

