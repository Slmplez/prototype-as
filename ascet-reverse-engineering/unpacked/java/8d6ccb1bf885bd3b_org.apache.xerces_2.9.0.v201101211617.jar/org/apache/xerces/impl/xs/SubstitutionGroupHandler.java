/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs;

import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.XSComplexTypeDecl;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSGrammarBucket;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xs.XSObjectList;
import org.apache.xerces.xs.XSSimpleTypeDefinition;
import org.apache.xerces.xs.XSTypeDefinition;

public class SubstitutionGroupHandler {
    private static final XSElementDecl[] EMPTY_GROUP = new XSElementDecl[0];
    XSGrammarBucket fGrammarBucket;
    Hashtable fSubGroupsB = new Hashtable();
    private static final OneSubGroup[] EMPTY_VECTOR = new OneSubGroup[0];
    Hashtable fSubGroups = new Hashtable();

    public SubstitutionGroupHandler(XSGrammarBucket xSGrammarBucket) {
        this.fGrammarBucket = xSGrammarBucket;
    }

    public XSElementDecl getMatchingElemDecl(QName qName, XSElementDecl xSElementDecl) {
        if (qName.localpart == xSElementDecl.fName && qName.uri == xSElementDecl.fTargetNamespace) {
            return xSElementDecl;
        }
        if (xSElementDecl.fScope != 1) {
            return null;
        }
        if ((xSElementDecl.fBlock & 4) != 0) {
            return null;
        }
        SchemaGrammar schemaGrammar = this.fGrammarBucket.getGrammar(qName.uri);
        if (schemaGrammar == null) {
            return null;
        }
        XSElementDecl xSElementDecl2 = schemaGrammar.getGlobalElementDecl(qName.localpart);
        if (xSElementDecl2 == null) {
            return null;
        }
        if (this.substitutionGroupOK(xSElementDecl2, xSElementDecl, xSElementDecl.fBlock)) {
            return xSElementDecl2;
        }
        return null;
    }

    protected boolean substitutionGroupOK(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2, short s) {
        if (xSElementDecl == xSElementDecl2) {
            return true;
        }
        if ((s & 4) != 0) {
            return false;
        }
        XSElementDecl xSElementDecl3 = xSElementDecl.fSubGroup;
        while (xSElementDecl3 != null && xSElementDecl3 != xSElementDecl2) {
            xSElementDecl3 = xSElementDecl3.fSubGroup;
        }
        if (xSElementDecl3 == null) {
            return false;
        }
        return this.typeDerivationOK(xSElementDecl.fType, xSElementDecl2.fType, s);
    }

    private boolean typeDerivationOK(XSTypeDefinition xSTypeDefinition, XSTypeDefinition xSTypeDefinition2, short s) {
        short s2 = 0;
        short s3 = s;
        XSTypeDefinition xSTypeDefinition3 = xSTypeDefinition;
        while (xSTypeDefinition3 != xSTypeDefinition2 && xSTypeDefinition3 != SchemaGrammar.fAnyType) {
            s2 = xSTypeDefinition3.getTypeCategory() == 15 ? (short)(s2 | ((XSComplexTypeDecl)xSTypeDefinition3).fDerivedBy) : (short)(s2 | 2);
            if ((xSTypeDefinition3 = xSTypeDefinition3.getBaseType()) == null) {
                xSTypeDefinition3 = SchemaGrammar.fAnyType;
            }
            if (xSTypeDefinition3.getTypeCategory() != 15) continue;
            s3 = (short)(s3 | ((XSComplexTypeDecl)xSTypeDefinition3).fBlock);
        }
        if (xSTypeDefinition3 != xSTypeDefinition2) {
            XSSimpleTypeDefinition xSSimpleTypeDefinition;
            if (xSTypeDefinition2.getTypeCategory() == 16 && (xSSimpleTypeDefinition = (XSSimpleTypeDefinition)xSTypeDefinition2).getVariety() == 3) {
                XSObjectList xSObjectList = xSSimpleTypeDefinition.getMemberTypes();
                int n = xSObjectList.getLength();
                int n2 = 0;
                while (n2 < n) {
                    if (this.typeDerivationOK(xSTypeDefinition, (XSTypeDefinition)xSObjectList.item(n2), s)) {
                        return true;
                    }
                    ++n2;
                }
            }
            return false;
        }
        return (s2 & s3) == 0;
    }

    public boolean inSubstitutionGroup(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2) {
        return this.substitutionGroupOK(xSElementDecl, xSElementDecl2, xSElementDecl2.fBlock);
    }

    public void reset() {
        this.fSubGroupsB.clear();
        this.fSubGroups.clear();
    }

    public void addSubstitutionGroup(XSElementDecl[] xSElementDeclArray) {
        int n = xSElementDeclArray.length - 1;
        while (n >= 0) {
            XSElementDecl xSElementDecl = xSElementDeclArray[n];
            XSElementDecl xSElementDecl2 = xSElementDecl.fSubGroup;
            Vector<XSElementDecl> vector = (Vector<XSElementDecl>)this.fSubGroupsB.get(xSElementDecl2);
            if (vector == null) {
                vector = new Vector<XSElementDecl>();
                this.fSubGroupsB.put(xSElementDecl2, vector);
            }
            vector.addElement(xSElementDecl);
            --n;
        }
    }

