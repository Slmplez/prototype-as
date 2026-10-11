/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLBodyElement;

public class HTMLBodyElementImpl
extends HTMLElementImpl
implements HTMLBodyElement {
    private static final long serialVersionUID = 9058852459426595202L;

    public String getALink() {
        return this.getAttribute("alink");
    }

    public void setALink(String string) {
        this.setAttribute("alink", string);
    }

    public String getBackground() {
        return this.getAttribute("background");
    }

    public void setBackground(String string) {
        this.setAttribute("background", string);
    }

    public String getBgColor() {
        return this.getAttribute("bgcolor");
    }

    public void setBgColor(String string) {
        this.setAttribute("bgcolor", string);
    }

    public String getLink() {
        return this.getAttribute("link");
    }

    public void setLink(String string) {
        this.setAttribute("link", string);
    }

    public String getText() {
        return this.getAttribute("text");
    }

    public void setText(String string) {
        this.setAttribute("text", string);
    }

    public String getVLink() {
        return this.getAttribute("vlink");
    }

    public void setVLink(String string) {
        this.setAttribute("vlink", string);
    }

    public HTMLBodyElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

