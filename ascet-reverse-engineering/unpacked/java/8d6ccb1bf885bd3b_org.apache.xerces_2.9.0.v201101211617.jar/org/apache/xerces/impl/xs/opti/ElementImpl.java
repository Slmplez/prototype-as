/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.opti;

import org.apache.xerces.impl.xs.opti.DefaultElement;
import org.apache.xerces.impl.xs.opti.NamedNodeMapImpl;
import org.apache.xerces.impl.xs.opti.SchemaDOM;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class ElementImpl
extends DefaultElement {
    SchemaDOM schemaDOM;
    Attr[] attrs;
    int row = -1;
    int col = -1;
    int parentRow = -1;
    int line;
    int column;
    int charOffset;
    String fAnnotation;
    String fSyntheticAnnotation;

    public ElementImpl(int n, int n2, int n3) {
        this.nodeType = 1;
        this.line = n;
        this.column = n2;
        this.charOffset = n3;
    }

    public ElementImpl(int n, int n2) {
        this(n, n2, -1);
    }

    public ElementImpl(String string, String string2, String string3, String string4, int n, int n2, int n3) {
        super(string, string2, string3, string4, (short)1);
        this.line = n;
        this.column = n2;
        this.charOffset = n3;
    }

    public ElementImpl(String string, String string2, String string3, String string4, int n, int n2) {
        this(string, string2, string3, string4, n, n2, -1);
    }

    public Document getOwnerDocument() {
        return this.schemaDOM;
    }

    public Node getParentNode() {
        return this.schemaDOM.relations[this.row][0];
    }

    public boolean hasChildNodes() {
        return this.parentRow != -1;
    }

    public Node getFirstChild() {
        if (this.parentRow == -1) {
            return null;
        }
        return this.schemaDOM.relations[this.parentRow][1];
    }

    public Node getLastChild() {
        if (this.parentRow == -1) {
            return null;
        }
        int n = 1;
        while (n < this.schemaDOM.relations[this.parentRow].length) {
            if (this.schemaDOM.relations[this.parentRow][n] == null) {
                return this.schemaDOM.relations[this.parentRow][n - 1];
            }
            ++n;
        }
        if (n == 1) {
            ++n;
        }
        return this.schemaDOM.relations[this.parentRow][n - 1];
    }

    public Node getPreviousSibling() {
        if (this.col == 1) {
            return null;
        }
        return this.schemaDOM.relations[this.row][this.col - 1];
    }

    public Node getNextSibling() {
        if (this.col == this.schemaDOM.relations[this.row].length - 1) {
            return null;
        }
        return this.schemaDOM.relations[this.row][this.col + 1];
    }

    public NamedNodeMap getAttributes() {
        return new NamedNodeMapImpl(this.attrs);
    }

    public boolean hasAttributes() {
        return this.attrs.length != 0;
    }

    public String getTagName() {
        return this.rawname;
    }

    public String getAttribute(String string) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string)) {
                return this.attrs[n].getValue();
            }
            ++n;
        }
        return "";
    }

    public Attr getAttributeNode(String string) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string)) {
                return this.attrs[n];
            }
            ++n;
        }
        return null;
    }

    public String getAttributeNS(String string, String string2) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getLocalName().equals(string2) && this.attrs[n].getNamespaceURI().equals(string)) {
                return this.attrs[n].getValue();
            }
            ++n;
        }
        return "";
    }

    public Attr getAttributeNodeNS(String string, String string2) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string2) && this.attrs[n].getNamespaceURI().equals(string)) {
                return this.attrs[n];
            }
            ++n;
        }
        return null;
    }

    public boolean hasAttribute(String string) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string)) {
                return true;
            }
            ++n;
        }
        return false;
    }

    public boolean hasAttributeNS(String string, String string2) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string2) && this.attrs[n].getNamespaceURI().equals(string)) {
                return true;
            }
            ++n;
        }
        return false;
    }

    public void setAttribute(String string, String string2) {
        int n = 0;
        while (n < this.attrs.length) {
            if (this.attrs[n].getName().equals(string)) {
                this.attrs[n].setValue(string2);
                return;
            }
            ++n;
        }
    }

    public int getLineNumber() {
        return this.line;
    }

    public int getColumnNumber() {
        return this.column;
    }

    public int getCharacterOffset() {
        return this.charOffset;
    }

    public String getAnnotation() {
        return this.fAnnotation;
    }

    public String getSyntheticAnnotation() {
        return this.fSyntheticAnnotation;
    }
}

