/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.util.Vector;
import org.apache.xerces.dom.ElementImpl;
import org.apache.xerces.dom.NodeImpl;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DeepNodeListImpl
implements NodeList {
    protected NodeImpl rootNode;
    protected String tagName;
    protected int changes = 0;
    protected Vector nodes;
    protected String nsName;
    protected boolean enableNS = false;

    public DeepNodeListImpl(NodeImpl nodeImpl, String string) {
        this.rootNode = nodeImpl;
        this.tagName = string;
        this.nodes = new Vector();
    }

    public DeepNodeListImpl(NodeImpl nodeImpl, String string, String string2) {
        this(nodeImpl, string2);
        this.nsName = string != null && !string.equals("") ? string : null;
        this.enableNS = true;
    }

    public int getLength() {
        this.item(Integer.MAX_VALUE);
        return this.nodes.size();
    }

    public Node item(int n) {
        if (this.rootNode.changes() != this.changes) {
            this.nodes = new Vector();
            this.changes = this.rootNode.changes();
        }
        if (n < this.nodes.size()) {
            return (Node)this.nodes.elementAt(n);
        }
        Node node = this.nodes.size() == 0 ? this.rootNode : (NodeImpl)this.nodes.lastElement();
        while (node != null && n >= this.nodes.size()) {
            if ((node = this.nextMatchingElementAfter(node)) == null) continue;
            this.nodes.addElement(node);
        }
        return node;
    }

    protected Node nextMatchingElementAfter(Node node) {
        while (node != null) {
            ElementImpl elementImpl;
            Node node2;
            if (node.hasChildNodes()) {
                node = node.getFirstChild();
            } else if (node != this.rootNode && null != (node2 = node.getNextSibling())) {
                node = node2;
            } else {
                node2 = null;
                while (node != this.rootNode) {
                    node2 = node.getNextSibling();
                    if (node2 != null) break;
                    node = node.getParentNode();
                }
                node = node2;
            }
            if (node == this.rootNode || node == null || node.getNodeType() != 1) continue;
            if (!this.enableNS) {
                if (!this.tagName.equals("*") && !((ElementImpl)node).getTagName().equals(this.tagName)) continue;
                return node;
            }
            if (this.tagName.equals("*")) {
                if (this.nsName != null && this.nsName.equals("*")) {
                    return node;
                }
                elementImpl = (ElementImpl)node;
                if ((this.nsName != null || elementImpl.getNamespaceURI() != null) && (this.nsName == null || !this.nsName.equals(elementImpl.getNamespaceURI()))) continue;
                return node;
            }
            elementImpl = (ElementImpl)node;
            if (elementImpl.getLocalName() == null || !elementImpl.getLocalName().equals(this.tagName)) continue;
            if (this.nsName != null && this.nsName.equals("*")) {
                return node;
            }
            if ((this.nsName != null || elementImpl.getNamespaceURI() != null) && (this.nsName == null || !this.nsName.equals(elementImpl.getNamespaceURI()))) continue;
            return node;
        }
        return null;
    }
}

