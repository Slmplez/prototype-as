/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLCollectionImpl;
import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLFormElement;

public class HTMLFormElementImpl
extends HTMLElementImpl
implements HTMLFormElement {
    private static final long serialVersionUID = -7324749629151493210L;
    private HTMLCollectionImpl _elements;

    public HTMLCollection getElements() {
        if (this._elements == null) {
            this._elements = new HTMLCollectionImpl(this, 8);
        }
        return this._elements;
    }

    public int getLength() {
        return this.getElements().getLength();
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getAcceptCharset() {
        return this.getAttribute("accept-charset");
    }

    public void setAcceptCharset(String string) {
        this.setAttribute("accept-charset", string);
    }

    public String getAction() {
        return this.getAttribute("action");
    }

    public void setAction(String string) {
        this.setAttribute("action", string);
    }

    public String getEnctype() {
        return this.getAttribute("enctype");
    }

    public void setEnctype(String string) {
        this.setAttribute("enctype", string);
    }

    public String getMethod() {
        return this.capitalize(this.getAttribute("method"));
    }

    public void setMethod(String string) {
        this.setAttribute("method", string);
    }

    public String getTarget() {
        return this.getAttribute("target");
    }

    public void setTarget(String string) {
        this.setAttribute("target", string);
    }

    public void submit() {
    }

    public void reset() {
    }

    public NodeList getChildNodes() {
        return this.getChildNodesUnoptimized();
    }

    public Node cloneNode(boolean bl) {
        HTMLFormElementImpl hTMLFormElementImpl = (HTMLFormElementImpl)super.cloneNode(bl);
        hTMLFormElementImpl._elements = null;
        return hTMLFormElementImpl;
    }

    public HTMLFormElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

