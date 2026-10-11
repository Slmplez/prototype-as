/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLTableColElement;

public class HTMLTableColElementImpl
extends HTMLElementImpl
implements HTMLTableColElement {
    private static final long serialVersionUID = -6189626162811911792L;

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
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

    public int getSpan() {
        return this.getInteger(this.getAttribute("span"));
    }

    public void setSpan(int n) {
        this.setAttribute("span", String.valueOf(n));
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

    public HTMLTableColElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

