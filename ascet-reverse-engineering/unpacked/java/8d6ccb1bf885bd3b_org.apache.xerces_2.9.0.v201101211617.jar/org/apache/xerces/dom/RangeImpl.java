/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.util.ArrayList;
import org.apache.xerces.dom.CharacterDataImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.dom.RangeExceptionImpl;
import org.apache.xerces.dom.TextImpl;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.w3c.dom.ranges.Range;
import org.w3c.dom.ranges.RangeException;

public class RangeImpl
implements Range {
    private DocumentImpl fDocument;
    private Node fStartContainer;
    private Node fEndContainer;
    private int fStartOffset;
    private int fEndOffset;
    private boolean fDetach = false;
    private Node fInsertNode = null;
    private Node fDeleteNode = null;
    private Node fSplitNode = null;
    private boolean fInsertedFromRange = false;
    private Node fRemoveChild = null;
    static final int EXTRACT_CONTENTS = 1;
    static final int CLONE_CONTENTS = 2;
    static final int DELETE_CONTENTS = 3;

    public RangeImpl(DocumentImpl documentImpl) {
        this.fDocument = documentImpl;
        this.fStartContainer = documentImpl;
        this.fEndContainer = documentImpl;
        this.fStartOffset = 0;
        this.fEndOffset = 0;
        this.fDetach = false;
    }

    public Node getStartContainer() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartContainer;
    }

    public int getStartOffset() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartOffset;
    }

    public Node getEndContainer() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fEndContainer;
    }

    public int getEndOffset() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fEndOffset;
    }

    public boolean getCollapsed() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.fStartContainer == this.fEndContainer && this.fStartOffset == this.fEndOffset;
    }

    public Node getCommonAncestorContainer() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        ArrayList<Node> arrayList = new ArrayList<Node>();
        Node node = this.fStartContainer;
        while (node != null) {
            arrayList.add(node);
            node = node.getParentNode();
        }
        ArrayList<Node> arrayList2 = new ArrayList<Node>();
        node = this.fEndContainer;
        while (node != null) {
            arrayList2.add(node);
            node = node.getParentNode();
        }
        int n = arrayList.size() - 1;
        int n2 = arrayList2.size() - 1;
        Object var6_6 = null;
        while (n >= 0 && n2 >= 0) {
            if (arrayList.get(n) != arrayList2.get(n2)) break;
            var6_6 = arrayList.get(n);
            --n;
            --n2;
        }
        return var6_6;
    }

    public void setStart(Node node, int n) throws RangeException, DOMException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.isLegalContainer(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.checkIndex(node, n);
        this.fStartContainer = node;
        this.fStartOffset = n;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(true);
        }
    }

    public void setEnd(Node node, int n) throws RangeException, DOMException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.isLegalContainer(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.checkIndex(node, n);
        this.fEndContainer = node;
        this.fEndOffset = n;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(false);
        }
    }

    public void setStartBefore(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.hasLegalRootContainer(node) || !this.isLegalContainedNode(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node.getParentNode();
        int n = 0;
        Node node2 = node;
        while (node2 != null) {
            ++n;
            node2 = node2.getPreviousSibling();
        }
        this.fStartOffset = n - 1;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(true);
        }
    }

    public void setStartAfter(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.hasLegalRootContainer(node) || !this.isLegalContainedNode(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node.getParentNode();
        int n = 0;
        Node node2 = node;
        while (node2 != null) {
            ++n;
            node2 = node2.getPreviousSibling();
        }
        this.fStartOffset = n;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(true);
        }
    }

    public void setEndBefore(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.hasLegalRootContainer(node) || !this.isLegalContainedNode(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fEndContainer = node.getParentNode();
        int n = 0;
        Node node2 = node;
        while (node2 != null) {
            ++n;
            node2 = node2.getPreviousSibling();
        }
        this.fEndOffset = n - 1;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(false);
        }
    }

    public void setEndAfter(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.hasLegalRootContainer(node) || !this.isLegalContainedNode(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fEndContainer = node.getParentNode();
        int n = 0;
        Node node2 = node;
        while (node2 != null) {
            ++n;
            node2 = node2.getPreviousSibling();
        }
        this.fEndOffset = n;
        if (this.getCommonAncestorContainer() == null || this.fStartContainer == this.fEndContainer && this.fEndOffset < this.fStartOffset) {
            this.collapse(false);
        }
    }

    public void collapse(boolean bl) {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (bl) {
            this.fEndContainer = this.fStartContainer;
            this.fEndOffset = this.fStartOffset;
        } else {
            this.fStartContainer = this.fEndContainer;
            this.fStartOffset = this.fEndOffset;
        }
    }

    public void selectNode(Node node) throws RangeException {
        Node node2;
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.isLegalContainer(node.getParentNode()) || !this.isLegalContainedNode(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        if ((node2 = node.getParentNode()) != null) {
            this.fStartContainer = node2;
            this.fEndContainer = node2;
            int n = 0;
            Node node3 = node;
            while (node3 != null) {
                ++n;
                node3 = node3.getPreviousSibling();
            }
            this.fStartOffset = n - 1;
            this.fEndOffset = this.fStartOffset + 1;
        }
    }

    public void selectNodeContents(Node node) throws RangeException {
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!this.isLegalContainer(node)) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument() && this.fDocument != node) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.fStartContainer = node;
        this.fEndContainer = node;
        Node node2 = node.getFirstChild();
        this.fStartOffset = 0;
        if (node2 == null) {
            this.fEndOffset = 0;
        } else {
            int n = 0;
            Node node3 = node2;
            while (node3 != null) {
                ++n;
                node3 = node3.getNextSibling();
            }
            this.fEndOffset = n;
        }
    }

    public short compareBoundaryPoints(short s, Range range) throws DOMException {
        int n;
        int n2;
        Node node;
        Node node2;
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (this.fDocument != range.getStartContainer().getOwnerDocument() && this.fDocument != range.getStartContainer() && range.getStartContainer() != null || this.fDocument != range.getEndContainer().getOwnerDocument() && this.fDocument != range.getEndContainer() && range.getStartContainer() != null) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        if (s == 0) {
            node2 = range.getStartContainer();
            node = this.fStartContainer;
            n2 = range.getStartOffset();
            n = this.fStartOffset;
        } else if (s == 1) {
            node2 = range.getStartContainer();
            node = this.fEndContainer;
            n2 = range.getStartOffset();
            n = this.fEndOffset;
        } else if (s == 3) {
            node2 = range.getEndContainer();
            node = this.fStartContainer;
            n2 = range.getEndOffset();
            n = this.fStartOffset;
        } else {
            node2 = range.getEndContainer();
            node = this.fEndContainer;
            n2 = range.getEndOffset();
            n = this.fEndOffset;
        }
        if (node2 == node) {
            if (n2 < n) {
                return 1;
            }
            if (n2 == n) {
                return 0;
            }
            return -1;
        }
        Node node3 = node;
        Node node4 = node3.getParentNode();
        while (node4 != null) {
            if (node4 == node2) {
                int n3 = this.indexOf(node3, node2);
                if (n2 <= n3) {
                    return 1;
                }
                return -1;
            }
            node3 = node4;
            node4 = node4.getParentNode();
        }
        Node node5 = node2;
        Node node6 = node5.getParentNode();
        while (node6 != null) {
            if (node6 == node) {
                int n4 = this.indexOf(node5, node);
                if (n4 < n) {
                    return 1;
                }
                return -1;
            }
            node5 = node6;
            node6 = node6.getParentNode();
        }
        int n5 = 0;
        Node node7 = node2;
        while (node7 != null) {
            ++n5;
            node7 = node7.getParentNode();
        }
        Node node8 = node;
        while (node8 != null) {
            --n5;
            node8 = node8.getParentNode();
        }
        while (n5 > 0) {
            node2 = node2.getParentNode();
            --n5;
        }
        while (n5 < 0) {
            node = node.getParentNode();
            ++n5;
        }
        Node node9 = node2.getParentNode();
        Node node10 = node.getParentNode();
        while (node9 != node10) {
            node2 = node9;
            node = node10;
            node9 = node9.getParentNode();
            node10 = node10.getParentNode();
        }
        Node node11 = node2.getNextSibling();
        while (node11 != null) {
            if (node11 == node) {
                return 1;
            }
            node11 = node11.getNextSibling();
        }
        return -1;
    }

    public void deleteContents() throws DOMException {
        this.traverseContents(3);
    }

    public DocumentFragment extractContents() throws DOMException {
        return this.traverseContents(1);
    }

    public DocumentFragment cloneContents() throws DOMException {
        return this.traverseContents(2);
    }

    public void insertNode(Node node) throws DOMException, RangeException {
        if (node == null) {
            return;
        }
        short s = node.getNodeType();
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (this.fDocument != node.getOwnerDocument()) {
                throw new DOMException(4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (s == 2 || s == 6 || s == 12 || s == 9) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        int n = 0;
        this.fInsertedFromRange = true;
        if (this.fStartContainer.getNodeType() == 3) {
            Node node2 = this.fStartContainer.getParentNode();
            n = node2.getChildNodes().getLength();
            Node node3 = this.fStartContainer.cloneNode(false);
            ((TextImpl)node3).setNodeValueInternal(node3.getNodeValue().substring(this.fStartOffset));
            ((TextImpl)this.fStartContainer).setNodeValueInternal(this.fStartContainer.getNodeValue().substring(0, this.fStartOffset));
            Node node4 = this.fStartContainer.getNextSibling();
            if (node4 != null) {
                if (node2 != null) {
                    node2.insertBefore(node, node4);
                    node2.insertBefore(node3, node4);
                }
            } else if (node2 != null) {
                node2.appendChild(node);
                node2.appendChild(node3);
            }
            if (this.fEndContainer == this.fStartContainer) {
                this.fEndContainer = node3;
                this.fEndOffset -= this.fStartOffset;
            } else if (this.fEndContainer == node2) {
                this.fEndOffset += node2.getChildNodes().getLength() - n;
            }
            this.signalSplitData(this.fStartContainer, node3, this.fStartOffset);
        } else {
            if (this.fEndContainer == this.fStartContainer) {
                n = this.fEndContainer.getChildNodes().getLength();
            }
            Node node5 = this.fStartContainer.getFirstChild();
            int n2 = 0;
            n2 = 0;
            while (n2 < this.fStartOffset && node5 != null) {
                node5 = node5.getNextSibling();
                ++n2;
            }
            if (node5 != null) {
                this.fStartContainer.insertBefore(node, node5);
            } else {
                this.fStartContainer.appendChild(node);
            }
            if (this.fEndContainer == this.fStartContainer && this.fEndOffset != 0) {
                this.fEndOffset += this.fEndContainer.getChildNodes().getLength() - n;
            }
        }
        this.fInsertedFromRange = false;
    }

    public void surroundContents(Node node) throws DOMException, RangeException {
        if (node == null) {
            return;
        }
        short s = node.getNodeType();
        if (this.fDocument.errorChecking) {
            if (this.fDetach) {
                throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (s == 2 || s == 6 || s == 12 || s == 10 || s == 9 || s == 11) {
                throw new RangeExceptionImpl(2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        Node node2 = this.fStartContainer;
        Node node3 = this.fEndContainer;
        if (this.fStartContainer.getNodeType() == 3) {
            node2 = this.fStartContainer.getParentNode();
        }
        if (this.fEndContainer.getNodeType() == 3) {
            node3 = this.fEndContainer.getParentNode();
        }
        if (node2 != node3) {
            throw new RangeExceptionImpl(1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "BAD_BOUNDARYPOINTS_ERR", null));
        }
        DocumentFragment documentFragment = this.extractContents();
        this.insertNode(node);
        node.appendChild(documentFragment);
        this.selectNode(node);
    }

    public Range cloneRange() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Range range = this.fDocument.createRange();
        range.setStart(this.fStartContainer, this.fStartOffset);
        range.setEnd(this.fEndContainer, this.fEndOffset);
        return range;
    }

    public String toString() {
        int n;
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Node node = this.fStartContainer;
        Node node2 = this.fEndContainer;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.fStartContainer.getNodeType() == 3 || this.fStartContainer.getNodeType() == 4) {
            if (this.fStartContainer == this.fEndContainer) {
                stringBuffer.append(this.fStartContainer.getNodeValue().substring(this.fStartOffset, this.fEndOffset));
                return stringBuffer.toString();
            }
            stringBuffer.append(this.fStartContainer.getNodeValue().substring(this.fStartOffset));
            node = this.nextNode(node, true);
        } else {
            node = node.getFirstChild();
            if (this.fStartOffset > 0) {
                n = 0;
                while (n < this.fStartOffset && node != null) {
                    node = node.getNextSibling();
                    ++n;
                }
            }
            if (node == null) {
                node = this.nextNode(this.fStartContainer, false);
            }
        }
        if (this.fEndContainer.getNodeType() != 3 && this.fEndContainer.getNodeType() != 4) {
            n = this.fEndOffset;
            node2 = this.fEndContainer.getFirstChild();
            while (n > 0 && node2 != null) {
                --n;
                node2 = node2.getNextSibling();
            }
            if (node2 == null) {
                node2 = this.nextNode(this.fEndContainer, false);
            }
        }
        while (node != node2) {
            if (node == null) break;
            if (node.getNodeType() == 3 || node.getNodeType() == 4) {
                stringBuffer.append(node.getNodeValue());
            }
            node = this.nextNode(node, true);
        }
        if (this.fEndContainer.getNodeType() == 3 || this.fEndContainer.getNodeType() == 4) {
            stringBuffer.append(this.fEndContainer.getNodeValue().substring(0, this.fEndOffset));
        }
        return stringBuffer.toString();
    }

    public void detach() {
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        this.fDetach = true;
        this.fDocument.removeRange(this);
    }

    void signalSplitData(Node node, Node node2, int n) {
        this.fSplitNode = node;
        this.fDocument.splitData(node, node2, n);
        this.fSplitNode = null;
    }

    void receiveSplitData(Node node, Node node2, int n) {
        if (node == null || node2 == null) {
            return;
        }
        if (this.fSplitNode == node) {
            return;
        }
        if (node == this.fStartContainer && this.fStartContainer.getNodeType() == 3 && this.fStartOffset > n) {
            this.fStartOffset -= n;
            this.fStartContainer = node2;
        }
        if (node == this.fEndContainer && this.fEndContainer.getNodeType() == 3 && this.fEndOffset > n) {
            this.fEndOffset -= n;
            this.fEndContainer = node2;
        }
    }

    void deleteData(CharacterData characterData, int n, int n2) {
        this.fDeleteNode = characterData;
        characterData.deleteData(n, n2);
        this.fDeleteNode = null;
    }

    void receiveDeletedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        if (characterDataImpl == null) {
            return;
        }
        if (this.fDeleteNode == characterDataImpl) {
            return;
        }
        if (characterDataImpl == this.fStartContainer) {
            if (this.fStartOffset > n + n2) {
                this.fStartOffset = n + (this.fStartOffset - (n + n2));
            } else if (this.fStartOffset > n) {
                this.fStartOffset = n;
            }
        }
        if (characterDataImpl == this.fEndContainer) {
            if (this.fEndOffset > n + n2) {
                this.fEndOffset = n + (this.fEndOffset - (n + n2));
            } else if (this.fEndOffset > n) {
                this.fEndOffset = n;
            }
        }
    }

    void insertData(CharacterData characterData, int n, String string) {
        this.fInsertNode = characterData;
        characterData.insertData(n, string);
        this.fInsertNode = null;
    }

    void receiveInsertedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        if (characterDataImpl == null) {
            return;
        }
        if (this.fInsertNode == characterDataImpl) {
            return;
        }
        if (characterDataImpl == this.fStartContainer && n < this.fStartOffset) {
            this.fStartOffset += n2;
        }
        if (characterDataImpl == this.fEndContainer && n < this.fEndOffset) {
            this.fEndOffset += n2;
        }
    }

    void receiveReplacedText(CharacterDataImpl characterDataImpl) {
        if (characterDataImpl == null) {
            return;
        }
        if (characterDataImpl == this.fStartContainer) {
            this.fStartOffset = 0;
        }
        if (characterDataImpl == this.fEndContainer) {
            this.fEndOffset = 0;
        }
    }

    public void insertedNodeFromDOM(Node node) {
        int n;
        if (node == null) {
            return;
        }
        if (this.fInsertNode == node) {
            return;
        }
        if (this.fInsertedFromRange) {
            return;
        }
        Node node2 = node.getParentNode();
        if (node2 == this.fStartContainer && (n = this.indexOf(node, this.fStartContainer)) < this.fStartOffset) {
            ++this.fStartOffset;
        }
        if (node2 == this.fEndContainer && (n = this.indexOf(node, this.fEndContainer)) < this.fEndOffset) {
            ++this.fEndOffset;
        }
    }

    Node removeChild(Node node, Node node2) {
        this.fRemoveChild = node2;
        Node node3 = node.removeChild(node2);
        this.fRemoveChild = null;
        return node3;
    }

    void removeNode(Node node) {
        int n;
        if (node == null) {
            return;
        }
        if (this.fRemoveChild == node) {
            return;
        }
        Node node2 = node.getParentNode();
        if (node2 == this.fStartContainer && (n = this.indexOf(node, this.fStartContainer)) < this.fStartOffset) {
            --this.fStartOffset;
        }
        if (node2 == this.fEndContainer && (n = this.indexOf(node, this.fEndContainer)) < this.fEndOffset) {
            --this.fEndOffset;
        }
        if (node2 != this.fStartContainer || node2 != this.fEndContainer) {
            if (this.isAncestorOf(node, this.fStartContainer)) {
                this.fStartContainer = node2;
                this.fStartOffset = this.indexOf(node, node2);
            }
            if (this.isAncestorOf(node, this.fEndContainer)) {
                this.fEndContainer = node2;
                this.fEndOffset = this.indexOf(node, node2);
            }
        }
    }

    private DocumentFragment traverseContents(int n) throws DOMException {
        if (this.fStartContainer == null || this.fEndContainer == null) {
            return null;
        }
        if (this.fDetach) {
            throw new DOMException(11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (this.fStartContainer == this.fEndContainer) {
            return this.traverseSameContainer(n);
        }
        int n2 = 0;
        Node node = this.fEndContainer;
        Node node2 = node.getParentNode();
        while (node2 != null) {
            if (node2 == this.fStartContainer) {
                return this.traverseCommonStartContainer(node, n);
            }
            ++n2;
            node = node2;
            node2 = node2.getParentNode();
        }
        int n3 = 0;
        Node node3 = this.fStartContainer;
        Node node4 = node3.getParentNode();
        while (node4 != null) {
            if (node4 == this.fEndContainer) {
                return this.traverseCommonEndContainer(node3, n);
            }
            ++n3;
            node3 = node4;
            node4 = node4.getParentNode();
        }
        int n4 = n3 - n2;
        Node node5 = this.fStartContainer;
        while (n4 > 0) {
            node5 = node5.getParentNode();
            --n4;
        }
        Node node6 = this.fEndContainer;
        while (n4 < 0) {
            node6 = node6.getParentNode();
            ++n4;
        }
        Node node7 = node5.getParentNode();
        Node node8 = node6.getParentNode();
        while (node7 != node8) {
            node5 = node7;
            node6 = node8;
            node7 = node7.getParentNode();
            node8 = node8.getParentNode();
        }
        return this.traverseCommonAncestors(node5, node6, n);
    }

    private DocumentFragment traverseSameContainer(int n) {
        DocumentFragment documentFragment = null;
        if (n != 3) {
            documentFragment = this.fDocument.createDocumentFragment();
        }
        if (this.fStartOffset == this.fEndOffset) {
            return documentFragment;
        }
        short s = this.fStartContainer.getNodeType();
        if (s == 3 || s == 4 || s == 8 || s == 7) {
            String string = this.fStartContainer.getNodeValue();
            String string2 = string.substring(this.fStartOffset, this.fEndOffset);
            if (n != 2) {
                ((CharacterDataImpl)this.fStartContainer).deleteData(this.fStartOffset, this.fEndOffset - this.fStartOffset);
                this.collapse(true);
            }
            if (n == 3) {
                return null;
            }
            if (s == 3) {
                documentFragment.appendChild(this.fDocument.createTextNode(string2));
            } else if (s == 4) {
                documentFragment.appendChild(this.fDocument.createCDATASection(string2));
            } else if (s == 8) {
                documentFragment.appendChild(this.fDocument.createComment(string2));
            } else {
                documentFragment.appendChild(this.fDocument.createProcessingInstruction(this.fStartContainer.getNodeName(), string2));
            }
            return documentFragment;
        }
        Node node = this.getSelectedNode(this.fStartContainer, this.fStartOffset);
        int n2 = this.fEndOffset - this.fStartOffset;
        while (n2 > 0) {
            Node node2 = node.getNextSibling();
            Node node3 = this.traverseFullySelected(node, n);
            if (documentFragment != null) {
                documentFragment.appendChild(node3);
            }
            --n2;
            node = node2;
        }
        if (n != 2) {
            this.collapse(true);
        }
        return documentFragment;
    }

    private DocumentFragment traverseCommonStartContainer(Node node, int n) {
        int n2;
        int n3;
        DocumentFragment documentFragment = null;
        if (n != 3) {
            documentFragment = this.fDocument.createDocumentFragment();
        }
        Node node2 = this.traverseRightBoundary(node, n);
        if (documentFragment != null) {
            documentFragment.appendChild(node2);
        }
        if ((n3 = (n2 = this.indexOf(node, this.fStartContainer)) - this.fStartOffset) <= 0) {
            if (n != 2) {
                this.setEndBefore(node);
                this.collapse(false);
            }
            return documentFragment;
        }
        node2 = node.getPreviousSibling();
        while (n3 > 0) {
            Node node3 = node2.getPreviousSibling();
            Node node4 = this.traverseFullySelected(node2, n);
            if (documentFragment != null) {
                documentFragment.insertBefore(node4, documentFragment.getFirstChild());
            }
            --n3;
            node2 = node3;
        }
        if (n != 2) {
            this.setEndBefore(node);
            this.collapse(false);
        }
        return documentFragment;
    }

    private DocumentFragment traverseCommonEndContainer(Node node, int n) {
        DocumentFragment documentFragment = null;
        if (n != 3) {
            documentFragment = this.fDocument.createDocumentFragment();
        }
        Node node2 = this.traverseLeftBoundary(node, n);
        if (documentFragment != null) {
            documentFragment.appendChild(node2);
        }
        int n2 = this.indexOf(node, this.fEndContainer);
        int n3 = this.fEndOffset - ++n2;
        node2 = node.getNextSibling();
        while (n3 > 0) {
            Node node3 = node2.getNextSibling();
            Node node4 = this.traverseFullySelected(node2, n);
            if (documentFragment != null) {
                documentFragment.appendChild(node4);
            }
            --n3;
            node2 = node3;
        }
        if (n != 2) {
            this.setStartAfter(node);
            this.collapse(true);
        }
        return documentFragment;
    }

    private DocumentFragment traverseCommonAncestors(Node node, Node node2, int n) {
        DocumentFragment documentFragment = null;
        if (n != 3) {
            documentFragment = this.fDocument.createDocumentFragment();
        }
        Node node3 = this.traverseLeftBoundary(node, n);
        if (documentFragment != null) {
            documentFragment.appendChild(node3);
        }
        Node node4 = node.getParentNode();
        int n2 = this.indexOf(node, node4);
        int n3 = this.indexOf(node2, node4);
        int n4 = n3 - ++n2;
        Node node5 = node.getNextSibling();
        while (n4 > 0) {
            Node node6 = node5.getNextSibling();
            node3 = this.traverseFullySelected(node5, n);
            if (documentFragment != null) {
                documentFragment.appendChild(node3);
            }
            node5 = node6;
            --n4;
        }
        node3 = this.traverseRightBoundary(node2, n);
        if (documentFragment != null) {
            documentFragment.appendChild(node3);
        }
        if (n != 2) {
            this.setStartAfter(node);
            this.collapse(true);
        }
        return documentFragment;
    }

    /*
     * Unable to fully structure code
     */
    private Node traverseRightBoundary(Node var1_1, int var2_2) {
        var3_3 = this.getSelectedNode(this.fEndContainer, this.fEndOffset - 1);
        v0 = var4_4 = var3_3 != this.fEndContainer;
        if (var3_3 == var1_1) {
            return this.traverseNode(var3_3, var4_4, false, var2_2);
        }
        var5_5 = var3_3.getParentNode();
        var6_6 = this.traverseNode(var5_5, false, false, var2_2);
        ** GOTO lbl26
        {
            var7_7 = var3_3.getPreviousSibling();
            var8_8 = this.traverseNode(var3_3, var4_4, false, var2_2);
            if (var2_2 != 3) {
                var6_6.insertBefore(var8_8, var6_6.getFirstChild());
            }
            var4_4 = true;
            var3_3 = var7_7;
            do {
                if (var3_3 != null) continue block0;
                if (var5_5 == var1_1) {
                    return var6_6;
                }
                var3_3 = var5_5.getPreviousSibling();
                var5_5 = var5_5.getParentNode();
                var7_7 = this.traverseNode(var5_5, false, false, var2_2);
                if (var2_2 != 3) {
                    var7_7.appendChild(var6_6);
                }
                var6_6 = var7_7;
lbl26:
                // 2 sources

            } while (var5_5 != null);
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    private Node traverseLeftBoundary(Node var1_1, int var2_2) {
        var3_3 = this.getSelectedNode(this.getStartContainer(), this.getStartOffset());
        v0 = var4_4 = var3_3 != this.getStartContainer();
        if (var3_3 == var1_1) {
            return this.traverseNode(var3_3, var4_4, true, var2_2);
        }
        var5_5 = var3_3.getParentNode();
        var6_6 = this.traverseNode(var5_5, false, true, var2_2);
        ** GOTO lbl26
        {
            var7_7 = var3_3.getNextSibling();
            var8_8 = this.traverseNode(var3_3, var4_4, true, var2_2);
            if (var2_2 != 3) {
                var6_6.appendChild(var8_8);
            }
            var4_4 = true;
            var3_3 = var7_7;
            do {
                if (var3_3 != null) continue block0;
                if (var5_5 == var1_1) {
                    return var6_6;
                }
                var3_3 = var5_5.getNextSibling();
                var5_5 = var5_5.getParentNode();
                var7_7 = this.traverseNode(var5_5, false, true, var2_2);
                if (var2_2 != 3) {
                    var7_7.appendChild(var6_6);
                }
                var6_6 = var7_7;
lbl26:
                // 2 sources

            } while (var5_5 != null);
        }
        return null;
    }

    private Node traverseNode(Node node, boolean bl, boolean bl2, int n) {
        if (bl) {
            return this.traverseFullySelected(node, n);
        }
        short s = node.getNodeType();
        if (s == 3 || s == 4 || s == 8 || s == 7) {
            return this.traverseCharacterDataNode(node, bl2, n);
        }
        return this.traversePartiallySelected(node, n);
    }

    private Node traverseFullySelected(Node node, int n) {
        switch (n) {
            case 2: {
                return node.cloneNode(true);
            }
            case 1: {
                if (node.getNodeType() == 10) {
                    throw new DOMException(3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
                }
                return node;
            }
            case 3: {
                node.getParentNode().removeChild(node);
                return null;
            }
        }
        return null;
    }

    private Node traversePartiallySelected(Node node, int n) {
        switch (n) {
            case 3: {
                return null;
            }
            case 1: 
            case 2: {
                return node.cloneNode(false);
            }
        }
        return null;
    }

    private Node traverseCharacterDataNode(Node node, boolean bl, int n) {
        String string;
        String string2;
        int n2;
        String string3 = node.getNodeValue();
        if (bl) {
            n2 = this.getStartOffset();
            string2 = string3.substring(n2);
            string = string3.substring(0, n2);
        } else {
            n2 = this.getEndOffset();
            string2 = string3.substring(0, n2);
            string = string3.substring(n2);
        }
        if (n != 2) {
            node.setNodeValue(string);
        }
        if (n == 3) {
            return null;
        }
        Node node2 = node.cloneNode(false);
        node2.setNodeValue(string2);
        return node2;
    }

    void checkIndex(Node node, int n) throws DOMException {
        if (n < 0) {
            throw new DOMException(1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
        short s = node.getNodeType();
        if (s == 3 || s == 4 || s == 8 || s == 7 ? n > node.getNodeValue().length() : n > node.getChildNodes().getLength()) {
            throw new DOMException(1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
    }

    /*
     * Unable to fully structure code
     */
    private Node getRootContainer(Node var1_1) {
        if (var1_1 != null) ** GOTO lbl4
        return null;
lbl-1000:
        // 1 sources

        {
            var1_1 = var1_1.getParentNode();
lbl4:
            // 2 sources

            ** while (var1_1.getParentNode() != null)
        }
lbl5:
        // 1 sources

        return var1_1;
    }

    /*
     * Unable to fully structure code
     */
    private boolean isLegalContainer(Node var1_1) {
        if (var1_1 != null) ** GOTO lbl7
        return false;
lbl-1000:
        // 1 sources

        {
            switch (var1_1.getNodeType()) {
                case 6: 
                case 10: 
                case 12: {
                    return false;
                }
            }
            var1_1 = var1_1.getParentNode();
lbl7:
            // 2 sources

            ** while (var1_1 != null)
        }
lbl8:
        // 1 sources

        return true;
    }

    private boolean hasLegalRootContainer(Node node) {
        if (node == null) {
            return false;
        }
        Node node2 = this.getRootContainer(node);
        switch (node2.getNodeType()) {
            case 2: 
            case 9: 
            case 11: {
                return true;
            }
        }
        return false;
    }

    private boolean isLegalContainedNode(Node node) {
        if (node == null) {
            return false;
        }
        switch (node.getNodeType()) {
            case 2: 
            case 6: 
            case 9: 
            case 11: 
            case 12: {
                return false;
            }
        }
        return true;
    }

    Node nextNode(Node node, boolean bl) {
        Node node2;
        if (node == null) {
            return null;
        }
        if (bl && (node2 = node.getFirstChild()) != null) {
            return node2;
        }
        node2 = node.getNextSibling();
        if (node2 != null) {
            return node2;
        }
        Node node3 = node.getParentNode();
        while (node3 != null && node3 != this.fDocument) {
            node2 = node3.getNextSibling();
            if (node2 != null) {
                return node2;
            }
            node3 = node3.getParentNode();
        }
        return null;
    }

    boolean isAncestorOf(Node node, Node node2) {
        Node node3 = node2;
        while (node3 != null) {
            if (node3 == node) {
                return true;
            }
            node3 = node3.getParentNode();
        }
        return false;
    }

    int indexOf(Node node, Node node2) {
        if (node.getParentNode() != node2) {
            return -1;
        }
        int n = 0;
        Node node3 = node2.getFirstChild();
        while (node3 != node) {
            ++n;
            node3 = node3.getNextSibling();
        }
        return n;
    }

    private Node getSelectedNode(Node node, int n) {
        if (node.getNodeType() == 3) {
            return node;
        }
        if (n < 0) {
            return node;
        }
        Node node2 = node.getFirstChild();
        while (node2 != null && n > 0) {
            --n;
            node2 = node2.getNextSibling();
        }
        if (node2 != null) {
            return node2;
        }
        return node;
    }
}

