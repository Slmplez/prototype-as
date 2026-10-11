/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.DOMException;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMBuilder;
import org.eclipse.jdt.internal.core.jdom.DOMCompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMType;
import org.eclipse.jdt.internal.core.jdom.ILineStartFinder;
import org.eclipse.jdt.internal.core.jdom.SiblingEnumeration;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMField
extends DOMMember
implements IDOMField {
    protected String fType;
    protected int[] fTypeRange;
    protected String fInitializer;
    protected int[] fInitializerRange;

    DOMField() {
    }

    DOMField(char[] document, int[] sourceRange, String name, int[] nameRange, int[] commentRange, int flags, int[] modifierRange, int[] typeRange, String type, boolean hasInitializer, int[] initRange, boolean isVariableDeclarator) {
        super(document, sourceRange, name, nameRange, commentRange, flags, modifierRange);
        this.fType = type;
        this.fTypeRange = typeRange;
        this.setHasInitializer(hasInitializer);
        this.fInitializerRange = initRange;
        this.setIsVariableDeclarator(isVariableDeclarator);
        this.setMask(2048, true);
    }

    DOMField(char[] document, int[] sourceRange, String name, int[] nameRange, int flags, String type, boolean isVariableDeclarator) {
        this(document, sourceRange, name, nameRange, new int[]{-1, -1}, flags, new int[]{-1, -1}, new int[]{-1, -1}, type, false, new int[]{-1, -1}, isVariableDeclarator);
        this.setMask(2048, false);
    }

    protected void appendMemberBodyContents(CharArrayBuffer buffer) {
    }

    protected void appendMemberDeclarationContents(CharArrayBuffer buffer) {
        if (this.isVariableDeclarator()) {
            buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
        } else {
            buffer.append(this.getTypeContents()).append(this.fDocument, this.fTypeRange[1] + 1, this.fNameRange[0] - this.fTypeRange[1] - 1);
        }
        buffer.append(this.getNameContents());
        if (this.hasInitializer()) {
            if (this.fInitializerRange[0] < 0) {
                buffer.append('=').append(this.fInitializer).append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
            } else {
                buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fInitializerRange[0] - this.fNameRange[1] - 1).append(this.getInitializer()).append(this.fDocument, this.fInitializerRange[1] + 1, this.fSourceRange[1] - this.fInitializerRange[1]);
            }
        } else if (this.fInitializerRange[0] < 0) {
            buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
        } else {
            buffer.append(this.fDocument, this.fInitializerRange[1] + 1, this.fSourceRange[1] - this.fInitializerRange[1]);
        }
    }

    protected void appendMemberHeaderFragment(CharArrayBuffer buffer) {
        if (this.isVariableDeclarator()) {
            return;
        }
        super.appendMemberHeaderFragment(buffer);
    }

    protected void appendSimpleContents(CharArrayBuffer buffer) {
        buffer.append(this.fDocument, this.fSourceRange[0], this.fNameRange[0] - this.fSourceRange[0]);
        buffer.append(this.fName);
        buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fSourceRange[1] - this.fNameRange[1]);
    }

    protected void becomeDetailed() throws DOMException {
        if (!this.isDetailed()) {
            if (this.isVariableDeclarator() || this.hasMultipleVariableDeclarators()) {
                DOMField first = this.getFirstFieldDeclaration();
                DOMField last = this.getLastFieldDeclaration();
                DOMNode node = first;
                String source = first.getContents();
                while (node != last) {
                    node = node.fNextNode;
                    source = String.valueOf(source) + node.getContents();
                }
                DOMBuilder builder = new DOMBuilder();
                IDOMField[] details = builder.createFields(source.toCharArray());
                if (details.length == 0) {
                    throw new DOMException(Messages.dom_cannotDetail);
                }
                node = this;
                int i = 0;
                while (i < details.length) {
                    node.shareContents((DOMNode)((Object)details[i]));
                    node = node.fNextNode;
                    ++i;
                }
            } else {
                super.becomeDetailed();
            }
        }
    }

    public Object clone() {
        if (this.isVariableDeclarator() || this.hasMultipleVariableDeclarators()) {
            return this.getFactory().createField(new String(this.getSingleVariableDeclaratorContents()));
        }
        return super.clone();
    }

    protected void expand() {
        if (this.isVariableDeclarator() || this.hasMultipleVariableDeclarators()) {
            SiblingEnumeration siblings = new SiblingEnumeration(this.getFirstFieldDeclaration());
            DOMField field = (DOMField)siblings.nextElement();
            DOMNode next = field.fNextNode;
            while (siblings.hasMoreElements() && next instanceof DOMField && ((DOMField)next).isVariableDeclarator()) {
                field.localizeContents();
                if (field.fParent != null) {
                    field.fParent.fragment();
                }
                field = (DOMField)siblings.nextElement();
                next = field.fNextNode;
            }
            field.localizeContents();
        }
    }

    protected DOMNode getDetailedNode() {
        if (this.isVariableDeclarator() || this.hasMultipleVariableDeclarators()) {
            return (DOMNode)((Object)this.getFactory().createField(new String(this.getSingleVariableDeclaratorContents())));
        }
        return (DOMNode)((Object)this.getFactory().createField(this.getContents()));
    }

    protected DOMField getFirstFieldDeclaration() {
        if (this.isVariableDeclarator()) {
            return ((DOMField)this.fPreviousNode).getFirstFieldDeclaration();
        }
        return this;
    }

    public String getInitializer() {
        this.becomeDetailed();
        if (this.hasInitializer()) {
            if (this.fInitializer != null) {
                return this.fInitializer;
            }
            return new String(this.fDocument, this.fInitializerRange[0], this.fInitializerRange[1] + 1 - this.fInitializerRange[0]);
        }
        return null;
    }

    public IJavaElement getJavaElement(IJavaElement parent) throws IllegalArgumentException {
        if (parent.getElementType() == 7) {
            return ((IType)parent).getField(this.getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    protected DOMField getLastFieldDeclaration() {
        DOMField field = this;
        while (field.isVariableDeclarator() || field.hasMultipleVariableDeclarators()) {
            if (!(field.fNextNode instanceof DOMField) || !((DOMField)field.fNextNode).isVariableDeclarator()) break;
            field = (DOMField)field.fNextNode;
        }
        return field;
    }

    protected int getMemberDeclarationStartPosition() {
        return this.fTypeRange[0];
    }

    public int getNodeType() {
        return 5;
    }

    protected char[] getSingleVariableDeclaratorContents() {
        CharArrayBuffer buffer = new CharArrayBuffer();
        DOMField first = this.getFirstFieldDeclaration();
        if (first.isDetailed()) {
            first.appendMemberHeaderFragment(buffer);
            buffer.append(this.getType());
            if (this.isVariableDeclarator()) {
                buffer.append(' ');
            } else {
                buffer.append(this.fDocument, this.fTypeRange[1] + 1, this.fNameRange[0] - this.fTypeRange[1] - 1);
            }
        } else {
            buffer.append(first.fDocument, first.fSourceRange[0], first.fNameRange[0] - first.fSourceRange[0]);
        }
        buffer.append(this.getName());
        if (this.hasInitializer()) {
            if (this.fInitializerRange[0] < 0) {
                buffer.append('=').append(this.fInitializer).append(';').append(Util.getLineSeparator(buffer.toString(), null));
            } else {
                buffer.append(this.fDocument, this.fNameRange[1] + 1, this.fInitializerRange[0] - this.fNameRange[1] - 1).append(this.getInitializer()).append(';').append(Util.getLineSeparator(buffer.toString(), null));
            }
        } else {
            buffer.append(';').append(Util.getLineSeparator(buffer.toString(), null));
        }
        return buffer.getContents();
    }

    public String getType() {
        return this.fType;
    }

    protected char[] getTypeContents() {
        if (this.isTypeAltered()) {
            return this.fType.toCharArray();
        }
        return CharOperation.subarray(this.fDocument, this.fTypeRange[0], this.fTypeRange[1] + 1);
    }

    protected boolean hasInitializer() {
        return this.getMask(1);
    }

    protected boolean hasMultipleVariableDeclarators() {
        return this.fNextNode != null && this.fNextNode instanceof DOMField && ((DOMField)this.fNextNode).isVariableDeclarator();
    }

    public void insertSibling(IDOMNode sibling) throws IllegalArgumentException, DOMException {
        if (this.isVariableDeclarator()) {
            this.expand();
        }
        super.insertSibling(sibling);
    }

    protected boolean isTypeAltered() {
        return this.getMask(4);
    }

    protected boolean isVariableDeclarator() {
        return this.getMask(2);
    }

    protected DOMNode newDOMNode() {
        return new DOMField();
    }

    void normalizeEndPosition(ILineStartFinder finder, DOMNode next) {
        if (next == null) {
            DOMNode parent = (DOMNode)this.getParent();
            if (parent == null || parent instanceof DOMCompilationUnit) {
                this.setSourceRangeEnd(this.fDocument.length - 1);
            } else {
                int temp = ((DOMType)parent).getCloseBodyPosition() - 1;
                this.setSourceRangeEnd(temp);
                this.fInsertionPosition = Math.max(finder.getLineStart(temp + 1), this.getEndPosition());
            }
        } else {
            DOMField field;
            int temp = next.getStartPosition() - 1;
            this.fInsertionPosition = Math.max(finder.getLineStart(temp + 1), this.getEndPosition());
            next.normalizeStartPosition(this.getEndPosition(), finder);
            if (next instanceof DOMField && (field = (DOMField)next).isVariableDeclarator() && this.fTypeRange[0] == field.fTypeRange[0]) {
                return;
            }
            this.setSourceRangeEnd(next.getStartPosition() - 1);
        }
    }

    void normalizeStartPosition(int endPosition, ILineStartFinder finder) {
        if (this.isVariableDeclarator()) {
            this.setStartPosition(this.fPreviousNode.getEndPosition() + 1);
        } else {
            super.normalizeStartPosition(endPosition, finder);
        }
    }

    protected void offset(int offset) {
        super.offset(offset);
        this.offsetRange(this.fInitializerRange, offset);
        this.offsetRange(this.fTypeRange, offset);
    }

    public void remove() {
        this.expand();
        super.remove();
    }

    public void setComment(String comment) {
        this.expand();
        super.setComment(comment);
    }

    public void setFlags(int flags) {
        this.expand();
        super.setFlags(flags);
    }

    protected void setHasInitializer(boolean hasInitializer) {
        this.setMask(1, hasInitializer);
    }

    public void setInitializer(String initializer) {
        this.becomeDetailed();
        this.fragment();
        this.setHasInitializer(initializer != null);
        this.fInitializer = initializer;
    }

    void setInitializerRange(int start, int end) {
        this.fInitializerRange[0] = start;
        this.fInitializerRange[1] = end;
    }

    protected void setIsVariableDeclarator(boolean isVariableDeclarator) {
        this.setMask(2, isVariableDeclarator);
    }

    public void setName(String name) throws IllegalArgumentException {
        if (name == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(name);
        this.setTypeAltered(true);
    }

    public void setType(String typeName) throws IllegalArgumentException {
        if (typeName == null) {
            throw new IllegalArgumentException(Messages.element_nullType);
        }
        this.becomeDetailed();
        this.expand();
        this.fragment();
        this.setTypeAltered(true);
        this.setNameAltered(true);
        this.fType = typeName;
    }

    protected void setTypeAltered(boolean typeAltered) {
        this.setMask(4, typeAltered);
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        DOMField field = (DOMField)node;
        this.fInitializer = field.fInitializer;
        this.fInitializerRange = this.rangeCopy(field.fInitializerRange);
        this.fType = field.fType;
        this.fTypeRange = this.rangeCopy(field.fTypeRange);
    }

    public String toString() {
        return "FIELD: " + this.getName();
    }
}

