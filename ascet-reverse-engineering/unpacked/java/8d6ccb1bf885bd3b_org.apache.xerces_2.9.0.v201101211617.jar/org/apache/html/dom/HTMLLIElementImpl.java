/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLLIElement;

public class HTMLLIElementImpl
extends HTMLElementImpl
implements HTMLLIElement {
    private static final long serialVersionUID = -8987309345926701831L;

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public int getValue() {
        return this.getInteger(this.getAttribute("value"));
    }

    public void setValue(int n) {
        this.setAttribute("value", String.valueOf(n));
    }

    public HTMLLIElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

