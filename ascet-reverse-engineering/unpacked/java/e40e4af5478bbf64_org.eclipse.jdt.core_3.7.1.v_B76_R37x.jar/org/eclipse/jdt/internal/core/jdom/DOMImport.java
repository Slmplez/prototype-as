/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMImport
extends DOMNode
implements IDOMImport {
    protected boolean fOnDemand;
    protected int fFlags = 0;

    DOMImport() {
        this.fName = "java.lang.*";
        this.setMask(2048, true);
    }

    DOMImport(char[] document, int[] sourceRange, String name, int[] nameRange, boolean onDemand, int modifiers) {
        super(document, sourceRange, name, nameRange);
        this.fOnDemand = onDemand;
        this.fFlags = modifiers;
        this.setMask(2048, true);
    }

    DOMImport(char[] document, int[] sourceRange, String name, boolean onDemand, int modifiers) {
        this(document, sourceRange, name, new int[]{-1, -1}, onDemand, modifiers);
        this.fOnDemand = onDemand;
        this.setMask(2048, false);
    }

    protected void appendFragmentedContents(CharArrayBuffer buffer) {
        if (this.fNameRange[0] < 0) {
            buffer.append("import ").append(this.fName).append(';').append(Util.getLineSeparator(buffer.toString(), null));
        } else {
            buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
            buffer.append(this.fName);
            buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
        }
    }

    public String getContents() {
        if (this.fName == null) {
            return null;
        }
        return super.getContents();
    }

    protected DOMNode getDetailedNode() {
        return (DOMNode)((Object)this.getFactory().createImport(this.getContents()));
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 5) {
            return ((ICompilationUnit)parent).getImport(this.getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    public int getNodeType() {
        return 3;
    }

    public boolean isOnDemand() {
        return this.fOnDemand;
    }

    protected DOMNode newDOMNode() {
        return new DOMImport();
    }

    public void setName(String name) {
        if (name == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        this.becomeDetailed();
        super.setName(name);
        this.fOnDemand = name.endsWith(".*");
    }

    public String toString() {
        return "IMPORT: " + this.getName();
    }

    public int getFlags() {
        return this.fFlags;
    }

    public void setFlags(int flags) {
        this.fFlags = flags;
    }
}

