/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLTableCellElement;
import org.w3c.dom.html.HTMLTableRowElement;

public class HTMLTableCellElementImpl
extends HTMLElementImpl
implements HTMLTableCellElement {
    private static final long serialVersionUID = -2406518157464313922L;

    public int getCellIndex() {
        Node node = this.getParentNode();
        int n = 0;
        if (node instanceof HTMLTableRowElement) {
            Node node2 = node.getFirstChild();
            while (node2 != null) {
                if (node2 instanceof HTMLTableCellElement) {
                    if (node2 == this) {
                        return n;
                    }
                    ++n;
                }
                node2 = node2.getNextSibling();
            }
        }
        return -1;
    }

    public void setCellIndex(int n) {
        Node node = this.getParentNode();
        if (node instanceof HTMLTableRowElement) {
            Node node2 = node.getFirstChild();
            while (node2 != null) {
                if (node2 instanceof HTMLTableCellElement) {
                    if (n == 0) {
                        if (this != node2) {
                            node.insertBefore(this, node2);
                        }
                        return;
                    }
                    --n;
                }
                node2 = node2.getNextSibling();
            }
        }
        node.appendChild(this);
    }

    public String getAbbr() {
        return this.getAttribute("abbr");
    }

    public void setAbbr(String string) {
        this.setAttribute("abbr", string);
    }

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getAxis() {
        return this.getAttribute("axis");
    }

    public void setAxis(String string) {
        this.setAttribute("axis", string);
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

    public int getColSpan() {
        return this.getInteger(this.getAttribute("colspan"));
    }

    public void setColSpan(int n) {
        this.setAttribute("colspan", String.valueOf(n));
    }

    public String getHeaders() {
        return this.getAttribute("headers");
    }

    public void setHeaders(String string) {
        this.setAttribute("headers", string);
    }

    public String getHeight() {
        return this.getAttribute("height");
    }

    public void setHeight(String string) {
        this.setAttribute("height", string);
    }

    public boolean getNoWrap() {
        return this.getBinary("nowrap");
    }

    public void setNoWrap(boolean bl) {
        this.setAttribute("nowrap", bl);
    }

    public int getRowSpan() {
        return this.getInteger(this.getAttribute("rowspan"));
    }

    public void setRowSpan(int n) {
        this.setAttribute("rowspan", String.valueOf(n));
    }

    public String getScope() {
        return this.getAttribute("scope");
    }

    public void setScope(String string) {
        this.setAttribute("scope", string);
    }

    public String getVAlign() {
        return this.capitalize(this.getAttribute("valign"));
    }

    public void setVAlign(String string) {
        this.setAttribute("valign", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public HTMLTableCellElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

