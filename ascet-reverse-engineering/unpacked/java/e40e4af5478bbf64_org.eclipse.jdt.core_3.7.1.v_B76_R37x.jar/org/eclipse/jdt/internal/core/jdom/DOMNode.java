/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.jdom.DOMException;
import org.eclipse.jdt.core.jdom.DOMFactory;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMFactory;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.jdom.DOMCompilationUnit;
import org.eclipse.jdt.internal.core.jdom.DOMType;
import org.eclipse.jdt.internal.core.jdom.ILineStartFinder;
import org.eclipse.jdt.internal.core.jdom.SiblingEnumeration;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;

public abstract class DOMNode
implements IDOMNode {
    protected DOMNode fFirstChild = null;
    protected DOMNode fLastChild = null;
    protected DOMNode fNextNode = null;
    protected DOMNode fParent = null;
    protected DOMNode fPreviousNode = null;
    protected boolean fIsFragmented = false;
    protected String fName = null;
    protected int[] fNameRange;
    protected char[] fDocument = null;
    protected int[] fSourceRange;
    protected int fStateMask = 0;
    protected int fInsertionPosition;
    protected static final int MASK_FIELD_HAS_INITIALIZER = 1;
    protected static final int MASK_FIELD_IS_VARIABLE_DECLARATOR = 2;
    protected static final int MASK_FIELD_TYPE_ALTERED = 4;
    protected static final int MASK_NAME_ALTERED = 8;
    protected static final int MASK_HAS_BODY = 16;
    protected static final int MASK_HAS_COMMENT = 32;
    protected static final int MASK_IS_CONSTRUCTOR = 64;
    protected static final int MASK_TYPE_IS_CLASS = 128;
    protected static final int MASK_TYPE_HAS_SUPERCLASS = 256;
    protected static final int MASK_TYPE_HAS_INTERFACES = 512;
    protected static final int MASK_RETURN_TYPE_ALTERED = 1024;
    protected static final int MASK_DETAILED_SOURCE_INDEXES = 2048;

    DOMNode() {
        this.fName = null;
        this.fDocument = null;
        this.fSourceRange = new int[]{-1, -1};
        this.fNameRange = new int[]{-1, -1};
        this.fragment();
    }

    DOMNode(char[] document, int[] sourceRange, String name, int[] nameRange) {
        this.fDocument = document;
        this.fSourceRange = sourceRange;
        this.fName = name;
        this.fNameRange = nameRange;
    }

    public void addChild(IDOMNode child) throws IllegalArgumentException, DOMException {
        this.basicAddChild(child);
        if (child.getNodeType() == 6 && ((IDOMMethod)child).isConstructor()) {
            ((DOMNode)child).fragment();
        } else {
            this.fragment();
        }
    }

    protected void appendContents(CharArrayBuffer buffer) {
        if (this.isFragmented()) {
            this.appendFragmentedContents(buffer);
        } else {
            buffer.append(this.fDocument, this.fSourceRange[0], this.fSourceRange[1] + 1 - this.fSourceRange[0]);
        }
    }

    protected void appendContentsOfChildren(CharArrayBuffer buffer) {
        DOMNode child = this.fFirstChild;
        int start = 0;
        int end = 0;
        if (child != null) {
            start = child.getStartPosition();
            end = child.getEndPosition();
        }
        while (child != null) {
            DOMNode sibling = child.fNextNode;
            if (sibling != null) {
                if (sibling.isContentMergableWith(child)) {
                    end = sibling.getEndPosition();
                } else {
                    if (child.isFragmented()) {
                        child.appendContents(buffer);
                    } else {
                        buffer.append(child.getDocument(), start, end + 1 - start);
                    }
                    start = sibling.getStartPosition();
                    end = sibling.getEndPosition();
                }
            } else if (child.isFragmented()) {
                child.appendContents(buffer);
            } else {
                buffer.append(child.getDocument(), start, end + 1 - start);
            }
            child = sibling;
        }
    }

    protected abstract void appendFragmentedContents(CharArrayBuffer var1);

    void basicAddChild(IDOMNode child) throws IllegalArgumentException, DOMException {
        if (!this.canHaveChildren()) {
            throw new DOMException(Messages.dom_unableAddChild);
        }
        if (child == null) {
            throw new IllegalArgumentException(Messages.dom_addNullChild);
        }
        if (!this.isAllowableChild(child)) {
            throw new DOMException(Messages.dom_addIncompatibleChild);
        }
        if (child.getParent() != null) {
            throw new DOMException(Messages.dom_addChildWithParent);
        }
        if (child == this.getRoot()) {
            throw new DOMException(Messages.dom_addAncestorAsChild);
        }
        DOMNode node = (DOMNode)child;
        if (node.getDocument() != this.getDocument()) {
            node.localizeContents();
        }
        if (this.fFirstChild == null) {
            this.fFirstChild = node;
        } else {
            this.fLastChild.fNextNode = node;
            node.fPreviousNode = this.fLastChild;
        }
        this.fLastChild = node;
        node.fParent = this;
    }

    protected void becomeDetailed() throws DOMException {
        if (!this.isDetailed()) {
            DOMNode detailed = this.getDetailedNode();
            if (detailed == null) {
                throw new DOMException(Messages.dom_cannotDetail);
            }
            if (detailed != this) {
                this.shareContents(detailed);
            }
        }
    }

    public boolean canHaveChildren() {
        return false;
    }

    public Object clone() {
        int length = 0;
        char[] buffer = null;
        int offset = this.fSourceRange[0];
        if (offset >= 0) {
            length = this.fSourceRange[1] - offset + 1;
            buffer = new char[length];
            System.arraycopy(this.fDocument, offset, buffer, 0, length);
        }
        DOMNode clone = this.newDOMNode();
        clone.shareContents(this);
        clone.fDocument = buffer;
        if (offset > 0) {
            clone.offset(0 - offset);
        }
        if (this.canHaveChildren()) {
            Enumeration children = this.getChildren();
            while (children.hasMoreElements()) {
                DOMNode childClone;
                DOMNode child = (DOMNode)children.nextElement();
                if (child.fDocument == this.fDocument) {
                    childClone = child.cloneSharingDocument(buffer, offset);
                    clone.basicAddChild(childClone);
                    continue;
                }
                childClone = (DOMNode)child.clone();
                clone.addChild(childClone);
            }
        }
        return clone;
    }

    private DOMNode cloneSharingDocument(char[] document, int rootOffset) {
        DOMNode clone = this.newDOMNode();
        clone.shareContents(this);
        clone.fDocument = document;
        if (rootOffset > 0) {
            clone.offset(0 - rootOffset);
        }
        if (this.canHaveChildren()) {
            Enumeration children = this.getChildren();
            while (children.hasMoreElements()) {
                DOMNode childClone;
                DOMNode child = (DOMNode)children.nextElement();
                if (child.fDocument == this.fDocument) {
                    childClone = child.cloneSharingDocument(document, rootOffset);
                    clone.basicAddChild(childClone);
                    continue;
                }
                childClone = (DOMNode)child.clone();
                clone.addChild(childClone);
            }
        }
        return clone;
    }

    protected void fragment() {
        if (!this.isFragmented()) {
            this.fIsFragmented = true;
            if (this.fParent != null) {
                this.fParent.fragment();
            }
        }
    }

    public char[] getCharacters() {
        CharArrayBuffer buffer = new CharArrayBuffer();
        this.appendContents(buffer);
        return buffer.getContents();
    }

    public IDOMNode getChild(String name) {
        DOMNode child = this.fFirstChild;
        while (child != null) {
            String n = child.getName();
            if (name == null ? n == null : name.equals(n)) {
                return child;
            }
            child = child.fNextNode;
        }
        return null;
    }

    public Enumeration getChildren() {
        return new SiblingEnumeration(this.fFirstChild);
    }

    public String getContents() {
        CharArrayBuffer buffer = new CharArrayBuffer();
        this.appendContents(buffer);
        return buffer.toString();
    }

    protected DOMNode getDetailedNode() {
        return this;
    }

    protected char[] getDocument() {
        return this.fDocument;
    }

    public int getEndPosition() {
        return this.fSourceRange[1];
    }

    protected IDOMFactory getFactory() {
        return new DOMFactory();
    }

    public IDOMNode getFirstChild() {
        return this.fFirstChild;
    }

    public int getInsertionPosition() {
        return this.fInsertionPosition;
    }

    protected boolean getMask(int mask) {
        return (this.fStateMask & mask) > 0;
    }

    public String getName() {
        return this.fName;
    }

    protected char[] getNameContents() {
        if (this.isNameAltered()) {
            return this.fName.toCharArray();
        }
        if (this.fName == null || this.fNameRange[0] < 0) {
            return null;
        }
        int length = this.fNameRange[1] + 1 - this.fNameRange[0];
        char[] result = new char[length];
        System.arraycopy(this.fDocument, this.fNameRange[0], result, 0, length);
        return result;
    }

    public IDOMNode getNextNode() {
        return this.fNextNode;
    }

    public IDOMNode getParent() {
        return this.fParent;
    }

    protected int getParentEndDeclaration() {
        IDOMNode parent = this.getParent();
        if (parent == null) {
            return 0;
        }
        if (parent instanceof IDOMCompilationUnit) {
            return 0;
        }
        return ((DOMType)parent).getOpenBodyEnd();
    }

    public IDOMNode getPreviousNode() {
        return this.fPreviousNode;
    }

    protected IDOMNode getRoot() {
        if (this.fParent == null) {
            return this;
        }
        return this.fParent.getRoot();
    }

    public int getStartPosition() {
        return this.fSourceRange[0];
    }

    public void insertSibling(IDOMNode sibling) throws IllegalArgumentException, DOMException {
        if (sibling == null) {
            throw new IllegalArgumentException(Messages.dom_addNullSibling);
        }
        if (this.fParent == null) {
            throw new DOMException(Messages.dom_addSiblingBeforeRoot);
        }
        if (!this.fParent.isAllowableChild(sibling)) {
            throw new DOMException(Messages.dom_addIncompatibleSibling);
        }
        if (sibling.getParent() != null) {
            throw new DOMException(Messages.dom_addSiblingWithParent);
        }
        if (sibling == this.getRoot()) {
            throw new DOMException(Messages.dom_addAncestorAsSibling);
        }
        DOMNode node = (DOMNode)sibling;
        if (node.getDocument() != this.getDocument()) {
            node.localizeContents();
        }
        if (this.fPreviousNode == null) {
            this.fParent.fFirstChild = node;
        } else {
            this.fPreviousNode.fNextNode = node;
        }
        node.fParent = this.fParent;
        node.fPreviousNode = this.fPreviousNode;
        node.fNextNode = this;
        this.fPreviousNode = node;
        if (node.getNodeType() == 6 && ((IDOMMethod)((Object)node)).isConstructor()) {
            node.fragment();
        } else {
            this.fParent.fragment();
        }
    }

    public boolean isAllowableChild(IDOMNode node) {
        return false;
    }

    protected boolean isContentMergableWith(DOMNode node) {
        return !node.isFragmented() && !this.isFragmented() && node.getDocument() == this.getDocument() && node.getEndPosition() + 1 == this.getStartPosition();
    }

    protected boolean isDetailed() {
        return this.getMask(2048);
    }

    protected boolean isFragmented() {
        return this.fIsFragmented;
    }

    protected boolean isNameAltered() {
        return this.getMask(8);
    }

    public boolean isSignatureEqual(IDOMNode node) {
        return this.getNodeType() == node.getNodeType() && this.getName().equals(node.getName());
    }

    protected void localizeContents() {
        DOMNode clone = (DOMNode)this.clone();
        this.shareContents(clone);
    }

    protected abstract DOMNode newDOMNode();

    void normalize(ILineStartFinder finder) {
        if (this.getPreviousNode() == null) {
            this.normalizeStartPosition(this.getParentEndDeclaration(), finder);
        }
        if (this.canHaveChildren()) {
            Enumeration children = this.getChildren();
            while (children.hasMoreElements()) {
                ((DOMNode)children.nextElement()).normalize(finder);
            }
        }
        this.normalizeEndPosition(finder, (DOMNode)this.getNextNode());
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
            int temp = next.getStartPosition() - 1;
            this.fInsertionPosition = Math.max(finder.getLineStart(temp + 1), this.getEndPosition());
            next.normalizeStartPosition(this.getEndPosition(), finder);
            this.setSourceRangeEnd(next.getStartPosition() - 1);
        }
    }

    void normalizeStartPosition(int previousEnd, ILineStartFinder finder) {
        int lineStart;
        int nodeStart = this.getStartPosition();
        if (nodeStart > (lineStart = finder.getLineStart(nodeStart)) && (lineStart > previousEnd || previousEnd == 0 && lineStart == 0)) {
            this.setStartPosition(lineStart);
        }
    }

    protected void offset(int offset) {
        this.offsetRange(this.fNameRange, offset);
        this.offsetRange(this.fSourceRange, offset);
    }

    protected void offsetRange(int[] range, int offset) {
        int i = 0;
        while (i < range.length) {
            int n = i;
            range[n] = range[n] + offset;
            if (range[i] < 0) {
                range[i] = -1;
            }
            ++i;
        }
    }

    protected int[] rangeCopy(int[] range) {
        int[] copy = new int[range.length];
        int i = 0;
        while (i < range.length) {
            copy[i] = range[i];
            ++i;
        }
        return copy;
    }

    public void remove() {
        if (this.fParent != null) {
            this.fParent.fragment();
        }
        if (this.fNextNode != null) {
            this.fNextNode.fPreviousNode = this.fPreviousNode;
        }
        if (this.fPreviousNode != null) {
            this.fPreviousNode.fNextNode = this.fNextNode;
        }
        if (this.fParent != null) {
            if (this.fParent.fFirstChild == this) {
                this.fParent.fFirstChild = this.fNextNode;
            }
            if (this.fParent.fLastChild == this) {
                this.fParent.fLastChild = this.fPreviousNode;
            }
        }
        this.fParent = null;
        this.fNextNode = null;
        this.fPreviousNode = null;
    }

    protected void setMask(int mask, boolean on) {
        this.fStateMask = on ? (this.fStateMask |= mask) : (this.fStateMask &= ~mask);
    }

    public void setName(String name) {
        this.fName = name;
        this.setNameAltered(true);
        this.fragment();
    }

    protected void setNameAltered(boolean altered) {
        this.setMask(8, altered);
    }

    protected void setSourceRangeEnd(int end) {
        this.fSourceRange[1] = end;
    }

    protected void setStartPosition(int start) {
        this.fSourceRange[0] = start;
    }

    protected void shareContents(DOMNode node) {
        this.fDocument = node.fDocument;
        this.fIsFragmented = node.fIsFragmented;
        this.fName = node.fName;
        this.fNameRange = this.rangeCopy(node.fNameRange);
        this.fSourceRange = this.rangeCopy(node.fSourceRange);
        this.fStateMask = node.fStateMask;
        if (this.canHaveChildren()) {
            Enumeration myChildren = this.getChildren();
            Enumeration otherChildren = node.getChildren();
            while (myChildren.hasMoreElements()) {
                DOMNode myChild = (DOMNode)myChildren.nextElement();
                DOMNode otherChild = (DOMNode)otherChildren.nextElement();
                myChild.shareContents(otherChild);
            }
        }
    }

    public abstract String toString();
}

