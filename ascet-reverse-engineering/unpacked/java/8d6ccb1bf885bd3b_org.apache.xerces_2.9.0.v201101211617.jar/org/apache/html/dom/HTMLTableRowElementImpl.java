/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLCollectionImpl;
import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLTableCellElementImpl;
import org.apache.html.dom.HTMLTableElementImpl;
import org.apache.html.dom.HTMLTableSectionElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLTableCellElement;
import org.w3c.dom.html.HTMLTableElement;
import org.w3c.dom.html.HTMLTableRowElement;
import org.w3c.dom.html.HTMLTableSectionElement;

public class HTMLTableRowElementImpl
extends HTMLElementImpl
implements HTMLTableRowElement {
    private static final long serialVersionUID = 5409562635656244263L;
    HTMLCollection _cells;

    public int getRowIndex() {
        Node node = this.getParentNode();
        if (node instanceof HTMLTableSectionElement) {
            node = node.getParentNode();
        }
        if (node instanceof HTMLTableElement) {
            return this.getRowIndex(node);
        }
        return -1;
    }

    public void setRowIndex(int n) {
        Node node = this.getParentNode();
        if (node instanceof HTMLTableSectionElement) {
            node = node.getParentNode();
        }
        if (node instanceof HTMLTableElement) {
            ((HTMLTableElementImpl)node).insertRowX(n, this);
        }
    }

    public int getSectionRowIndex() {
        Node node = this.getParentNode();
        if (node instanceof HTMLTableSectionElement) {
            return this.getRowIndex(node);
        }
        return -1;
    }

    public void setSectionRowIndex(int n) {
        Node node = this.getParentNode();
        if (node instanceof HTMLTableSectionElement) {
            ((HTMLTableSectionElementImpl)node).insertRowX(n, this);
        }
    }

    int getRowIndex(Node node) {
        NodeList nodeList = ((HTMLElement)node).getElementsByTagName("TR");
        int n = 0;
        while (n < nodeList.getLength()) {
            if (nodeList.item(n) == this) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    public HTMLCollection getCells() {
        if (this._cells == null) {
            this._cells = new HTMLCollectionImpl(this, -3);
        }
        return this._cells;
    }

    public void setCells(HTMLCollection hTMLCollection) {
        Node node = this.getFirstChild();
        while (node != null) {
            this.removeChild(node);
            node = node.getNextSibling();
        }
        int n = 0;
        node = hTMLCollection.item(n);
        while (node != null) {
            this.appendChild(node);
            node = hTMLCollection.item(++n);
        }
    }

    public HTMLElement insertCell(int n) {
        HTMLTableCellElementImpl hTMLTableCellElementImpl = new HTMLTableCellElementImpl((HTMLDocumentImpl)this.getOwnerDocument(), "TD");
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableCellElement) {
                if (n == 0) {
                    this.insertBefore(hTMLTableCellElementImpl, node);
                    return hTMLTableCellElementImpl;
                }
                --n;
            }
            node = node.getNextSibling();
        }
        this.appendChild(hTMLTableCellElementImpl);
        return hTMLTableCellElementImpl;
    }

    public void deleteCell(int n) {
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableCellElement) {
                if (n == 0) {
                    this.removeChild(node);
                    return;
                }
                --n;
            }
            node = node.getNextSibling();
        }
    }

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getBgColor() {
        return this.getAttribute("bgcolor");
    }

    public void setBgColor(String string) {
        this.setAttribute("bgcolor", string);
    }

    public String getCh() {
        String string = this.getAttribute("char");
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        return string;
    }

    public void setCh(String string) {
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        this.setAttribute("char", string);
    }

    public String getChOff() {
        return this.getAttribute("charoff");
    }

    public void setChOff(String string) {
        this.setAttribute("charoff", string);
    }

    public String getVAlign() {
        return this.capitalize(this.getAttribute("valign"));
    }

    public void setVAlign(String string) {
        this.setAttribute("valign", string);
    }

    public Node cloneNode(boolean bl) {
        HTMLTableRowElementImpl hTMLTableRowElementImpl = (HTMLTableRowElementImpl)super.cloneNode(bl);
        hTMLTableRowElementImpl._cells = null;
        return hTMLTableRowElementImpl;
    }

    public HTMLTableRowElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

