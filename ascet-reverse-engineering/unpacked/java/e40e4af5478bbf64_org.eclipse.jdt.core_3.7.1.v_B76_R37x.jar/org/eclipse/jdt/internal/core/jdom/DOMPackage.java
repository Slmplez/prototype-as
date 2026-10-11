/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMPackage
extends DOMNode
implements IDOMPackage {
    DOMPackage() {
        this.setMask(2048, true);
    }

    DOMPackage(char[] document, int[] sourceRange, String name) {
        super(document, sourceRange, name, new int[]{-1, -1});
        this.setMask(2048, false);
    }

    DOMPackage(char[] document, int[] sourceRange, String name, int[] nameRange) {
        super(document, sourceRange, name, nameRange);
        this.setMask(2048, true);
    }

    protected void appendFragmentedContents(CharArrayBuffer buffer) {
        if (this.fNameRange[0] < 0) {
            String lineSeparator = Util.getLineSeparator(buffer.toString(), null);
            buffer.append("package ").append(this.fName).append(';').append(lineSeparator).append(lineSeparator);
        } else {
            buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]).append(this.fName).append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
        }
    }

    public String getContents() {
        if (this.fName == null) {
            return null;
        }
        return super.getContents();
    }

    protected DOMNode getDetailedNode() {
        return (DOMNode)((Object)this.getFactory().createPackage(this.getContents()));
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 5) {
            return ((ICompilationUnit)parent).getPackageDeclaration(this.getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    public int getNodeType() {
        return 2;
    }

    protected DOMNode newDOMNode() {
        return new DOMPackage();
    }

    public void setName(String name) {
        this.becomeDetailed();
        super.setName(name);
    }

    public String toString() {
        return "PACKAGE: " + this.getName();
    }
}