    public XSElementDecl[] getSubstitutionGroup(XSElementDecl xSElementDecl) {
        Object v = this.fSubGroups.get(xSElementDecl);
        if (v != null) {
            return (XSElementDecl[])v;
        }
        if ((xSElementDecl.fBlock & 4) != 0) {
            this.fSubGroups.put(xSElementDecl, EMPTY_GROUP);
            return EMPTY_GROUP;
        }
        OneSubGroup[] oneSubGroupArray = this.getSubGroupB(xSElementDecl, new OneSubGroup());
        int n = oneSubGroupArray.length;
        int n2 = 0;
        XSElementDecl[] xSElementDeclArray = new XSElementDecl[n];
        int n3 = 0;
        while (n3 < n) {
            if ((xSElementDecl.fBlock & oneSubGroupArray[n3].dMethod) == 0) {
                xSElementDeclArray[n2++] = oneSubGroupArray[n3].sub;
            }
            ++n3;
        }
        if (n2 < n) {
            XSElementDecl[] xSElementDeclArray2 = new XSElementDecl[n2];
            System.arraycopy(xSElementDeclArray, 0, xSElementDeclArray2, 0, n2);
            xSElementDeclArray = xSElementDeclArray2;
        }
        this.fSubGroups.put(xSElementDecl, xSElementDeclArray);
        return xSElementDeclArray;
    }

    private OneSubGroup[] getSubGroupB(XSElementDecl xSElementDecl, OneSubGroup oneSubGroup) {
        OneSubGroup[] oneSubGroupArray;
        Object v = this.fSubGroupsB.get(xSElementDecl);
        if (v == null) {
            this.fSubGroupsB.put(xSElementDecl, EMPTY_VECTOR);
            return EMPTY_VECTOR;
        }
        if (v instanceof OneSubGroup[]) {
            return (OneSubGroup[])v;
        }
        Vector vector = (Vector)v;
        Vector<OneSubGroup> vector2 = new Vector<OneSubGroup>();
        int n = vector.size() - 1;
        while (n >= 0) {
            oneSubGroupArray = (XSElementDecl)vector.elementAt(n);
            if (this.getDBMethods(oneSubGroupArray.fType, xSElementDecl.fType, oneSubGroup)) {
                short s = oneSubGroup.dMethod;
                short s2 = oneSubGroup.bMethod;
                vector2.addElement(new OneSubGroup((XSElementDecl)oneSubGroupArray, oneSubGroup.dMethod, oneSubGroup.bMethod));
                OneSubGroup[] oneSubGroupArray2 = this.getSubGroupB((XSElementDecl)oneSubGroupArray, oneSubGroup);
                int n2 = oneSubGroupArray2.length - 1;
                while (n2 >= 0) {
                    short s3 = (short)(s | oneSubGroupArray2[n2].dMethod);
                    short s4 = (short)(s2 | oneSubGroupArray2[n2].bMethod);
                    if ((s3 & s4) == 0) {
                        vector2.addElement(new OneSubGroup(oneSubGroupArray2[n2].sub, s3, s4));
                    }
                    --n2;
                }
            }
            --n;
        }
        oneSubGroupArray = new OneSubGroup[vector2.size()];
        int n3 = vector2.size() - 1;
        while (n3 >= 0) {
            oneSubGroupArray[n3] = (OneSubGroup)vector2.elementAt(n3);
            --n3;
        }
        this.fSubGroupsB.put(xSElementDecl, oneSubGroupArray);
        return oneSubGroupArray;
    }

    private boolean getDBMethods(XSTypeDefinition xSTypeDefinition, XSTypeDefinition xSTypeDefinition2, OneSubGroup oneSubGroup) {
        int n = 0;
        short s = 0;
        while (xSTypeDefinition != xSTypeDefinition2 && xSTypeDefinition != SchemaGrammar.fAnyType) {
            n = xSTypeDefinition.getTypeCategory() == 15 ? (int)((short)(n | ((XSComplexTypeDecl)xSTypeDefinition).fDerivedBy)) : (int)((short)(n | 2));
            if ((xSTypeDefinition = xSTypeDefinition.getBaseType()) == null) {
                xSTypeDefinition = SchemaGrammar.fAnyType;
            }
            if (xSTypeDefinition.getTypeCategory() != 15) continue;
            s = (short)(s | ((XSComplexTypeDecl)xSTypeDefinition).fBlock);
        }
        if (xSTypeDefinition != xSTypeDefinition2 || n & s) {
            return false;
        }
        oneSubGroup.dMethod = (short)n;
        oneSubGroup.bMethod = s;
        return true;
    }

    private static final class OneSubGroup {
        XSElementDecl sub;
        short dMethod;
        short bMethod;

        OneSubGroup() {
        }

        OneSubGroup(XSElementDecl xSElementDecl, short s, short s2) {
            this.sub = xSElementDecl;
            this.dMethod = s;
            this.bMethod = s2;
        }
    }
}

