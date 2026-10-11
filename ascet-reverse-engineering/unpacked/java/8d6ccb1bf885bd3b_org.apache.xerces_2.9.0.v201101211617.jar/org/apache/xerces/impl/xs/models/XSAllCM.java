/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.models;

import java.util.Vector;
import org.apache.xerces.impl.xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.xs.XMLSchemaException;
import org.apache.xerces.impl.xs.XSConstraints;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.models.XSCMValidator;
import org.apache.xerces.xni.QName;

public class XSAllCM
implements XSCMValidator {
    private static final short STATE_START = 0;
    private static final short STATE_VALID = 1;
    private static final short STATE_CHILD = 1;
    private final XSElementDecl[] fAllElements;
    private final boolean[] fIsOptionalElement;
    private final boolean fHasOptionalContent;
    private int fNumElements = 0;

    public XSAllCM(boolean bl, int n) {
        this.fHasOptionalContent = bl;
        this.fAllElements = new XSElementDecl[n];
        this.fIsOptionalElement = new boolean[n];
    }

    public void addElement(XSElementDecl xSElementDecl, boolean bl) {
        this.fAllElements[this.fNumElements] = xSElementDecl;
        this.fIsOptionalElement[this.fNumElements] = bl;
        ++this.fNumElements;
    }

    public int[] startContentModel() {
        int[] nArray = new int[this.fNumElements + 1];
        int n = 0;
        while (n <= this.fNumElements) {
            nArray[n] = 0;
            ++n;
        }
        return nArray;
    }

    Object findMatchingDecl(QName qName, SubstitutionGroupHandler substitutionGroupHandler) {
        XSElementDecl xSElementDecl = null;
        int n = 0;
        while (n < this.fNumElements) {
            xSElementDecl = substitutionGroupHandler.getMatchingElemDecl(qName, this.fAllElements[n]);
            if (xSElementDecl != null) break;
            ++n;
        }
        return xSElementDecl;
    }

    public Object oneTransition(QName qName, int[] nArray, SubstitutionGroupHandler substitutionGroupHandler) {
        if (nArray[0] < 0) {
            nArray[0] = -2;
            return this.findMatchingDecl(qName, substitutionGroupHandler);
        }
        nArray[0] = 1;
        XSElementDecl xSElementDecl = null;
        int n = 0;
        while (n < this.fNumElements) {
            if (nArray[n + 1] == 0 && (xSElementDecl = substitutionGroupHandler.getMatchingElemDecl(qName, this.fAllElements[n])) != null) {
                nArray[n + 1] = 1;
                return xSElementDecl;
            }
            ++n;
        }
        nArray[0] = -1;
        return this.findMatchingDecl(qName, substitutionGroupHandler);
    }

    public boolean endContentModel(int[] nArray) {
        int n = nArray[0];
        if (n == -1 || n == -2) {
            return false;
        }
        if (this.fHasOptionalContent && n == 0) {
            return true;
        }
        int n2 = 0;
        while (n2 < this.fNumElements) {
            if (!this.fIsOptionalElement[n2] && nArray[n2 + 1] == 0) {
                return false;
            }
            ++n2;
        }
        return true;
    }

    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        int n = 0;
        while (n < this.fNumElements) {
            int n2 = n + 1;
            while (n2 < this.fNumElements) {
                if (XSConstraints.overlapUPA(this.fAllElements[n], this.fAllElements[n2], substitutionGroupHandler)) {
                    throw new XMLSchemaException("cos-nonambig", new Object[]{this.fAllElements[n].toString(), this.fAllElements[n2].toString()});
                }
                ++n2;
            }
            ++n;
        }
        return false;
    }

    public Vector whatCanGoHere(int[] nArray) {
        Vector<XSElementDecl> vector = new Vector<XSElementDecl>();
        int n = 0;
        while (n < this.fNumElements) {
            if (nArray[n + 1] == 0) {
                vector.addElement(this.fAllElements[n]);
            }
            ++n;
        }
        return vector;
    }

    public boolean isCompactedForUPA() {
        return false;
    }
}

