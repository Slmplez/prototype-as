/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.opti;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class NamedNodeMapImpl
implements NamedNodeMap {
    Attr[] attrs;

    public NamedNodeMapImpl(Attr[] attrArray) {
        this.attrs = attrArray;
    }

    public Node getNamedItem(String string) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string)) {
                return this.attrs[n];
            }
            ++n;
        }
        return null;
    }

    public Node item(int n) {
        if (n < 0 && n > this.getLength()) {
            return null;
        }
        return this.attrs[n];
    }

    public int getLength() {
        return this.attrs.length;
    }

    public Node getNamedItemNS(String string, String string2) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string2) && this.attrs[n].getNamespaceURI().equals(string)) {
                return this.attrs[n];
            }
            ++n;
        }
        return null;
    }

    public Node setNamedItemNS(Node node) throws DOMException {
        throw new DOMException(9, "Method not supported");
    }

    public Node setNamedItem(Node node) throws DOMException {
        throw new DOMException(9, "Method not supported");
    }

    public Node removeNamedItem(String string) throws DOMException {
        throw new DOMException(9, "Method not supported");
    }

    public Node removeNamedItemNS(String string, String string2) throws DOMException {
        throw new DOMException(9, "Method not supported");
    }
}

