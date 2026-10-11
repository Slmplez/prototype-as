/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.io.Serializable;
import java.util.Vector;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.NodeImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class NamedNodeMapImpl
implements NamedNodeMap,
Serializable {
    static final long serialVersionUID = -7039242451046758020L;
    protected short flags;
    protected static final short READONLY = 1;
    protected static final short CHANGED = 2;
    protected static final short HASDEFAULTS = 4;
    protected Vector nodes;
    protected NodeImpl ownerNode;

    protected NamedNodeMapImpl(NodeImpl nodeImpl) {
        this.ownerNode = nodeImpl;
    }

    public int getLength() {
        return this.nodes != null ? this.nodes.size() : 0;
    }

    public Node item(int n) {
        return this.nodes != null && n < this.nodes.size() ? (Node)this.nodes.elementAt(n) : null;
    }

    public Node getNamedItem(String string) {
        int n = this.findNamePoint(string, 0);
        return n < 0 ? null : (Node)this.nodes.elementAt(n);
    }

    public Node getNamedItemNS(String string, String string2) {
        int n = this.findNamePoint(string, string2);
        return n < 0 ? null : (Node)this.nodes.elementAt(n);
    }

    public Node setNamedItem(Node node) throws DOMException {
        CoreDocumentImpl coreDocumentImpl = this.ownerNode.ownerDocument();
        if (coreDocumentImpl.errorChecking) {
            if (this.isReadOnly()) {
                String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NO_MODIFICATION_ALLOWED_ERR", null);
                throw new DOMException(7, string);
            }
            if (node.getOwnerDocument() != coreDocumentImpl) {
                String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null);
                throw new DOMException(4, string);
            }
        }
        int n = this.findNamePoint(node.getNodeName(), 0);
        NodeImpl nodeImpl = null;
        if (n >= 0) {
            nodeImpl = (NodeImpl)this.nodes.elementAt(n);
            this.nodes.setElementAt(node, n);
        } else {
            n = -1 - n;
            if (null == this.nodes) {
                this.nodes = new Vector(5, 10);
            }
            this.nodes.insertElementAt(node, n);
        }
        return nodeImpl;
    }

    public Node setNamedItemNS(Node node) throws DOMException {
        CoreDocumentImpl coreDocumentImpl = this.ownerNode.ownerDocument();
        if (coreDocumentImpl.errorChecking) {
            if (this.isReadOnly()) {
                String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NO_MODIFICATION_ALLOWED_ERR", null);
                throw new DOMException(7, string);
            }
            if (node.getOwnerDocument() != coreDocumentImpl) {
                String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null);
                throw new DOMException(4, string);
            }
        }
        int n = this.findNamePoint(node.getNamespaceURI(), node.getLocalName());
        NodeImpl nodeImpl = null;
        if (n >= 0) {
            nodeImpl = (NodeImpl)this.nodes.elementAt(n);
            this.nodes.setElementAt(node, n);
        } else {
            n = this.findNamePoint(node.getNodeName(), 0);
            if (n >= 0) {
                nodeImpl = (NodeImpl)this.nodes.elementAt(n);
                this.nodes.insertElementAt(node, n);
            } else {
                n = -1 - n;
                if (null == this.nodes) {
                    this.nodes = new Vector(5, 10);
                }
                this.nodes.insertElementAt(node, n);
            }
        }
        return nodeImpl;
    }

    public Node removeNamedItem(String string) throws DOMException {
        if (this.isReadOnly()) {
            String string2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NO_MODIFICATION_ALLOWED_ERR", null);
            throw new DOMException(7, string2);
        }
        int n = this.findNamePoint(string, 0);
        if (n < 0) {
            String string3 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null);
            throw new DOMException(8, string3);
        }
        NodeImpl nodeImpl = (NodeImpl)this.nodes.elementAt(n);
        this.nodes.removeElementAt(n);
        return nodeImpl;
    }

    public Node removeNamedItemNS(String string, String string2) throws DOMException {
        if (this.isReadOnly()) {
            String string3 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NO_MODIFICATION_ALLOWED_ERR", null);
            throw new DOMException(7, string3);
        }
        int n = this.findNamePoint(string, string2);
        if (n < 0) {
            String string4 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null);
            throw new DOMException(8, string4);
        }
        NodeImpl nodeImpl = (NodeImpl)this.nodes.elementAt(n);
        this.nodes.removeElementAt(n);
        return nodeImpl;
    }

    public NamedNodeMapImpl cloneMap(NodeImpl nodeImpl) {
        NamedNodeMapImpl namedNodeMapImpl = new NamedNodeMapImpl(nodeImpl);
        namedNodeMapImpl.cloneContent(this);
        return namedNodeMapImpl;
    }

    protected void cloneContent(NamedNodeMapImpl namedNodeMapImpl) {
        int n;
        Vector vector = namedNodeMapImpl.nodes;
        if (vector != null && (n = vector.size()) != 0) {
            if (this.nodes == null) {
                this.nodes = new Vector(n);
            }
            this.nodes.setSize(n);
            int n2 = 0;
            while (n2 < n) {
                NodeImpl nodeImpl = (NodeImpl)namedNodeMapImpl.nodes.elementAt(n2);
                NodeImpl nodeImpl2 = (NodeImpl)nodeImpl.cloneNode(true);
                nodeImpl2.isSpecified(nodeImpl.isSpecified());
                this.nodes.setElementAt(nodeImpl2, n2);
                ++n2;
            }
        }
    }

    void setReadOnly(boolean bl, boolean bl2) {
        this.isReadOnly(bl);
        if (bl2 && this.nodes != null) {
            int n = this.nodes.size() - 1;
            while (n >= 0) {
                ((NodeImpl)this.nodes.elementAt(n)).setReadOnly(bl, bl2);
                --n;
            }
        }
    }

    boolean getReadOnly() {
        return this.isReadOnly();
    }

    protected void setOwnerDocument(CoreDocumentImpl coreDocumentImpl) {
        if (this.nodes != null) {
            int n = 0;
            while (n < this.nodes.size()) {
                ((NodeImpl)this.item(n)).setOwnerDocument(coreDocumentImpl);
                ++n;
            }
        }
    }

    final boolean isReadOnly() {
        return (this.flags & 1) != 0;
    }

    final void isReadOnly(boolean bl) {
        this.flags = bl ? (short)(this.flags | 1) : (short)(this.flags & 0xFFFFFFFE);
    }

    final boolean changed() {
        return (this.flags & 2) != 0;
    }

    final void changed(boolean bl) {
        this.flags = bl ? (short)(this.flags | 2) : (short)(this.flags & 0xFFFFFFFD);
    }

    final boolean hasDefaults() {
        return (this.flags & 4) != 0;
    }

    final void hasDefaults(boolean bl) {
        this.flags = bl ? (short)(this.flags | 4) : (short)(this.flags & 0xFFFFFFFB);
    }

    protected int findNamePoint(String string, int n) {
        int n2 = 0;
        if (this.nodes != null) {
            int n3 = n;
            int n4 = this.nodes.size() - 1;
            while (n3 <= n4) {
                n2 = (n3 + n4) / 2;
                int n5 = string.compareTo(((Node)this.nodes.elementAt(n2)).getNodeName());
                if (n5 == 0) {
                    return n2;
                }
                if (n5 < 0) {
                    n4 = n2 - 1;
                    continue;
                }
                n3 = n2 + 1;
            }
            if (n3 > n2) {
                n2 = n3;
            }
        }
        return -1 - n2;
    }

    protected int findNamePoint(String string, String string2) {
        if (this.nodes == null) {
            return -1;
        }
        if (string2 == null) {
            return -1;
        }
        int n = 0;
        while (n < this.nodes.size()) {
            NodeImpl nodeImpl = (NodeImpl)this.nodes.elementAt(n);
            String string3 = nodeImpl.getNamespaceURI();
            String string4 = nodeImpl.getLocalName();
            if (string == null ? string3 == null && (string2.equals(string4) || string4 == null && string2.equals(nodeImpl.getNodeName())) : string.equals(string3) && string2.equals(string4)) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    protected boolean precedes(Node node, Node node2) {
        if (this.nodes != null) {
            int n = 0;
            while (n < this.nodes.size()) {
                Node node3 = (Node)this.nodes.elementAt(n);
                if (node3 == node) {
                    return true;
                }
                if (node3 == node2) {
                    return false;
                }
                ++n;
            }
        }
        return false;
    }

    protected void removeItem(int n) {
        if (this.nodes != null && n < this.nodes.size()) {
            this.nodes.removeElementAt(n);
        }
    }

    protected Object getItem(int n) {
        if (this.nodes != null) {
            return this.nodes.elementAt(n);
        }
        return null;
    }

    protected int addItem(Node node) {
        int n = this.findNamePoint(node.getNamespaceURI(), node.getLocalName());
        if (n >= 0) {
            this.nodes.setElementAt(node, n);
        } else {
            n = this.findNamePoint(node.getNodeName(), 0);
            if (n >= 0) {
                this.nodes.insertElementAt(node, n);
            } else {
                n = -1 - n;
                if (null == this.nodes) {
                    this.nodes = new Vector(5, 10);
                }
                this.nodes.insertElementAt(node, n);
            }
        }
        return n;
    }

    protected Vector cloneMap(Vector vector) {
        if (vector == null) {
            vector = new Vector(5, 10);
        }
        vector.setSize(0);
        if (this.nodes != null) {
            int n = 0;
            while (n < this.nodes.size()) {
                vector.insertElementAt(this.nodes.elementAt(n), n);
                ++n;
            }
        }
        return vector;
    }

    protected int getNamedItemIndex(String string, String string2) {
        return this.findNamePoint(string, string2);
    }

    public void removeAll() {
        if (this.nodes != null) {
            this.nodes.removeAllElements();
        }
    }
}

