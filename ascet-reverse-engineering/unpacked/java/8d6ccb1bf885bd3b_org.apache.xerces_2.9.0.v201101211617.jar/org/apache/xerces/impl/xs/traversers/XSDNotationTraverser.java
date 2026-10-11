/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.traversers;

import org.apache.xerces.impl.xs.SchemaGrammar;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.apache.xerces.impl.xs.XSAnnotationImpl;
import org.apache.xerces.impl.xs.XSNotationDecl;
import org.apache.xerces.impl.xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.xs.traversers.XSDAbstractTraverser;
import org.apache.xerces.impl.xs.traversers.XSDHandler;
import org.apache.xerces.impl.xs.traversers.XSDocumentInfo;
import org.apache.xerces.impl.xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.w3c.dom.Element;

class XSDNotationTraverser
extends XSDAbstractTraverser {
    XSDNotationTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    XSNotationDecl traverse(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object object;
        Object[] objectArray = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        String string = (String)objectArray[XSAttributeChecker.ATTIDX_NAME];
        String string2 = (String)objectArray[XSAttributeChecker.ATTIDX_PUBLIC];
        String string3 = (String)objectArray[XSAttributeChecker.ATTIDX_SYSTEM];
        if (string == null) {
            this.reportSchemaError("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_NOTATION, SchemaSymbols.ATT_NAME}, element);
            this.fAttrChecker.returnAttrArray(objectArray, xSDocumentInfo);
            return null;
        }
        if (string3 == null && string2 == null) {
            this.reportSchemaError("PublicSystemOnNotation", null, element);
        }
        XSNotationDecl xSNotationDecl = new XSNotationDecl();
        xSNotationDecl.fName = string;
        xSNotationDecl.fTargetNamespace = xSDocumentInfo.fTargetNamespace;
        xSNotationDecl.fPublicId = string2;
        xSNotationDecl.fSystemId = string3;
        Element element2 = DOMUtil.getFirstChildElement(element);
        XSAnnotationImpl xSAnnotationImpl = null;
        if (element2 != null && DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_ANNOTATION)) {
            xSAnnotationImpl = this.traverseAnnotationDecl(element2, objectArray, false, xSDocumentInfo);
            element2 = DOMUtil.getNextSiblingElement(element2);
        } else {
            object = DOMUtil.getSyntheticAnnotation(element);
            if (object != null) {
                xSAnnotationImpl = this.traverseSyntheticAnnotation(element, (String)object, objectArray, false, xSDocumentInfo);
            }
        }
        if (xSAnnotationImpl != null) {
            object = new XSObjectListImpl();
            ((XSObjectListImpl)object).add(xSAnnotationImpl);
        } else {
            object = XSObjectListImpl.EMPTY_LIST;
        }
        xSNotationDecl.fAnnotations = object;
        if (element2 != null) {
            Object[] objectArray2 = new Object[]{SchemaSymbols.ELT_NOTATION, "(annotation?)", DOMUtil.getLocalName(element2)};
            this.reportSchemaError("s4s-elt-must-match.1", objectArray2, element2);
        }
        schemaGrammar.addGlobalNotationDecl(xSNotationDecl);
        this.fAttrChecker.returnAttrArray(objectArray, xSDocumentInfo);
        return xSNotationDecl;
    }
}

