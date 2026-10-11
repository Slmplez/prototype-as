/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.jdom.ILineStartFinder;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMCompilationUnit
extends DOMNode
implements IDOMCompilationUnit,
SuffixConstants {
    protected String fHeader = "";

    DOMCompilationUnit() {
    }

    DOMCompilationUnit(char[] document, int[] sourceRange) {
        super(document, sourceRange, null, new int[]{-1, -1});
    }

    protected void appendFragmentedContents(CharArrayBuffer buffer) {
        buffer.append(this.getHeader());
        this.appendContentsOfChildren(buffer);
    }

    public boolean canHaveChildren() {
        return true;
    }

    public String getHeader() {
        return this.fHeader;
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 4) {
            return ((IPackageFragment)parent).getCompilationUnit(this.getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    public String getName() {
        IDOMType topLevelType = null;
        IDOMType firstType = null;
        IDOMNode child = this.fFirstChild;
        while (child != null) {
            if (child.getNodeType() == 4) {
                IDOMType type = (IDOMType)child;
                if (firstType == null) {
                    firstType = type;
                }
                if (Flags.isPublic(type.getFlags())) {
                    topLevelType = type;
                    break;
                }
            }
            child = child.getNextNode();
        }
        if (topLevelType == null) {
            topLevelType = firstType;
        }
        if (topLevelType != null) {
            return String.valueOf(topLevelType.getName()) + Util.defaultJavaExtension();
        }
        return null;
    }

    public int getNodeType() {
        return 1;
    }

    protected void initalizeHeader() {
        int childStart;
        DOMNode child = (DOMNode)this.getFirstChild();
        if (child != null && (childStart = child.getStartPosition()) > 1) {
            this.setHeader(new String(this.fDocument, 0, childStart));
        }
    }

    public boolean isAllowableChild(IDOMNode node) {
        if (node != null) {
            int type = node.getNodeType();
            return type == 2 || type == 3 || type == 4;
        }
        return false;
    }

    protected DOMNode newDOMNode() {
        return new DOMCompilationUnit();
    }

    void normalize(ILineStartFinder finder) {
        super.normalize(finder);
        this.initalizeHeader();
    }

    public void setHeader(String comment) {
        this.fHeader = comment;
        this.fragment();
    }

    public void setName(String name) {
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        this.fHeader = ((DOMCompilationUnit)node).fHeader;
    }

    public String toString() {
        return "COMPILATION_UNIT: " + this.getName();
    }
}

