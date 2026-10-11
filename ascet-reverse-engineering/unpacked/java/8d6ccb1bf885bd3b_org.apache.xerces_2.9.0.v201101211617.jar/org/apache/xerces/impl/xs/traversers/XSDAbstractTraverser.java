/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.traversers;

import java.util.Vector;
import org.apache.xerces.impl.dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.dv.ValidationContext;
import org.apache.xerces.impl.dv.XSFacets;
import org.apache.xerces.impl.dv.XSSimpleType;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.XSAnnotationImpl;
import org.apache.xerces.impl.xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.xs.XSAttributeUseImpl;
import org.apache.xerces.impl.xs.XSComplexTypeDecl;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSParticleDecl;
import org.apache.xerces.impl.xs.XSWildcardDecl;
import org.apache.xerces.impl.xs.traversers.XSAnnotationInfo;
import org.apache.xerces.impl.xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.xs.traversers.XSDHandler;
import org.apache.xerces.impl.xs.traversers.XSDocumentInfo;
import org.apache.xerces.impl.xs.util.XInt;
import org.apache.xerces.impl.xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xs.XSObjectList;
import org.apache.xerces.xs.XSTypeDefinition;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

abstract class XSDAbstractTraverser {
    protected static final String NO_NAME = "(no name)";
    protected static final int NOT_ALL_CONTEXT = 0;
    protected static final int PROCESSING_ALL_EL = 1;
    protected static final int GROUP_REF_WITH_ALL = 2;
    protected static final int CHILD_OF_GROUP = 4;
    protected static final int PROCESSING_ALL_GP = 8;
    protected XSDHandler fSchemaHandler = null;
    protected SymbolTable fSymbolTable = null;
    protected XSAttributeChecker fAttrChecker = null;
    protected boolean fValidateAnnotations = false;
    ValidationState fValidationState = new ValidationState();
    private static final XSSimpleType fQNameDV = (XSSimpleType)SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");
    private StringBuffer fPattern = new StringBuffer();
    private final XSFacets xsFacets = new XSFacets();

    XSDAbstractTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        this.fSchemaHandler = xSDHandler;
        this.fAttrChecker = xSAttributeChecker;
    }

    void reset(SymbolTable symbolTable, boolean bl) {
        this.fSymbolTable = symbolTable;
        this.fValidateAnnotations = bl;
        this.fValidationState.setExtraChecking(false);
        this.fValidationState.setSymbolTable(symbolTable);
    }

    XSAnnotationImpl traverseAnnotationDecl(Element element, Object[] objectArray, boolean bl, XSDocumentInfo xSDocumentInfo) {
        Object object;
        Object[] objectArray2 = this.fAttrChecker.checkAttributes(element, bl, xSDocumentInfo);
        this.fAttrChecker.returnAttrArray(objectArray2, xSDocumentInfo);
        String string = DOMUtil.getAnnotation(element);
        Element element2 = DOMUtil.getFirstChildElement(element);
        if (element2 != null) {
            do {
                if (!((String)(object = DOMUtil.getLocalName(element2))).equals(SchemaSymbols.ELT_APPINFO) && !((String)object).equals(SchemaSymbols.ELT_DOCUMENTATION)) {
                    this.reportSchemaError("src-annotation", new Object[]{object}, element2);
                }
                objectArray2 = this.fAttrChecker.checkAttributes(element2, true, xSDocumentInfo);
                this.fAttrChecker.returnAttrArray(objectArray2, xSDocumentInfo);
            } while ((element2 = DOMUtil.getNextSiblingElement(element2)) != null);
        }
        if (string == null) {
            return null;
        }
        object = this.fSchemaHandler.getGrammar(xSDocumentInfo.fTargetNamespace);
        Vector vector = (Vector)objectArray[XSAttributeChecker.ATTIDX_NONSCHEMA];
        if (vector != null && !vector.isEmpty()) {
            String string2;
            CharSequence charSequence;
            int n;
            StringBuffer stringBuffer = new StringBuffer(64);
            stringBuffer.append(" ");
            int n2 = 0;
            while (n2 < vector.size()) {
                CharSequence charSequence2;
                if ((n = ((String)(charSequence = (String)vector.elementAt(n2++))).indexOf(58)) == -1) {
                    string2 = "";
                    charSequence2 = charSequence;
                } else {
                    string2 = ((String)charSequence).substring(0, n);
                    charSequence2 = ((String)charSequence).substring(n + 1);
                }
                String string3 = xSDocumentInfo.fNamespaceSupport.getURI(this.fSymbolTable.addSymbol(string2));
                if (!element.getAttributeNS(string3, (String)charSequence2).equals("")) {
                    ++n2;
                    continue;
                }
                stringBuffer.append((String)charSequence).append("=\"");
                String string4 = (String)vector.elementAt(n2++);
                string4 = XSDAbstractTraverser.processAttValue(string4);
                stringBuffer.append(string4).append("\" ");
            }
            charSequence = new StringBuffer(string.length() + stringBuffer.length());
            n = string.indexOf(SchemaSymbols.ELT_ANNOTATION);
            if (n == -1) {
                return null;
            }
            ((StringBuffer)charSequence).append(string.substring(0, n += SchemaSymbols.ELT_ANNOTATION.length()));
            ((StringBuffer)charSequence).append(stringBuffer.toString());
            ((StringBuffer)charSequence).append(string.substring(n, string.length()));
            string2 = ((StringBuffer)charSequence).toString();
            if (this.fValidateAnnotations) {
                xSDocumentInfo.addAnnotation(new XSAnnotationInfo(string2, element));
            }
            return new XSAnnotationImpl(string2, (SchemaGrammar)object);
        }
        if (this.fValidateAnnotations) {
            xSDocumentInfo.addAnnotation(new XSAnnotationInfo(string, element));
        }
        return new XSAnnotationImpl(string, (SchemaGrammar)object);
    }

    XSAnnotationImpl traverseSyntheticAnnotation(Element element, String string, Object[] objectArray, boolean bl, XSDocumentInfo xSDocumentInfo) {
        String string2 = string;
        SchemaGrammar schemaGrammar = this.fSchemaHandler.getGrammar(xSDocumentInfo.fTargetNamespace);
        Vector vector = (Vector)objectArray[XSAttributeChecker.ATTIDX_NONSCHEMA];
        if (vector != null && !vector.isEmpty()) {
            String string3;
            CharSequence charSequence;
            int n;
            StringBuffer stringBuffer = new StringBuffer(64);
            stringBuffer.append(" ");
            int n2 = 0;
            while (n2 < vector.size()) {
                CharSequence charSequence2;
                if ((n = ((String)(charSequence = (String)vector.elementAt(n2++))).indexOf(58)) == -1) {
                    string3 = "";
                    charSequence2 = charSequence;
                } else {
                    string3 = ((String)charSequence).substring(0, n);
                    charSequence2 = ((String)charSequence).substring(n + 1);
                }
                String string4 = xSDocumentInfo.fNamespaceSupport.getURI(this.fSymbolTable.addSymbol(string3));
                stringBuffer.append((String)charSequence).append("=\"");
                String string5 = (String)vector.elementAt(n2++);
                string5 = XSDAbstractTraverser.processAttValue(string5);
                stringBuffer.append(string5).append("\" ");
            }
            charSequence = new StringBuffer(string2.length() + stringBuffer.length());
            n = string2.indexOf(SchemaSymbols.ELT_ANNOTATION);
            if (n == -1) {
                return null;
            }
            ((StringBuffer)charSequence).append(string2.substring(0, n += SchemaSymbols.ELT_ANNOTATION.length()));
            ((StringBuffer)charSequence).append(stringBuffer.toString());
            ((StringBuffer)charSequence).append(string2.substring(n, string2.length()));
            string3 = ((StringBuffer)charSequence).toString();
            if (this.fValidateAnnotations) {
                xSDocumentInfo.addAnnotation(new XSAnnotationInfo(string3, element));
            }
            return new XSAnnotationImpl(string3, schemaGrammar);
        }
        if (this.fValidateAnnotations) {
            xSDocumentInfo.addAnnotation(new XSAnnotationInfo(string2, element));
        }
        return new XSAnnotationImpl(string2, schemaGrammar);
    }

    FacetInfo traverseFacets(Element element, XSSimpleType xSSimpleType, XSDocumentInfo xSDocumentInfo) {
        short s = 0;
        short s2 = 0;
        boolean bl = this.containsQName(xSSimpleType);
        Vector<String> vector = null;
        XSObjectListImpl xSObjectListImpl = null;
        XSObjectListImpl xSObjectListImpl2 = null;
        Vector<Object> vector2 = bl ? new Vector<Object>() : null;
        int n = 0;
        this.xsFacets.reset();
        while (element != null) {
            Object object;
            Object object2;
            Object object3;
            Object[] objectArray = null;
            String string = DOMUtil.getLocalName(element);
            if (string.equals(SchemaSymbols.ELT_ENUMERATION)) {
                objectArray = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo, bl);
                object3 = (String)objectArray[XSAttributeChecker.ATTIDX_VALUE];
                object2 = (NamespaceSupport)objectArray[XSAttributeChecker.ATTIDX_ENUMNSDECLS];
                if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20) {
                    xSDocumentInfo.fValidationContext.setNamespaceSupport((NamespaceContext)object2);
                    try {
                        object = (QName)fQNameDV.validate((String)object3, (ValidationContext)xSDocumentInfo.fValidationContext, null);
                        this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 6, (QName)object, element);
                    }
                    catch (InvalidDatatypeValueException invalidDatatypeValueException) {
                        this.reportSchemaError(invalidDatatypeValueException.getKey(), invalidDatatypeValueException.getArgs(), element);
                    }
                    xSDocumentInfo.fValidationContext.setNamespaceSupport(xSDocumentInfo.fNamespaceSupport);
                }
                if (vector == null) {
                    vector = new Vector<String>();
                    xSObjectListImpl = new XSObjectListImpl();
                }
                vector.addElement((String)object3);
                xSObjectListImpl.add(null);
                if (bl) {
                    vector2.addElement(object2);
                }
                if ((object = DOMUtil.getFirstChildElement(element)) != null && DOMUtil.getLocalName((Node)object).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    xSObjectListImpl.add(xSObjectListImpl.getLength() - 1, this.traverseAnnotationDecl((Element)object, objectArray, false, xSDocumentInfo));
                    object = DOMUtil.getNextSiblingElement((Node)object);
                } else {
                    String string2 = DOMUtil.getSyntheticAnnotation(element);
                    if (string2 != null) {
                        xSObjectListImpl.add(xSObjectListImpl.getLength() - 1, this.traverseSyntheticAnnotation(element, string2, objectArray, false, xSDocumentInfo));
                    }
                }
                if (object != null) {
                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{"enumeration", "(annotation?)", DOMUtil.getLocalName((Node)object)}, (Element)object);
                }
            } else if (string.equals(SchemaSymbols.ELT_PATTERN)) {
                objectArray = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
                if (this.fPattern.length() == 0) {
                    this.fPattern.append((String)objectArray[XSAttributeChecker.ATTIDX_VALUE]);
                } else {
                    this.fPattern.append("|");
                    this.fPattern.append((String)objectArray[XSAttributeChecker.ATTIDX_VALUE]);
                }
                object3 = DOMUtil.getFirstChildElement(element);
                if (object3 != null && DOMUtil.getLocalName((Node)object3).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    if (xSObjectListImpl2 == null) {
                        xSObjectListImpl2 = new XSObjectListImpl();
                    }
                    xSObjectListImpl2.add(this.traverseAnnotationDecl((Element)object3, objectArray, false, xSDocumentInfo));
                    object3 = DOMUtil.getNextSiblingElement((Node)object3);
                } else {
                    object2 = DOMUtil.getSyntheticAnnotation(element);
                    if (object2 != null) {
                        if (xSObjectListImpl2 == null) {
                            xSObjectListImpl2 = new XSObjectListImpl();
                        }
                        xSObjectListImpl2.add(this.traverseSyntheticAnnotation(element, (String)object2, objectArray, false, xSDocumentInfo));
                    }
                }
                if (object3 != null) {
                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{"pattern", "(annotation?)", DOMUtil.getLocalName((Node)object3)}, (Element)object3);
                }
            } else {
                if (string.equals(SchemaSymbols.ELT_MINLENGTH)) {
                    n = 2;
                } else if (string.equals(SchemaSymbols.ELT_MAXLENGTH)) {
                    n = 4;
                } else if (string.equals(SchemaSymbols.ELT_MAXEXCLUSIVE)) {
                    n = 64;
                } else if (string.equals(SchemaSymbols.ELT_MAXINCLUSIVE)) {
                    n = 32;
                } else if (string.equals(SchemaSymbols.ELT_MINEXCLUSIVE)) {
                    n = 128;
                } else if (string.equals(SchemaSymbols.ELT_MININCLUSIVE)) {
                    n = 256;
                } else if (string.equals(SchemaSymbols.ELT_TOTALDIGITS)) {
                    n = 512;
                } else if (string.equals(SchemaSymbols.ELT_FRACTIONDIGITS)) {
                    n = 1024;
                } else if (string.equals(SchemaSymbols.ELT_WHITESPACE)) {
                    n = 16;
                } else {
                    if (!string.equals(SchemaSymbols.ELT_LENGTH)) break;
                    n = 1;
                }
                objectArray = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
                if ((s & n) != 0) {
                    this.reportSchemaError("src-single-facet-value", new Object[]{string}, element);
                } else if (objectArray[XSAttributeChecker.ATTIDX_VALUE] != null) {
                    s = (short)(s | n);
                    if (((Boolean)objectArray[XSAttributeChecker.ATTIDX_FIXED]).booleanValue()) {
                        s2 = (short)(s2 | n);
                    }
                    switch (n) {
                        case 2: {
                            this.xsFacets.minLength = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).intValue();
                            break;
                        }
                        case 4: {
                            this.xsFacets.maxLength = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).intValue();
                            break;
                        }
                        case 64: {
                            this.xsFacets.maxExclusive = (String)objectArray[XSAttributeChecker.ATTIDX_VALUE];
                            break;
                        }
                        case 32: {
                            this.xsFacets.maxInclusive = (String)objectArray[XSAttributeChecker.ATTIDX_VALUE];
                            break;
                        }
                        case 128: {
                            this.xsFacets.minExclusive = (String)objectArray[XSAttributeChecker.ATTIDX_VALUE];
                            break;
                        }
                        case 256: {
                            this.xsFacets.minInclusive = (String)objectArray[XSAttributeChecker.ATTIDX_VALUE];
                            break;
                        }
                        case 512: {
                            this.xsFacets.totalDigits = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).intValue();
                            break;
                        }
                        case 1024: {
                            this.xsFacets.fractionDigits = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).intValue();
                            break;
                        }
                        case 16: {
                            this.xsFacets.whiteSpace = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).shortValue();
                            break;
                        }
                        case 1: {
                            this.xsFacets.length = ((XInt)objectArray[XSAttributeChecker.ATTIDX_VALUE]).intValue();
                        }
                    }
                }
                object3 = DOMUtil.getFirstChildElement(element);
                object2 = null;
                if (object3 != null && DOMUtil.getLocalName((Node)object3).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    object2 = this.traverseAnnotationDecl((Element)object3, objectArray, false, xSDocumentInfo);
                    object3 = DOMUtil.getNextSiblingElement((Node)object3);
                } else {
                    object = DOMUtil.getSyntheticAnnotation(element);
                    if (object != null) {
                        object2 = this.traverseSyntheticAnnotation(element, (String)object, objectArray, false, xSDocumentInfo);
                    }
                }
                switch (n) {
                    case 2: {
                        this.xsFacets.minLengthAnnotation = object2;
                        break;
                    }
                    case 4: {
                        this.xsFacets.maxLengthAnnotation = object2;
                        break;
                    }
                    case 64: {
                        this.xsFacets.maxExclusiveAnnotation = object2;
                        break;
                    }
                    case 32: {
                        this.xsFacets.maxInclusiveAnnotation = object2;
                        break;
                    }
                    case 128: {
                        this.xsFacets.minExclusiveAnnotation = object2;
                        break;
                    }
                    case 256: {
                        this.xsFacets.minInclusiveAnnotation = object2;
                        break;
                    }
                    case 512: {
                        this.xsFacets.totalDigitsAnnotation = object2;
                        break;
                    }
                    case 1024: {
                        this.xsFacets.fractionDigitsAnnotation = object2;
                        break;
                    }
                    case 16: {
                        this.xsFacets.whiteSpaceAnnotation = object2;
                        break;
                    }
                    case 1: {
                        this.xsFacets.lengthAnnotation = object2;
                    }
                }
                if (object3 != null) {
                    this.reportSchemaError("s4s-elt-must-match.1", new Object[]{string, "(annotation?)", DOMUtil.getLocalName((Node)object3)}, (Element)object3);
                }
            }
            this.fAttrChecker.returnAttrArray(objectArray, xSDocumentInfo);
            element = DOMUtil.getNextSiblingElement(element);
        }
        if (vector != null) {
            s = (short)(s | 0x800);
            this.xsFacets.enumeration = vector;
            this.xsFacets.enumNSDecls = vector2;
            this.xsFacets.enumAnnotations = xSObjectListImpl;
        }
        if (this.fPattern.length() != 0) {
            s = (short)(s | 8);
            this.xsFacets.pattern = this.fPattern.toString();
            this.xsFacets.patternAnnotations = xSObjectListImpl2;
        }
        this.fPattern.setLength(0);
        return new FacetInfo(this.xsFacets, element, s, s2);
    }

    private boolean containsQName(XSSimpleType xSSimpleType) {
        if (xSSimpleType.getVariety() == 1) {
            short s = xSSimpleType.getPrimitiveKind();
            return s == 18 || s == 20;
        }
        if (xSSimpleType.getVariety() == 2) {
            return this.containsQName((XSSimpleType)xSSimpleType.getItemType());
        }
        if (xSSimpleType.getVariety() == 3) {
            XSObjectList xSObjectList = xSSimpleType.getMemberTypes();
            int n = 0;
            while (n < xSObjectList.getLength()) {
                if (this.containsQName((XSSimpleType)xSObjectList.item(n))) {
                    return true;
                }
                ++n;
            }
        }
        return false;
    }

    Element traverseAttrsAndAttrGrps(Element element, XSAttributeGroupDecl xSAttributeGroupDecl, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, XSComplexTypeDecl xSComplexTypeDecl) {
        Object object;
        String string;
        Object object2;
        String string2;
        Element element2 = null;
        XSAttributeGroupDecl xSAttributeGroupDecl2 = null;
        XSAttributeUseImpl xSAttributeUseImpl = null;
        element2 = element;
        while (element2 != null) {
            string2 = DOMUtil.getLocalName(element2);
            if (string2.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                xSAttributeUseImpl = this.fSchemaHandler.fAttributeTraverser.traverseLocal(element2, xSDocumentInfo, schemaGrammar, xSComplexTypeDecl);
                if (xSAttributeUseImpl == null) break;
                if (xSAttributeGroupDecl.getAttributeUse(xSAttributeUseImpl.fAttrDecl.getNamespace(), xSAttributeUseImpl.fAttrDecl.getName()) == null) {
                    object2 = xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
                    if (object2 != null) {
                        string = xSComplexTypeDecl == null ? "ag-props-correct.3" : "ct-props-correct.5";
                        object = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                        this.reportSchemaError(string, new Object[]{object, xSAttributeUseImpl.fAttrDecl.getName(), object2}, element2);
                    }
                } else {
                    object2 = xSComplexTypeDecl == null ? "ag-props-correct.2" : "ct-props-correct.4";
                    string = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                    this.reportSchemaError((String)object2, new Object[]{string, xSAttributeUseImpl.fAttrDecl.getName()}, element2);
                }
            } else {
                String string3;
                String string4;
                if (!string2.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP) || (xSAttributeGroupDecl2 = this.fSchemaHandler.fAttributeGroupTraverser.traverseLocal(element2, xSDocumentInfo, schemaGrammar)) == null) break;
                object2 = xSAttributeGroupDecl2.getAttributeUses();
                string = null;
                int n = object2.getLength();
                int n2 = 0;
                while (n2 < n) {
                    object = (XSAttributeUseImpl)object2.item(n2);
                    if (string == xSAttributeGroupDecl.getAttributeUse(((XSAttributeUseImpl)object).fAttrDecl.getNamespace(), ((XSAttributeUseImpl)object).fAttrDecl.getName())) {
                        string4 = xSAttributeGroupDecl.addAttributeUse((XSAttributeUseImpl)object);
                        if (string4 != null) {
                            string3 = xSComplexTypeDecl == null ? "ag-props-correct.3" : "ct-props-correct.5";
                            String string5 = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                            this.reportSchemaError(string3, new Object[]{string5, ((XSAttributeUseImpl)object).fAttrDecl.getName(), string4}, element2);
                        }
                    } else {
                        string4 = xSComplexTypeDecl == null ? "ag-props-correct.2" : "ct-props-correct.4";
                        string3 = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                        this.reportSchemaError(string4, new Object[]{string3, ((XSAttributeUseImpl)object).fAttrDecl.getName()}, element2);
                    }
                    ++n2;
                }
                if (xSAttributeGroupDecl2.fAttributeWC != null) {
                    if (xSAttributeGroupDecl.fAttributeWC == null) {
                        xSAttributeGroupDecl.fAttributeWC = xSAttributeGroupDecl2.fAttributeWC;
                    } else {
                        xSAttributeGroupDecl.fAttributeWC = xSAttributeGroupDecl.fAttributeWC.performIntersectionWith(xSAttributeGroupDecl2.fAttributeWC, xSAttributeGroupDecl.fAttributeWC.fProcessContents);
                        if (xSAttributeGroupDecl.fAttributeWC == null) {
                            string4 = xSComplexTypeDecl == null ? "src-attribute_group.2" : "src-ct.4";
                            string3 = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                            this.reportSchemaError(string4, new Object[]{string3}, element2);
                        }
                    }
                }
            }
            element2 = DOMUtil.getNextSiblingElement(element2);
        }
        if (element2 != null && (string2 = DOMUtil.getLocalName(element2)).equals(SchemaSymbols.ELT_ANYATTRIBUTE)) {
            object2 = this.fSchemaHandler.fWildCardTraverser.traverseAnyAttribute(element2, xSDocumentInfo, schemaGrammar);
            if (xSAttributeGroupDecl.fAttributeWC == null) {
                xSAttributeGroupDecl.fAttributeWC = object2;
            } else {
                xSAttributeGroupDecl.fAttributeWC = ((XSWildcardDecl)object2).performIntersectionWith(xSAttributeGroupDecl.fAttributeWC, ((XSWildcardDecl)object2).fProcessContents);
                if (xSAttributeGroupDecl.fAttributeWC == null) {
                    string = xSComplexTypeDecl == null ? "src-attribute_group.2" : "src-ct.4";
                    object = xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName();
                    this.reportSchemaError(string, new Object[]{object}, element2);
                }
            }
            element2 = DOMUtil.getNextSiblingElement(element2);
        }
        return element2;
    }

    void reportSchemaError(String string, Object[] objectArray, Element element) {
        this.fSchemaHandler.reportSchemaError(string, objectArray, element);
    }

    void checkNotationType(String string, XSTypeDefinition xSTypeDefinition, Element element) {
        if (xSTypeDefinition.getTypeCategory() == 16 && ((XSSimpleType)xSTypeDefinition).getVariety() == 1 && ((XSSimpleType)xSTypeDefinition).getPrimitiveKind() == 20 && (((XSSimpleType)xSTypeDefinition).getDefinedFacets() & 0x800) == 0) {
            this.reportSchemaError("enumeration-required-notation", new Object[]{xSTypeDefinition.getName(), string, DOMUtil.getLocalName(element)}, element);
        }
    }

    protected XSParticleDecl checkOccurrences(XSParticleDecl xSParticleDecl, String string, Element element, int n, long l) {
        boolean bl;
        int n2 = xSParticleDecl.fMinOccurs;
        int n3 = xSParticleDecl.fMaxOccurs;
        boolean bl2 = (l & (long)(1 << XSAttributeChecker.ATTIDX_MINOCCURS)) != 0L;
        boolean bl3 = (l & (long)(1 << XSAttributeChecker.ATTIDX_MAXOCCURS)) != 0L;
        boolean bl4 = (n & 1) != 0;
        boolean bl5 = (n & 8) != 0;
        boolean bl6 = (n & 2) != 0;
        boolean bl7 = bl = (n & 4) != 0;
        if (bl) {
            Object[] objectArray;
            if (!bl2) {
                objectArray = new Object[]{string, "minOccurs"};
                this.reportSchemaError("s4s-att-not-allowed", objectArray, element);
                n2 = 1;
            }
            if (!bl3) {
                objectArray = new Object[]{string, "maxOccurs"};
                this.reportSchemaError("s4s-att-not-allowed", objectArray, element);
                n3 = 1;
            }
        }
        if (n2 == 0 && n3 == 0) {
            xSParticleDecl.fType = 0;
            return null;
        }
        if (bl4) {
            if (n3 != 1) {
                this.reportSchemaError("cos-all-limited.2", new Object[]{new Integer(n3), ((XSElementDecl)xSParticleDecl.fValue).getName()}, element);
                n3 = 1;
                if (n2 > 1) {
                    n2 = 1;
                }
            }
        } else if ((bl5 || bl6) && n3 != 1) {
            this.reportSchemaError("cos-all-limited.1.2", null, element);
            if (n2 > 1) {
                n2 = 1;
            }
            n3 = 1;
        }
        xSParticleDecl.fMaxOccurs = n2;
        xSParticleDecl.fMaxOccurs = n3;
        return xSParticleDecl;
    }

    private static String processAttValue(String string) {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (c == '\"' || c == '<' || c == '&' || c == '\t' || c == '\n' || c == '\r') {
                return XSDAbstractTraverser.escapeAttValue(string, n2);
            }
            ++n2;
        }
        return string;
    }

    private static String escapeAttValue(String string, int n) {
        int n2 = string.length();
        StringBuffer stringBuffer = new StringBuffer(n2);
        stringBuffer.append(string.substring(0, n));
        int n3 = n;
        while (n3 < n2) {
            char c = string.charAt(n3);
            if (c == '\"') {
                stringBuffer.append("&quot;");
            } else if (c == '<') {
                stringBuffer.append("&lt;");
            } else if (c == '&') {
                stringBuffer.append("&amp;");
            } else if (c == '\t') {
                stringBuffer.append("&#x9;");
            } else if (c == '\n') {
                stringBuffer.append("&#xA;");
            } else if (c == '\r') {
                stringBuffer.append("&#xD;");
            } else {
                stringBuffer.append(c);
            }
            ++n3;
        }
        return stringBuffer.toString();
    }

    static final class FacetInfo {
        final XSFacets facetdata;
        final Element nodeAfterFacets;
        final short fPresentFacets;
        final short fFixedFacets;

        FacetInfo(XSFacets xSFacets, Element element, short s, short s2) {
            this.facetdata = xSFacets;
            this.nodeAfterFacets = element;
            this.fPresentFacets = s;
            this.fFixedFacets = s2;
        }
    }
}

