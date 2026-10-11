/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.core.jdom.DOMCompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.jdom.ILineStartFinder;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;

class DOMType
extends DOMMember
implements IDOMType {
    protected String fTypeKeyword;
    protected int[] fTypeRange;
    protected String fSuperclass;
    protected int[] fSuperclassRange;
    protected int[] fExtendsRange;
    protected int[] fImplementsRange;
    protected char[] fInterfaces;
    protected int[] fInterfacesRange;
    protected int[] fOpenBodyRange;
    protected int[] fCloseBodyRange;
    protected String[] fSuperInterfaces = CharOperation.NO_STRINGS;
    protected String[] fTypeParameters = CharOperation.NO_STRINGS;
    protected boolean fIsEnum = false;
    protected boolean fIsAnnotation = false;

    DOMType() {
    }

    DOMType(char[] document, int[] sourceRange, String name, int[] nameRange, int[] commentRange, int flags, int[] modifierRange, int[] typeRange, int[] superclassRange, int[] extendsRange, String[] implementsList, int[] implementsRange, int[] implementsKeywordRange, int[] openBodyRange, int[] closeBodyRange, boolean isClass) {
        super(document, sourceRange, name, nameRange, commentRange, flags, modifierRange);
        this.fTypeRange = typeRange;
        this.setMask(128, isClass);
        this.fExtendsRange = extendsRange;
        this.fImplementsRange = implementsKeywordRange;
        this.fSuperclassRange = superclassRange;
        this.fInterfacesRange = implementsRange;
        this.fCloseBodyRange = closeBodyRange;
        this.setMask(256, superclassRange[0] > 0);
        this.setMask(512, implementsList != null);
        this.fSuperInterfaces = implementsList;
        this.fOpenBodyRange = openBodyRange;
        this.fCloseBodyRange = closeBodyRange;
        this.setMask(2048, true);
    }

    DOMType(char[] document, int[] sourceRange, String name, int[] nameRange, int flags, String[] implementsList, boolean isClass) {
        this(document, sourceRange, name, nameRange, new int[]{-1, -1}, flags, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, implementsList, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{sourceRange[1], sourceRange[1]}, isClass);
        this.setMask(2048, false);
    }

    public void addSuperInterface(String name) throws IllegalArgumentException {
        if (name == null) {
            throw new IllegalArgumentException(Messages.dom_addNullInterface);
        }
        if (this.fSuperInterfaces == null) {
            this.fSuperInterfaces = new String[1];
            this.fSuperInterfaces[0] = name;
        } else {
            this.fSuperInterfaces = this.appendString(this.fSuperInterfaces, name);
        }
        this.setSuperInterfaces(this.fSuperInterfaces);
    }

    protected void appendMemberBodyContents(CharArrayBuffer buffer) {
        buffer.append(this.fDocument, this.fOpenBodyRange[0], this.fOpenBodyRange[1] + 1 - this.fOpenBodyRange[0]);
        this.appendContentsOfChildren(buffer);
        buffer.append(this.fDocument, this.fCloseBodyRange[0], this.fCloseBodyRange[1] + 1 - this.fCloseBodyRange[0]);
        buffer.append(this.fDocument, this.fCloseBodyRange[1] + 1, this.fSourceRange[1] - this.fCloseBodyRange[1]);
    }

    protected void appendMemberDeclarationContents(CharArrayBuffer buffer) {
        if (this.fTypeKeyword != null) {
            buffer.append(this.fTypeKeyword);
            buffer.append(this.fDocument, this.fTypeRange[1], this.fNameRange[0] - this.fTypeRange[1]);
        } else {
            buffer.append(this.fDocument, this.fTypeRange[0], this.fTypeRange[1] + 1 - this.fTypeRange[0]);
        }
        buffer.append(this.getName());
        if (this.isClass()) {
            boolean hasInterfaces = false;
            if (this.getMask(256)) {
                if (this.fExtendsRange[0] < 0) {
                    buffer.append(" extends ");
                } else {
                    buffer.append(this.fDocument, this.fExtendsRange[0], this.fExtendsRange[1] + 1 - this.fExtendsRange[0]);
                }
                if (this.fSuperclass != null) {
                    buffer.append(this.fSuperclass);
                } else {
                    buffer.append(this.fDocument, this.fSuperclassRange[0], this.fSuperclassRange[1] + 1 - this.fSuperclassRange[0]);
                }
            }
            if (this.getMask(512)) {
                hasInterfaces = true;
                if (this.fImplementsRange[0] < 0) {
                    buffer.append(" implements ");
                } else {
                    buffer.append(this.fDocument, this.fImplementsRange[0], this.fImplementsRange[1] + 1 - this.fImplementsRange[0]);
                }
                if (this.fInterfaces != null) {
                    buffer.append(this.fInterfaces);
                } else {
                    buffer.append(this.fDocument, this.fInterfacesRange[0], this.fInterfacesRange[1] + 1 - this.fInterfacesRange[0]);
                }
            }
            if (hasInterfaces) {
                if (this.fImplementsRange[0] < 0) {
                    buffer.append(' ');
                } else {
                    buffer.append(this.fDocument, this.fInterfacesRange[1] + 1, this.fOpenBodyRange[0] - this.fInterfacesRange[1] - 1);
                }
            } else if (this.fSuperclassRange[0] < 0) {
                buffer.append(' ');
            } else if (this.fImplementsRange[0] > 0) {
                buffer.append(this.fDocument, this.fSuperclassRange[1] + 1, this.fImplementsRange[0] - this.fSuperclassRange[1] - 1);
                buffer.append(this.fDocument, this.fInterfacesRange[1] + 1, this.fOpenBodyRange[0] - this.fInterfacesRange[1] - 1);
            } else {
                buffer.append(this.fDocument, this.fSuperclassRange[1] + 1, this.fOpenBodyRange[0] - this.fSuperclassRange[1] - 1);
            }
        } else if (this.getMask(512)) {
            if (this.fExtendsRange[0] < 0) {
                buffer.append(" extends ");
            } else {
                buffer.append(this.fDocument, this.fExtendsRange[0], this.fExtendsRange[1] + 1 - this.fExtendsRange[0]);
            }
            if (this.fInterfaces != null) {
                buffer.append(this.fInterfaces);
                buffer.append(' ');
            } else {
                buffer.append(this.fDocument, this.fInterfacesRange[0], this.fInterfacesRange[1] + 1 - this.fInterfacesRange[0]);
            }
        } else if (this.fImplementsRange[0] < 0) {
            buffer.append(' ');
        } else {
            buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fOpenBodyRange[0] - this.fNameRange[1] - 1);
        }
    }

    protected void appendSimpleContents(CharArrayBuffer buffer) {
        buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
        buffer.append(this.fName);
        buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fOpenBodyRange[1] - this.fNameRange[1]);
        this.appendContentsOfChildren(buffer);
        buffer.append(this.fDocument, this.fCloseBodyRange[0], this.fSourceRange[1] - this.fCloseBodyRange[0] + 1);
    }

    public boolean canHaveChildren() {
        return true;
    }

    int getCloseBodyPosition() {
        return this.fCloseBodyRange[0];
    }

    protected DOMNode getDetailedNode() {
        return (DOMNode)((Object)this.getFactory().createType(this.getContents()));
    }

    public int getInsertionPosition() {
        return this.fInsertionPosition;
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        switch (parent.getElementType()) {
            case 5: {
                return ((ICompilationUnit)parent).getType(this.getName());
            }
            case 7: {
                return ((IType)parent).getType(this.getName());
            }
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    protected int getMemberDeclarationStartPosition() {
        return this.fTypeRange[0];
    }

    public int getNodeType() {
        return 4;
    }

    int getOpenBodyEnd() {
        return this.fOpenBodyRange[1];
    }

    public String getSuperclass() {
        this.becomeDetailed();
        if (this.getMask(256)) {
            if (this.fSuperclass != null) {
                return this.fSuperclass;
            }
            return new String(this.fDocument, this.fSuperclassRange[0], this.fSuperclassRange[1] + 1 - this.fSuperclassRange[0]);
        }
        return null;
    }

    public String[] getSuperInterfaces() {
        return this.fSuperInterfaces;
    }

    public boolean isAllowableChild(IDOMNode node) {
        if (node != null) {
            int type = node.getNodeType();
            return type == 4 || type == 5 || type == 6 || type == 7;
        }
        return false;
    }

    public boolean isClass() {
        return this.getMask(128);
    }

    protected DOMNode newDOMNode() {
        return new DOMType();
    }

    /*
     * Unable to fully structure code
     */
    void normalize(ILineStartFinder finder) {
        block17: {
            block18: {
                block19: {
                    first = (DOMNode)this.getFirstChild();
                    lastNode = null;
                    scanner = new Scanner();
                    scanner.setSource(this.fDocument);
                    scanner.resetTo(this.fNameRange[1] + 1, this.fDocument.length);
                    try {
                        currentToken = scanner.getNextToken();
                        while (currentToken != 68 && currentToken != 69) {
                            currentToken = scanner.getNextToken();
                        }
                        if (currentToken == 68) {
                            openBodyEnd = scanner.currentPosition - 1;
                            openBodyStart = scanner.startPosition;
                        } else {
                            openBodyEnd = this.fDocument.length;
                            openBodyStart = this.fDocument.length;
                        }
                    }
                    catch (InvalidInputException v0) {
                        openBodyEnd = this.fDocument.length;
                        openBodyStart = this.fDocument.length;
                    }
                    if (first == null) break block18;
                    lineStart = finder.getLineStart(first.getStartPosition());
                    openBodyEnd = lineStart > openBodyEnd ? lineStart - 1 : first.getStartPosition() - 1;
                    lastNode = (DOMNode)first.getNextNode();
                    if (lastNode != null) ** GOTO lbl29
                    lastNode = first;
                    break block19;
lbl-1000:
                    // 1 sources

                    {
                        lastNode = (DOMNode)lastNode.getNextNode();
lbl29:
                        // 2 sources

                        ** while (lastNode.getNextNode() != null)
                    }
                }
                scanner.setSource(this.fDocument);
                scanner.resetTo(lastNode.getEndPosition() + 1, this.fDocument.length);
                try {
                    currentToken = scanner.getNextToken();
                    while (currentToken != 31 && currentToken != 69) {
                        currentToken = scanner.getNextToken();
                    }
                    if (currentToken == 31) {
                        closeBodyStart = scanner.startPosition;
                        closeBodyEnd = scanner.currentPosition - 1;
                        break block17;
                    }
                    closeBodyStart = this.fDocument.length;
                    closeBodyEnd = this.fDocument.length;
                }
                catch (InvalidInputException v1) {
                    closeBodyStart = this.fDocument.length;
                    closeBodyEnd = this.fDocument.length;
                }
                break block17;
            }
            scanner.resetTo(openBodyEnd, this.fDocument.length);
            try {
                currentToken = scanner.getNextToken();
                while (currentToken != 31 && currentToken != 69) {
                    currentToken = scanner.getNextToken();
                }
                if (currentToken == 31) {
                    closeBodyStart = scanner.startPosition;
                    closeBodyEnd = scanner.currentPosition - 1;
                } else {
                    closeBodyStart = this.fDocument.length;
                    closeBodyEnd = this.fDocument.length;
                }
            }
            catch (InvalidInputException v2) {
                closeBodyStart = this.fDocument.length;
                closeBodyEnd = this.fDocument.length;
            }
            openBodyEnd = closeBodyEnd - 1;
        }
        this.setOpenBodyRangeEnd(openBodyEnd);
        this.setOpenBodyRangeStart(openBodyStart);
        this.setCloseBodyRangeStart(closeBodyStart);
        this.setCloseBodyRangeEnd(closeBodyEnd);
        this.fInsertionPosition = finder.getLineStart(closeBodyStart);
        if (lastNode != null && this.fInsertionPosition < lastNode.getEndPosition()) {
            this.fInsertionPosition = this.getCloseBodyPosition();
        }
        if (this.fInsertionPosition <= openBodyEnd) {
            this.fInsertionPosition = this.getCloseBodyPosition();
        }
        super.normalize(finder);
    }

    void normalizeEndPosition(ILineStartFinder finder, DOMNode next) {
        if (next == null) {
            DOMNode parent = (DOMNode)this.getParent();
            if (parent == null || parent instanceof DOMCompilationUnit) {
                this.setSourceRangeEnd(this.fDocument.length - 1);
            } else {
                this.setSourceRangeEnd(((DOMType)parent).getCloseBodyPosition() - 1);
            }
        } else {
            next.normalizeStartPosition(this.getEndPosition(), finder);
            this.setSourceRangeEnd(next.getStartPosition() - 1);
        }
    }

    protected void offset(int offset) {
        super.offset(offset);
        this.offsetRange(this.fCloseBodyRange, offset);
        this.offsetRange(this.fExtendsRange, offset);
        this.offsetRange(this.fImplementsRange, offset);
        this.offsetRange(this.fInterfacesRange, offset);
        this.offsetRange(this.fOpenBodyRange, offset);
        this.offsetRange(this.fSuperclassRange, offset);
        this.offsetRange(this.fTypeRange, offset);
    }

    public void setClass(boolean b) {
        this.becomeDetailed();
        this.fragment();
        this.setMask(128, b);
        if (b) {
            this.fTypeKeyword = "class";
        } else {
            this.fTypeKeyword = "interface";
            this.setSuperclass(null);
        }
    }

    void setCloseBodyRangeEnd(int end) {
        this.fCloseBodyRange[1] = end;
    }

    void setCloseBodyRangeStart(int start) {
        this.fCloseBodyRange[0] = start;
    }

    public void setName(String name) throws IllegalArgumentException {
        if (name == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(name);
        Enumeration children = this.getChildren();
        while (children.hasMoreElements()) {
            IDOMNode child = (IDOMNode)children.nextElement();
            if (child.getNodeType() != 6 || !((IDOMMethod)child).isConstructor()) continue;
            ((DOMNode)child).fragment();
        }
    }

    void setOpenBodyRangeEnd(int end) {
        this.fOpenBodyRange[1] = end;
    }

    void setOpenBodyRangeStart(int start) {
        this.fOpenBodyRange[0] = start;
    }

    public void setSuperclass(String superclassName) {
        this.becomeDetailed();
        this.fragment();
        this.fSuperclass = superclassName;
        this.setMask(256, superclassName != null);
    }

    public void setSuperInterfaces(String[] names) {
        this.becomeDetailed();
        if (names == null) {
            throw new IllegalArgumentException(Messages.dom_nullInterfaces);
        }
        this.fragment();
        this.fSuperInterfaces = names;
        if (names.length == 0) {
            this.fInterfaces = null;
            this.fSuperInterfaces = CharOperation.NO_STRINGS;
            this.setMask(512, false);
        } else {
            this.setMask(512, true);
            CharArrayBuffer buffer = new CharArrayBuffer();
            int i = 0;
            while (i < names.length) {
                if (i > 0) {
                    buffer.append(", ");
                }
                buffer.append(names[i]);
                ++i;
            }
            this.fInterfaces = buffer.getContents();
        }
    }

    void setTypeKeyword(String keyword) {
        this.fTypeKeyword = keyword;
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        DOMType type = (DOMType)node;
        this.fCloseBodyRange = this.rangeCopy(type.fCloseBodyRange);
        this.fExtendsRange = type.fExtendsRange;
        this.fImplementsRange = this.rangeCopy(type.fImplementsRange);
        this.fInterfaces = type.fInterfaces;
        this.fInterfacesRange = this.rangeCopy(type.fInterfacesRange);
        this.fOpenBodyRange = this.rangeCopy(type.fOpenBodyRange);
        this.fSuperclass = type.fSuperclass;
        this.fSuperclassRange = this.rangeCopy(type.fSuperclassRange);
        this.fSuperInterfaces = type.fSuperInterfaces;
        this.fTypeKeyword = type.fTypeKeyword;
        this.fTypeRange = this.rangeCopy(type.fTypeRange);
    }

    public String toString() {
        return "TYPE: " + this.getName();
    }

    public String[] getTypeParameters() {
        return this.fTypeParameters;
    }

    public boolean isEnum() {
        return this.fIsEnum;
    }

    public boolean isAnnotation() {
        return this.fIsAnnotation;
    }

    public void setEnum(boolean b) {
        this.fIsEnum = b;
        if (this.fIsEnum) {
            this.setClass(true);
            this.setSuperclass(null);
        }
    }

    public void setAnnotation(boolean b) {
        this.fIsAnnotation = b;
        if (this.fIsAnnotation) {
            this.setClass(false);
            this.setSuperclass(null);
            this.setSuperInterfaces(CharOperation.NO_STRINGS);
        }
    }

    public void setTypeParameters(String[] typeParameters) {
        this.fTypeParameters = typeParameters;
    }
}

