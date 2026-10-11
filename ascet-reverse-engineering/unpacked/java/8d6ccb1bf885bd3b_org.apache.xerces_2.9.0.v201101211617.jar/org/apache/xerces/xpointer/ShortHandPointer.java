/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xpointer;

import org.apache.xerces.impl.dv.XSSimpleType;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xpointer.XPointerPart;
import org.apache.xerces.xs.AttributePSVI;
import org.apache.xerces.xs.XSTypeDefinition;

class ShortHandPointer
implements XPointerPart {
    private String fShortHandPointer;
    private boolean fIsFragmentResolved = false;
    private SymbolTable fSymbolTable;
    int fMatchingChildCount = 0;

    public ShortHandPointer() {
    }

    public ShortHandPointer(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }

    public void parseXPointer(String string) throws XNIException {
        this.fShortHandPointer = string;
        this.fIsFragmentResolved = false;
    }

    public boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int n) throws XNIException {
        if (this.fMatchingChildCount == 0) {
            this.fIsFragmentResolved = false;
        }
        if (n == 0) {
            if (this.fMatchingChildCount == 0) {
                this.fIsFragmentResolved = this.hasMatchingIdentifier(qName, xMLAttributes, augmentations, n);
            }
            if (this.fIsFragmentResolved) {
                ++this.fMatchingChildCount;
            }
        } else if (n == 2) {
            if (this.fMatchingChildCount == 0) {
                this.fIsFragmentResolved = this.hasMatchingIdentifier(qName, xMLAttributes, augmentations, n);
            }
        } else if (this.fIsFragmentResolved) {
            --this.fMatchingChildCount;
        }
        return this.fIsFragmentResolved;
    }

    private boolean hasMatchingIdentifier(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int n) throws XNIException {
        String string = null;
        if (xMLAttributes != null) {
            int n2 = 0;
            while (n2 < xMLAttributes.getLength()) {
                string = this.getSchemaDeterminedID(xMLAttributes, n2);
                if (string != null || (string = this.getChildrenSchemaDeterminedID(xMLAttributes, n2)) != null || (string = this.getDTDDeterminedID(xMLAttributes, n2)) != null) break;
                ++n2;
            }
        }
        return string != null && string.equals(this.fShortHandPointer);
    }

    public String getDTDDeterminedID(XMLAttributes xMLAttributes, int n) throws XNIException {
        if (xMLAttributes.getType(n).equals("ID")) {
            return xMLAttributes.getValue(n);
        }
        return null;
    }

    public String getSchemaDeterminedID(XMLAttributes xMLAttributes, int n) throws XNIException {
        Augmentations augmentations = xMLAttributes.getAugmentations(n);
        AttributePSVI attributePSVI = (AttributePSVI)augmentations.getItem("ATTRIBUTE_PSVI");
        if (attributePSVI != null) {
            XSTypeDefinition xSTypeDefinition = attributePSVI.getMemberTypeDefinition();
            if (xSTypeDefinition != null) {
                xSTypeDefinition = attributePSVI.getTypeDefinition();
            }
            if (xSTypeDefinition != null && ((XSSimpleType)xSTypeDefinition).isIDType()) {
                return attributePSVI.getSchemaNormalizedValue();
            }
        }
        return null;
    }

    public String getChildrenSchemaDeterminedID(XMLAttributes xMLAttributes, int n) throws XNIException {
        return null;
    }

    public boolean isFragmentResolved() {
        return this.fIsFragmentResolved;
    }

    public boolean isChildFragmentResolved() {
        return this.fIsFragmentResolved && this.fMatchingChildCount > 0;
    }

    public String getSchemeName() {
        return this.fShortHandPointer;
    }

    public String getSchemeData() {
        return null;
    }

    public void setSchemeName(String string) {
        this.fShortHandPointer = string;
    }

    public void setSchemeData(String string) {
    }
}

