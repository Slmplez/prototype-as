/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLCollectionImpl;
import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLTableCaptionElementImpl;
import org.apache.html.dom.HTMLTableRowElementImpl;
import org.apache.html.dom.HTMLTableSectionElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLTableCaptionElement;
import org.w3c.dom.html.HTMLTableElement;
import org.w3c.dom.html.HTMLTableRowElement;
import org.w3c.dom.html.HTMLTableSectionElement;

public class HTMLTableElementImpl
extends HTMLElementImpl
implements HTMLTableElement {
    private static final long serialVersionUID = -1824053099870917532L;
    private HTMLCollectionImpl _rows;
    private HTMLCollectionImpl _bodies;

    public synchronized HTMLTableCaptionElement getCaption() {
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableCaptionElement && node.getNodeName().equals("CAPTION")) {
                return (HTMLTableCaptionElement)node;
            }
            node = node.getNextSibling();
        }
        return null;
    }

    public synchronized void setCaption(HTMLTableCaptionElement hTMLTableCaptionElement) {
        if (hTMLTableCaptionElement != null && !hTMLTableCaptionElement.getTagName().equals("CAPTION")) {
            throw new IllegalArgumentException("HTM016 Argument 'caption' is not an element of type <CAPTION>.");
        }
        this.deleteCaption();
        if (hTMLTableCaptionElement != null) {
            this.appendChild(hTMLTableCaptionElement);
        }
    }

    public synchronized HTMLElement createCaption() {
        HTMLTableCaptionElement hTMLTableCaptionElement = this.getCaption();
        if (hTMLTableCaptionElement != null) {
            return hTMLTableCaptionElement;
        }
        hTMLTableCaptionElement = new HTMLTableCaptionElementImpl((HTMLDocumentImpl)this.getOwnerDocument(), "CAPTION");
        this.appendChild(hTMLTableCaptionElement);
        return hTMLTableCaptionElement;
    }

    public synchronized void deleteCaption() {
        HTMLTableCaptionElement hTMLTableCaptionElement = this.getCaption();
        if (hTMLTableCaptionElement != null) {
            this.removeChild(hTMLTableCaptionElement);
        }
    }

    public synchronized HTMLTableSectionElement getTHead() {
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableSectionElement && node.getNodeName().equals("THEAD")) {
                return (HTMLTableSectionElement)node;
            }
            node = node.getNextSibling();
        }
        return null;
    }

    public synchronized void setTHead(HTMLTableSectionElement hTMLTableSectionElement) {
        if (hTMLTableSectionElement != null && !hTMLTableSectionElement.getTagName().equals("THEAD")) {
            throw new IllegalArgumentException("HTM017 Argument 'tHead' is not an element of type <THEAD>.");
        }
        this.deleteTHead();
        if (hTMLTableSectionElement != null) {
            this.appendChild(hTMLTableSectionElement);
        }
    }

    public synchronized HTMLElement createTHead() {
        HTMLTableSectionElement hTMLTableSectionElement = this.getTHead();
        if (hTMLTableSectionElement != null) {
            return hTMLTableSectionElement;
        }
        hTMLTableSectionElement = new HTMLTableSectionElementImpl((HTMLDocumentImpl)this.getOwnerDocument(), "THEAD");
        this.appendChild(hTMLTableSectionElement);
        return hTMLTableSectionElement;
    }

    public synchronized void deleteTHead() {
        HTMLTableSectionElement hTMLTableSectionElement = this.getTHead();
        if (hTMLTableSectionElement != null) {
            this.removeChild(hTMLTableSectionElement);
        }
    }

    public synchronized HTMLTableSectionElement getTFoot() {
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableSectionElement && node.getNodeName().equals("TFOOT")) {
                return (HTMLTableSectionElement)node;
            }
            node = node.getNextSibling();
        }
        return null;
    }

    public synchronized void setTFoot(HTMLTableSectionElement hTMLTableSectionElement) {
        if (hTMLTableSectionElement != null && !hTMLTableSectionElement.getTagName().equals("TFOOT")) {
            throw new IllegalArgumentException("HTM018 Argument 'tFoot' is not an element of type <TFOOT>.");
        }
        this.deleteTFoot();
        if (hTMLTableSectionElement != null) {
            this.appendChild(hTMLTableSectionElement);
        }
    }

    public synchronized HTMLElement createTFoot() {
        HTMLTableSectionElement hTMLTableSectionElement = this.getTFoot();
        if (hTMLTableSectionElement != null) {
            return hTMLTableSectionElement;
        }
        hTMLTableSectionElement = new HTMLTableSectionElementImpl((HTMLDocumentImpl)this.getOwnerDocument(), "TFOOT");
        this.appendChild(hTMLTableSectionElement);
        return hTMLTableSectionElement;
    }

    public synchronized void deleteTFoot() {
        HTMLTableSectionElement hTMLTableSectionElement = this.getTFoot();
        if (hTMLTableSectionElement != null) {
            this.removeChild(hTMLTableSectionElement);
        }
    }

    public HTMLCollection getRows() {
        if (this._rows == null) {
            this._rows = new HTMLCollectionImpl(this, 7);
        }
        return this._rows;
    }

    public HTMLCollection getTBodies() {
        if (this._bodies == null) {
            this._bodies = new HTMLCollectionImpl(this, -2);
        }
        return this._bodies;
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

    public String getBorder() {
        return this.getAttribute("border");
    }

    public void setBorder(String string) {
        this.setAttribute("border", string);
    }

    public String getCellPadding() {
        return this.getAttribute("cellpadding");
    }

    public void setCellPadding(String string) {
        this.setAttribute("cellpadding", string);
    }

    public String getCellSpacing() {
        return this.getAttribute("cellspacing");
    }

    public void setCellSpacing(String string) {
        this.setAttribute("cellspacing", string);
    }

    public String getFrame() {
        return this.capitalize(this.getAttribute("frame"));
    }

    public void setFrame(String string) {
        this.setAttribute("frame", string);
    }

    public String getRules() {
        return this.capitalize(this.getAttribute("rules"));
    }

    public void setRules(String string) {
        this.setAttribute("rules", string);
    }

    public String getSummary() {
        return this.getAttribute("summary");
    }

    public void setSummary(String string) {
        this.setAttribute("summary", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public HTMLElement insertRow(int n) {
        HTMLTableRowElementImpl hTMLTableRowElementImpl = new HTMLTableRowElementImpl((HTMLDocumentImpl)this.getOwnerDocument(), "TR");
        this.insertRowX(n, hTMLTableRowElementImpl);
        return hTMLTableRowElementImpl;
    }

    void insertRowX(int n, HTMLTableRowElementImpl hTMLTableRowElementImpl) {
        Node node = null;
        Node node2 = this.getFirstChild();
        while (node2 != null) {
            if (node2 instanceof HTMLTableRowElement) {
                if (n == 0) {
                    this.insertBefore(hTMLTableRowElementImpl, node2);
                    return;
                }
            } else if (node2 instanceof HTMLTableSectionElementImpl) {
                node = node2;
                if ((n = ((HTMLTableSectionElementImpl)node2).insertRowX(n, hTMLTableRowElementImpl)) < 0) {
                    return;
                }
            }
            node2 = node2.getNextSibling();
        }
        if (node != null) {
            node.appendChild(hTMLTableRowElementImpl);
        } else {
            this.appendChild(hTMLTableRowElementImpl);
        }
    }

    public synchronized void deleteRow(int n) {
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof HTMLTableRowElement) {
                if (n == 0) {
                    this.removeChild(node);
                    return;
                }
                --n;
            } else if (node instanceof HTMLTableSectionElementImpl && (n = ((HTMLTableSectionElementImpl)node).deleteRowX(n)) < 0) {
                return;
            }
            node = node.getNextSibling();
        }
    }

    public Node cloneNode(boolean bl) {
        HTMLTableElementImpl hTMLTableElementImpl = (HTMLTableElementImpl)super.cloneNode(bl);
        hTMLTableElementImpl._rows = null;
        hTMLTableElementImpl._bodies = null;
        return hTMLTableElementImpl;
    }

    public HTMLTableElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

