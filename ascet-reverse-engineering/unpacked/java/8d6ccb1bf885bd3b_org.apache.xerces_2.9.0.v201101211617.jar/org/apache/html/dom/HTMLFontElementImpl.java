/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLFontElement;

public class HTMLFontElementImpl
extends HTMLElementImpl
implements HTMLFontElement {
    private static final long serialVersionUID = -415914342045846318L;

    public String getColor() {
        return this.capitalize(this.getAttribute("color"));
    }

    public void setColor(String string) {
        this.setAttribute("color", string);
    }

    public String getFace() {
        return this.capitalize(this.getAttribute("face"));
    }

    public void setFace(String string) {
        this.setAttribute("face", string);
    }

    public String getSize() {
        return this.getAttribute("size");
    }

    public void setSize(String string) {
        this.setAttribute("size", string);
    }

    public HTMLFontElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

