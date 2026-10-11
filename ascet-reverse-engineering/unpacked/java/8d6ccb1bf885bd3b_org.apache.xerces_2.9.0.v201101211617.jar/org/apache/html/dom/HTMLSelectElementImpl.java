/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLCollectionImpl;
import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLFormControl;
import org.apache.html.dom.HTMLOptionElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLOptionElement;
import org.w3c.dom.html.HTMLSelectElement;

public class HTMLSelectElementImpl
extends HTMLElementImpl
implements HTMLSelectElement,
HTMLFormControl {
    private static final long serialVersionUID = -6998282711006968187L;
    private HTMLCollection _options;

    public String getType() {
        return this.getAttribute("type");
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public int getSelectedIndex() {
        NodeList nodeList = this.getElementsByTagName("OPTION");
        int n = 0;
        while (n < nodeList.getLength()) {
            if (((HTMLOptionElement)nodeList.item(n)).getSelected()) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    public void setSelectedIndex(int n) {
        NodeList nodeList = this.getElementsByTagName("OPTION");
        int n2 = 0;
        while (n2 < nodeList.getLength()) {
            ((HTMLOptionElementImpl)nodeList.item(n2)).setSelected(n2 == n);
            ++n2;
        }
    }

    public HTMLCollection getOptions() {
        if (this._options == null) {
            this._options = new HTMLCollectionImpl(this, 6);
        }
        return this._options;
    }

    public int getLength() {
        return this.getOptions().getLength();
    }

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public boolean getMultiple() {
        return this.getBinary("multiple");
    }

    public void setMultiple(boolean bl) {
        this.setAttribute("multiple", bl);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public int getSize() {
        return this.getInteger(this.getAttribute("size"));
    }

    public void setSize(int n) {
        this.setAttribute("size", String.valueOf(n));
    }

    public int getTabIndex() {
        return this.getInteger(this.getAttribute("tabindex"));
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", String.valueOf(n));
    }

    public void add(HTMLElement hTMLElement, HTMLElement hTMLElement2) {
        this.insertBefore(hTMLElement, hTMLElement2);
    }

    public void remove(int n) {
        NodeList nodeList = this.getElementsByTagName("OPTION");
        Node node = nodeList.item(n);
        if (node != null) {
            node.getParentNode().removeChild(node);
        }
    }

    public void blur() {
    }

    public void focus() {
    }

    public NodeList getChildNodes() {
        return this.getChildNodesUnoptimized();
    }

    public Node cloneNode(boolean bl) {
        HTMLSelectElementImpl hTMLSelectElementImpl = (HTMLSelectElementImpl)super.cloneNode(bl);
        hTMLSelectElementImpl._options = null;
        return hTMLSelectElementImpl;
    }

    public HTMLSelectElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

