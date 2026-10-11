/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.w3c.dom.html.HTMLScriptElement;

public class HTMLScriptElementImpl
extends HTMLElementImpl
implements HTMLScriptElement {
    private static final long serialVersionUID = 5090330049085326558L;

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

    public String getHtmlFor() {
        return this.getAttribute("for");
    }

    public void setHtmlFor(String string) {
        this.setAttribute("for", string);
    }

    public String getEvent() {
        return this.getAttribute("event");
    }

    public void setEvent(String string) {
        this.setAttribute("event", string);
    }

    public String getCharset() {
        return this.getAttribute("charset");
    }

    public void setCharset(String string) {
        this.setAttribute("charset", string);
    }

    public boolean getDefer() {
        return this.getBinary("defer");
    }

    public void setDefer(boolean bl) {
        this.setAttribute("defer", bl);
    }

    public String getSrc() {
        return this.getAttribute("src");
    }

    public void setSrc(String string) {
        this.setAttribute("src", string);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public HTMLScriptElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

