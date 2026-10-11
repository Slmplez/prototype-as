/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLHRElement;

public class HTMLHRElementImpl
extends HTMLElementImpl
implements HTMLHRElement {
    private static final long serialVersionUID = -4210053417678939270L;

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public boolean getNoShade() {
        return this.getBinary("noshade");
    }

    public void setNoShade(boolean bl) {
        this.setAttribute("noshade", bl);
    }

    public String getSize() {
        return this.getAttribute("size");
    }

    public void setSize(String string) {
        this.setAttribute("size", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public HTMLHRElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

