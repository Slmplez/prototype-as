/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLOptionElement;
import org.w3c.dom.html.HTMLSelectElement;

public class HTMLOptionElementImpl
extends HTMLElementImpl
implements HTMLOptionElement {
    private static final long serialVersionUID = -4486774554137530907L;

    public boolean getDefaultSelected() {
        return this.getBinary("default-selected");
    }

    public void setDefaultSelected(boolean bl) {
        this.setAttribute("default-selected", bl);
    }

    public String getText() {
        StringBuffer stringBuffer = new StringBuffer();
        Node node = this.getFirstChild();
        while (node != null) {
            if (node instanceof Text) {
                stringBuffer.append(((Text)node).getData());
            }
            node = node.getNextSibling();
        }
        return stringBuffer.toString();
    }

    public void setText(String string) {
        Node node = this.getFirstChild();
        while (node != null) {
            Node node2 = node.getNextSibling();
            this.removeChild(node);
            node = node2;
        }
        this.insertBefore(this.getOwnerDocument().createTextNode(string), this.getFirstChild());
    }

    public int getIndex() {
        Node node = this.getParentNode();
        while (node != null && !(node instanceof HTMLSelectElement)) {
            node = node.getParentNode();
        }
        if (node != null) {
            NodeList nodeList = ((HTMLElement)node).getElementsByTagName("OPTION");
            int n = 0;
            while (n < nodeList.getLength()) {
                if (nodeList.item(n) == this) {
                    return n;
                }
                ++n;
            }
        }
        return -1;
    }

    public void setIndex(int n) {
        NodeList nodeList;
        Node node = this.getParentNode();
        while (node != null && !(node instanceof HTMLSelectElement)) {
            node = node.getParentNode();
        }
        if (node != null && (nodeList = ((HTMLElement)node).getElementsByTagName("OPTION")).item(n) != this) {
            this.getParentNode().removeChild(this);
            Node node2 = nodeList.item(n);
            node2.getParentNode().insertBefore(this, node2);
        }
    }

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public String getLabel() {
        return this.capitalize(this.getAttribute("label"));
    }

    public void setLabel(String string) {
        this.setAttribute("label", string);
    }

    public boolean getSelected() {
        return this.getBinary("selected");
    }

    public void setSelected(boolean bl) {
        this.setAttribute("selected", bl);
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public HTMLOptionElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

